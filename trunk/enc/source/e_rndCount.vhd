-- $Id: $
-- File name:   rndCount.vhd
-- Created:     4/10/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Round Counter!!!!!!


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY e_rndCount is
	port(
		CLK					:		IN			std_logic;
		RST					:		IN 			std_logic;
		START				: 	IN			std_logic;
		IN_SELECT		:		OUT			std_logic;
		FIESTELCLK	:		OUT			std_logic;
		RND_CNT			:		OUT			std_logic_vector(3 downto 0));
end e_rndCount;

architecture behav of e_rndCount is

	
	signal NXT_CNT,CUR_CNT: std_logic_vector(3 downto 0);
	begin
	
		stateReg: process (CLK,RST)
		begin
			if(RST = '1' or START = '0') then
				CUR_CNT<= "0000";
			else
				if(START ='1') then
					if(rising_edge(clk)) then
						CUR_CNT <= NXT_CNT;
					end if;
				end if;
			end if;
		end process stateReg;
		
		NXT_CNT <= CUR_CNT + "0001";
		IN_SELECT <= CUR_CNT(3) or CUR_CNT(2) or CUR_CNT(1) or CUR_CNT(0);
		RND_CNT <= CUR_CNT;
		FIESTELCLK <= CLK when (CUR_CNT(3) or CUR_CNT(2) or CUR_CNT(1) or CUR_CNT(0)) = '1' else '0';
		
end behav;
		
		
				
				
