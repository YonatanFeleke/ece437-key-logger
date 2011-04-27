-- $Id: $
-- File name:   tb_U_CLKDIV.vhd
-- Created:     4/22/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_U_CLKDIV is
generic (Period : Time := 3.4722 ns);
end tb_U_CLKDIV;

architecture TEST of tb_U_CLKDIV is

  component U_CLKDIV
    PORT(
         CLK : in std_logic;
         RST : in std_logic;
         D_CLK : out std_logic
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal RST : std_logic;
  signal D_CLK : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable CLK_tmp: std_logic := '0';
begin
  CLK_tmp := not CLK_tmp;
  CLK <= CLK_tmp;
  wait for Period/2;
end process;

  DUT: U_CLKDIV port map(
                CLK => CLK,
                RST => RST,
                D_CLK => D_CLK
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    RST <= '0';
		wait for PERIOD;
		RST <= '1';
		wait for PERIOD;
		RST <= '0';
		wait;

  end process;
end TEST;
