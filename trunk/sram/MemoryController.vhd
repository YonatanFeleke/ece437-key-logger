-- $Id: $
-- File name:   MemoryController.vhd
-- Created:     4/12/2011
-- Author:      Evan Graves
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Memory_controller file


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

Entity controller is
  port(clk  : in std_logic;
      rst  : in std_logic;
      --data_in : in std_logic_vector(7 downto 0);
      full  : in std_logic;
      empty : in std_logic;
      r_enable_in : in std_logic;
      r_error : in std_logic;
      data_out  : out std_logic_vector(7 downto 0);
      r_enable_out  : out std_logic);
    end controller;
    
architecture statemachine of controller is
      type stateType is (idle, RCV_Data);
        signal state, nextState: stateType;
        begin
        reg: process(rst, clk)
        begin
          if rst='0' then
            state <= idle;
          elsif rising_edge(clk) then
            state<=nextState;
          end if;
        end process reg;
        
Next_logic: process(state, full, empty, r_error, r_enable_in)
  begin
    case state is
      when idle =>
        if (r_error = '0') then nexState <= idle;
        end if;
        if (empty = '0') then nextState <= idle;
        end if;
        if (full = '1') then nextState <= RCV_Data;
        else  nextState <= idle;
        end if;
      when RCV_Data =>
        if (r_error = '0') then nexState <= idle;
        end if;
        if (empty = '0') then nextState <= idle;
        end if;
        if (full = '1') then nextState <= RCV_Data;
        else nextState <= idle;
        end if;       