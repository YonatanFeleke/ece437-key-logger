-- $Id: $
-- File name:   decode.vhd
-- Created:     2/15/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Decoder for the USB project.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY decode is
	port(
		CLK					:		IN			std_logic;
		RST_N				:		IN 			std_logic;
		D_PLUS			: 	IN			std_logic;
		SHIFT_ENABLE: 	IN 			std_logic;
		EOP					: 	IN			std_logic;
		D_ORIG			:		OUT			std_logic );
		
end decode;

architecture behav of decode is

	signal A,B : std_logic;
	begin
	
	stateReg: process(clk,RST_N, SHIFT_ENABLE, D_PLUS)
	begin
		if (RST_N = '0') then
			A <= '1';
			B <= '1';
			D_ORIG <= '1';
		elsif (rising_edge(clk)) then
			if(EOP = '1') then
				A<= '1';
			elsif(SHIFT_ENABLE = '1') then
				A<= D_PLUS;
			else
				A<= A;
			end if;

			
			B <= D_PLUS;
			D_ORIG <= not(A xor B);
			

			
			
		end if; 
		
	end process stateReg;
	

	
end behav;
				
		
		
		
