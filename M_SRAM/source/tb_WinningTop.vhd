-- $Id: $
-- File name:   tb_WinningTop.vhd
-- Created:     4/25/2011
-- Author:      Evan Graves
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_textio.all;
USE IEEE.std_logic_unsigned.ALL;
use ieee.std_logic_arith.all;

library STD,work;
use STD.standard.all;
LIBRARY ECE337_IP;
USE ECE337_IP.ALL;

entity tb_WinningTop is
generic (Period : Time := 3.5 ns);
end tb_WinningTop;

architecture TEST of tb_WinningTop is

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

  component WinningTop
    PORT(
         Resend : IN std_logic;
         clk : IN std_logic;
         dump_filename : IN string;
         full : IN std_logic;
         init_filename : IN string;
         last_address : IN natural;
         mem_clr : IN boolean;
         mem_dump : IN boolean;
         mem_init : IN boolean;
         read_enable_in : IN std_logic;
         rst : IN std_logic;
         start_address : IN natural;
         verbose : IN boolean;
         empty : OUT std_logic;
         r_enable_out : OUT std_logic;
         data : INOUT std_logic_vector (7 DOWNTO 0)
    );
  end component;

-- Insert signals Declarations here
  signal Resend : std_logic;
  signal clk : std_logic;
  signal dump_filename : string (23 downto 1);
  signal full : std_logic;
  signal init_filename : string (22 downto 1);
  signal last_address : natural;
  signal mem_clr : boolean;
  signal mem_dump : boolean;
  signal mem_init : boolean;
  signal read_enable_in : std_logic;
  signal rst : std_logic;
  signal start_address : natural;
  signal verbose : boolean;
  signal empty : std_logic;
  signal r_enable_out : std_logic;
  signal data : std_logic_vector (7 DOWNTO 0);
  signal readData : std_logic_vector (7 DOWNTO 0);

-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  DUT: WinningTop port map(
                Resend => Resend,
                clk => clk,
                dump_filename => dump_filename,
                full => full,
                init_filename => init_filename,
                last_address => last_address,
                mem_clr => mem_clr,
                mem_dump => mem_dump,
                mem_init => mem_init,
                read_enable_in => read_enable_in,
                rst => rst,
                start_address => start_address,
                verbose => verbose,
                empty => empty,
                r_enable_out => r_enable_out,
                data => data
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);







process

  begin

-- Insert TEST BENCH Code Here

 Resend <= '0';
   
   --data <= "00000000"; 
   
   rst <= '1';

   read_enable_in <= '0';

   full <= '0';
   
   dump_filename <= "source/test_memdump.txt";

   init_filename <= "source/txt_meminit.txt";

   last_address <= 4095;

   mem_clr <= FALSE;

   mem_dump <= FALSE;

   mem_init <= FALSE;

   start_address <= 0;

   verbose <= FALSE;
   
   wait for Period;
   Resend <= '0';
   
   full <= '0';
   
   read_enable_in <= '0'; 
   
   rst <= '1';
   
   --data <= "00000000"; -- should be in idle
   wait for Period*2;
   Resend <= '0';
   
   full <= '1';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   wait for 1.5*Period;
   
   data <= "10000001";
   wait for Period*3;--should be in write_data for 8 cycles and store 8 values
   Resend <= '0';
   
   full <= '1';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "10000011";
   wait for Period;
   Resend <= '0';
   
   full <= '1';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "10001001";
   wait for Period;
   Resend <= '0';
   
   full <= '1';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "10001101";
      
   wait for Period;
   Resend <= '0';
   
   full <= '1';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "10101101";
      
   wait for Period;
   Resend <= '0';
   
   full <= '1';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "10001111";
      
   wait for Period;
   Resend <= '0';
   
   full <= '1';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "10000101";
      
   wait for Period;
   Resend <= '0';
   
   full <= '1';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "11110101";
      
   wait for Period;                    
       
   Resend <= '0';
   
   full <= '0';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "10000000";
   wait for Period;
   Resend <= '0';
   
   full <= '0';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "01000000";
   wait for Period;   
   
   Resend <= '0';
   
   full <= '1';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "10000100";
   wait for Period*8;     --write in 8 packets of data
   Resend <= '0';
   
   full <= '0';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "10000000";
   wait for Period;
   Resend <= '0';
   
   full <= '0';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "01000000";
   wait for Period;   
   
   Resend <= '0';
   
   full <= '1';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "10000110";
   wait for Period*8;     --write in 8 packets of data
   Resend <= '0';
   
   full <= '0';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "10000000";
   wait for Period;
   Resend <= '0';
   
   full <= '0';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "01000000";
   wait for Period;   
   
   Resend <= '0';
   
   full <= '1';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "10010011";
   wait for Period*8;     --write in 8 packets of data  
   Resend <= '0';
   
   full <= '0';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "10000000";
   wait for Period;
   Resend <= '0';
   
   full <= '0';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "01000000";
   wait for Period;   
   
   Resend <= '0';
   
   full <= '1';
   
   read_enable_in <= '0'; 
   
   rst <= '0';
   
   data <= "11000100";
   wait for Period*8;     --write in 8 packets of data
   Resend <= '0';
   
   full <= '0';
   
   
   
   mem_dump        <= TRUE;
   dump_filename  <=  "source/test_memdump.txt";
   start_address  <= 0; -- Can be any address 
   last_address    <= 4095; -- Can be any address larger than the start_address
   wait for 3*Period; -- Can be as long or as short as you like, as long as it is longer than 1 simulation time-step
   mem_dump        <= FALSE;
 
   
   
   
   
   read_enable_in <= '1'; 
   
   rst <= '0';
   readData <= data;
   --data <= (others => 'Z');
   wait for Period;
   
   
   Resend <= '0';
   
   full <= '0';
   
   read_enable_in <= '1'; 
   
   rst <= '0';
   
   readData <= data;
   --data <= (others => 'Z');
   wait for Period;            
   Resend <= '0';
   
   full <= '0';
   
   read_enable_in <= '1'; 
   
   rst <= '0';
   
   data <= (others => 'Z');
   wait for Period*42;        


  end process;
end TEST;