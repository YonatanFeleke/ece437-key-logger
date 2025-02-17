-- $Id: $ece337
-- File name:   sr_10bit.vhd
-- Created:     1/31/2011
-- Author:      ECE 337 Course Staff
-- Lab Section: Course Staff
-- Version:     2.0  Updated Design Entry
-- Description: ECE 337 Lab 5 UART design component (10 bit shift register block)
-- Use a tab size of 2 for best viewing results

library ieee;
use ieee.std_logic_1164.all;

entity U_CLKDIV is
	port
	(
		CLK						: in	std_logic;
		RST						:	in std_logic;
		D_CLK					: out	std_logic
	);
end U_CLKDIV;


architecture clockdivider of U_CLKDIV is
	signal ctr1, ctr0	:	integer range 0 to 2;
	signal clk1	:	std_logic;
  
begin
    
   
  divide: process (CLK,RST)
	--variable ctr	: integer range 0 to 5;
  begin  -- process
		
		if(RST = '1') then
			clk1 <= '1';
      ctr1 <= 0;
			--prescnt <= 0;
		elsif (rising_edge(clk)) then
      --prescnt <= nxtcnt;
			if(ctr1 = 2) then
				--if(clk1 = '1') then clk1 <= '0';
        --else clk1 <= '1';
        --end if;
        --clk1 <= not(clk1);
        ctr1 <= 0;
				--nxtcnt <= 0;
        --prescnt <= 0;
			else
        ctr1 <= ctr1 + 1;				
        --nxtcnt <= prescnt + 1;
			end if;
    end if;
  end process;
  divide1:  process(clk,rst)
  begin
    if(RST = '1') then
      ctr0 <= 0;
    elsif(falling_edge(clk)) then
			if(ctr0 = 2) then
        --clk1 <= not(clk1);
        ctr0 <= 0;
			else
        ctr0 <= ctr0 + 1;	
		  end if; 
    end if;
	end process;
  --ctr <= prescnt;
	D_CLK <= '1' when not(ctr0 = 2) and not(ctr1 = 2) else '0';   
end clockdivider;
