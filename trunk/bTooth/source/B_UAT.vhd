-- $Id: $ mg35
-- File name:   B_UAT.vhd
-- Created:     4/23/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     Universal Asynchronous Transmit

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY B_UAT IS
		generic (WAITSRAM : natural := 10;
						 -- wait for 5264 cycles before 8 bit data is transmitted after nestore_en 1 clk Strobe
						 WAITREG	:	natural := 5264 ); -- Transmit wait time. FIX THIS DOESN'T HAVE LAG CLKS.

    port	(
    		 		CLK 						: in std_logic;
         		RST 						: in std_logic;
         		ACCESS_CODE			: in std_logic_vector(71 downto 0);
         		HEADER 					: in std_logic_vector(53 downto 0);
         		PAYLOAD 				: in std_logic_vector(7 downto 0);
	         	TRANS_EN		 			: in std_logic; -- 1 CLK cycle clk to start transmit 126 bits
	         	ESTORE_EN				: in std_logic; -- 1 CLK strobe for 8 bit data
	         	ANT_LOUT 				: OUT std_logic); -- LEFT ANTENNA OUTPUT
END B_UAT;

architecture b_serialtx of B_UAT is
	type state_type is (idle, sendHA, eStoreidle, sendEight);
	type bit_send is (idle,bit1,bit2,bit3,bit4,bit5,bit6,bit7,bit8);
	signal state,nxtstate: state_type;
	signal bitstate, nxtbitstate: bit_send;
	signal cnt658,nxtcnt658: std_logic_vector(9 downto 0);
	signal cnt34,nxtcnt34: std_logic_vector(5 downto 0);
	signal cnt8,nxtcnt8: std_logic_vector(3 downto 0);
	signal cnt128,nxtcnt128: std_logic_vector(7 downto 0);
	signal nxtANT: std_logic;
	signal tHeader: std_logic_vector(127 downto 0);  -- possibility of removing this
	signal pLoad: std_logic_vector(7 downto 0);
begin
		
	state_reg:process(CLK, RST)
  	begin
  	if(RST = '1') then
  		state <= idle;
  		bitstate <= idle;
  	elsif(rising_edge(clk)) then
  		state <= nxtstate;
  		bitstate <= nxtbitstate;
  	end if;
  end process state_reg;
  --__________________________________
  
  nxt_state: process(state,TRANS_EN,cnt128,ESTORE_EN,bitstate,cnt34,cnt658)
  begin   
  case state is 
  	when idle => 
  		nxtcnt658 <= "0000000000";
	 		nxtcnt128 <= "00000000";
  		nxtcnt34 <=		"000000";
  		nxtcnt8 <=  "0000";
  		if (TRANS_EN = '1') then
  			nxtstate <= sendHA;
  		else
  			nxtstate <= idle;
  		end if;
  	when sendHA =>
  		if(cnt128 = "1111111") then
  			nxtstate <= eStoreidle;
  		else
  			nxtstate <= sendHA;
  		end if;-- count 128 bits
  		if(cnt658 = "1010010010") then
  			nxtcnt658 <= "0000000000";
  		else -- wait 658 clk cycles
  			nxtcnt658 <= cnt658 + "0000000001";
  		end if;
	  	nxtcnt128 <= cnt128 + "0000001";		
		when eStoreidle =>
			if(ESTORE_EN = '1') then			
				nxtstate <= sendEight;  			
  		else-- transmit 8 if enabled
  			nxtstate <= eStoreidle;  		
  		end if;-- wait for ESTORE_EN
  	when sendEight =>
  		if(cnt658 = "1010010010") then
  			nxtcnt658 <= "0000000000";
  		else
  			nxtcnt658 <= cnt658 + "0000000001";
  		end if;-- wait 658 cycles before sendign bit
  		nxtcnt34 <= cnt34 + "000001"; -- 32 data + 16 crc
  		nxtcnt8 <= cnt8 + "001";
			if(cnt8 = "1000") then
				nxtstate <= eStoreidle;
			else
				if(cnt34 = "100010") then
					nxtstate <= idle;
				else
					nxtstate <= sendEight;
				end if;-- chk if all sent else send next
			end if; -- reloop 8 times for 8 bits in pload
  	end case;  
  end process nxt_state;
--_______________________________________________    
  output_reg: process(CLK, state) 
  begin
  	case state is 
  		when idle =>
	  		nxtANT <= '0';
  			tHeader <=  HEADER & ACCESS_CODE & "01";
	  		pload <= "00000000"; -- ADDED MAY CAUSE ISSUES
  		when sendHA => 
  				nxtANT <= tHEADER(0);
  		when eStoreidle =>
  			nxtANT <= '0';
  			pLoad <= PAYLOAD;
  		when sendEight =>
  				nxtANT <= pLOAD(0);
  	end case;  	
  	if (RST = '1') then
  		ANT_LOUT <= '1';
		  cnt658 <= "0000000000";
		  cnt34<= "000000";
		  cnt128<= "00000000";
		  cnt8 <= "0000";
  	elsif(rising_edge(clk)) then  	
		  ANT_LOUT <= nxtANT;
		  if( state = idle) then
	 		  cnt658 <= "0000000000";
			  cnt34<= "000000";
			  cnt128<= "00000000";
			  cnt8 <="0000";
			elsif(state = sendHA) then
		  		cnt658 <= nxtcnt658;			  	
					if(cnt658 = "1010010001") then
						tHEADER<=tHEADER(0)&tHEADER(127 downto 1);
						cnt128<= nxtcnt128;
					end if;
				
			elsif(state = sendEight) then
	  		if(cnt658 = "1010010001") then
  				pLOAD<= pLoad(0)&pLoad(7 downto 1);
  				cnt8 <= nxtcnt8;
  				if(cnt8<="1000") then
		  			cnt34<= nxtcnt34;
		  		end if;
  			end if;			
		  	cnt658 <= nxtcnt658;
			else
	 		  cnt658 <= "0000000000";
			  cnt34<= "000000";
			  cnt128<= "00000000";
			  cnt8 <= "0000";
		  end if;
  	end if;	 
  end process output_reg;
end b_serialtx;
