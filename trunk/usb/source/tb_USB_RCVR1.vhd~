-- $Id: $
-- File name:   tb_USB_RCVR.vhd
-- Created:     2/27/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_USB_RCVR is
generic (Period : Time := 3.47223 ns;
				 d_Period : time := 10.4167 ns);
end tb_USB_RCVR;

architecture TEST of tb_USB_RCVR is

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

  component USB_RCVR
    PORT(
         D_MINUS : IN std_logic;
         R_ENABLE : IN std_logic;
         clk : IN std_logic;
         d_plus : IN std_logic;
         RST : IN std_logic;
         EMPTY : OUT std_logic;
         FULL : OUT std_logic;
         R_DATA : OUT std_logic_vector (7 DOWNTO 0);
         r_error : OUT std_logic;
         rcving : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal D_MINUS : std_logic;
  signal R_ENABLE : std_logic;
  signal clk : std_logic;
  signal d_plus : std_logic;
  signal RST : std_logic;
  signal EMPTY : std_logic;
  signal FULL : std_logic;
  signal R_DATA : std_logic_vector (7 DOWNTO 0);
  signal r_error : std_logic;
  signal rcving : std_logic;

-- signal <name> : <type>;
	procedure outputdata(
		constant data : in std_logic_vector(7 downto 0);
		constant DATA_RATE : in time;
		signal output : inout std_logic;
		signal minus : inout std_logic) is
		begin
		for i in 0 to DATA'length -1 loop
			output <= data(i);
			minus <= not(data(i));
			wait for DATA_RATE;
			--if ( i = 0) then edge<= '1';
			--elsif (data(i) = data(i-1)) then edge <= '0';
			--else edge <= '1';
			--end if;
			--wait for period;
			--edge <= '0';
			--wait for 6*period;
		end loop;
	END PROCEDURE outputdata; 
begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: USB_RCVR port map(
                D_MINUS => D_MINUS,
                R_ENABLE => R_ENABLE,
                clk => clk,
                d_plus => d_plus,
                RST => RST,
                EMPTY => EMPTY,
                FULL => FULL,
                R_DATA => R_DATA,
                r_error => r_error,
                rcving => rcving
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process
	variable test_byte	: std_logic_vector(7 downto 0) := "00101010";
	variable sync_byte	:	std_logic_vector(7 downto 0) := "00101010";
  begin

-- Insert TEST BENCH Code Here

    D_MINUS <= '0';
    R_ENABLE <= '0';
    d_plus <= '1';
    RST <= '0';
		wait for d_Period;
		RST <= '1';
		wait for d_Period;
		RST<= '0';

		--test_byte := "00000000";
		--for I in 0 to 7 loop
		--	D_PLUS <= test_byte(I);
		--	D_MINUS <= not(test_byte(I));
		--	wait for d_Period*8;
		--end loop;


		--test_byte := "01011010";
		--for I in 0 to 7 loop
		--	D_PLUS <= test_byte(I);
		--	D_MINUS <= not(test_byte(I));
		--	wait for d_Period*8;
		--end loop;
		--D_PLUS <= '0';
		--D_MINUS <= '0';
		--wait for d_Period*8;
		--R_ENABLE <= '1';
		--wait for Period;
		--R_ENABLE <= '0';
		
		D_PLUS <= '1';
		D_MINUS <= '0';
		wait for d_Period;
		outputdata(sync_byte,d_Period*8,D_PLUS,D_MINUS);
		outputdata("01010101",d_Period*8,D_PLUS,D_MINUS);
		R_ENABLE <= '1';
		wait for d_Period;
		R_ENABLE <= '0';
		wait for d_Period;
		R_ENABLE <= '1';
		wait for d_Period;
		R_ENABLE <= '0';

		
		wait;
		
    

  end process;
end TEST;
