LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

Entity ReadController is
  port(
    num_writes :  in std_logic;
    --Resend : in std_logic;
    read_done :  in std_logic;
    empty : out std_logic;
    read_ready  : out std_logic);
  end ReadController;
  
architecture dataflow of ReadController is
begin
  empty <= '1' when num_writes = '1' and read_done = '0' else '0';
  read_ready <= '1' when num_writes = '1' and read_done = '0' else '0';            

end dataflow;
