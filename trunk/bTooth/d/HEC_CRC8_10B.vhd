-- Purpose : synthesizable CRC function
--   * polynomial: (0 1 2 5 7 8)
--   * data width: 10
--
-- HEC calculator
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

package PCK_CRC8_D10 is
  -- polynomial: (0 1 2 5 7 8)
  -- data width: 10
  -- convention: the first serial bit is D[9]
  function nextCRC8_D10
    (Data: std_logic_vector(9 downto 0);
     crc:  std_logic_vector(7 downto 0))
    return std_logic_vector;
end PCK_CRC8_D10;


package body PCK_CRC8_D10 is

  -- polynomial: (0 1 2 5 7 8)
  -- data width: 10
  -- convention: the first serial bit is D[9]
  function nextCRC8_D10
    (Data: std_logic_vector(9 downto 0);
     crc:  std_logic_vector(7 downto 0))
    return std_logic_vector is

    variable d:      std_logic_vector(9 downto 0);
    variable c:      std_logic_vector(7 downto 0);
    variable newcrc: std_logic_vector(7 downto 0);

  begin
    d := Data;
    c := crc;

    newcrc(0) := d(8) xor d(6) xor d(4) xor d(2) xor d(1) xor d(0) xor c(0) xor c(2) xor c(4) xor c(6);
    newcrc(1) := d(9) xor d(8) xor d(7) xor d(6) xor d(5) xor d(4) xor d(3) xor d(0) xor c(1) xor c(2) xor c(3) xor c(4) xor c(5) xor c(6) xor c(7);
    newcrc(2) := d(9) xor d(7) xor d(5) xor d(2) xor d(0) xor c(0) xor c(3) xor c(5) xor c(7);
    newcrc(3) := d(8) xor d(6) xor d(3) xor d(1) xor c(1) xor c(4) xor c(6);
    newcrc(4) := d(9) xor d(7) xor d(4) xor d(2) xor c(0) xor c(2) xor c(5) xor c(7);
    newcrc(5) := d(6) xor d(5) xor d(4) xor d(3) xor d(2) xor d(1) xor d(0) xor c(0) xor c(1) xor c(2) xor c(3) xor c(4);
    newcrc(6) := d(7) xor d(6) xor d(5) xor d(4) xor d(3) xor d(2) xor d(1) xor c(0) xor c(1) xor c(2) xor c(3) xor c(4) xor c(5);
    newcrc(7) := d(7) xor d(5) xor d(3) xor d(1) xor d(0) xor c(1) xor c(3) xor c(5);
    return newcrc;
  end nextCRC8_D10;

end PCK_CRC8_D10;
