-- $Id: $
-- File name:   shift_reg.vhd
-- Created:     2/17/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Shift Register that holds data before read into FIFO bufer. 


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY shift_reg is
	port(
		CLK					:		IN			std_logic;
		RST_N				:		IN			std_logic;
		SHIFT_ENABLE:		IN			std_logic;
		D_ORIG			:		IN 			std_logic;
		RCV_DATA		:		OUT			std_logic_vector(7 downto 0) );
		
end shift_reg;

architecture behav of shift_reg is
	signal tData: std_logic_vector(7 downto 0);
begin 
	
	process(clk, RST_N)

	begin
		

		
		if (RST_N = '0') then
			
			tData <= "00000000";
		elsif(rising_edge(clk)) then
			if (SHIFT_ENABLE = '1') then
				tData <= D_ORIG & tData(7 downto 1);
				
			end if;
			
			

		end if;
		

	end process;
	
	process(tData)
	begin
		RCV_DATA <= tData;
	end process;
	



	
end behav;
