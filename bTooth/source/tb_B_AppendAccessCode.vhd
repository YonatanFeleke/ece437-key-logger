-- $Id: $
-- File name:   tb_B_AppendAccessCode.vhd
-- Created:     4/17/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_B_AppendAccessCode is
generic (Period : Time := 3.5 ns);
end tb_B_AppendAccessCode;

architecture TEST of tb_B_AppendAccessCode is

  component B_AppendAccessCode
    PORT(
         CLK : in std_logic;
         RST : in std_logic;
         CODE_EN : in std_logic;
         ACESS_CODE : OUT std_logic_vector(71 downto 0);
         STORE_EN : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal RST : std_logic;
  signal CODE_EN : std_logic;
  signal ACESS_CODE : std_logic_vector(71 downto 0);
  signal STORE_EN : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable CLK_tmp: std_logic := '0';
begin
  CLK_tmp := not CLK_tmp;
  CLK <= CLK_tmp;
  wait for Period/2;
end process;

  DUT: B_AppendAccessCode port map(
                CLK => CLK,
                RST => RST,
                CODE_EN => CODE_EN,
                ACESS_CODE => ACESS_CODE,
                STORE_EN => STORE_EN
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    RST <= '1';
    CODE_EN <=  '0';
    wait for 7 ns;
    RST <= '0';
    CODE_EN <=  '1';
    wait for 7 ns;
    CODE_EN <=  '0';
    RST<= '0';
    wait for 35 ns;
    CODE_EN <= '1';
    wait for 7 ns;
    CODE_EN <= '0';
    wait;
    
  end process;
end TEST;
