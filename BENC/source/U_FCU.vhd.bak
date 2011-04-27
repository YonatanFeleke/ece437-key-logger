-- $Id: $
-- File name:   U_FCU
-- Created:     4/25/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: FIFO contoller unit. FCU controls data transfer between FIFO 0(BUFFER) and FIFO 1(OUTPUT)


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

entity U_FCU is
	port(
		D_CLK	:	in std_logic;
		RST	:	in std_logic;
		EOP	:	in	std_logic;
		CRC_ERROR	:	in	std_logic;
		R_ERROR		:	in std_logic;
		W_ENABLE1	:	out	std_logic;
		R_ENABLE0	:	out std_logic;
		EMPTY0	:	in std_logic;
		FULL0		:	in	std_logic;
		FULL1		:	in	std_logic);
		--EMPTY1	:	in	std_logic);
end U_FCU;

architecture behavioral of U_FCU is
	type state_type is (DUMP, RENABLE, WENABLE, IDLE, WWAIT, EOPWAIT);
	signal state, nextstate	:	state_type;
	signal ctr	:	integer range 0 to 2;

	begin
		reg	:	process(D_CLK,RST)
		begin
			if(RST = '1') then state <= IDLE;
			elsif(rising_edge(D_CLK)) then state <= nextstate;
			if(state = IDLE and EOP = '1') then
				if(ctr < 1) then ctr <= ctr + 1;
				end if;
			else ctr <= 0;
			end if;
			end if;

		end process reg;

		nextstatelogic	:	process(STATE, EOP, R_ERROR, EMPTY0, FULL1, CTR, FULL0, CRC_ERROR)
		begin
			nextstate <= idle;
			case state is
			when IDLE =>
				if(R_ERROR = '1' or (FULL0 = '1' and EOP = '0')) then nextstate <= DUMP;
				elsif (EOP = '1' and ctr = 1) then
					if(CRC_ERROR = '1') then nextstate <= DUMP;
					else nextstate <= WWAIT;
					end if;
				else nextstate <= IDLE;
				end if;
			when DUMP => 
				if(EMPTY0 = '1') then nextstate <= EOPWAIT;
				else nextstate <= DUMP;
				end if;
			when WENABLE =>
				if(FULL1 = '0') then nextstate <= RENABLE;
				else nextstate <= WWAIT;
				end if;
			when RENABLE =>
				if(EMPTY0 = '0') then nextstate <= WENABLE;
				else nextstate <= EOPWAIT;
				end if;
			when WWAIT=>
				if(FULL1 = '0') then nextstate <= WENABLE;
				else nextstate <= WWAIT;
				end if;
			when EOPWAIT =>
				if(EOP = '0') then nextstate <= IDLE;
				else nextstate <= EOPWAIT;
				end if;
			end case;
		end process nextstatelogic;
		
		outputlogic: process(state)
		begin
			case state is
				when IDLE =>
					W_ENABLE1 <= '0';
					R_ENABLE0 <= '0';
				when DUMP =>
					W_ENABLE1 <= '0';
					R_ENABLE0 <= '1';
				when WENABLE =>
					W_ENABLE1 <= '1';
					R_ENABLE0 <= '0';
				when RENABLE =>
					W_ENABLE1 <= '0';
					R_ENABLE0 <= '1';
				when WWAIT =>
					W_ENABLE1 <= '0';
					R_ENABLE0 <= '0';
				when EOPWAIT =>
					W_ENABLE1 <= '0';
					R_ENABLE0 <= '0';
			end case;
		end process outputlogic;		
end behavioral;
