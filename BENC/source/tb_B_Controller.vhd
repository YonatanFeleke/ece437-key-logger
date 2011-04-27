-- $Id: $
-- File name:   tb_B_Controller.vhd
-- Created:     4/25/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_B_Controller is
generic (Period : Time := 3.5 ns;
				 WAITBAK2	: natural := 24 ; 
				 WAITBAK	: natural := 49 ;
--						WAITBAK	: natural := 4869; -- back transmit 57.6 kb/s or 4869 cycles/bit
--						WAITBAK/2	: natural := 2435 ); -- back transmit 57.6 kb/s or 4869 cycles/bit
				 DATA_PERIOD : Time := 168 ns); -- WAIT BAK*3.5
end tb_B_Controller;

architecture TEST of tb_B_Controller is

  component B_Controller
    PORT(	CLK 			:	in std_logic;
         	RST 			: in std_logic;
         	NEXT_EN 	: in std_logic;
         	ANT_LIN 	: in std_logic;
         	EMPTY 		: in std_logic
    );
  end component;

-- Insert signals Declarations here
  signal cLK 				: std_logic;
  signal RST 				: std_logic;
  signal NEXT_EN 		: std_logic;
  signal ANT_LIN 		:	 std_logic;
  signal EMPTY 			: std_logic;
	type 		test_case_array is array(0 to 5) of std_logic_vector(7 downto 0);	
	constant	test_cases : test_case_array := (	("01110101"),
																							("01111010"),
																							("00101010"),
																							("01101010"),
																							("01110100"),
																							("01110110") ); 
	-- Send, resend, 4 NOISE(FAILSTART*2, FAILBIT *2);
	
begin

CLKGEN: process
  variable CLK_tmp: std_logic := '0';
begin
  CLK_tmp := not CLK_tmp;
  CLK <= CLK_tmp;
  wait for Period/2;
end process;

  DUT: B_Controller port map(
  							CLK => CLK,
                RST => RST,
                NEXT_EN => NEXT_EN,
                ANT_LIN => ANT_LIN,
                EMPTY => EMPTY
                );

dataassign : process
	variable newsend 			: 		std_logic_vector( 7 downto 0);
  begin
  	ANT_LIN <= '0';
    RST <= '1';
    wait FOR 49 ns;
    RST <= '0';
	  wait for 7 ns;
	  for j in 0 to 5 loop
--		  report "Test started " severity NOTE; 
	  	newsend := test_cases(j);
      for i in 7 downto 0 loop
    	  	ANT_LIN	<= newsend(i);
					wait for data_period;
	    end loop;			
	    ANT_LIN <= '0';
	    wait for data_period;
  	  report "Test Done " severity NOTE; 
	  end loop;
    wait;
  end process dataassign;  
  
next_enprocess : process
	begin
    NEXT_EN <= '1';
    EMPTY <= '0';
--    EMPTY <= '1';
--	wait for 70 ns;
--		NEXT_EN <= '1';
--		EMPTY <= '1';
--		EMPTY <= '0';
--		wait for 10*data_period;
 --	  report "Switch EMPTY for idle to listen\n shows that the latch works" severity NOTE;
--		NEXT_EN <= '0';
--		EMPTY <= '0';
--		wait for 10 * data_period;
--		NEXT_EN <= '1';		
--	  EMPTY <= '0';
	  wait;
	end process next_enprocess;
end TEST;
