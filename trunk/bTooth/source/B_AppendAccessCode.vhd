-- $Id: $
-- File name:   B_apndCode.vhd
-- Created:     4/10/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Access code generator: Hardocoded acess code to be put on bus
-- Preamble SYN and then Trailer for a total of 72 bits


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
			signal SYN					:	std_logic_vector(63 downto 0);
--4 bit premable 1010 if start of syn in 1 else 0101 if synstart bit is a zero.
			signal preamble			: std_logic_vector(3 downto 0);
--4 bit premable 1010 if start of syn in 1 else 0101 if synstart bit is a zero.			
			signal trailer		 	: std_logic_vector(3 downto 0);

begin
		assignprocess : process (CLK,RST,CODE_EN)
			begin
				SYN <= "0000000000000000000000000000000000000000000000000000000000000000";
				if ( SYN(0) = '1') then
					preamble <= "0101";
				else
					preamble <= "1010";
				end if;
				if ( SYN(63) = '1' ) then 
					trailer <= "0101";
				else 
					trailer <= "1010";
				end if;
		end process assignprocess;
				
outputcode : process (CLK,RST,CODE_EN)	
    begin 
      if ( RST = '1') then
					ACESS_CODE <= "000000000000000000000000000000000000000000000000000000000000000000000000";	-- on reset what is the stop 
      elsif ( rising_edge(clk)) then
      		if (CODE_EN = '1') then -- DON'T CARE ABOUT DORIG W/O SHIFT ENABLE
      			ACESS_CODE <= preamble&SYN&trailer;
  				else
	      		ACESS_CODE <= "000000000000000000000000000000000000000000000000000000000000000000000000";
	      	end if;
      end if;
    end process outputcode;
end b_code;
