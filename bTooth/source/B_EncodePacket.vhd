-- $Id: $
-- File name:   B_EncodePacket.vhd
-- Created:     4/10/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: This adds the prefix and crc
-- Payload:  284 bits from evan => 256 bits + headers(12) + crc(16)
-- pAYLOAD : MSB  CRC(16) DATA(256) Length(9) FLOW(1) L_CH(2) LSB
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY B_EncodePacket IS
		generic (WAITSRAM : natural := 24; -- wait for 24 cycles before data is present after strobe??
						 WAITREG	:	natural := 5264 ); -- Transmit wait time. FIX THIS DOESN'T HAVE LAG CLKS.
						 -- wait for 5264 cycles before 8 bit data is transmitted after ESTORE_EN 1 clk Strobe
		port (	CLK 						:		in	std_logic;
						RST							:		in	std_logic;
						-- ENCODE _ EN is asserted until the next encode en but should be self fixing
						ENCODE_EN				:		in	std_logic; -- rcu signal to start the encoding( must be enabled for 896 ns 256 cycles	#strobed clk.
						DATA						:		in std_logic_vector(7 downto 0); -- data recieved from the sram
						PAYLOAD					:		OUT	std_logic_vector(7 downto 0); -- 13 bit header+16bit crc
						ESTORE_EN				:		OUT	std_logic;
						NEXT_EN					:		OUT std_logic;
						READ_EN					:		OUT std_logic);
END B_EncodePacket;

architecture b_edata of B_EncodePacket IS
		signal length 			: 		std_logic_vector(8 downto 0);-- length is constant 256
		signal LCH					: 		std_logic_vector(1 downto 0);-- hardcoded to be 11 always set flow =1 
		signal flowBIT			: 		std_logic; -- resend reply not imlemented 
		signal lfsr					: 		std_logic_vector( 15 downto 0);
		signal packet_hdr		: 		std_logic_vector( 15 downto 0);
		signal A,B,RUN			:			std_logic;
		type	 state_type is	(idle,header,calccrc,getdata,outcrc);
		signal	state,nstate: state_type;
		signal cnt32 : integer range 0 to 32; --  reloop for 32 => 256 bit data
		signal swcnt : integer range 0 to 10400; --sram wait for finish of transmit 1 and then another
		signal cnt8					: integer range 0 to 7;
--    			 	PAYLOAD <= crc&DATA&length&flowBIT&LCH;
begin
--		init : process (CLK,RST)
--			begin		
--				if (RST = '1') then
--					length <= "100000000"; -- Need to append 4 bits to make this header 16
--					LCH <= "11";
--					flowBIT <= '1';
--					packet_hdr <= "0000"&length&flowBIT&LCH;
--				end if;
--			end process init;
--_______________________________________			
		stateprocess : process (RST,CLK)
			begin
				if ( RST = '1') then
					state <= idle;
				elsif (rising_edge(clk)) then
					state <= nstate;
				end if;
			end process stateprocess;
--______________________________________________
	statelogic : process (CLK,STATE)
			variable crc									: 		std_logic_vector(15 downto 0);
			variable data_in							: 		std_logic;
			variable xor12,xor5,xor0			:			std_logic;
			variable txwait								: 		std_logic;
		begin
     		case state is 
					when idle => -- initialize all reset mode
							length <= "100000000"; -- Need to append 4 bits to make this header 16
							LCH <= "11";
							flowBIT <= '1';
							packet_hdr <= "0000"&length&flowBIT&LCH;
							lfsr <= "0000000011011001"; --innit with 8 bit 00000000&UAP[7 downto 0];
							crc := "0000000011011001";
							PAYLOAD<="00000000";
							ESTORE_EN <= '0';
							cnt32 <= 0;
							cnt8 <= 0;
							swcnt <= 0;
							NEXT_EN		<= '1';	 -- ask for next data to controller
							nstate <= idle;
							if (RUN = '1') then nstate <= header;
							end if;
      		when header =>
	      			NEXT_EN		<= '0';	
	      			swcnt <= swcnt + 1; -- still on previous value until procees finished. SIGNAL ONLY!
	      			nstate <= header;
	      			if (swcnt = 0) then
	      				PAYLOAD <= packet_hdr(7 downto 0);
	      				ESTORE_EN <= '1';	      				
	      			elsif (swcnt = WAITREG) then -- 8 bit data transmitted? done?
	      				PAYLOAD <= packet_hdr(15 downto 8);
	      				ESTORE_EN <= '1';
	      			elsif ( swcnt = (2*WAITREG )) then
	      				nstate <= calccrc;
	      				swcnt <= 0;
	      				--cnt32 <= 0; Not necessary.
							end if;
      		when calccrc =>
							nstate <= calccrc;							
      				if (cnt32 = 0) then
      					nstate <= getdata; -- first request for data.
      				elsif (cnt32 = 32) then -- 32 times looped all crc claculated
      					nstate <= outcrc;
      					swcnt <= 0;
      					cnt32 <= 0;
      					cnt8  <= 0;
      				else
      					if (cnt8 = 0) then 
      						txwait := '1';
      					end if;
     						PAYLOAD <= DATA;
      					if (txwait = '1' ) then -- strobe and wait until 8 bits have been transmitted
      						swcnt <= swcnt + 1;
      						if (swcnt = 0) then	
      							ESTORE_EN <= '1';-- make sure INT SIGNAL DOESN'T UPDATE UNTIL END of Process
      					  elsif (swcnt = WAITREG) then-- wait for the payload to be transmitted
										swcnt <= 0;
										txwait := '0';
									end if;
								else
	      					data_in := DATA(cnt8); -- also includes 0 not b/c of order
									cnt8 <= cnt8 + 1;
									if (cnt8 = 7) then
										nstate <= getData;
										-- swcnt <= '0'; -- not necessary but chk.
										cnt8 <= 0;
									else
										xor0 	:= lfsr(15) xor data_in;
										xor12 := xor0 xor lfsr(11);						    
										xor5  := xor0 xor lfsr(4);
    			 					lfsr	<= lfsr(14 downto 12) & xor12 & lfsr(10 downto 5) & xor5 & lfsr(3 downto 0) & xor0;
									--------------------------------------->>>>>>>>>>>>>????????????CRC strore where
									end if; -- cnt8
								end if; -- txwait
							end if; -- cnt32						
      		when  getdata =>
      				nstate <= getdata;
							cnt32 <= cnt32 + 1;
							swcnt <= swcnt + 1;
							if (swcnt = WAITSRAM) then 
								swcnt <= 0;
								nstate <= calccrc;
							elsif ((swcnt = 0 ) or (swcnt = 1)) then ------------->>>>>>>>>>>>>>??????????bug?? 2 clk strobe
								READ_EN <= '1';
							else
								READ_EN <= '1';
							end if;						
      		when outcrc=>
      				crc := lfsr;
							nstate <= outcrc;
							swcnt <= swcnt + 1;
							if (swcnt = 0) then
								PAYLOAD <= crc( 7 downto 0);
								ESTORE_EN <= '1';
							elsif ( swcnt = WAITREG) then
								PAYLOAD <= crc( 15 downto 8);
								ESTORE_EN <= '1';
							elsif ( swcnt = 2*WAITREG) then -->>>>>>>>>>>>??? can u do 2* constant= compiler error.
								nstate <= IDLE;
							end if;
					end case;
	    end process statelogic;
--______________________________________________   
   EDGElogic: Process(clk, RST)
		begin
			
			if (RST = '1') then
				RUN <= '0';
				B<= '0';
				A <= '0';
			elsif(rising_edge(clk))then
				A<= ENCODE_EN;
				B<= A;
				if ( A = '1') then -- FALLING EDGE
				  if( (A xor B)  = '1') then 
				  	RUN <= '1';
				  else 
				  	RUN<= '0';
				  end if;
				end if;
			end if;			
		end process EDGElogic;
end b_edata;
