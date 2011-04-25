-- $Id: $
-- File name:   tb_MemoryController.vhd
-- Created:     4/24/2011
-- Author:      Evan Graves
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_MemoryController is
generic (Period : Time := 3.5 ns);
end tb_MemoryController;

architecture TEST of tb_MemoryController is

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

  component MemoryController
    PORT(
         clk : in std_logic;
         rst : in std_logic;
         full : in std_logic;
         read_enable_in : in std_logic;
         r_enable : out std_logic;
         w_enable : out std_logic;
         r_enable_out : out std_logic;
         num_writes : out std_logic
    );
  end component;

-- Insert signals Declarations here
  signal clk : std_logic;
  signal rst : std_logic;
  signal full : std_logic;
  signal read_enable_in : std_logic;
  signal r_enable : std_logic;
  signal w_enable : std_logic;
  signal r_enable_out : std_logic;
  signal num_writes : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: MemoryController port map(
                clk => clk,
                rst => rst,
                full => full,
                read_enable_in => read_enable_in,
                r_enable => r_enable,
                w_enable => w_enable,
                r_enable_out => r_enable_out,
                num_writes => num_writes
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    rst <= '1';

    full <= '0';

    read_enable_in <= '0' ;
    
    wait for Period*3;  --idle
    
    
    rst <= '0'; 
    
    full <= '0';
    
    read_enable_in <= '0';
        
    wait for Period;


    rst <= '0'; 

    full <= '1';

    read_enable_in <= '0';
    
    wait for Period*8;  --loop thru write data 8 times then go to wait state

    rst <= '0';

    full <= '0';

    read_enable_in <= '0';-- should stay in 2nd idle
    
    wait for Period*2;
    
    rst <= '0'; 
    
    full <= '0';
    read_enable_in <= '1'; --should go from 2nd idle to read_data 
        
    wait for Period*6;
    
    rst <= '0'; 
    
    full <= '1';
    
    read_enable_in <= '0';--back to 2nd idle
        
    wait for Period;
    
    rst <= '0'; 
    
    full <= '1';
    
    read_enable_in <= '0';  --loop thru write datat 8 times
        
    wait for Period*8;    
    
    rst <= '0'; 
    
    full <= '1';
    
    read_enable_in <= '0';--goes from wait state to 2nd idle
        
    wait for Period;    
    
    
    rst <= '0';
    full <= '1';
    
    read_enable_in <= '0';
        
    wait for Period*8;     --loops thru write data 8 times
    
    rst <= '0'; 
    
    full <= '0';
    
    read_enable_in <= '0';  --goes from wait to 2nd idle
      
    wait for Period;    
    
    
    rst <= '0';
    
    full <= '1';
    
    read_enable_in <= '0'; 
        
    wait for Period*10;  --loops thru write data 8 times    
    
    
    
    rst <= '0';
    
    full <= '1';
    
    read_enable_in <= '1';
        
    wait for Period;
    
    
    rst <= '0'; 
    
    full <= '0';
    
    read_enable_in <= '0'; 
        
    wait for Period*2;
    
  end process;
end TEST;