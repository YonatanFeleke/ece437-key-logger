-- $Id: $
-- File name:   tb_shift_reg.vhd
-- Created:     2/17/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_shift_reg is
generic (Period : Time := 10.42 ns);
end tb_shift_reg;

architecture TEST of tb_shift_reg is

  component shift_reg
    PORT(
         CLK : IN std_logic;
         RST_N : IN std_logic;
         SHIFT_ENABLE : IN std_logic;
         D_ORIG : IN std_logic;
         RCV_DATA : OUT std_logic_vector(7 downto 0)
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal RST_N : std_logic;
  signal SHIFT_ENABLE : std_logic;
  signal D_ORIG : std_logic;
  signal RCV_DATA : std_logic_vector(7 downto 0);
  signal TData  : std_logic_vector(7 downto 0);  

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: shift_reg port map(
                CLK => CLK,
                RST_N => RST_N,
                SHIFT_ENABLE => SHIFT_ENABLE,
                D_ORIG => D_ORIG,
                RCV_DATA => RCV_DATA
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    TData <= "10011001";
		
		RST_N <= '0';
		
		
		wait for Period/2;
		
		--Iteration 1
		
		for i in 0 to 7 loop
				
			RST_N <= '1';
		
			D_ORIG <= TData(i); 
		
			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
		
		end loop;
    
    
    wait for Period;

    TData <= not TData;
		
		RST_N <= '0';
		
		
		wait for Period/2;
		
		--Iteration 1
		
		for i in 0 to 7 loop
				
			RST_N <= '1';
		
			D_ORIG <= TData(i); 
		
			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
		
		end loop;


    wait for Period;

    TData <= not TData;
		
		RST_N <= '0';
		
		
		wait for Period/2;
		
		--Iteration 1
		
		for i in 0 to 7 loop
				
			RST_N <= '1';
		
			D_ORIG <= TData(i); 
		
			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
		
		end loop;

    --SHIFT_ENABLE <= 

    --D_ORIG <= 

  end process;
end TEST;
