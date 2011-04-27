-- $Id: $
-- File name:   EOP_detect.vhd
-- Created:     2/21/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Code for the end of packet detect for the usb receiver


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

Entity U_EOP_DETECT is
  port(D_PLUS: in std_logic;
       D_MINUS: in std_logic;
       EOP  : out std_logic);
end U_EOP_DETECT;

architecture dataflow of U_EOP_DETECT is
begin
  EOP <= '1' when (D_MINUS = '0' and D_PLUS = '0') else '0';      
end dataflow;

