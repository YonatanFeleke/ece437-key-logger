-- $Id: $
-- File name:   Dsync.vhd
-- Created:     2/6/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Synchronizer


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

Entity SYNC is
port(clk : in std_logic;
	RST_N : in std_logic;
	D_PLUS : in std_logic;
	D_MINUS : in std_logic;
	D_PLUSsync : out std_logic;
	D_MINUSsync : out std_logic);
end SYNC;

architecture behav of sync is
signal I1,I2: std_logic;
begin
Sync1: process(clk, RST_N)
begin
	if (RST_N = '0') then
		I1 <= '1' ;
		I2 <= '1';
		D_PLUSsync <= '1';
		D_MINUSsync <= '1';
	elsif rising_edge(clk)
	then
		I1 <= D_PLUS;
		I2 <= D_MINUS;
		D_PLUSsync <= I1;
		D_MINUSsync <= I2;
	end if;
end process Sync1;

end behav;
