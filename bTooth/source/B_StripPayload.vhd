-- $Id: $
-- File name:   B_StripPayload.vhd
-- Created:     4/10/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: This removes the headers and tehn calculates the crc and then alerts the next packe block of teh state.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

