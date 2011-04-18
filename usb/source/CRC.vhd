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

entity SHIFT_REG is
	port
	(
		CLK						: in	std_logic;
		RST_N						: in	std_logic;
		CRC_SHIFT			: in	std_logic;
		D_ORIG			: in std_logic;
		RCV_DATA			: out std_logic_vector(15 downto 0)
	);
end SHIFT_REG;


architecture simple_shift_reg of shift_reg is
	signal present_val : std_logic_vector(15 downto 0);
	signal next_val : std_logic_vector(15 downto 0);
  
begin
    
   
  REG: process (CLK, RST_N)
	variable ctr	: integer range 0 to 2;
  begin  -- process
		if RST_N = '0' then
		present_val <= "1111111111111111";
		elsif (rising_edge(CLK)) then
			present_val <= next_val;
		end if; 
	end process;

	-- Next value logic: Shift in to the right when told to
	--next_val	<= D_ORIG & present_val(7 downto 1) when ( '1' = CRC_SHIFT ) else present_val;
	next_val	<= (present_val(14) xor (present_val(15) xor D_ORIG)) & present_val(13 downto 2) & (present_val(1) xor (present_val(15) xor D_ORIG)) & present_val(0) & (present_val(15) xor D_ORIG) when ( '1' = CRC_SHIFT ) else present_val;
	
	-- Output Logic
  RCV_DATA <= present_val(15 downto 0);
   
end simple_shift_reg;

