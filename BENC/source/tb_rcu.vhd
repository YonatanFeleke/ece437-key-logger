-- $Id: $
-- File name:   tb_rcu.vhd
-- Created:     2/22/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_rcu is
generic (Period : Time := 10.4167 ns);
end tb_rcu;

architecture TEST of tb_rcu is

  component u_rcu
    PORT(
         clk : in std_logic;
         rst_n : in std_logic;
         d_edge : in std_logic;
         eop : in std_logic;
				 STUFF_ERROR	:	in std_logic;
				 CRC_ERROR	:	in std_logic;
         shift_enable : in std_logic;
         rcv_data : in std_logic_vector(7 downto 0);
         rcving : out std_logic;
         w_enable : out std_logic;
         r_error : out std_logic;
				 CRC_EN	:	out std_logic
    );
  end component;

-- Insert signals Declarations here
  signal clk : std_logic;
  signal rst_n : std_logic;
  signal d_edge : std_logic;
  signal eop : std_logic;
	signal STUFF_ERROR	:	std_logic;
  signal shift_enable : std_logic;
  signal rcv_data : std_logic_vector(7 downto 0);
  signal rcving : std_logic;
  signal w_enable : std_logic;
  signal r_error : std_logic;
	signal CRC_ERROR	:	std_logic;
	signal CRC_EN		: std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: u_rcu port map(
                clk => clk,
                rst_n => rst_n,
                d_edge => d_edge,
                eop => eop,
                shift_enable => shift_enable,
								STUFF_ERROR =>	STUFF_ERROR,
                rcv_data => rcv_data,
                rcving => rcving,
                w_enable => w_enable,
                r_error => r_error,
								CRC_ERROR => CRC_ERROR,
								CRC_EN	=> CRC_EN
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process
variable test_packet : std_logic_vector(31 downto 0) := "111100001010010111000000" & "00000000";
  begin
    --194 periods * 10.4167 ns
    --2030 ns

-- Insert TEST BENCH Code Here
    -- setup
    -- 2 periods
    rst_n <= '1';
		STUFF_ERROR <= '0';

    d_edge <= '0';
		CRC_ERROR <= '0';

    eop <= '0';

    shift_enable <= '0';

    rcv_data <= "00000000";
    
    wait for Period;
    rst_n <= '0';
    wait for Period;
    rst_n <= '1';
    
    --sync byte
    -- 8 periods
    rcv_data <= test_packet(7 downto 0);
    d_edge <= '1';
    wait for Period;
    d_edge <= '0';
    wait for Period*3;
    shift_enable <= '1';
    wait for Period;
    shift_enable <= '0';
    wait for Period*3;
    STUFF_ERROR <= '0';
    --Loop through test packet
    --23 iterations * 8 periods
    for I in 1 to 24 loop
      rcv_data <= test_packet(I+7 downto I);
      if(not(rcv_data(7) = rcv_data(6))) then d_edge <= '1';
      end if;
      wait for Period;
      if(d_edge <= '1') then d_edge <= '0';
      end if;
      wait for Period*3;
      shift_enable <= '1';
      wait for Period;
      shift_enable <= '0';
      wait for Period*3;
    end loop;
		CRC_ERROR <= '1';
    eop <= '1';
    wait for Period;
		wait;
    

  end process;
end TEST;
