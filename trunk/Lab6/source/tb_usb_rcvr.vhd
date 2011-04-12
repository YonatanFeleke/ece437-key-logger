-- $Id: $
-- File name:   tb_USB_RCVR.vhd
-- Created:     2/27/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model


entity tb_USB_RCVR is
generic (Period : Time := 10.42 ns);
end tb_USB_RCVR;

architecture TEST of tb_USB_RCVR is

  procedure transmit(
  	constant DATA: in std_logic_vector;
  	constant DATA_RATE: in time;
  	signal O: out std_logic;
  	signal Oneg: out std_logic) is
  	
  begin 
  	for j in DATA'length-1 downto 0 loop
  		O<= DATA(j);
  		Oneg <= not(DATA(j));
  		wait for DATA_RATE;
  	end loop;
  	
  end procedure;
  
  
  
  
  component USB_RCVR
    PORT(
         CLK : IN std_logic;
         D_MINUS : IN std_logic;
         D_PLUS : IN std_logic;
         RST_N : IN std_logic;
         R_ENABLE : IN std_logic;
         EMPTY : OUT std_logic;
         FULL : OUT std_logic;
         RCVING : OUT std_logic;
         R_DATA : OUT std_logic_vector (7 DOWNTO 0);
         R_ERROR : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal D_MINUS : std_logic;
  signal D_PLUS : std_logic;
  signal RST_N : std_logic;
  signal R_ENABLE : std_logic;
  signal EMPTY : std_logic;
  signal FULL : std_logic;
  signal RCVING : std_logic;
  signal R_DATA : std_logic_vector (7 DOWNTO 0);
  signal R_ERROR : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: USB_RCVR port map(
                CLK => CLK,
                D_MINUS => D_MINUS,
                D_PLUS => D_PLUS,
                RST_N => RST_N,
                R_ENABLE => R_ENABLE,
                EMPTY => EMPTY,
                FULL => FULL,
                RCVING => RCVING,
                R_DATA => R_DATA,
                R_ERROR => R_ERROR
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    RST_N <= '1';
    D_MINUS <= '1';
    D_PLUS <= '1';
    R_ENABLE <= '0';
    wait for Period*1.0000;
    
    RST_N <= '0';
    
    
    wait for Period*6*1.0000;
    
    RST_N <= '1';
    
    wait for Period*1.0000;
    
    wait for Period*8*1.0000;
    
    transmit("00101010", (Period*8*0.9375), D_PLUS, D_MINUS);

    
    transmit("00000001", Period*8*0.9375, D_PLUS, D_MINUS);

    
    --R_ENABLE <= '1';

    --wait for Period*4;
    
    --R_ENABLE <= '0';

    --wait for Period*4;
    
    transmit("01010101", Period*8*0.9375, D_PLUS, D_MINUS);
    
    transmit("11110101", Period*8*0.9375, D_PLUS, D_MINUS);
    
    transmit("11111010", Period*8*1.0000, D_PLUS, D_MINUS);
    transmit("10110101", Period*8*1.0000, D_PLUS, D_MINUS);
    transmit("11010101", Period*8*1.0000, D_PLUS, D_MINUS);
    transmit("11111101", Period*8*1.0000, D_PLUS, D_MINUS);
    
    
    wait for Period*8*1.0000;
    
    R_ENABLE <= '1';

    wait for Period*1.0000;
    
    R_ENABLE <= '0';

    wait for Period*1.0000;
    
    R_ENABLE <= '1';

    wait for Period*1.0000;
    
    R_ENABLE <= '0';

    wait for Period*1.0000;
    
    R_ENABLE <= '1';

    wait for Period*1.0000;
    
    R_ENABLE <= '0';

    wait for Period*1.0000;
    
    R_ENABLE <= '1';

    wait for Period*1.0000;
    
    R_ENABLE <= '0';

    wait for Period*1.0000;
    
    R_ENABLE <= '1';

    wait for Period*1.0000;
    
    R_ENABLE <= '0';

    wait for Period*1.0000;
    
    R_ENABLE <= '1';

    wait for Period*1.0000;
    
    R_ENABLE <= '0';

    wait for Period*1.0000;
    
    R_ENABLE <= '1';

    wait for Period*1.0000;
    
    R_ENABLE <= '0';

    wait for Period*1.0000;
    
    R_ENABLE <= '1';

    wait for Period*1.0000;
    
    R_ENABLE <= '0';

    wait for Period*1.0000;
    
    RST_N <= '1';
    D_MINUS <= '1';
    D_PLUS <= '1';
    R_ENABLE <= '0';
    wait for Period*1.0000;
    
    RST_N <= '0';
    
    
    wait for Period*6*1.0000;
    
    RST_N <= '1';
    
    wait for Period*1.0000;
    
    wait for Period*8*1.0000;
    
    transmit("00000101", Period*8*1.0000, D_PLUS, D_MINUS);
    


    transmit("00000101", Period*8*1.0000, D_PLUS, D_MINUS);
    assert R_ERROR = '1'
    report "R_ERROR is wrong" severity error;
    transmit("00000101", Period*8*1.0000, D_PLUS, D_MINUS);
    D_MINUS <= '0';
    D_PLUS <= '0';
    wait for Period*8*1.0000;
    
    D_PLUS <= '1';
    wait for Period*8*1.0000;
    
    
    
    transmit("00101010", Period*8*1.0000, D_PLUS, D_MINUS);
    transmit("00000101", Period*8*1.0000, D_PLUS, D_MINUS);

    D_PLUS <= '0';
    D_MINUS<= '1';
    wait for Period*8*1.0000;
    
    D_PLUS <= '0';
    D_MINUS<= '1';
    wait for Period*8*1.0000;
    
    D_PLUS <= '0';
    D_MINUS<= '1';
    wait for Period*8*1.0000;

    D_PLUS <= '0';
    D_MINUS<= '0';
    wait for Period*8*1.0000;
		
		D_PLUS <= '1';
		
		wait for Period*8*1.0000;
		
    transmit("00101010", Period*8*1.0000, D_PLUS, D_MINUS);
    transmit("00000101", Period*8*1.0000, D_PLUS, D_MINUS);

    
    --R_ENABLE <= '1';

    --wait for Period*4;
    
    --R_ENABLE <= '0';

    --wait for Period*4;
    
    transmit("11110101", Period*8*1.0000, D_PLUS, D_MINUS);
    
    transmit("11110101", Period*8*1.0000, D_PLUS, D_MINUS);
    
    transmit("11111010", Period*8*1.0000, D_PLUS, D_MINUS);
    transmit("10110101", Period*8*1.0000, D_PLUS, D_MINUS);
    transmit("11010101", Period*8*1.0000, D_PLUS, D_MINUS);
    transmit("11111101", Period*8*1.0000, D_PLUS, D_MINUS);
		
		D_PLUS <= '0';
    D_MINUS<= '0';
    wait for Period*8*1.0000;
		
		D_PLUS <= '1';
		
		wait for Period*8*1.0000;
		
		D_PLUS <= '0';
    D_MINUS<= '1';
    wait for Period*8*1.0000;
    
 		D_PLUS <= '0';
    D_MINUS<= '1';
    wait for Period*8*1.0000;
    
 		D_PLUS <= '1';
    D_MINUS<= '0';
    wait for Period*8*1.0000;
		
		D_PLUS <= '0';
    D_MINUS<= '0';
    wait for Period*8*1.0000;
    
    

        
    
    
--    D_MINUS <= 

--  	D_PLUS <= 

-- 		RST_N <= 

--    R_ENABLE <= 

  end process;
end TEST;
