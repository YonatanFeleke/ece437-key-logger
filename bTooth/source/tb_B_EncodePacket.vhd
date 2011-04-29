-- $Id: $
-- File name:   tb_B_EncodePacket.vhd
-- Created:     4/23/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
use ieee.std_logic_1164.all;

entity tb_B_EncodePacket is
generic (Period : Time := 3.5 ns);
end tb_B_EncodePacket;

architecture TEST of tb_B_EncodePacket is

  function INT_TO_STD_LOGIC( X: INTEGER; NumBits: INTEGER )
     return STD_LOGIC_VECTOR is
    variable RES : STD_LOGIC_VECTOR(NumBits-1 downto 0);
    variable tmp : INTEGER;
  begin
    tmp := X;
    for i in 0 to NumBits-1 loop
      if (tmp mod 2)=1 then
        res(i) := '1';
      else
        res(i) := '0';
      end if;
      tmp := tmp/2;
    end loop;
    return res;
  end;

  component B_EncodePacket
    PORT(
    		 CLK : in std_logic;
         RST : in std_logic;
         ENCODE_EN : in std_logic;
         DATA : in std_logic_vector(7 downto 0);
         PAYLOAD : OUT std_logic_vector(7 downto 0);
         ESTORE_EN : OUT std_logic;
         NEXT_EN : OUT std_logic;
         READ_EN : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal RST : std_logic;
  signal ENCODE_EN : std_logic;
  signal DATA : std_logic_vector(7 downto 0);
  signal PAYLOAD : std_logic_vector(7 downto 0);
  signal ESTORE_EN : std_logic;
  signal NEXT_EN : std_logic;
  signal READ_EN : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable CLK_tmp: std_logic := '0';
begin
  CLK_tmp := not CLK_tmp;
  CLK <= CLK_tmp;
  wait for Period/2;
end process;

  DUT: B_EncodePacket port map(
  							CLK => CLK,
                RST => RST,
                ENCODE_EN => ENCODE_EN,
                DATA => DATA,
                PAYLOAD => PAYLOAD,
                ESTORE_EN => ESTORE_EN,
                NEXT_EN => NEXT_EN,
                READ_EN => READ_EN
                );

process

  begin
--    RST <= '0';
--    ENCODE_EN <= '1';
--    DATA <= INT_TO_STD_LOGIC(12,8);
--    wait for 7 ns;
-- NOT TURN KEY IF ENCODE_EN IS ACCIDENTALLY HIGH FOR 3.5 NS
    RST <= '1';
    ENCODE_EN <= '0';
    DATA <= INT_TO_STD_LOGIC(56,8);
    wait for 14 ns;
    RST <= '0';
    ENCODE_EN <= '0';
    DATA <= INT_TO_STD_LOGIC(00,8);
    wait for 21 ns;
    
-- Test 1 : Correct execution    
    report "Test 1 BEGIN for CORRECT EXEC" severity NOTE; 
    RST <= '0';
    ENCODE_EN <= '1';
--    DATA <= INT_TO_STD_LOGIC(119,8);
    DATA <= "10101010";
    -- STATE = HEADER
    wait for 7 ns;
    ENCODE_EN <= '0';
    -- see if 2 clk needed & falling edge doesn't mess up.
    wait for 669858.5 ns;
	  report "Test 1 END for CORRECT EXEC" severity NOTE;
--    wait for 100000 ns; 
 --   RST <= '1';
   	wait;
  end process;
end TEST;
-- Note if further testing, create a fifo that when paged gives out a diferent data.
