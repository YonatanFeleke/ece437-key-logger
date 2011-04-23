-- $Id: $
-- File name:   B_apndCode.vhd
-- Created:     4/10/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Access code generator: Hardocoded acess code to be put on bus
-- Preamble SYN and then Trailer for a total of 72 bits
-- SYN is derived from LAP = 11101011:01100110:11000111x2+0000...b64 else would need a random
--   generator and modulus divide and Barker sequence
-- Note LSB = b0 is on the left side of all figures

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY B_AppendAccessCode IS
		port(		CLK 						:		in	std_logic;
						RST							:		in	std_logic;
						CODE_EN					:		in	std_logic;
						ACESS_CODE			:		OUT	std_logic_vector(71 downto 0);
						STORE_EN				:		OUT	std_logic);
END B_AppendAccessCode;


architecture b_code of B_AppendAccessCode is
			signal SYN					:	std_logic_vector(63 downto 0);--64-bit sync word in the channelaccess code is derived from the 24-bit master LAP
--4 bit premable 1010 if start of syn in 1 else 0101 if synstart bit is a zero.
			signal preamble			: std_logic_vector(3 downto 0);
--4 bit premable 1010 if start of syn in 1 else 0101 if synstart bit is a zero.			
			signal trailer		 	: std_logic_vector(3 downto 0);

begin
		assignprocess : process (CLK,RST,CODE_EN)
			begin
				SYN <= "1110101101100110110001111110101101100110110001110000000000000000";
				if ( SYN(0) = '1') then
					preamble <= "0101";
				else
					preamble <= "1010";
				end if;
				if ( SYN(63) = '0' ) then 
					trailer <= "0101";
				else 
					trailer <= "1010";
				end if;
		end process assignprocess;
				
outputcode : process (CLK,RST,CODE_EN)	
    begin 
      if ( RST = '1') then-- on reset what is the stop
					ACESS_CODE <= "000000000000000000000000000000000000000000000000000000000000000000000000";	 
					STORE_EN <= '0';
      elsif ( rising_edge(clk)) then
      		if (CODE_EN = '1') then -- DON'T CARE ABOUT DORIG W/O SHIFT ENABLE
      			ACESS_CODE <= trailer&SYN&preamble; -- Notice inverted because ACESS_CODE(0) = preamble
      			STORE_EN <= '1';
  				else -- value indicating not valid via premable => check on sram accept that all are complements
  				  STORE_EN <= '0';
	      		--ACESS_CODE <= "111100000000000000000000000000000000000000000000000000000000000000000000"; -- stays until next transmission
	      	end if;
      end if;    
    end process outputcode;
end b_code;
