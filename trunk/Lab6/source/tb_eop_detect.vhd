-- $Id: $
-- File name:   tb_eop.vhd
-- Created:     2/17/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_eop_detect is
end tb_eop_detect;

architecture TEST of tb_eop_detect is

  component eop_detect
    PORT(
         D_PLUS : IN std_logic;
         D_MINUS : IN std_logic;
         EOP : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal D_PLUS : std_logic;
  signal D_MINUS : std_logic;
  signal EOP : std_logic;

-- signal <name> : <type>;

begin
  DUT: eop_detect port map(
                D_PLUS => D_PLUS,
                D_MINUS => D_MINUS,
                EOP => EOP
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    D_PLUS <= '0';

    D_MINUS <= '1';
    
    wait for 9 ns;
    
    D_PLUS <= '1';

    D_MINUS <= '1';
    
    wait for 9 ns;
    
    D_PLUS <= '1';

    D_MINUS <= '0';
    
    wait for 9 ns;
    
        D_PLUS <= '0';

    D_MINUS <= '0';
    
    wait for 9 ns;
    


  end process;
end TEST;
