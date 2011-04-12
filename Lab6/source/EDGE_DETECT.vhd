-- $Id: $
-- File name:   edge_detect.vhd
-- Created:     2/17/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Detects Edges.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY edge_detect is
	port(
		CLK					:		IN			std_logic;
		RST_N				:		IN 			std_logic;
		D_PLUS			: 	IN			std_logic;
		D_EDGE			:		OUT			std_logic );
		
end edge_detect;

architecture behav of edge_detect is
--type state_type is (idle,Soutput);
	--signal state,nextstate: state_type;
	signal A,B  : std_logic;
	begin
	
		statelogic: Process(clk, RST_N)
		begin
			
			if (RST_N = '0') then
				A <= '1';
				B<= '1';
				D_EDGE <= '0';
--			state <= idle;
			elsif(rising_edge(clk))then
				A<= D_PLUS;
				B<= A;
				D_EDGE <= A xor B;
				
			end if;
			
		end process statelogic;
		

	
	end behav;
