-- $Id: $
-- File name:   tb_B_Header.vhd
-- Created:     4/17/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_B_Header is
generic (Period : Time := 3.5 ns);
end tb_B_Header;

architecture TEST of tb_B_Header is

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

  component B_Header
    PORT(
         CLK : in std_logic;
         RST : in std_logic;
         HEADER_EN : in std_logic;
         HEADER : OUT std_logic_vector(53 downto 0);
         HSTORE_EN : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal RST : std_logic;
  signal HEADER_EN : std_logic;
  signal HEADER : std_logic_vector(53 downto 0);
  signal HSTORE_EN : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable CLK_tmp: std_logic := '0';
begin
  CLK_tmp := not CLK_tmp;
  CLK <= CLK_tmp;
  wait for Period/2;
end process;

  DUT: B_Header port map(
                CLK => CLK,
                RST => RST,
                HEADER_EN => HEADER_EN,
                HEADER => HEADER,
                HSTORE_EN => HSTORE_EN
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process
  begin
-- Insert TEST BENCH Code Here
    RST <= '1';
    HEADER_EN <= '0';
    wait for 14 ns;
    RST<= '0';
    wait for 7 ns;
    HEADER_EN <= '1';
    wait for 35 ns;
    HEADER_EN <= '0';
    wait for 21 ns;
    HEADER_EN <= '1';
    wait for 35 ns;
    HEADER_EN <= '0';
    wait;
    wait;
  end process;
end TEST;