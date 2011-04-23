-- $Id: $
-- File name:   Fifo.vhd
-- Created:     2/26/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: FIFO PROVIDED FOR US.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

LIBRARY ECE337_IP;
USE ECE337_IP.ALL;

entity RCV_FIFO is 

	port (
		CLK : in std_logic;
		RST_N : in std_logic;
		R_ENABLE : in std_logic;
		W_ENABLE : in std_logic;
		WDATA : in std_logic_vector(7 downto 0);
		R_DATA : out std_logic_vector(7 downto 0);
		EMPTY : out std_logic;
		FULL : out std_logic);

end RCV_FIFO;


architecture porting of RCV_FIFO is 

	component Fifo
	port (
		RCLK : in std_logic;
		WCLK : in std_logic;
		RST_N : in std_logic;
		RENABLE : in std_logic;
		WENABLE : in std_logic;
		WDATA : in std_logic_vector(7 downto 0);
		RDATA : out std_logic_vector(7 downto 0);
		EMPTY : out std_logic;
		FULL : out std_logic);
	end component;
	
	begin
	
	
	FIFOMAP : Fifo port map(
														RCLK => CLK,
														WCLK => CLK,
														RST_N => RST_N,
														RENABLE => R_ENABLE,
														WENABLE => W_ENABLE,
														WDATA => WDATA,
														RDATA => R_DATA,
														EMPTY => EMPTY,
														FULL => FULL);
														
end porting;
														
	
