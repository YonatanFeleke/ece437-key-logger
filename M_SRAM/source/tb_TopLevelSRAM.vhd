-- $Id: $
-- File name:   tb_TopLevelSRAM.vhd
-- Created:     4/24/2011
-- Author:      Evan Graves
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model
USE IEEE.std_logic_unsigned.ALL;

entity tb_TopLevelSRAM is
generic (Period : Time := 3.5 ns);
end tb_TopLevelSRAM;

architecture TEST of tb_TopLevelSRAM is

  function INT_TO_STD_LOGIC( X: INTEGER; NumBits: INTEGER )
     return STD_LOGIC_VECTOR is
    variable RES : STD_LOGIC_VECTOR(NumBits-1 downto 0);
    variable tmp : INTEGER;
  begin
    tmp := X;
    for i in 0 to NumBits-1 loop
      if (tmp mod 2)=1 then
        res(i) := '1';
      else
        res(i) := '0';
      end if;
      tmp := tmp/2;
    end loop;
    return res;
  end;

  component TopLevelSRAM
    PORT(
         Resend : IN std_logic;
         clk : IN std_logic;
         full : IN std_logic;
         read_enable_in : IN std_logic;
         rst : IN std_logic;
         empty : OUT std_logic;
         r_enable_out1 : OUT std_logic;
         data : INOUT std_logic_vector (7 DOWNTO 0)
    );
  end component;

-- Insert signals Declarations here
  signal Resend : std_logic;
  signal clk : std_logic;
  signal full : std_logic;
  signal read_enable_in : std_logic;
  signal rst : std_logic;
  signal empty : std_logic;
  signal r_enable_out1 : std_logic;
  signal data : std_logic_vector (7 DOWNTO 0);

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: TopLevelSRAM port map(
                Resend => Resend,
                clk => clk,
                full => full,
                read_enable_in => read_enable_in,
                rst => rst,
                empty => empty,
                r_enable_out1 => r_enable_out1,
                data => data
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    Resend <= '0';

    full <= '0';

    read_enable_in <= '0'; 

    rst <= '1';

    data <= "00000000"; -- should be in idle
    wait for Period*2;
    Resend <= '0';

    full <= '1';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10000001";
    wait for Period;--should be in write_data for 8 cycles and store 8 values
    Resend <= '0';

    full <= '1';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10000011";
    wait for Period;
    Resend <= '0';

    full <= '1';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10001001";
    wait for Period;
    Resend <= '0';

    full <= '1';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10001101";
       
    wait for Period;
    Resend <= '0';

    full <= '1';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10101101";
       
    wait for Period;
    Resend <= '0';

    full <= '1';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10001111";
       
    wait for Period;
    Resend <= '0';

    full <= '1';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10000101";
       
    wait for Period;
    Resend <= '0';

    full <= '1';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "11110101";
       
    wait for Period;                    
        
    Resend <= '0';

    full <= '0';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10000000";
    wait for Period;
    Resend <= '0';

    full <= '0';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "01000000";
    wait for Period;   
    
    Resend <= '0';

    full <= '1';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10000100";
    wait for Period*8;     --write in 8 packets of data
    Resend <= '0';

    full <= '0';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10000000";
    wait for Period;
    Resend <= '0';

    full <= '0';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "01000000";
    wait for Period;   
    
    Resend <= '0';

    full <= '1';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10000110";
    wait for Period*8;     --write in 8 packets of data
    Resend <= '0';

    full <= '0';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10000000";
    wait for Period;
    Resend <= '0';

    full <= '0';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "01000000";
    wait for Period;   
    
    Resend <= '0';

    full <= '1';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10010011";
    wait for Period*8;     --write in 8 packets of data  
    Resend <= '0';

    full <= '0';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "10000000";
    wait for Period;
    Resend <= '0';

    full <= '0';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "01000000";
    wait for Period;   
    
    Resend <= '0';

    full <= '1';

    read_enable_in <= '0'; 

    rst <= '0';

    data <= "11000100";
    wait for Period*8;     --write in 8 packets of data
    Resend <= '0';

    full <= '0';

    read_enable_in <= '1'; 

    rst <= '0';

    data <= "01000110";
    wait for Period*32;           
        
        
    
  end process;
end TEST;