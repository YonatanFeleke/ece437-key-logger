-- $Id: $
-- File name:   tb_ADDRgen2.vhd
-- Created:     4/24/2011
-- Author:      Evan Graves
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_ADDRgen2 is
generic (Period : Time := 3.5 ns);
end tb_ADDRgen2;

architecture TEST of tb_ADDRgen2 is

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

  component ADDRgen2
    PORT(
         Resend : in std_logic;
         clk : in std_logic;
         rst : in std_logic;
         r_enable_in : in std_logic;
         w_enable_in : in std_logic;
         read_ready : in std_logic;
         ADDR : out std_logic_vector(11 downto 0);
         r_enable_out : out std_logic;
         w_enable_out : out std_logic;
         read_done : out std_logic
    );
  end component;

-- Insert signals Declarations here
  signal Resend : std_logic;
  signal clk : std_logic;
  signal rst : std_logic;
  signal r_enable_in : std_logic;
  signal w_enable_in : std_logic;
  signal read_ready : std_logic;
  signal ADDR : std_logic_vector(11 downto 0);
  signal r_enable_out : std_logic;
  signal w_enable_out : std_logic;
  signal read_done : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: ADDRgen2 port map(
                Resend => Resend,
                clk => clk,
                rst => rst,
                r_enable_in => r_enable_in,
                w_enable_in => w_enable_in,
                read_ready => read_ready,
                ADDR => ADDR,
                r_enable_out => r_enable_out,
                w_enable_out => w_enable_out,
                read_done => read_done
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    Resend <= '0';

    rst <= '1';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '0';
    wait for Period;
    Resend <= '0';

    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '0';--idle
    wait for Period;  
    Resend <= '0';

    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '1';

    read_ready <= '0';
    wait for Period*6; --goes to writedata and increments ADDR
    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '0';--idle
    wait for Period;  
    Resend <= '0';

    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '1';

    read_ready <= '0';
    wait for Period*5; --goes to writedata and increments ADDR    
    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '0';--idle
    wait for Period;  
    Resend <= '0';

    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '1';

    read_ready <= '0';
    wait for Period*5; --goes to writedata and increments ADDR    
    Resend <= '0';

    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '0'; --back to idle
    wait for Period;          
    Resend <= '0';

    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '1'; --goes to read_control
    wait for Period*5;
    Resend <= '0';

    rst <= '0';

    r_enable_in <= '1';

    w_enable_in <= '0';

    read_ready <= '1'; --goes to read_data
    wait for Period*32;
    Resend <= '0';

    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '0';
    wait for Period*5; --loops 32 times thru read_data
    
    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '0';--idle
    wait for Period;  
    Resend <= '1';

    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '0';
    wait for Period*3; -- goes to read_control
    
    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '0';--idle
    wait for Period;  
    Resend <= '0';

    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '1';
    wait for Period*3; --goes to writedata and increments ADDR
    
    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '0';--idle
    wait for Period;  
    Resend <= '0';

    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '1';

    read_ready <= '0';
    wait for Period*3; --goes to writedata and increments ADDR
    
    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '0';--idle
    wait for Period;  
    Resend <= '0';

    rst <= '0';

    r_enable_in <= '0';

    w_enable_in <= '0';

    read_ready <= '0';
    wait for Period; --goes to writedata and increments ADDR       
    
  end process;
end TEST;