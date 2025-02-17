-- $Id: $
-- File name:   tb_U_CRC.vhd
-- Created:     4/19/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_U_CRC is
generic (Period : Time := 10.4167 ns);
end tb_U_CRC;

architecture TEST of tb_U_CRC is

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

  component U_CRC
    PORT(
         D_CLK : in std_logic;
         RST_N : in std_logic;
         CRC_SHIFT : in std_logic;
         D_ORIG : in std_logic;
				 CRC_EN	:	in std_logic;
         CRC_ERROR : out std_logic
    );
  end component;

-- Insert signals Declarations here
  signal D_CLK : std_logic;
  signal RST_N : std_logic;
  signal CRC_SHIFT : std_logic;
  signal D_ORIG : std_logic;
	signal CRC_EN	:	std_logic;
  signal CRC_ERROR : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  D_clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: U_CRC port map(
                D_CLK => D_CLK,
                RST_N => RST_N,
                CRC_SHIFT => CRC_SHIFT,
                D_ORIG => D_ORIG,
								CRC_EN => CRC_EN,
                CRC_ERROR => CRC_ERROR
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process
	variable test_vector	: std_logic_vector(31 downto 0);
	variable crc	: std_logic_vector(15 downto 0);

  begin

-- Insert TEST BENCH Code Here
-- run for (2+32+16)*8*Period = 4166 ns minimum

    RST_N <= '0';

    CRC_SHIFT <= '0';

    D_ORIG <= '0';
		CRC_EN <= '0';
		wait for period;
		RST_N <= '1';
		wait for period;
		RST_N <= '0';

		--test_vector := INT_TO_STD_LOGIC(30876000,32);
		--test_vector := INT_TO_STD_LOGIC(0,32);
		--crc := INT_TO_STD_LOGIC(60825,16);
		--crc := "0001010000000000";
    --crc := "0000000000101000";
    --crc := "1110101111111111";
			--crc := "1111111111010111";
		--test_vector := "00000000" & "10000000" & "01000000" & "11000000";
		test_vector := "00000011" & "00000010" & "00000001" & "00000000";
		--test_vector := "10001001" & "01100111" & "01000101" & "00100011";
		--crc := "11110111" & "01011110"; 
		--crc := "11110111" & "01011110";
    crc := "01111010" & "11101111";
		--crc := "00011100" & "00001110";
		CRC_EN <= '1';
		for i in 0 to 31 loop
			D_ORIG <= test_vector(i);
			wait for Period*3;
			CRC_SHIFT <= '1';
			wait for Period;
			CRC_SHIFT <= '0';
			wait for PERIOD*4;
		end loop;

		for i in 0 to 15 loop
			D_ORIG <= crc(i);
			wait for Period*3;
			CRC_SHIFT <= '1';
			wait for Period;
			CRC_SHIFT <= '0';
			wait for PERIOD*4;
		end loop;

		wait for PERIOD*4;
		CRC_EN <= '0';
		test_vector := "10001001" & "01100111" & "01000101" & "00100011";
		crc := "00011100" & "00001110";
		wait for PERIOD*4;
		CRC_EN <= '1';

		for i in 0 to 31 loop
			D_ORIG <= test_vector(i);
			wait for Period*3;
			CRC_SHIFT <= '1';
			wait for Period;
			CRC_SHIFT <= '0';
			wait for PERIOD*4;
		end loop;

		for i in 0 to 15 loop
			D_ORIG <= crc(i);
			wait for Period*3;
			CRC_SHIFT <= '1';
			wait for Period;
			CRC_SHIFT <= '0';
			wait for PERIOD*4;
		end loop;
		
		wait;

  end process;
end TEST;
