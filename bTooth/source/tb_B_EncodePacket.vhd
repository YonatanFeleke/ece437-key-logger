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

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    RST <= '0';
    ENCODE_EN <= '1';
    DATA <= INT_TO_STD_LOGIC(12,8);
    wait for 7 ns;
    RST <= '1';
    ENCODE_EN <= '0';
    DATA <= INT_TO_STD_LOGIC(56,8);
    wait for 14 ns;
    RST <= '0';
    ENCODE_EN <= '0';
    DATA <= INT_TO_STD_LOGIC(00,8);
    wait for 21 ns;
    report "Test 1 BEGIN for data" severity NOTE; 
    RST <= '0';
    ENCODE_EN <= '1';
    DATA <= INT_TO_STD_LOGIC(119,8);
    wait for 896 ns;
    ENCODE_EN <= '0';
    wait for 35 ns;

    wait for 7 ns;
    report "Test 2" severity NOTE; 
    wait for 14 ns;
    RST <= '0';
    ENCODE_EN <= '0';
    DATA <= INT_TO_STD_LOGIC(00,8);
    wait for 21 ns;
    report "Test 2 BEGIN for data" severity NOTE; 
    RST <= '0';
    ENCODE_EN <= '1';
    DATA <= INT_TO_STD_LOGIC(222,8);
    wait for 896 ns;
    wait for 35 ns;
    RST <= '1';
    DATA <= INT_TO_STD_LOGIC(199,8);    
    wait;
    
  end process;
end TEST;
