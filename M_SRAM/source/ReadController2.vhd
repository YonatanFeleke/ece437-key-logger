
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;


Entity ReadController2 is
  port(
    rst : in std_logic;
    clk : in std_logic;
    num_writes :  in std_logic;
    --Resend : in std_logic;
    read_done :  in std_logic;
    empty : out std_logic;
    read_ready  : out std_logic);
  end ReadController2;
  
  architecture statemachine of ReadController2 is
        type stateType is (idle, read_data);
          signal state, nextState: stateType;
          signal counter32, newcounter32  : std_logic_vector(4 downto 0);
            begin
            reg: process(rst, clk)
            begin
              if rst='1' then
                state <= idle;
                counter32 <= "00000";
              elsif rising_edge(clk) then
                state<=nextState;
                counter32 <= newcounter32;
              end if;
            end process reg;
            
Next_logic: process(state, num_writes, read_done, counter32)
begin
  newcounter32 <= "00000";
  
case state is
when idle =>
  if (num_writes = '1') then nextState <= read_data;
  else nextState <= idle;
  end if;            
when read_data =>
  newcounter32 <= counter32 + 1;
  if ((counter32 = "11111") or (read_done = '1')) then
    newcounter32 <= "00000";
    nextState <= idle;
  else
    nextState <= read_data;
  end if;
  end case;
end process Next_logic;

Out_logic: process (state)
begin
case state is
when idle =>
  read_ready <= '0';
  empty <= '1';
when read_data =>
  read_ready <= '1';
  empty <='0';
end case;
end process Out_logic;
end statemachine;
