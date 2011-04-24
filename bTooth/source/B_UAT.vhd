-- $Id: $ mg35
-- File name:   B_UAT.vhd
-- Created:     4/23/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     Universal Asynchronous Transmit

library ieee;
use ieee.std_logic_1164.all;

ENTITY B_UAT IS
		generic (WAITSRAM : natural := 24; -- wait for 24 cycles before data is present after strobe??
						 WAITREG	:	natural := 5264 ); -- Transmit wait time. FIX THIS DOESN'T HAVE LAG CLKS.
						 -- wait for 5264 cycles before 8 bit data is transmitted after nestore_en 1 clk Strobe
    port	(
    		 		CLK 						: in std_logic;
         		RST 						: in std_logic;
         		ENCODE_EN 			: in std_logic;
         		-- option one: concatinating data bus locally
         		ACCESS_CODE			: in std_logic_vector(71 downto 0);
         		HEADER 					: in std_logic_vector(53 downto 0);
         		-- option two : concatenate on toplevel design
         		TOTALHEADER			: in std_logic_vector(125 downto 0);
         		----------------------------------------------------------COMMENT one of above two
         		PAYLOAD 				: in std_logic_vector(7 downto 0);
	         	TRAN_EN		 			: in std_logic; -- 1 CLK cycle clk to start transmit 126 bits
	         	ESTORE_EN				: in std_logic; -- 1 CLK strobe for 8 bit data
	         	ANT_LOUT 				: OUT std_logic); -- LEFT ANTENNA OUTPUT
END B_UAT;
architecture b_serialtx of B_UAT is
begin
	process
  	begin

  
  end process;
end b_serialtx;
