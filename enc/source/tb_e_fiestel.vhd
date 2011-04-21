-- $Id: $
-- File name:   tb_e_fiestel.vhd
-- Created:     4/17/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_e_fiestel is
generic (Period : Time := 10 ns);
end tb_e_fiestel;

architecture TEST of tb_e_fiestel is

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

  component e_fiestel
    PORT(
         FIESTELCLK : IN std_logic;
         START : IN std_logic;
         ENC_LEFT : IN std_logic_vector(31 downto 0);
         ENC_RIGHT : IN std_logic_vector(31 downto 0);
         RKEY : IN std_logic_vector(47 downto 0);
         IN_SELECT : IN std_logic;
         OUTDATA : OUT std_logic_vector(63 downto 0)
    );
  end component;

-- Insert signals Declarations here
  signal FIESTELCLK : std_logic;
  signal START : std_logic;
  signal ENC_LEFT : std_logic_vector(31 downto 0);
  signal ENC_RIGHT : std_logic_vector(31 downto 0);
  signal RKEY : std_logic_vector(47 downto 0);
  signal IN_SELECT : std_logic;
  signal OUTDATA : std_logic_vector(63 downto 0);

-- signal <name> : <type>;

begin

CLKGEN: process
  variable FIESTELCLK_tmp: std_logic := '0';
begin
  FIESTELCLK_tmp := not FIESTELCLK_tmp;
  FIESTELCLK <= FIESTELCLK_tmp;
  wait for Period/2;
end process;

  DUT: e_fiestel port map(
                FIESTELCLK => FIESTELCLK,
                START => START,
                ENC_LEFT => ENC_LEFT,
                ENC_RIGHT => ENC_RIGHT,
                RKEY => RKEY,
                IN_SELECT => IN_SELECT,
                OUTDATA => OUTDATA
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    START <= '0';

    ENC_LEFT <= "01011001011000010110110101101001";
    
    ENC_RIGHT<= "01110011011000010110110101101111";

		RKEY <= "011010111010110110101101010010111100000111110110"; --1

    IN_SELECT <= '0';
    
    wait for 1*Period;
    
    START <= '1';
  
		RKEY <= "011111110110110100001111001011100001110101010101";--2
		wait for Period;
		RKEY <= "000111101110110111011111000001111010110110101011";--3
		wait for Period;
		RKEY <= "010111111111100111011000011000111001000011110111";--4
		wait for Period;
		RKEY <= "011111110101111011011001001101000011100011011101";
		wait for Period;
		RKEY <= "101011110011011111011011010001010010101110101110"; --6
		wait for Period;
		RKEY <= "101011111111101100111011111100110001000000110110";
		wait for Period;
		RKEY <= "111011101100101101110011001100010011101100011001";
		wait for Period;
		RKEY <= "111001101101010101111110110000110110101110111000"; --9
		wait for Period;
		RKEY <= "011011001111011001111110110110100001100000110101";
		wait for Period;
		RKEY <= "111110101011111001010110000100000101111110101001"; --11
		wait for Period;
		RKEY <= "111101101011111010100110110010111101001110101100";
		wait for Period;
		RKEY <= "111101011010111010111010110010100001010001011101";
		wait for Period;
		RKEY <= "110110011010110010111111010001011100110110001001";
		wait for Period;
		RKEY <= "011010111010110110101101010010111100000111110110";
		wait for Period;
		RKEY <= "011111110110110100001111001011100001110101010101";
		wait for 2*Period;
   
  end process;
end TEST;
