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

    ENC_LEFT <= "01100001011000100110001101100100";
    
    ENC_RIGHT<= "01100101011001100110011101101000";

		RKEY <= "010100111011111010101101110111101011000111100010"; --1

    IN_SELECT <= '0';
    
    wait for Period;
    
    START <= '1';
  	
		
		RKEY <= "110111010010111110001101001101100001011001001111";--2
		wait for Period;
		RKEY <= "100110110110110110111101111101001110001110001011";--3
		wait for Period;
		RKEY <= "000111110110100111101001111010110010001011000110";--4
		wait for Period;
		RKEY <= "001111110101100111011101101101000110010100010101";
		wait for Period;
		RKEY <= "000011110101001111011111000110111110101110000010"; --6
		wait for Period;
		RKEY <= "101111111101001101011001101110110100011001110101";
		wait for Period;
		RKEY <= "111111100101001111110011100111001011111010010001";
		wait for Period;
		RKEY <= "101001111101011111110010100000011100111011101110"; --9
		wait for Period;
		RKEY <= "111001011111001001110111111111001101000001110100";
		wait for Period;
		RKEY <= "111000001001111101110111000011010111111001001010"; --11
		wait for Period;
		RKEY <= "111100001111011100100110111011011100010100111010";
		wait for Period;
		RKEY <= "111100001110111011101110011110101011110001010010";
		wait for Period;
		RKEY <= "110110011011110011100110001001001110111101101001";
		wait for Period;
		RKEY <= "010100111011111010101101110111101011000111100010";
		wait for Period;
		RKEY <= "110111010010111110001101001101100001011001001111";
		wait for 1*Period;
		START <= '0';
   
  end process;
end TEST;
