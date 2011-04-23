-- $Id: $
-- File name:   tb_e_encController.vhd
-- Created:     4/17/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_e_encController is
generic (Period : Time := 10 ns);
end tb_e_encController;

architecture TEST of tb_e_encController is

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

  component e_encController
    PORT(
         DATA : IN std_logic_vector(7 downto 0);
         FULL : IN std_logic;
         EMPTY : IN std_logic;
         CLK : IN std_logic;
         RST : IN std_logic;
         START : OUT std_logic;
         R_ENABLE : OUT std_logic;
         W_ENABLE : OUT std_logic;
         ENC_LEFT : OUT std_logic_vector(31 downto 0);
         ENC_RIGHT : OUT std_logic_vector(31 downto 0)
    );
  end component;

-- Insert signals Declarations here
  signal DATA : std_logic_vector(7 downto 0);
  signal FULL : std_logic;
  signal EMPTY : std_logic;
  signal CLK : std_logic;
  signal RST : std_logic;
  signal START : std_logic;
  signal R_ENABLE : std_logic;
  signal W_ENABLE : std_logic;
  signal ENC_LEFT : std_logic_vector(31 downto 0);
  signal ENC_RIGHT : std_logic_vector(31 downto 0);

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: e_encController port map(
                DATA => DATA,
                FULL => FULL,
                EMPTY => EMPTY,
                CLK => CLK,
                RST => RST,
                START => START,
                R_ENABLE => R_ENABLE,
                W_ENABLE => W_ENABLE,
                ENC_LEFT => ENC_LEFT,
                ENC_RIGHT => ENC_RIGHT
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here
		
		
    DATA <= "11111111";

    FULL <= '0';

    EMPTY <= '1';

    RST <= '1';
    
    wait for 1.5 *Period;
    
    DATA <= "10000000";

    FULL <= '0';

    EMPTY <= '1';

    RST <= '0';
    
    wait for Period;
    
    FULL <='1'; 

    
    
    wait until R_ENABLE = '1';
    
    wait for 0.3 ns;
    
   	DATA <= "00000001";

    
		wait for Period;

   	DATA <= "00000010";
    
    wait for Period;
    
    DATA <= "00000011";
        
    wait for Period;
   	DATA <= "00000100";

    wait for Period;
    
    DATA <= "00000101";
    wait for Period;
		
		DATA <= "00000110";
    wait for Period;
    DATA <= "00000111";
		wait for 30*Period;
    

  end process;
end TEST;
