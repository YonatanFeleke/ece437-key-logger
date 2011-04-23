-- $Id: $
-- File name:   rkeyGen.vhd
-- Created:     4/10/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: ROUND KEY GENERATORRRRRRR!!!@!@!@!@!


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;


ENTITY e_rkeyGen is
	port(
		RNDNUM			: 	IN			std_logic_vector(3 downto 0);
		START_RST		: 	IN 			std_logic;
		IN_SELECT		:		IN			std_logic;
		CLK					:		IN			std_logic;
		RKEY				:		OUT			std_logic_vector(47 downto 0));
end e_rkeyGen;

architecture behav of e_rkeyGen is

signal ENC_LEFT, ENC_RIGHT,CURLEFT,CURRIGHT: std_logic_vector(27 downto 0);

signal CUR_TOTAL: std_logic_vector(55 downto 0);
signal CUR_TOTAL_S: std_logic_vector(47 downto 0);
begin
	
	
	reg: process(RNDNUM,START_RST, CLK)
	variable ENC_TOTAL_S: std_logic_vector(63 downto 0);
	variable ENC_TOTAL : std_logic_vector(55 downto 0);
	begin 
		
		if (START_RST = '0') then
			ENC_TOTAL_S := "0110100100101101011100110110001101110010011001010110000101101101";
			ENC_TOTAL := ENC_TOTAL_S(56) & ENC_TOTAL_S(48) & ENC_TOTAL_S(40) & ENC_TOTAL_S(32) & ENC_TOTAL_S(24) & ENC_TOTAL_S(16) & ENC_TOTAL_S(8)& ENC_TOTAL_S(0) & ENC_TOTAL_S(57) & ENC_TOTAL_S(49) & ENC_TOTAL_S(41) & ENC_TOTAL_S(33) & ENC_TOTAL_S(25) & ENC_TOTAL_S(17)& ENC_TOTAL_S(9) & ENC_TOTAL_S(1) & ENC_TOTAL_S(58) & ENC_TOTAL_S(50) & ENC_TOTAL_S(42) & ENC_TOTAL_S(34) & ENC_TOTAL_S(26)& ENC_TOTAL_S(18) & ENC_TOTAL_S(10) & ENC_TOTAL_S(2) & ENC_TOTAL_S(59) & ENC_TOTAL_S(51) & ENC_TOTAL_S(43) & ENC_TOTAL_S(35)& ENC_TOTAL_S(62) & ENC_TOTAL_S(54) & ENC_TOTAL_S(46) & ENC_TOTAL_S(38) & ENC_TOTAL_S(30) & ENC_TOTAL_S(22) & ENC_TOTAL_S(14)& ENC_TOTAL_S(6) & ENC_TOTAL_S(61) & ENC_TOTAL_S(53) & ENC_TOTAL_S(45) & ENC_TOTAL_S(37) & ENC_TOTAL_S(29) & ENC_TOTAL_S(21)& ENC_TOTAL_S(13) & ENC_TOTAL_S(5) & ENC_TOTAL_S(60) & ENC_TOTAL_S(52) & ENC_TOTAL_S(44) & ENC_TOTAL_S(36) & ENC_TOTAL_S(28)& ENC_TOTAL_S(20) & ENC_TOTAL_S(12) & ENC_TOTAL_S(4) & ENC_TOTAL_S(27) & ENC_TOTAL_S(19) & ENC_TOTAL_S(11) & ENC_TOTAL_S(3);
			ENC_LEFT <= ENC_TOTAL(55 downto 28);
			ENC_RIGHT<= ENC_TOTAL(27 downto 0);
		elsif (rising_edge(clk)) then
			ENC_LEFT <= CUR_TOTAL(55 downto 28);
			ENC_RIGHT <= CUR_TOTAL(27 downto 0);
			
		end if;
		
		
		
	end process;
	

	--shift: process(CLK)
 -- variable CURLEFT,CURRIGHT: std_logic_vector(27 downto 0);
--	begin	
--		if (rising_edge(clk)) then
		
			CURLEFT <= ENC_LEFT(25 downto 0)&ENC_LEFT(27)&ENC_LEFT(26);
			CURRIGHT <= ENC_RIGHT(25 downto 0)&ENC_RIGHT(27)&ENC_RIGHT(26);
			CUR_TOTAL <= CURLEFT & CURRIGHT;
	
--		end if;
--	end process;
	
	
	CUR_TOTAL_S <= CUR_TOTAL(13) & CUR_TOTAL(16) & CUR_TOTAL(10) & CUR_TOTAL(23) & CUR_TOTAL(0) & CUR_TOTAL(4) & CUR_TOTAL(2) & CUR_TOTAL(27) & CUR_TOTAL(14) & CUR_TOTAL(5) & CUR_TOTAL(20) & CUR_TOTAL(9) & CUR_TOTAL(22) & CUR_TOTAL(18) & CUR_TOTAL(11) & CUR_TOTAL(3) & CUR_TOTAL(25) & CUR_TOTAL(7) & CUR_TOTAL(15) & CUR_TOTAL(6) & CUR_TOTAL(26) & CUR_TOTAL(19) & CUR_TOTAL(12) & CUR_TOTAL(1) & CUR_TOTAL(40) & CUR_TOTAL(51) & CUR_TOTAL(30) & CUR_TOTAL(36) & CUR_TOTAL(46) & CUR_TOTAL(54) & CUR_TOTAL(29) & CUR_TOTAL(39) & CUR_TOTAL(50) & CUR_TOTAL(44) & CUR_TOTAL(32) & CUR_TOTAL(47) & CUR_TOTAL(43) & CUR_TOTAL(48) & CUR_TOTAL(38) & CUR_TOTAL(55) & CUR_TOTAL(33) & CUR_TOTAL(52) & CUR_TOTAL(45) & CUR_TOTAL(41) & CUR_TOTAL(49) & CUR_TOTAL(35) & CUR_TOTAL(28) & CUR_TOTAL(31);
	RKEY <= CUR_TOTAL_S;
	
end behav;
	
	
			
	
	
		


