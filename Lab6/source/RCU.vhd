-- $Id: $
-- File name:   rcu.vhd
-- Created:     2/22/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: RCU to control all functions within the simplified USB.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY rcu is
	port(
		CLK					:		IN			std_logic;
		RST_N				:		IN			std_logic;
		D_EDGE			:		IN			std_logic;
		EOP					:		IN			std_logic;
		SHIFT_ENABLE:		IN			std_logic;		
		RCV_DATA		:		IN			std_logic_vector(7 downto 0);		
		RCVING			:		OUT			std_logic;
		W_ENABLE		:		OUT			std_logic;		
		R_ERROR			:		OUT			std_logic);
		
end rcu;

architecture behav of rcu is
type state_type is (idle, rcvwait, rcvsync, chksync, rcvbyte,fifostrobe,fpad2,fpad3,ierror,serror,eoperror, eopidle);
signal state,nextstate : state_type;
signal count : std_logic;
signal cnt, eopct : integer range 0 to 8;
	begin
	
	statelogic: process(CLK, RST_N)
	begin
	
		if (RST_N = '0') then
			state <= idle;
			cnt<=0;
			eopct <= 0;
		elsif(rising_edge(clk)) then
			state <= nextstate;
			if ((SHIFT_ENABLE = '1') and (count = '1')) then
				cnt<= cnt + 1;
				eopct <= 0;
			elsif(count = '0') then
				cnt<=0;
			end if;
			if((state = fifostrobe)) then
				eopct<= eopct + 1;
			end if;
				
		end if;
		
	end process statelogic;
	
	
	nextlogic: process(state, D_EDGE, EOP, SHIFT_ENABLE, RCV_DATA, cnt)

	begin
	
		nextstate <= state;
		
		case state is 
		
		when idle =>
		
			if (D_EDGE = '1') then
				nextstate <= rcvwait;
			else
				nextstate <= state;
				
			end if;

			
		when rcvwait =>  -- check with your shift reg to see when it gets data ( either 1 cycle after or just at the moment);
		
			if (EOP = '1') then
				nextstate <= ierror;
			else
				nextstate <= rcvsync;
			end if;
			
		when rcvsync =>
		
			if (EOP = '1') then
				nextstate <= ierror;
			elsif(cnt = 8) then
				
				nextstate <= chksync;
			end if;
			
		when chksync =>
		
			if (EOP = '1') then
				nextstate <= ierror;
			elsif(RCV_DATA = "10000000") then
				nextstate <= rcvbyte;
			else
				nextstate <= serror;
			end if;
			
		when rcvbyte =>
		
			if (EOP = '1') then
				nextstate <= ierror;
			elsif(cnt = 8) then
				nextstate <= fifostrobe;
			end if;
			
		when fifostrobe =>
				if (EOP = '1') then
					nextstate <= eopidle;
				else
					nextstate <= fpad2;
				end if;
		when serror =>
		
			if (EOP = '1') then
				nextstate <= ierror;
			else
				nextstate <= state;
			end if;
			
			
		when ierror => 
			
			if (D_EDGE = '1') then
				nextstate <= eoperror;
			else
				nextstate <= state;
			end if;
		-- Added 2 New States, EOPIDLE, EOPERROR
		
		when eoperror => 
			if (D_EDGE = '1') then
				nextstate <= rcvwait;
			else
				nextstate <= state;
			end if;
		
		when eopidle =>
			if (D_EDGE = '1') then
				nextstate <= idle;
			else
				nextstate <= state;
			end if;
		
			-- fifo pad
			
		--when fpad1 => 
			--if (EOP = '1') then
				--nextstate <= eopidle;
			--else
				--nextstate <= fpad3;
			--end if;

		
		when fpad2 => 
			if (EOP = '1') then
				nextstate <= eopidle;
			else
				nextstate <= fpad3;
			end if;

		
		when fpad3 => 
			if (EOP = '1') then
				nextstate <= eopidle;
			else
				nextstate <= rcvbyte;
			end if;
		end case;
		
	end process nextlogic;
	

	outlogic: process(state)
	begin
	
		case state is 
		
		when idle =>
			count <= '0';
			RCVING <= '0';
			W_ENABLE <= '0';
			R_ERROR <= '0';
			
		when rcvwait =>
			
			count <= '0';
			RCVING <= '1'; 
			W_ENABLE <= '0';
			R_ERROR <= '0';
			
		when rcvsync =>
			
			count <= '1';
			RCVING <= '1'; 
			W_ENABLE <= '0';
			R_ERROR <= '0';

		when chksync =>
			
			count <= '0';
			RCVING <= '1'; 
			W_ENABLE <= '0';
			R_ERROR <= '0';

		when rcvbyte =>
			count <= '1';
			RCVING <= '1'; 
			W_ENABLE <= '0';
			R_ERROR <= '0';

		when fifostrobe =>
			count <= '0';
			RCVING <= '1'; 
			W_ENABLE <= '1';
			R_ERROR <= '0';

		when ierror =>
		
			RCVING <= '0'; 
			W_ENABLE <= '0';
			R_ERROR <= '1';
			count <= '0';

		when serror =>
		
			RCVING <= '1'; 
			W_ENABLE <= '0';
			R_ERROR <= '1';
			count <= '0';
			-- added 2 new states, EOPERROR, EOPIDLE
		when eoperror =>
			RCVING <= '0';
			W_ENABLE <= '0';
			R_ERROR <='1';
			count <= '0';
		when eopidle =>
			RCVING <= '0';
			W_ENABLE <= '0';
			R_ERROR <='0';
			count <= '0';
			
			-- added a Fifo strobe pad state
			
		--when fpad1 =>
		--	count <= '0';
		--	RCVING <= '1'; 
		--	W_ENABLE <= '0';
		--	R_ERROR <= '0';
		when fpad2 =>
			count <= '0';
			RCVING <= '1'; 
			W_ENABLE <= '0';
			R_ERROR <= '0';
		when fpad3 =>
			count <= '0';
			RCVING <= '1'; 
			W_ENABLE <= '0';
			R_ERROR <= '0';
		
			
		end case;
		
	end process outlogic;
	
end behav;



















		
			
			
			
			
			
