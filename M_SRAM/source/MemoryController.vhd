 -- $Id: $
-- File name:   MemoryController.vhd
-- Created:     4/12/2011
-- Author:      Evan Graves
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Memory_controller file


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

Entity MemoryController is
  port(clk  : in std_logic;
      rst  : in std_logic;
      full  : in std_logic;
      --empty : in std_logic;
      read_enable_in : in std_logic;
      r_enable  : out std_logic;
      w_enable  : out std_logic;
      r_enable_out : out std_logic; --write busy
      num_writes  : out std_logic);
    end MemoryController;
    
architecture statemachine of MemoryController is
      type stateType is (idle, write_data, read_data, wait_state,second_idle);
        signal state, nextState: stateType;
        signal counter, newcounter: std_logic_vector(2 downto 0);
        signal counter32, newcounter32 : std_logic_vector(4 downto 0);
        signal counter3, newcounter3: std_logic_vector(1 downto 0);
        begin
        reg: process(rst, clk)
        begin
          if rst='1' then
            state <= idle;
            counter <= "000";
            counter32 <= "00000";
            counter3 <= "00";
           
          elsif rising_edge(clk) then
            state<=nextState;
            counter <= newcounter;
            counter32 <= newcounter32;
            counter3 <= newcounter3;
          end if;
        end process reg;
        
Next_logic: process(state, full, read_enable_in, counter, counter32,counter3)
  begin
    newcounter <= "000";
    newcounter32 <= "00000";
    newcounter3 <= "00";
    --nextState <= idle;
    case state is
      when idle =>
        if (full = '1') then nextState <= write_data;
        else nextState <= idle;
        end if; 
      when write_data =>
        
        if (counter32 = "11111") then     --possibly add handshaking to keep num_writes high until Address Generator is ready
          newcounter32 <= "00000";
        end if;
        
        if (counter3 = "11") then
        
        	newcounter32 <= counter32 + 1;
	        if (counter = "111") then
  	        newcounter <= "000";
    	      nextState <= wait_state;
      	  else 
        	
        		newcounter <= counter + 1;
        		nextState <= write_data;
        	end if;
        else
        	newcounter3 <= counter3 + 1;
        	newcounter32 <= counter32;
        	newcounter <= newcounter;     
        end if;
        
      when wait_state =>
        newcounter32 <= counter32;
        if (read_enable_in = '1') then nextState <= read_data;
        else nextState <= second_idle;
        end if;
       when second_idle =>
         newcounter32 <= counter32;
        if (full = '1') then nextState <= write_data;
        elsif (read_enable_in = '1') then nextState <= read_data;
        else nextState <= second_idle; 
        end if;
      when read_data =>
        newcounter32 <= counter32;
        if (read_enable_in = '1') then nextState <= read_data;
        else nextState <= second_idle;  
        end if;
      end case;
    end process Next_logic;
    
    Out_logic: process (state, counter32)
    begin
      case state is
      when idle =>
        r_enable <= '0';
        w_enable <= '0';
        r_enable_out <= '0';
        num_writes <= '0';
      when read_data =>
        r_enable <= '1';
        r_enable_out <= '0';
        w_enable <= '0';
        num_writes <= '0';
      when write_data =>
        r_enable <= '0';
        w_enable <= '1';
        r_enable_out <= '1';
        if (counter32 = "11111") then
          num_writes <= '1';
        else num_writes <= '0';
        end if;
      when second_idle =>
        r_enable <= '0';
        w_enable <= '0';
        r_enable_out <= '0';
        num_writes <= '0';
      when wait_state =>
       r_enable <= '0';
       w_enable <= '0'; 
       r_enable_out <= '0';
       num_writes <= '0';
      end case;
    end process Out_logic;
  end statemachine;
