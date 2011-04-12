-- $Id: $
-- File name:   tb_B_AppendAccessCode.vhd
-- Created:     4/12/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_B_AppendAccessCode is
end tb_B_AppendAccessCode;

architecture TEST of tb_B_AppendAccessCode is

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

    CLK <= 

    RST <= 

    CODE_EN <= 

  end process;
end TEST;