-- $Id: $
-- File name:   tb_timer.vhd
-- Created:     2/17/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_timer is
generic (Period : Time := 10.42 ns);
end tb_timer;

architecture TEST of tb_timer is

  component timer
    PORT(
         CLK : IN std_logic;
         RST_N : IN std_logic;
         D_EDGE : IN std_logic;
         RCVING : IN std_logic;
         SHIFT_ENABLE : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal RST_N : std_logic;
  signal D_EDGE : std_logic;
  signal RCVING : std_logic;
  signal SHIFT_ENABLE : std_logic;
  signal TData  : std_logic_vector(31 downto 0);
  signal inData : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: timer port map(
                CLK => CLK,
                RST_N => RST_N,
                D_EDGE => D_EDGE,
                RCVING => RCVING,
                SHIFT_ENABLE => SHIFT_ENABLE
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

	tData <= "01100101100010010100101000100111";
	
	RST_N <= '0';

  D_EDGE <= '0';

  RCVING <= '0';
  
  wait for Period;
  
  RST_N <= '1';
  
  RCVING <= '1';
  
  for i in 0 to 31 loop
  
  inData <= tData(i);
  
  if ((i mod 4) = 0) then
  	D_EDGE <= '1';
  	wait for Period;
  	D_EDGE <= '0';
  	wait for Period*7;
  else
  	wait for Period* 8;
  end if;
  
  end loop;

  end process;

end TEST;
