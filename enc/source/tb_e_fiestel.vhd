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

		RKEY <= "011010111010110110101101010010111100000111110110";

    IN_SELECT <= '0';
    
    wait for 1*Period;
    
    START <= '1';
    
    wait for 1*Period;
    
		RKEY <= "111001001001111001110110100001010001010110010010";
		wait for Period;
		RKEY <= "111001101111001001110010000011010000001001100101";
		wait for Period;
		RKEY <= "101011101101011101110010010100101100100011000100";
		wait for Period;
		RKEY <= "111011100101001101011011000000001000010110011101";
		wait for Period;
		RKEY <= "001011111101001101011001100010110011010010000001";
		wait for Period;
		RKEY <= "000011110101100111011011011010100100001100100001";
		wait for Period;
		RKEY <= "001111110110100111011001000100100100100100001110";
		wait for Period;
		RKEY <= "000111110110110110001001110001000001000110010000";
		wait for Period;
		RKEY <= "010110110010110110011101110000010010001001101001";
		wait for Period;
		RKEY <= "010111011010110010001101011100101001101000001000";
		wait for Period;
		RKEY <= "010100111010110010101110000100000001010100111110";
		wait for Period;
		RKEY <= "111110001010110010100110000011010011100010100000";
		wait for Period;
		RKEY <= "111100001010111000101110011000000110100001110001";
		wait for Period;
		RKEY <= "111000001011011000110110001000111000100000011110";
		wait for Period;
		RKEY <= "111001001001111001110110100001010001010110010010";
		wait for Period;
   
  end process;
end TEST;
