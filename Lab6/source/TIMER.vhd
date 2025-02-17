-- $Id: $
-- File name:   timer
-- Created:     2/17/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: This is the timer that will pulse shift enable at certain intervals, and will resync on a dedge. 


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY timer is
	port(
		CLK					:		IN			std_logic;
		RST_N				:		IN			std_logic;
		D_EDGE			:		IN			std_logic;
		RCVING			:		IN 			std_logic;
		SHIFT_ENABLE:		OUT			std_logic);
		
end timer;

architecture behav of timer is 
type state_type is (idle, lwait, hwait, shiftOut);
signal state, nextstate: state_type;
signal strobel, strobeh: std_logic;
begin

	stateReg: process(clk,RST_N, D_EDGE)
	variable cnt4: integer range 0 to 7;
	begin
		if (RST_N = '0') then
			state <= idle;
			cnt4 := 0;
			strobel <= '0';
			strobeh <= '0';

		elsif (rising_edge(clk)) then
			state <= nextstate;
			if((state = idle) or (state = shiftOut)) then
				cnt4 := 0;
			else
				cnt4 := cnt4 + 1;
			end if;
			
			if (cnt4 = 1) then
				strobel <= '1';
				strobeh <= '0';
			elsif (cnt4 = 6) then
				cnt4 := 0;
				strobeh <= '1';
				strobel <= '0';
			elsif((D_EDGE = '1') ) then
				cnt4 := 0;	
			else
				strobeh <= '0';
				strobel <= '0';
			end if;
			
		--elsif((D_EDGE = '1') ) then 
			--cnt4 := 0;
				
		end if;
		
	end process stateReg;
	
	
	nLogic: process(state, D_EDGE, RCVING, strobel, strobeh)
	begin
		
		nextstate <= state;
		case state is 
		
		
		
		when idle =>
			if (RCVING = '1') then
			 nextstate <= lwait;
				--nextstate <= shiftOut;
			end if;
			
		when lwait =>
			if (RCVING = '0') then
				nextstate <= idle;
			elsif (D_EDGE = '1') then 
				nextstate <= lwait;
				--nextstate <= shiftOut;
			--elsif ((strobel = '1') and (D_EDGE = '0')) then 
				--nextstate <= shiftOut;
			else
				nextstate <= shiftout;
			end if;
			
		
		when hwait =>
			if (RCVING = '0') then
				nextstate <= idle;
			elsif (D_EDGE = '1') then
				nextstate <= lwait;
				--nextstate <= shiftOut;
			elsif (strobeh = '1')  then
				nextstate <= shiftOut;
			end if;
			
		when shiftOut => 
				nextstate <= hwait;

		end case;
		
	end process nLogic;
	
	
	outLogic: process (state,D_EDGE)
	begin 

		SHIFT_ENABLE <= '0';
		
		case state is
		
		when shiftOut =>
			
				SHIFT_ENABLE <= '1';
		

		
		when others =>
			SHIFT_ENABLE <= '0';
			
		end case;
		
	end process outLogic;
	
end behav;
		
		
		
		
			
