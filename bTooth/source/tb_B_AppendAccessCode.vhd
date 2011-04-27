-- $Id: $
-- File name:   tb_B_AppendAccessCode.vhd
-- Created:     4/26/2011
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
         BLUE_EN : in std_logic;
         ACESS_CODE : OUT std_logic_vector(71 downto 0);
         HEADER_EN : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal RST : std_logic;
  signal BLUE_EN : std_logic;
  signal ACESS_CODE : std_logic_vector(71 downto 0);
  signal HEADER_EN : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: B_AppendAccessCode port map(
                CLK => CLK,
                RST => RST,
                BLUE_EN => BLUE_EN,
                ACESS_CODE => ACESS_CODE,
                HEADER_EN => HEADER_EN
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here    RST <=     BLUE_EN <= 
    RST <= '1';
    BLUE_EN <=  '0';
    wait for period;
    RST <= '0';
    BLUE_EN <=  '0';
    wait for period;
    RST <= '1';
    BLUE_EN <=  '0';
    wait for period;
    RST <= '0';
    BLUE_EN <=  '0';
    wait for period;
    RST <= '0';
    BLUE_EN <=  '1';
    wait for 2*period;
    BLUE_EN <=  '0';
    RST<= '0';
    wait for 5*period;
    BLUE_EN <=  '1';
    wait for 2*period;
    BLUE_EN <=  '0';    
		wait;
  end process;
end TEST;
