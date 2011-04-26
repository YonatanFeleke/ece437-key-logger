-- $Id: $
-- File name:   tb_U_FCU.vhd
-- Created:     4/25/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_U_FCU is
generic (Period : Time := 10.4167 ns);
end tb_U_FCU;

architecture TEST of tb_U_FCU is

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

  component U_FCU
    PORT(
         D_CLK : in std_logic;
         RST : in std_logic;
         EOP : in std_logic;
         CRC_ERROR : in std_logic;
         R_ERROR : in std_logic;
         W_ENABLE1 : out std_logic;
         R_ENABLE0 : out std_logic;
         EMPTY0 : in std_logic;
         FULL0 : in std_logic;
         FULL1 : in std_logic;
         EMPTY1 : in std_logic
    );
  end component;

-- Insert signals Declarations here
  signal D_CLK : std_logic;
  signal RST : std_logic;
  signal EOP : std_logic;
  signal CRC_ERROR : std_logic;
  signal R_ERROR : std_logic;
  signal W_ENABLE1 : std_logic;
  signal R_ENABLE0 : std_logic;
  signal EMPTY0 : std_logic;
  signal FULL0 : std_logic;
  signal FULL1 : std_logic;
  signal EMPTY1 : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable D_CLK_tmp: std_logic := '0';
begin
  D_CLK_tmp := not D_CLK_tmp;
  D_CLK <= D_CLK_tmp;
  wait for Period/2;
end process;

  DUT: U_FCU port map(
                D_CLK => D_CLK,
                RST => RST,
                EOP => EOP,
                CRC_ERROR => CRC_ERROR,
                R_ERROR => R_ERROR,
                W_ENABLE1 => W_ENABLE1,
                R_ENABLE0 => R_ENABLE0,
                EMPTY0 => EMPTY0,
                FULL0 => FULL0,
                FULL1 => FULL1,
                EMPTY1 => EMPTY1
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    RST <= '0';
    EOP <= '0';
    CRC_ERROR <= '0';
    R_ERROR <= '0';
    EMPTY0 <= '1';
    FULL0 <= '0';
    FULL1 <= '0';
    EMPTY1 <= '1';

		wait for Period;
		RST <= '1';
		wait for Period;
		RST <= '0';

		--EOP with No CRC
		EOP <= '1';
		wait for Period*4;
		FULL1 <= '1';
		wait for Period*10;
		FULL1 <= '1';
		wait for Period*4;
		FULL1 <= '0';
		EMPTY0 <= '1';
		wait;

  end process;
end TEST;
