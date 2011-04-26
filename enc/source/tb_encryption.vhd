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

LIBRARY ECE337_IP;
USE ECE337_IP.ALL;

entity tb_encryption is
generic (Period : Time := 3.5 ns);
end tb_encryption;

architecture TEST of tb_encryption is

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
  
  
  component Fifo
		port (
		RCLK : in std_logic;
		WCLK : in std_logic;
		RST_N : in std_logic;
		RENABLE : in std_logic;
		WENABLE : in std_logic;
		WDATA : in std_logic_vector(7 downto 0);
		RDATA : out std_logic_vector(7 downto 0);
		EMPTY : out std_logic;
		FULL : out std_logic);
	end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal DATA : std_logic_vector (7 DOWNTO 0);
  signal EMPTY : std_logic;
  signal FULL : std_logic;
  signal RENABLE : std_logic;
  signal RST,RST_N : std_logic;
  signal EMPTY1 : std_logic;
  signal FULL1 : std_logic;
  signal RDATA : std_logic_vector (7 DOWNTO 0);
  signal R_ENABLE,W_ENABLE : std_logic;
  signal WDATA : std_logic_vector (7 DOWNTO 0);
  

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
                
  	
	FIFOMAP : Fifo port map(
														RCLK => CLK,
														WCLK => CLK,
														RST_N => RST_N,
														RENABLE => R_ENABLE,
														WENABLE => W_ENABLE,
														WDATA => WDATA,
														RDATA => DATA,
														EMPTY => EMPTY,
														FULL => FULL);

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

RST_N <= NOT(RST);


process

  begin

-- Insert TEST BENCH Code Here   -- NEEEEEEEED 222222 RESETS FOR FIFO
		
		RST <= '0';
		
		wait for 3*Period;
		
    RST <= '1';
		
		wait for 3*Period;
		
		RST <= '0';
		
		wait for 3*Period;
		
		
		
    
    WDATA <= "00000000";

    --EMPTY <= '1';

    --FULL <= '0';
    
    RENABLE <= '0';

    W_ENABLE <= '0';

    RST <= '1';
    
    wait for 3*Period;
    
    RST <= '0';
    -- End Reset
    wait for 3*Period;
    
    WDATA <= "01100001";
    
    --FULL <= '1';
    
    --EMPTY <= '0';
        
    W_ENABLE <= '1';
    --wait until R_ENABLE = '1';
    
--    wait for 0.3 ns;

		wait for Period;
		
		--FULL <= '0';
    
    WDATA <= "01100010";
    
    wait for Period;
    
    WDATA <= "01100011"; -- Change
    
    wait for Period;

    WDATA <= "01100100";
    
    wait for Period;

    WDATA <= "01100101";
    
    wait for Period;

    WDATA <= "01100110";
    
    wait for Period;

    WDATA <= "01100111";
    
    wait for Period;
    
    WDATA <= "01101000";
    
    wait for Period;
    
    --EMPTY <= '1';
    
    W_ENABLE <= '0';
    wait until full1 = '1'; 
    
    RENABLE <= '1';
    
    wait for 20*Period;
    
--    wait for 100*Period;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    WDATA <= "01111001";
    
    --FULL <= '1';
    
    --EMPTY <= '0';
        
    W_ENABLE <= '1';
    --wait until R_ENABLE = '1';
    
--    wait for 0.3 ns;

		wait for Period;
		
		--FULL <= '0';
    
    WDATA <= "01100001";
    
    wait for Period;
    
    WDATA <= "01101101"; -- Change
    
    wait for Period;

    WDATA <= "01101001";
    
    wait for Period;

    WDATA <= "01110011";
    
    wait for Period;

    WDATA <= "01100001";
    
    wait for Period;

    WDATA <= "01101101";
    
    wait for Period;
    
    WDATA <= "01101111";
    
    wait for Period;
    
    W_ENABLE <= '0';
    
    --EMPTY <= '1';
    
    wait for 50*Period;
    
    

  end process;
end TEST;
