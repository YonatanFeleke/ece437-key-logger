-- $Id: $
-- File name:   e_encController.vhd
-- Created:     4/14/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Encryption block Controllerrrrr!!!!!


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY e_encController is
	port(
		DATA				: 	IN			std_logic_vector(7 downto 0);
		FULL				: 	IN 			std_logic;
		EMPTY				:		IN			std_logic;
		CLK					:		IN			std_logic;
		RST					:		IN			std_logic;
		START				:		OUT			std_logic;
		R_ENABLE		:		OUT			std_logic;
		W_ENABLE		:		OUT			std_logic;
		ENC_LEFT		:		OUT			std_logic_vector(31 downto 0);
		ENC_RIGHT		:		OUT			std_logic_vector(31 downto 0));
end e_encController;


architecture behav of e_encController is

signal compileCT,nxtCompCT	: std_logic_vector(2 downto 0);
signal rndCT, nxtrndCT			: std_logic_vector(3 downto 0);
signal CompData 	: std_logic_vector(63 downto 0);
signal ctRnd,ctComp   : std_logic;


begin

	Compreg:process(CLK,RST)
	begin
		
		if(RST = '1') then
			compileCT <= "000";
						
		elsif((EMPTY ='0') and (rising_edge(clk)) and(rndCT = "0000") and (ctComp='1')) then
			compileCT <= nxtCompCT;
			r_enable <= '0';
		elsif((EMPTY ='0') and (falling_edge(clk)) and(rndCT = "0000")and (ctComp='1')) then
			r_enable <= '1';
		else
			r_enable <= '0';	
		end if;
		
	end process;
	
	nxtCompCT <= compileCT + "001";
	
	process(compileCT, DATA, rndCT)
	begin
	
	if (RST = '1') then
		CompData<="0000000000000000000000000000000000000000000000000000000000000000";
		ctComp <= '1';
		ctRnd <='0';
	end if;
		
	if(nxtCompCT = "000") then
		ctComp <= '0';
		ctRnd <= '1';
	elsif(nxtrndCT = "0000") then
		ctComp <= '1';
		ctRnd <= '0';
	end if;


	case compileCT is 
	
	when "000" =>
		CompData(63 downto 56) <= DATA;
	when "001" =>
		CompData(55 downto 48) <= DATA;
	when "010" =>
		CompData(47 downto 40) <= DATA;
	when "011" =>
		CompData(39 downto 32) <= DATA;
	when "100" =>
		CompData(31 downto 24) <= DATA;
	when "101" =>
		CompData(23 downto 16) <= DATA;
	when "110" =>
		CompData(15 downto 8) <= DATA;
	when "111" =>
		CompData(7 downto 0) <= DATA;
	when others =>
		CompData<="0000000000000000000000000000000000000000000000000000000000000000";
	end case;
	end process;
	
	rndReg:process(clk,RST,compileCT)
	begin
	
		if (RST ='1') then
			rndCT <= "0000";
		elsif(compileCT ="111" and rising_edge(clk) and (ctRnd='1')) then
			rndCT <= nxtrndCT;
		end if;
		
	end process;
	
	nxtrndCT <= rndCT + "0001";
	
	START <= '0' when rndCT ="000" else '1';
	
	W_ENABLE <= '1' when rndCT = "1111" else '0';
	
	ENC_LEFT <= CompData(63 downto 32);
	ENC_RIGHT <= CompData(31 downto 0);
	
	
			
			
end behav;
