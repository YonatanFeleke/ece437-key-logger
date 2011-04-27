-- $Id: $
-- File name:   tb_.vhd
-- Created:     4/22/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_ is
generic (Period : Time := 3.4722 ns);
end tb_;

architecture TEST of tb_ is

