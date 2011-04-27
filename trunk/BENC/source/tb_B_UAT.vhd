-- $Id: $
-- File name:   tb_B_UAT.vhd
-- Created:     4/24/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_B_UAT is
generic (Period : Time := 3.5 ns);
end tb_B_UAT;

architecture TEST of tb_B_UAT is

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

  component B_UAT
    PORT(

         CLK : in std_logic;
         RST : in std_logic;
         --ENCODE_EN : in std_logic;
         ACCESS_CODE : in std_logic_vector(71 downto 0);
         HEADER : in std_logic_vector(53 downto 0);
         --TOTALHEADER : in std_logic_vector(125 downto 0);
         PAYLOAD : in std_logic_vector(7 downto 0);
         TRAN_EN : in std_logic;
         ESTORE_EN : in std_logic;
         ANT_LOUT : OUT std_logic
    );
  end component;

-- Insert signals Declarations here

  signal CLK : std_logic;
  signal RST : std_logic;
  --signal ENCODE_EN : std_logic;
  signal ACCESS_CODE : std_logic_vector(71 downto 0);
  signal HEADER : std_logic_vector(53 downto 0);
  --signal TOTALHEADER : std_logic_vector(125 downto 0);
  signal PAYLOAD : std_logic_vector(7 downto 0);
  signal TRAN_EN : std_logic;
  signal ESTORE_EN : std_logic;
  signal ANT_LOUT : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: B_UAT port map(
                CLK => CLK,
                RST => RST,
                --ENCODE_EN => ENCODE_EN,
                ACCESS_CODE => ACCESS_CODE,
                HEADER => HEADER,
                --TOTALHEADER => TOTALHEADER,
                PAYLOAD => PAYLOAD,
                TRAN_EN => TRAN_EN,
                ESTORE_EN => ESTORE_EN,
                ANT_LOUT => ANT_LOUT
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    RST <= '1';
	
		wait for 3*Period;
		
		RST <= '0';
		
		PAYLOAD <= "11001100";
		
    TRAN_EN <= '1';
		
    ACCESS_CODE <= "101011111111111111111111111111111111111111111111111111111111111111110101";

    HEADER <= "101011111111111111111111111111111111111111111111110101";
    
    ESTORE_EN <= '0';
    

    wait for 128*658*Period;

		TRAN_EN <= '0';

    ESTORE_EN <= '1';		
		
    PAYLOAD <= "11001100";
		
		wait for 15*Period;
		
		ESTORE_EN <= '0';
		
		wait for 643*Period;
		
		wait for 7*658*Period;
		
		ESTORE_EN <= '1';
		
		wait for 15*Period;
		
		ESTORE_EN <= '0';
		
		PAYLOAD <= "00001111";
		
		wait for 643*Period;
		
		wait for 7*658*Period;
		
		wait for 33*8*658*Period;
		
		
		wait for 30*658*Period;




  end process;
end TEST;
