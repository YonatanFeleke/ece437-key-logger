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
--						 WAITREG	:	natural := 5264 ); -- Transmit wait time. FIX THIS DOESN'T HAVE LAG CLKS.
						 WAITREG	:	natural := 264 ); -- Transmit wait time. FIX THIS DOESN'T HAVE LAG CLKS.
						 -- wait for 5264 cycles before 8 bit data is transmitted after nestore_en 1 clk Strobe
		port (	CLK 						:		in	std_logic;
						RST							:		in	std_logic;
						-- ENCODE _ EN is asserted until the next encode en but should be self fixing
						ENCODE_EN				:		in	std_logic; --cont=>Append=>Header=>Encode 2 clk cycles by controller
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
		signal nlfsr					: 		std_logic_vector( 15 downto 0);
		signal packet_hdr		: 		std_logic_vector( 15 downto 0);
--		signal A,B,RUN					:			std_logic;
		type	 state_type is	(idle,header,calccrc,getdata,outcrc);
		signal	state,nstate	: state_type;
		signal ncnt8										: integer range 0 to 8;
		signal ncnt32 									: integer range 0 to 33; --  reloop for 32 => 256 bit data
		signal nswcnt 									: integer range 0 to WAITREG*2 + 1; --sram wait for finish of transmit 1 and then anotherc
		signal nestore_en,nread_en			: std_logic;
		signal cnt32 										: integer range 0 to 32; --  reloop for 32 => 256 bit data
		signal swcnt 										: integer range 0 to WAITREG*2; --sram wait for finish of transmit 1 and then another
		signal cnt8											: integer range 0 to 7;
		signal Data_in									: std_logic;
		--PAYLOAD <= crc&DATA&length&flowBIT&LCH;
begin
--______________________________________			
		stateprocess : process (RST,CLK)
			begin
				if ( RST = '1') then
					state <= idle;
					cnt32<= 0;
					swcnt<= 0;
					cnt8<= 0;
					ESTORE_EN <= '0';
					READ_EN <= '0';
					lfsr<= "0000000011011001";
				elsif (rising_edge(clk)) then
					state <= nstate;
					cnt32<= ncnt32;
					swcnt<= nswcnt;
					cnt8<= ncnt8;
					ESTORE_EN <= nestore_en;
					READ_EN <= nread_en;
					lfsr <= nlfsr;
				end if;
			end process stateprocess;
--______________________________________________
	statelogic : process (CLK,STATE)
			variable crc									: 		std_logic_vector(15 downto 0);
			variable xor12,xor5,xor0			:			std_logic;
			variable txwait								: 		std_logic;
		begin
     		case state is 
					when idle => -- initialize all reset mode
							length <= "100000000"; -- Need to append 4 bits to make this header 16
							LCH <= "11";
							flowBIT <= '1';
							packet_hdr <= "0000"&length&flowBIT&LCH;
							crc := "0000000011011001";
							PAYLOAD<="00000000";
							-- next state initializations
							nlfsr<= "0000000011011001"; --innit with 8 bit 00000000&UAP[7 downto 0];
							nestore_en <= '0';
							nread_en <= '0';
							ncnt32 <= 0;
							ncnt8 <= 0;
							nswcnt <= 0;
							NEXT_EN		<= '1';	 -- ask for next data to controller
							nstate <= idle;
							-- variable initializations
							crc := "0000000011011001";
							xor12 := '0';
							xor5 := '0';
							xor0 := '0';
							txwait := '0';
							if (ENCODE_EN = '1') then nstate <= header;
							end if;
      		when header =>
	      			NEXT_EN		<= '0';	
	      			nswcnt <= swcnt + 1; -- still on previous value until procees finished. SIGNAL ONLY!
      				nestore_en <= '0';
	      			if (swcnt = 0) then
	      				PAYLOAD <= packet_hdr(7 downto 0);
	      				nestore_en <= '1';
		      			nstate <= header;	      				
	      			elsif (swcnt = WAITREG) then -- 8 bit data transmitted? done?
	      				PAYLOAD <= packet_hdr(15 downto 8);
	      				nestore_en <= '1';
	      			elsif ( swcnt = 2*WAITREG ) then
	      				nswcnt <= 0;
	      				nstate <= calccrc;	
	      				--ncnt32 <= 0; Not necessary.
							end if;
      		when calccrc =>
							nstate <= calccrc;	
							nestore_en <= '0';				
      				if (cnt32 = 0) then
      					nstate <= getdata; -- first request for data.
      				elsif (cnt32 = 32) then -- 33rd run => 32 times looped all crc claculated
      					nstate <= outcrc;
      					nswcnt <= 0;
      					ncnt32 <= 0;
      					ncnt8  <= 0;      					
      				else
--      					if (cnt8 = 0) then  -- skips the first bit!!!!!!!!!!!!!!!
--      						txwait := '1';
--      					end if;
     						PAYLOAD <= DATA;
      					if (txwait = '1' ) then -- strobe and wait until 8 bits have been transmitted
      						nswcnt <= swcnt + 1;      						     				
      						if (swcnt = 0 or swcnt = 1) then
      							nestore_en <= '1';
      					  elsif (swcnt = WAITREG) then-- wait for the payload to be transmitted
										nswcnt <= 0;
										txwait := '0';
									 	ncnt8 <= cnt8 + 1;
									end if;
								else
									ncnt8 <= cnt8 + 1;
									if (cnt8 = 7) then
										nstate <= getData;
										-- nswcnt <= '0'; -- not necessary but chk.
										ncnt8 <= 0;
									else
										xor0 	:= lfsr(15) xor Data_in ;--DATA(cnt8); -- Data(cnt8) is the dataval
										xor12 := xor0 xor lfsr(11);						    
										xor5  := xor0 xor lfsr(4);
    			 					nlfsr	<= lfsr(14 downto 12) & xor12 & lfsr(10 downto 5) & xor5 & lfsr(3 downto 0) & xor0;
									end if; -- ncnt8
								end if; -- txwait
							end if; -- ncnt32						
      		when  getdata =>
      				nstate <= getdata;
							nswcnt <= swcnt + 1;
							if (swcnt = WAITSRAM) then 
								nswcnt <= 0;
								nstate <= calccrc;
								txwait := '1'; -- new data got!
							elsif (swcnt = 0 ) then 
								nread_en <= '1';
								ncnt32 <= cnt32 + 1;
							elsif (swcnt = 1) then -- 2 CLK STROBE??
								nread_en <= '1';
							else
								nread_en <= '0';
							end if;						
      		when outcrc=>
      				crc := lfsr;
							nstate <= outcrc;
							nswcnt <= swcnt + 1;
							nestore_en <= '0';
							if (swcnt = 0) then
								PAYLOAD <= crc( 7 downto 0);
								nestore_en <= '1';
							elsif ( swcnt = WAITREG) then
								PAYLOAD <= crc( 15 downto 8);
								nestore_en <= '1';
							elsif ( swcnt = 2*WAITREG) then -->>>>>>>>>>>>??? can u do 2* constant= compiler error.
								nswcnt <= 0;
								nstate <= IDLE;
							end if;
					end case;
	    end process statelogic;
			Data_in <= DATA(cnt8);
end b_edata;

