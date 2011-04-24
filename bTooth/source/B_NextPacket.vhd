-- $Id: $
-- File name:   B_nextpacket.vhd
-- Created:     4/10/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Sends the resend or send another enable


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY B_NextPacket IS
		generic (WAITSRAM : natural := 24; -- wait for 24 cycles before data is present
						 WAITREG	:	natural := 5264 ); -- Transmit wait time. FIX THIS for LAG
		port (	CLK 						:		in	std_logic;
						RST							:		in	std_logic;
						REPLY_EN				:		in	std_logic;
						ERR							:		in std_logic;
						DATAOUT					:		OUT std_logic); -- serially transmit 11110101(resend) and 11111010(newsend)
END B_NextPacket;

architecture b_strip of B_StripPayload is
begin
	process
		begin
		end process;
end b_strip;
