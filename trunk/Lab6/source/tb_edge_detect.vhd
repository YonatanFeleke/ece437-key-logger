-- $Id: $
-- File name:   tb_edge.vhd
-- Created:     2/17/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_edge_detect is
generic (Period : Time := 10.42 ns);
end tb_edge_detect;

architecture TEST of tb_edge_detect is

  component edge_detect
    PORT(
         CLK : IN std_logic;
         RST_N : IN std_logic;
         D_PLUS : IN std_logic;
         D_EDGE : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal RST_N : std_logic;
  signal D_PLUS : std_logic;
  signal D_EDGE : std_logic;
  signal TData  : std_logic_vector(4 downto 0);
-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: edge_detect port map(
                CLK => CLK,
                RST_N => RST_N,
                D_PLUS => D_PLUS,
                D_EDGE => D_EDGE
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

   
		TData <= "10011";
		
		RST_N <= '0';
		
		
		wait for 9 ns;
		
		--Iteration 1
		
		for i in 0 to 4 loop
				
			RST_N <= '1';
		
			D_PLUS <= TData(i); 
		
			wait for Period*3;
		
		end loop;
		
		--Iteration 2
		
		
		TData <= "01100";
		
		RST_N <= '1';
		
		wait for 9 ns;
		
		--Iteration 1
		
		for i in 0 to 4 loop
				
			RST_N <= '1';
		
			D_PLUS <= TData(i); 
			
			wait for Period*3;
		
		end loop;
		
		
		-- Iteration 3
		
				
		TData <= "10011";
		
		RST_N <= '0';
		
		wait for 9 ns;
		
		--Iteration 1
		
		for i in 0 to 4 loop
				
			RST_N <= '1';
		
			D_PLUS <= TData(i); 
			
			wait for Period*3;
		
		end loop;
		

  end process;
end TEST;
