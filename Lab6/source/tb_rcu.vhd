-- $Id: $
-- File name:   tb_rcu.vhd
-- Created:     2/22/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_rcu is
generic (Period : Time := 10.42 ns);
end tb_rcu;

architecture TEST of tb_rcu is

  component rcu
    PORT(
         CLK : IN std_logic;
         RST_N : IN std_logic;
         D_EDGE : IN std_logic;
         EOP : IN std_logic;
         SHIFT_ENABLE : IN std_logic;
         RCV_DATA : IN std_logic_vector(7 downto 0);
         RCVING : OUT std_logic;
         W_ENABLE : OUT std_logic;
         R_ERROR : OUT std_logic
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal RST_N : std_logic;
  signal D_EDGE : std_logic;
  signal EOP : std_logic;
  signal SHIFT_ENABLE : std_logic;
  signal RCV_DATA : std_logic_vector(7 downto 0);
  signal RCVING : std_logic;
  signal W_ENABLE : std_logic;
  signal R_ERROR : std_logic;

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: rcu port map(
                CLK => CLK,
                RST_N => RST_N,
                D_EDGE => D_EDGE,
                EOP => EOP,
                SHIFT_ENABLE => SHIFT_ENABLE,
                RCV_DATA => RCV_DATA,
                RCVING => RCVING,
                W_ENABLE => W_ENABLE,
                R_ERROR => R_ERROR
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    RST_N <= '0';

    D_EDGE <= '0';

    EOP <= '0';

    SHIFT_ENABLE <= '0' ;

    RCV_DATA <= "00000000";
    
    wait for Period;
    
    RST_N <= '1';
    
    wait for Period;
    
    D_EDGE <= '1';
    
    wait for Period;    -- simulating bytes by enabling a shift enable every 8 cycles
    
    D_EDGE <= '0';
    
    RCV_DATA <= "10000000";
    
    for i in 0 to 7 loop

			wait for Period*3;				

			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
			
			wait for Period*4;
		
		end loop;    
    
    
    
    
    wait for Period;
    
    RCV_DATA <= "10010101";
    
    for i in 0 to 7 loop

			wait for Period*3;				

			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
			
			wait for Period*4;
		
		end loop; 
    
    EOP <= '1';
    
    wait for Period;
    
    EOP <= '0';
    
    D_EDGE <= '1';
    
    wait for Period;
    
    D_EDGE <= '0';
    
    for i in 0 to 7 loop

			wait for Period*3;				

			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
			
			wait for Period*4;
		
		end loop; 
    
    RCV_DATA <= "10010000";
    
    wait for Period;
    
    RCV_DATA <= "00101001";
    
    for i in 0 to 7 loop

			wait for Period*3;				

			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
			
			wait for Period*4;
		
		end loop; 
    
    EOP <= '1';
    
    wait for Period;
    
    D_EDGE <= '1';
    
    wait for Period;
    
    D_EDGE <= '0';
    
    for i in 0 to 7 loop

			wait for Period*3;				

			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
			
			wait for Period*4;
		
		end loop; 
    
    RCV_DATA <= "10000000";
    
    wait for Period;
    
    RCV_DATA <= "00101010";
    
    for i in 0 to 3 loop

			wait for Period*3;				

			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
			
			wait for Period*4;
		
		end loop; 
        
    EOP <= '1';
    
    for i in 0 to 2 loop

			wait for Period*3;				

			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
			
			wait for Period*4;
		
		end loop; 
    
    D_EDGE <= '1';
    
    wait for Period;
    
    D_EDGE <= '0';
    
    for i in 0 to 7 loop

			wait for Period*3;				

			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
			
			wait for Period*4;
		
		end loop; 
    
    RCV_DATA <= "10000000";
    
    wait for Period;
       
    RCV_DATA <= "01001010";
    
    for i in 0 to 7 loop

			wait for Period*3;				

			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
			
			wait for Period*4;
		
		end loop; 
    
    RCV_DATA <= "10010101";
    
    for i in 0 to 7 loop

			wait for Period*3;				

			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
			
			wait for Period*4;
		
		end loop; 
    
    RCV_DATA <= "01010011";
    
    for i in 0 to 7 loop

			wait for Period*3;				

			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
			
			wait for Period*4;
		
		end loop; 
    
    RCV_DATA <= "10101001";
    
    for i in 0 to 7 loop

			wait for Period*3;				

			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
			
			wait for Period*4;
		
		end loop; 
    
    RCV_DATA <= "01010010";
    
    for i in 0 to 7 loop

			wait for Period*3;				

			SHIFT_ENABLE <= '1';
		
			wait for Period*3/4;
			
			SHIFT_ENABLE <= '0';
			
			wait for Period/4;
			
			wait for Period*4;
		
		end loop; 
    
    EOP <= '1';
    
    wait for Period;
    
    RST_N <= '0';

    
    

  end process;
end TEST;
