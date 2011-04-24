-- $Id: $
-- File name:   tb_encryption.vhd
-- Created:     4/22/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_encryption is
generic (Period : Time := 3.5 ns);
end tb_encryption;

architecture TEST of tb_encryption is

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

  component encryption
    PORT(
         CLK : IN std_logic;
         DATA : IN std_logic_vector (7 DOWNTO 0);
         EMPTY : IN std_logic;
         FULL : IN std_logic;
         RENABLE : IN std_logic;
         RST : IN std_logic;
         EMPTY1 : OUT std_logic;
         FULL1 : OUT std_logic;
         RDATA : OUT std_logic_vector (7 DOWNTO 0);
         R_ENABLE : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal DATA : std_logic_vector (7 DOWNTO 0);
  signal EMPTY : std_logic;
  signal FULL : std_logic;
  signal RENABLE : std_logic;
  signal RST : std_logic;
  signal EMPTY1 : std_logic;
  signal FULL1 : std_logic;
  signal RDATA : std_logic_vector (7 DOWNTO 0);
  signal R_ENABLE : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: encryption port map(
                CLK => CLK,
                DATA => DATA,
                EMPTY => EMPTY,
                FULL => FULL,
                RENABLE => RENABLE,
                RST => RST,
                EMPTY1 => EMPTY1,
                FULL1 => FULL1,
                RDATA => RDATA,
                R_ENABLE => R_ENABLE
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here   -- NEEEEEEEED 222222 RESETS FOR FIFO
		
		RST <= '0';
		
		wait for 3*Period;
		
    RST <= '1';
		
		wait for 3*Period;
		
		RST <= '0';
		
		wait for 3*Period;
		
    
    DATA <= "00000000";

    EMPTY <= '1';

    FULL <= '0';

    RENABLE <= '0';

    RST <= '1';
    
    wait for 3*Period;
    
    RST <= '0';
    
    wait for 3*Period;
    
    DATA <= "01100001";
    
    FULL <= '1';
    
    EMPTY <= '0';
        
    wait until R_ENABLE = '1';
    
    wait for 0.3 ns;
    
    FULL <= '0';
    
    DATA <= "01100010";
    
    wait for Period;
    
    DATA <= "01100011"; -- Change
    
    wait for Period;

    DATA <= "01100100";
    
    wait for Period;

    DATA <= "01100101";
    
    wait for Period;

    DATA <= "01100110";
    
    wait for Period;

    DATA <= "01100111";
    
    wait for Period;
    
    DATA <= "01101000";
    
    wait for Period;
    
    EMPTY <= '1';
    
    wait for 50*Period;
    
    

  end process;
end TEST;
