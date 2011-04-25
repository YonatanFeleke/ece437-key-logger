-- $Id: $
-- File name:   tb_B_NextPacket.vhd
-- Created:     4/24/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_B_NextPacket is
generic (Period : Time := 3.5 ns);
end tb_B_NextPacket;

architecture TEST of tb_B_NextPacket is

  component B_NextPacket
    PORT(CLK : in std_logic;
         RST : in std_logic;
         REPLY_EN : in std_logic;
         ERR : in std_logic;
         DATAOUT : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal RST : std_logic;
  signal REPLY_EN : std_logic;
  signal ERR : std_logic;
  signal DATAOUT : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable CLK_tmp: std_logic := '0';
begin
  CLK_tmp := not CLK_tmp;
  CLK <= CLK_tmp;
  wait for Period/2;
end process;

  DUT: B_NextPacket port map(
								CLK => CLK,
                RST => RST,
                REPLY_EN => REPLY_EN,
                ERR => ERR,
                DATAOUT => DATAOUT
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    RST <= '1';
    REPLY_EN <= '0';
    ERR <= '0';
    wait for 14 ns;
    RST <= '0';
    REPLY_EN <= '1';
    wait for 3.5 ns;
    REPLY_EN <= '0';
--    wait for 1400 ns;
    wait for 137000 ns;
    ERR <= '1';
    wait for 240 ns;
    REPLY_EN <= '1';
    wait for 3.5 ns;
    REPLY_EN <= '0';
		wait;
	end process;
end TEST;
