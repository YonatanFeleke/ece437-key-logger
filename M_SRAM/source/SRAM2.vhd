LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
LIBRARY ECE337_IP;
USE ECE337_IP.ALL;

Entity scalable_off_chip_sram is
  port(
    r_enable : in std_logic;
    w_enable  : in std_logic;
    addr  : in std_logic_vector(11 downto 0);
    data  : inout std_logic_vector(7 downto 0);
    mem_clr : in boolean;
    mem_init  : in boolean;
    verbose : in boolean;
    init_filename : in string;
    dump_filename : in string;
    start_address : in natural;
    last_address  : in natural);
  end scalable_off_chip_sram;
  
  architecture comp of scalable_off_chip_sram is
    component scalable_off_chip_scram
      port(  
      r_enable : in std_logic;
      w_enable  : in std_logic;
      addr  : in std_logic_vector(11 downto 0);
      data  : inout std_logic_vector(7 downto 0);
      mem_clr : in boolean;
      mem_init  : in boolean;
      verbose : in boolean;
      init_filename : in string;
      dump_filename : in string;
      start_address : in natural;
      last_address  : in natural);
    end component;
    begin
      portMap : scalable_off_chip_sram port map(
        r_enable => r_enable;
        w_enable => w_enable;
        addr => addr;
        data => data;
        mem_clr => mem_clr;
        mem_init => mem_init;
        verbose => verbose;
        init_filename => init_filename;
        dump_filename => dump_filename;
        start_address => start_address;
        last_address => last_address);
      end comp;