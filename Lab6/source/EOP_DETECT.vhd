-- $Id: $
-- File name:   eop.vhd
-- Created:     2/17/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: END OF PACKET DETECTOR.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY eop_detect is
	port(
		D_PLUS			:		IN			std_logic;
		D_MINUS			:		IN 			std_logic;
		EOP					:		OUT			std_logic );
		
end eop_detect;


architecture dflow of eop_detect is 
begin
	EOP <= not(D_PLUS or D_MINUS);
end dflow;
