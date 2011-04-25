-- $Id: $
-- File name:   tb_SRAM.vhd
-- Created:     4/25/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_SRAM is
generic (Period : Time := 3.5 ns);
end tb_SRAM;

architecture TEST of tb_SRAM is

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

  component SRAM
    PORT(
         mem_clr : in boolean;
         mem_init : in boolean;
         mem_dump : in boolean;
         verbose : in boolean;
         init_filename : in string(24 downto 1);
         dump_filename : in string(24 downto 1);
         start_address : in natural;
         last_address : in natural;
         r_enable : in std_logic;
         w_enable : in std_logic;
         addr : in std_logic_vector(11 downto 0);
         wdata : in std_logic_vector(7 downto 0);
         rdata : out std_logic_vector(7 downto 0);
         data : inout std_logic_vector(7 downto 0)
         
    );
  end component;

-- Insert signals Declarations here
  signal mem_clr : boolean;
  signal mem_init : boolean;
  signal mem_dump : boolean;
  signal verbose : boolean;
  signal init_filename : string(24 downto 1);
  signal dump_filename : string(24 downto 1);
  signal start_address : natural;
  signal last_address : natural;
  signal r_enable : std_logic;
  signal w_enable : std_logic;
  signal addr : std_logic_vector(11 downto 0);
  signal data : std_logic_vector(7 downto 0);
  signal wdata: std_logic_vector(7 downto 0);
  signal rdata,rdata1: std_logic_vector(7 downto 0);

-- signal <name> : <type>;

begin

--CLKGEN: process
 -- variable clk_tmp: std_logic := '0';
--begin
--  clk_tmp := not clk_tmp;
--  clk <= clk_tmp;
--  wait for Period/2;
--end process;

  DUT: SRAM port map(
                mem_clr => mem_clr,
                mem_init => mem_init,
                mem_dump => mem_dump,
                verbose => verbose,
                init_filename => init_filename,
                dump_filename => dump_filename,
                start_address => start_address,
                last_address => last_address,
                r_enable => r_enable,
                w_enable => w_enable,
                addr => addr,
                data => data,
                wdata => wdata,
                rdata => rdata
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);


    
    


process

  begin
  

-- Insert TEST BENCH Code Here

    mem_clr <= FALSE;

    mem_init <= FALSE;

    mem_dump <= FALSE;

    verbose <= FALSE;

    init_filename <= "source/test_mem_init.txt";

    dump_filename <= "source/test_mem_dump.txt";

    start_address <= 0;

    last_address <= 4092;

    r_enable <= '0';

    w_enable <= '0';

    addr <= "000000000001";
    
    wdata <= "00000100";


    
    --wait for 3*Period;
    
    w_enable <= '1';
    
    --data <= wdata;
    
    wait for 4*Period;
    
    --w_enable <= '0';
    
    wait for Period;
    
    w_enable <= '1';
    
    wait for Period;
    
    addr <= "000000000010";
    wdata <= "00000001";
    
    wait for 10*Period;
    
    --w_enable <= '0';
    
    r_enable <= '1';
    
    wait for 4*Period;  
    
    r_enable <= '0';
    
    rdata1 <= data;
    
    wait for 4*Period;  
    
      mem_dump        <= TRUE;
  	dump_filename  <=  "source/test_mem_dump.txt";
  	start_address  <= 0; -- Can be any address 
  	last_address    <= 4092; -- Can be any address larger than the start_address
  	wait for 20*Period; -- Can be as long or as short as you like, as long as it is longer than 1 simulation time-step
  	mem_dump        <= FALSE;

    

  end process;
end TEST;
