-- $Id: $
-- File name:   B_StartChk.vhd
-- Created:     4/10/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: this is the source of the enable signal when recieving a request.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;

ENTITY B_Controller IS
		port (	CLK 						:		in	std_logic;
						RST							:		in	std_logic;
						NEXT_EN					:		in	std_logic;
						ANTINL					:		in std_logic;
						RESEND_EN				:		OUT std_logic;
						TRANS_EN				:		OUT std_logic);
END B_Controller;
