 -- $Id: $
-- File name:   ADDRgen2.vhd
-- Created:     4/18/2011
-- Author:      Evan Graves
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Address Generator


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

Entity ADDRgen2 is
  port(Resend  : in std_logic;
      clk : in std_logic;
      rst : in  std_logic;
      r_enable_in : in std_logic;
      w_enable_in : in std_logic;
      read_ready : in std_logic;
      ADDR  : out std_logic_vector(11 downto 0);
      --empty  : out std_logic;
      r_enable_out : out std_logic;
      w_enable_out  : out std_logic;
      read_done : out std_logic);
    end ADDRgen2;
    
    architecture statemachine of ADDRgen2 is
      type stateType is (idle, read_data, write_data, read_control);
        signal state, nextState: stateType;
        signal addr_counter, new_addr, store_addr, new_store : std_logic_vector(11 downto 0);
        signal counter32, newcounter32 : std_logic_vector(4 downto 0);
          begin
          reg: process(rst, clk)
          begin
            if rst='1' then
              state <= idle;
              addr_counter <= "000000000000";
              store_addr <= "000000000000";
              counter32 <= "00000";
            elsif rising_edge(clk) then
              state<=nextState;
              addr_counter <= new_addr;
              counter32 <= newcounter32;
              store_addr <= new_store;
            end if;
          end process reg;

Next_logic: process(state, Resend, r_enable_in, w_enable_in, read_ready, addr_counter, counter32, store_addr)
begin
  new_addr <= "000000000000";
  newcounter32 <= "00000";
  new_store <= "000000000000";
  case state is
  when idle =>
    new_addr <= addr_counter;
    new_store <= store_addr;
    if (w_enable_in = '1') then nextState <= write_data;
    elsif ((r_enable_in = '1') or (Resend = '1')) then nextState <= read_control;
    else nextState <= idle;
    end if;
  when write_data =>
    new_store <= store_addr;
    new_addr <= addr_counter + 1;
    nextState <= idle;
  when read_control =>
    new_addr <= addr_counter;
    new_store <= store_addr;
    if(read_ready = '1') then
    --tmp_addr <= addr_counter; 
    new_store <= addr_counter;
    nextState <= read_data;
    --elsif (Resend = '1') then 
    --store_addr <= addr_counter;
    --nextState <= read_data;
    else nextState <= idle;
    end if;
  when read_data =>
    new_addr <= addr_counter;
    new_store <= store_addr - 1;
    if(counter32 = "11111") then
       newcounter32 <= "00000";
       nextState <= read_control;
    else
       newcounter32 <= counter32 + 1;
       nextState <= read_data;
    end if;  
   end case;
 end process Next_logic;
    
 Out_logic: process(state, addr_counter, store_addr)
 begin
 case state is
 when idle =>
    ADDR <= addr_counter;
    r_enable_out <= '0';
    w_enable_out <= '0';
    read_done <= '0';
   
 when write_data =>
   ADDR <= addr_counter;
   r_enable_out <= '0';
   w_enable_out <= '1';
   read_done <= '0';
 when read_control =>
   ADDR <= addr_counter;
   r_enable_out <= '0';
   w_enable_out <= '0';
   read_done <= '0';
 when read_data =>
   ADDR <= store_addr;
   r_enable_out <= '1';
   w_enable_out <= '0';
   read_done <= '1';
 end case;
 end process Out_logic;           
 end statemachine;