-- $Id: $
-- File name:   tb_e_Decompile.vhd
-- Created:     4/21/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_e_Decompile is
generic (Period : Time := 5 ns);
end tb_e_Decompile;

architecture TEST of tb_e_Decompile is

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

  component e_Decompile
    PORT(
         OUTDATA : IN std_logic_vector(63 downto 0);
         D_ENABLE : IN std_logic;
         CLK : IN std_logic;
         DATA : OUT std_logic_vector(7 downto 0);
         W_ENABLE : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal OUTDATA : std_logic_vector(63 downto 0);
  signal D_ENABLE : std_logic;
  signal CLK : std_logic;
  signal DATA : std_logic_vector(7 downto 0);
  signal W_ENABLE : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: e_Decompile port map(
                OUTDATA => OUTDATA,
                D_ENABLE => D_ENABLE,
                CLK => CLK,
                DATA => DATA,
                W_ENABLE => W_ENABLE
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    OUTDATA <= "1000000001000000001000000001000000001000000001000000001000000001";

    D_ENABLE <= '0';
    
    wait for 3*Period;
    
    D_ENABLE <= '1';
    
    wait for 13*Period;

  end process;
end TEST;
