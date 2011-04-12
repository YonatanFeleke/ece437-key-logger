-- $Id: $
-- File name:   tb_decode.vhd
-- Created:     2/15/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_decode is
generic (Period : Time := 10.42 ns);
end tb_decode;

architecture TEST of tb_decode is

  component decode
    PORT(
         CLK : IN std_logic;
         RST_N : IN std_logic;
         D_PLUS : IN std_logic;
         SHIFT_ENABLE : IN std_logic;
         EOP : IN std_logic;
         D_ORIG : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal RST_N : std_logic;
  signal D_PLUS : std_logic;
  signal SHIFT_ENABLE : std_logic;
  signal EOP : std_logic;
  signal D_ORIG : std_logic;
  signal TData  : std_logic_vector(4 downto 0);

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk <= '0';
  wait for Period/2;
  clk <= '1';  
  wait for Period/2;
end process;

  DUT: decode port map(
                CLK => CLK,
                RST_N => RST_N,
                D_PLUS => D_PLUS,
                SHIFT_ENABLE => SHIFT_ENABLE,
                EOP => EOP,
                D_ORIG => D_ORIG
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here
		
		TData <= "10011";
		
		RST_N <= '0';
		SHIFT_ENABLE <= '1';
		EOP <= '0';
		
		wait for 9 ns;
		
		--Iteration 1
		
		for i in 0 to 4 loop
				
			RST_N <= '1';
		
			D_PLUS <= TData(i); 
		
			SHIFT_ENABLE <= '1';
		
			wait for Period;
		
			SHIFT_ENABLE <= '0';
		
			wait for Period;
		
		end loop;
		
		--Iteration 2
		
		
		TData <= "01100";
		
		RST_N <= '0';
		SHIFT_ENABLE <= '1';
		EOP <= '1';
		
		wait for 9 ns;
		
		--Iteration 1
		
		for i in 0 to 4 loop
				
			RST_N <= '1';
		
			D_PLUS <= TData(i); 
		
			SHIFT_ENABLE <= '1';
		
			wait for Period;
		
			SHIFT_ENABLE <= '0';
		
			wait for Period;
		
		end loop;
		
		
		-- Iteration 3
		
				
		TData <= "10011";
		
		RST_N <= '0';
		SHIFT_ENABLE <= '1';
		EOP <= '0';
		
		wait for 9 ns;
		
		--Iteration 1
		
		for i in 0 to 4 loop
				
			RST_N <= '1';
		
			D_PLUS <= TData(i); 
		
			SHIFT_ENABLE <= '1';
		
			wait for Period;
		
			SHIFT_ENABLE <= '0';
		
			wait for Period;
		
		end loop;
		
		
		
		
				
		
		
    --RST_N <= 

--    D_PLUS <= 

  --  SHIFT_ENABLE <= 

    --EOP <= 

  end process;
end TEST;
