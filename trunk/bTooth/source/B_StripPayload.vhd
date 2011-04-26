-- $Id: $
-- File name:   B_StripPayload.vhd
-- Created:     4/10/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: This removes the headers and tehn calculates the crc and then alerts the next packe block of teh state.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY B_StripPayload IS
		generic (WAITSRAM : natural := 24; -- wait for 24 cycles before data is present
						 WAITREG	:	natural := 5264 ); -- Transmit wait time. FIX THIS for LAG
		port (	CLK 						:		in	std_logic;
						RST							:		in	std_logic;
						ANTINR					: 	in 	std_logic;
						-- SRAM
						READ_EN					:		in 	std_logic;						
						REPLY_EN				:		OUT	std_logic;
						ERR							:		OUT std_logic;
						DATAOUT					:		OUT std_logic_vector( 7 downto 0));
END B_StripPayload;

architecture b_strip of B_StripPayload is
begin
	init :process (CLK,RST)
		begin
		end process init;
end b_strip;
