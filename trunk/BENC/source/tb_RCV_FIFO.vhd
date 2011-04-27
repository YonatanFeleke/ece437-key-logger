-- $Id: $
-- File name:   tb_RCV_FIFO.vhd
-- Created:     4/23/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_RCV_FIFO is
generic (Period : Time := 5 ns);
end tb_RCV_FIFO;

architecture TEST of tb_RCV_FIFO is

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

  component RCV_FIFO
    PORT(
         CLK : in std_logic;
         RST_N : in std_logic;
         R_ENABLE : in std_logic;
         W_ENABLE : in std_logic;
         WDATA : in std_logic_vector(7 downto 0);
         R_DATA : out std_logic_vector(7 downto 0);
         EMPTY : out std_logic;
         FULL : out std_logic
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal RST_N : std_logic;
  signal R_ENABLE : std_logic;
  signal W_ENABLE : std_logic;
  signal WDATA : std_logic_vector(7 downto 0);
  signal R_DATA : std_logic_vector(7 downto 0);
  signal EMPTY : std_logic;
  signal FULL : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: RCV_FIFO port map(
                CLK => CLK,
                RST_N => RST_N,
                R_ENABLE => R_ENABLE,
                W_ENABLE => W_ENABLE,
                WDATA => WDATA,
                R_DATA => R_DATA,
                EMPTY => EMPTY,
                FULL => FULL
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    RST_N <= '1';
    
    wait for Period;
    
    RST_N <= '0';

    R_ENABLE <= '0';

    WDATA <= "00000001";

    W_ENABLE <= '0';
    
    wait for Period;
    
    WDATA <= "00000001";
    
    W_ENABLE <= '1';
    
    wait for Period;
    
    wait for 0.1 ns;
    
    WDATA <= "00000010";
    
    wait for Period;
    
    WDATA <= "00000011";
    
    wait for Period;
    
    R_ENABLE <='1';
    
    wait for 2*Period;



  end process;
end TEST;
