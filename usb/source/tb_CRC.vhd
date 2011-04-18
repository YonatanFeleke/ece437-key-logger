-- $Id: $
-- File name:   tb_CRC.vhd
-- Created:     4/17/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_CRC is
generic (Period : Time := 10.4167 ns);
end tb_CRC;

architecture TEST of tb_CRC is

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

  component CRC
    PORT(
         CLK : in std_logic;
         RST_N : in std_logic;
         CRC_SHIFT : in std_logic;
         D_ORIG : in std_logic;
         RCV_DATA : out std_logic_vector(15 downto 0)
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal RST_N : std_logic;
  signal CRC_SHIFT : std_logic;
  signal D_ORIG : std_logic;
  signal RCV_DATA : std_logic_vector(15 downto 0);

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: CRC port map(
                CLK => CLK,
                RST_N => RST_N,
                CRC_SHIFT => CRC_SHIFT,
                D_ORIG => D_ORIG,
                RCV_DATA => RCV_DATA
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    RST_N <= 

    CRC_SHIFT <= 

    D_ORIG <= 

  end process;
end TEST;