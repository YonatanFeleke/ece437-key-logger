-- $Id: $
-- File name:   tb_U_BUFFER.vhd
-- Created:     4/25/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_U_BUFFER is
generic (Period : Time := 10.4167 ns);
end tb_U_BUFFER;

architecture TEST of tb_U_BUFFER is

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

  component U_BUFFER
    PORT(
         D_CLK : in std_logic;
         RST : in std_logic;
         W_ENABLE : in std_logic;
         EOP : in std_logic;
         W_ENABLE_OUT : out std_logic;
         RCV_DATA : in std_logic_vector(7 downto 0);
         W_DATA : out std_logic_vector(7 downto 0)
    );
  end component;

-- Insert signals Declarations here
  signal D_CLK : std_logic;
  signal RST : std_logic;
  signal W_ENABLE : std_logic;
  signal EOP : std_logic;
  signal W_ENABLE_OUT : std_logic;
  signal RCV_DATA : std_logic_vector(7 downto 0);
  signal W_DATA : std_logic_vector(7 downto 0);

-- signal <name> : <type>;

begin

CLKGEN: process
  variable D_CLK_tmp: std_logic := '0';
begin
  D_CLK_tmp := not D_CLK_tmp;
  D_CLK <= D_CLK_tmp;
  wait for Period/2;
end process;

  DUT: U_BUFFER port map(
                D_CLK => D_CLK,
                RST => RST,
                W_ENABLE => W_ENABLE,
                EOP => EOP,
                W_ENABLE_OUT => W_ENABLE_OUT,
                RCV_DATA => RCV_DATA,
                W_DATA => W_DATA
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    RST <= '0';

    W_ENABLE <= '0';

    EOP <= '0';

    RCV_DATA <= "10101010";
		wait for Period;
		RST <= '1';
		wait for Period;
		RST <= '0';
		wait for Period;
		W_ENABLE <= '1';
		wait for Period;
		W_ENABLE <='0';
		wait for Period;

    RCV_DATA <= "11111111";
		wait for Period;
		RST <= '0';
		wait for Period;
		W_ENABLE <= '1';
		wait for Period;
		W_ENABLE <='0';

    RCV_DATA <= "00000000";
		wait for Period;
		RST <= '0';
		wait for Period;
		W_ENABLE <= '1';
		wait for Period;
		W_ENABLE <='0';
		

		EOP <= '1';
		wait for Period*4;
		EOP <= '0';
		wait for Period;

RCV_DATA <= "11110000";
		wait for Period;
		RST <= '1';
		wait for Period;
		RST <= '0';
		wait for Period;
		W_ENABLE <= '1';
		wait for Period;
		W_ENABLE <='0';
		wait for Period;

    RCV_DATA <= "11111111";
		wait for Period;
		RST <= '0';
		wait for Period;
		W_ENABLE <= '1';
		wait for Period;
		W_ENABLE <='0';

    RCV_DATA <= "00000000";
		wait for Period;
		RST <= '0';
		wait for Period;
		W_ENABLE <= '1';
		wait for Period;
		W_ENABLE <='0';
		wait;
  end process;
end TEST;
