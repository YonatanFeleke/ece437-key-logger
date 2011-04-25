-- $Id: $
-- File name:   timer.vhd
-- Created:     2/22/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Timer source code for USB receiver


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

Entity U_TIMER is
  port(D_CLK  : in  std_logic;
       RST_N  : in  std_logic;
       D_EDGE : in  std_logic;
       RCVING  : in std_logic;
       SHIFT_ENABLE : out std_logic);
end U_TIMER;

architecture behavioral of U_TIMER is
  type state_type is(IDLE, STROBE, WAIT2, WAIT8, SYNC);
  signal  state, nextstate : state_type;
  begin
    Statereg  : process(D_CLK, RST_N)
    begin
      if(RST_N = '1') then state <= IDLE;
      elsif (rising_edge(D_CLK)) then state <= nextstate;
      end if;
    end process statereg;
    
    Statelogic  : process(STATE, D_EDGE, D_CLK, RCVING)
    variable  ctr2, ctr8  : integer range 0 to 10; 
    begin
      if (RCVING = '0') then nextstate <= IDLE;
      elsif (D_EDGE = '1') then nextstate <= SYNC;
      else
      case state is
      when IDLE =>
        ctr2 := 2;
        ctr8 := 0;
        if (RCVING = '1') then nextstate <= WAIT2;
        else nextstate <= IDLE;
        end if;
      when SYNC =>
        ctr2:= 2;
        ctr8 := 0;
        nextstate <= WAIT2;
				--nextstate <= STROBE;
      when  WAIT2 =>
        if(ctr2 = 2) then nextstate <= STROBE;
        else 
          --ctr2 := ctr2 + 1;
          nextstate <= WAIT2;
        end if;
      when WAIT8 =>
        if(d_edge = '1') then nextstate <= SYNC;
        elsif(ctr8 = 6) then 
          nextstate <= STROBE;
        else 
          nextstate <= WAIT8;
          --ctr8 := ctr8 + 1;
        end if;
      when  STROBE => 
        nextstate <= WAIT8;
        ctr8 := 0;
        ctr2 := 2;
      when others => nextstate <= IDLE;
      end case;
    end if;
      
      if(rising_edge(D_CLK)) then
        if(state = WAIT2) then ctr2 := ctr2 + 1;
        elsif(state = WAIT8) then ctr8 := ctr8 + 1;
        --elsif(state = STROBE) then bitctr := bitctr + 1;
         end if;
       end if;
    end process StateLogic;
    
        
    outLogic : process(state, rst_n)
    begin
      case state is
      when IDLE =>
        SHIFT_ENABLE <= '0';
      when STROBE =>
        SHIFT_ENABLE <= '1';
      when SYNC =>
        SHIFT_ENABLE <= '0';
      when WAIT8 =>
        SHIFT_ENABLE <= '0';
      when WAIT2 =>
        SHIFT_ENABLE <= '0';
      end case;
    end process outLogic;
  end behavioral;
