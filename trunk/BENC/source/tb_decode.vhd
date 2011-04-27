-- $Id: $
-- File name:   tb_decode.vhd
-- Created:     2/21/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_decode is
generic (Period : Time := 10.4167 ns);
end tb_decode;

architecture TEST of tb_decode is

  component u_decode
    PORT(
         D_CLK : in std_logic;
         rst_n : in std_logic;
         d_plus : in std_logic;
         shift_enable : in std_logic;
         eop : in std_logic;
         d_orig : out std_logic
    );
  end component;

-- Insert signals Declarations here
  signal D_CLK : std_logic;
  signal rst_n : std_logic;
  signal d_plus : std_logic;
  signal shift_enable : std_logic;
  signal eop : std_logic;
  signal d_orig : std_logic;

-- signal <name> : <type>;

begin

D_CLKGEN: process
  variable D_CLK_tmp: std_logic := '0';
begin
  D_CLK_tmp := not D_CLK_tmp;
  D_CLK <= D_CLK_tmp;
  wait for Period/2;
end process;

  DUT: u_decode port map(
                D_CLK => D_CLK,
                rst_n => rst_n,
                d_plus => d_plus,
                shift_enable => shift_enable,
                eop => eop,
                d_orig => d_orig
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here
-- run for 1150 ns
--Setup
    rst_n <= '0';
    d_plus <='0'; 
    shift_enable <='0'; 
    eop <= '0';
    wait for Period;
    rst_n <= '1';
    
    wait for Period;
    rst_n <= '0';
    d_plus <= '1';
    wait for Period/2;
 --Bit 1   
    wait for Period*4;
    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    d_plus <= '1';
    wait for Period *4;
--Bit 2
    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    d_plus <= '0';
    wait for Period *4;
 --Bit 3   
    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    d_plus <= '1';
    wait for Period *4;
 --Bit 4   
    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    d_plus <= '0';
    wait for Period *4;
 --Bit 5   
    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    d_plus <= '0';
    wait for Period *4;

--EOP asserted
--Bit 1
		eop <= '1';

    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    d_plus <= '0';
    wait for Period *4;

 --Bit 2   
    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    d_plus <= '1';
    wait for Period *4;
 --Bit 3   
    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    d_plus <= '0';
    wait for Period *4;

		eop <= '0';

    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    d_plus <= '1';
    wait for Period *4;
--Bit 2
    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    d_plus <= '0';
    wait for Period *4;
 --Bit 3   
    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    d_plus <= '1';
    wait for Period *4;
 --Bit 4   
    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    d_plus <= '0';
    wait for Period *4;
 --Bit 5   
    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    d_plus <= '0';
    wait for Period *4;
    

  end process;
end TEST;
