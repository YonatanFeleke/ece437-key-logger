-- $Id: $
-- File name:   decode.vhd
-- Created:     2/21/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Code for the decode block of the receiver.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

Entity U_DECODE is
  port(D_CLK  : in  std_logic;
       rst_n  : in std_logic;
       d_plus : in  std_logic;
       shift_enable : in  std_logic;
       eop  : in  std_logic;
       d_orig : out std_logic);
 end U_DECODE;

architecture behavioral of U_DECODE is
  type state_type is(IDLE, SRST, OUTPUT);
  signal  state, nextstate  : state_type;
  signal  currentbit, prevbit : std_logic;
  begin
  statereg  : process(D_CLK, rst_n)
  begin
    if(rst_n = '1') then 
			state <= SRST;

    elsif (rising_edge(D_CLK)) then state <= nextstate;
    end if;
  end process statereg;
  
  statelogic  : process(state, eop, shift_enable)
  begin
    case state is
    when IDLE =>
      if(eop = '1') then nextstate <= SRST;
      elsif(shift_enable = '1') then nextstate <= OUTPUT;
      else nextstate <= IDLE;
      end if;
    when OUTPUT =>
      nextstate <= IDLE;
    when SRST =>
			if(eop = '1') then nextstate <= SRST;
			else nextstate <= IDLE;
			end if;
    end case;
  end process statelogic;
  
  outlogic  : process(state, shift_enable, D_PLUS)
  begin
    --currentbit <= d_plus;
		
    case state is
    when IDLE =>
      --currentbit <= d_plus;
			if not(prevbit = currentbit) then d_orig <= '0';
			elsif (prevbit = currentbit) then d_orig <= '1';
			end if;
      --if(shift_enable = '1') then
			--if not(prevbit = currentbit) then d_orig <= '0';
			--elsif (prevbit = currentbit) then d_orig <= '1';
			--end if;
			--prevbit <= currentbit;	
			currentbit <= d_plus;
	
      --else
				--prevbit <= currentbit;
        --prevbit <= '1';
      --end if;
    when OUTPUT =>
			--if not(prevbit = currentbit) then d_orig <= '0';
			--elsif (prevbit = currentbit) then d_orig <= '1';
			--end if;
			if (shift_enable = '0') then prevbit <= d_plus;
			
			end if;
    when SRST =>
			d_orig <= '1';
			currentbit <= d_plus;
			prevbit <= '1';
    end case;
  end process outlogic;
end behavioral;
