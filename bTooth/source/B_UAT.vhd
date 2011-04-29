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
		generic (WAITSRAM : natural := 10;	 -- wait for 5264 cycles before 8 bit data is transmitted after nestore_en 1 clk Strobe
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
	signal state,nxtstate: state_type;
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
  	elsif(rising_edge(clk)) then
  		state <= nxtstate;
  	end if;
  end process state_reg;
  --_______________________________________________________________________________
  
  nxt_state: process(state,TRANS_EN,cnt128,ESTORE_EN,cnt34,cnt658,cnt8)--bitstate
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
  		if(cnt128 = "1111111") then -- skips the last data
  			nxtstate <= eStoreidle;
  		else
  			nxtstate <= sendHA;
  		end if;-- count 128 bits
--  		if(cnt658 = "1010010010") then
  		if(cnt658 = "1010010001") then -- 1 clk lag before cnt658 gets it
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
--  		if(cnt658 = "1010010010") then
  		if(cnt658 =   "1010001110") then
  			nxtcnt658 <= "0000000000";
  		else
  			nxtcnt658 <= cnt658 + "0000000001";
  		end if;-- wait 658 cycles before sendign bit
  		nxtcnt34 <= cnt34 + "000001"; -- 32 data + 16 crc
  		nxtcnt8 <= cnt8 + "001";
			if(cnt8 = "0111") then
				nxtstate <= eStoreidle;
			else
--				if(cnt34 = "100010") then
				if(cnt34 = "100011") then  -- missing data
					nxtstate <= idle;
				else
					nxtstate <= sendEight;
				end if;-- chk if all sent else send next
			end if; -- reloop 8 times for 8 bits in pload
  	end case;  
  end process nxt_state;
--_______________________________________________    
  output_reg: process(CLK, state,HEADER,ACCESS_CODE,tHeader,PAYLOAD,pLoad,RST) 
  begin
  	case state is 
  		when idle =>
	  		nxtANT <= '0';
  			tHeader <=  HEADER & ACCESS_CODE & "01"; -- 128
	  		pload <= "00000000"; -- ADDED MAY CAUSE ISSUES
  		when sendHA => 
  				nxtANT <= tHEADER(0);
  		when eStoreidle =>
--  			nxtANT <= '0';
  			pLoad <= PAYLOAD;
  		when sendEight =>
  			nxtANT <= pLOAD(0);
  	end case;  	
  	
  	if (RST = '1') then
  		ANT_LOUT <= '0';
		  cnt658 <= "0000000000";
		  cnt34<= "000000";
		  cnt128<= "00000000";
		  cnt8 <= "0000";
		  nxtANT <= '0';
  	elsif(rising_edge(clk)) then  			  
		  ANT_LOUT <= nxtANT;
		  if( state = idle) then
	 		  cnt658 <= "0000000000";
			  cnt34<= "000000";
			  cnt128<= "00000000";
			  cnt8 <="0000";
			elsif(state = sendHA) then
		  		cnt658 <= nxtcnt658;			  	
--					if(cnt658 = "1010010001") then
		  		if(cnt658 = "1010010000") then					
						tHEADER<=tHEADER(0)&tHEADER(127 downto 1);
						cnt128<= nxtcnt128;
					end if;
			elsif(state = sendEight) then
--	  		if(cnt658 = "1010010001") then
	  		if(cnt658 = "1010000000") then
  				pLOAD<= pLoad(0)&pLoad(7 downto 1);
  				cnt8 <= nxtcnt8;
  				if(cnt8 ="0111") then
		  			cnt34<= nxtcnt34;
		  		end if;
  			end if;			
		  	cnt658 <= nxtcnt658;
			else-- eidle
	 		  cnt658 <= "0000000000";
--			  cnt34<= "000000";
			  cnt128<= "00000000";
			  cnt8 <= "0000";
		  end if;
  	end if;	 
  end process output_reg;
end b_serialtx;
