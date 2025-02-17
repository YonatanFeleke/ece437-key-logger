LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
LIBRARY ECE337_IP;
USE ECE337_IP.ALL;

Entity SRAM is
 
  
  port(
    mem_clr : in boolean;
    mem_init  : in boolean;
    mem_dump  : in boolean;
    verbose : in boolean;
    init_filename : in string;
    dump_filename :in string;
    start_address : in natural;
    last_address  : in natural;
    r_enable  : in std_logic;
    w_enable  : in std_logic;
    addr      : in std_logic_vector(11 downto 0);
    data			:inout std_logic_vector(7 downto 0));
    
end SRAM;

-- The declaration for the on-chip scalable sram model
architecture comp of SRAM is
  component scalable_off_chip_sram is
    generic (
            -- Memory Model parameters
            ADDR_SIZE_BITS  : natural  := 12;    -- Address bus size in bits/pins with addresses corresponding to 
                                                -- the starting word of the accesss
            WORD_SIZE_BYTES  : natural  := 1;      -- Word size of the memory in bytes
            DATA_SIZE_WORDS  : natural  := 1;      -- Data bus size in "words"
            READ_DELAY      : time    := 10 ns;  -- Delay/latency per read access (total time between start of supplying address and when the data read from memory appears on the r_data port)
                                                -- Keep the 10 ns delay for on-chip SRAM
            WRITE_DELAY      : time    := 10 ns    -- Delay/latency per write access (total time between start of supplying address and when the w_data value is written into memory)
                                                -- Keep the 10 ns delay for on-chip SRAM
          );
  port   (
          -- Test bench control signals
          mem_clr        : in  boolean;
          mem_init      : in  boolean;
          mem_dump      : in  boolean;
          verbose        : in  boolean;
          init_filename  : in   string;
          dump_filename  : in   string;
          start_address  : in  natural;
          last_address  : in  natural;
          
          -- Memory interface signals
          r_enable  : in    std_logic;
          w_enable  : in    std_logic;
          addr      : in    std_logic_vector((addr_size_bits - 1) downto 0);
          data      : inout  std_logic_vector(((data_size_words * word_size_bytes * 8) - 1) downto 0)
        );
  end component scalable_off_chip_sram;
  
  begin
       portMap : scalable_off_chip_sram 
--       generic map (
--           -- Memory interface parameters
--       ADDR_SIZE_BITS  => 12,
--       WORD_SIZE_BYTES  => 1,
--       DATA_SIZE_WORDS  => 1,
--       READ_DELAY      => (10 ns),  -- CLK is 2 ns longer than access delay for conservative padding for flipflop setup times and propagation delays from the external SRAM chip to the internal flipflops
--       WRITE_DELAY      => (10 ns)    -- CLK is 2 ns longer than access delay for conservative padding for Real SRAM hold times and propagation delays from the internal flipflops to the external SRAM chip
--       
--       )
     port map(
      
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
      data => data);
      
      







    end comp;

-- An example of how to map an instance of the on-chip scalable sram model (Taken from my test bench)
 -- Memory: scalable_off_chip_sram
   -- generic map (
                  -- Memory interface parameters
     --             ADDR_SIZE_BITS  => TB_ADDR_SIZE_BITS,
       --           WORD_SIZE_BYTES  => TB_WORD_SIZE_BYTES,
         --         DATA_SIZE_WORDS  => TB_DATA_SIZE_WORDS,
           --       READ_DELAY      => (TB_CLK_PERIOD - 2 ns),  -- CLK is 2 ns longer than access delay for conservative padding for flipflop setup times and propagation delays from the external SRAM chip to the internal flipflops
             --     WRITE_DELAY      => (TB_CLK_PERIOD - 2 ns)    -- CLK is 2 ns longer than access delay for conservative padding for Real SRAM hold times and propagation delays from the internal flipflops to the external SRAM chip
               -- )
    --port map  (
                -- Test bench control signals
      --          mem_clr        => tb_mem_clr,
        --        mem_init      => tb_mem_init,
          --      mem_dump      => tb_mem_dump,
            --    verbose        => tb_verbose,
              --  init_filename  => tb_init_filename,
                --dump_filename  => tb_dump_filename,
                --start_address  => tb_start_address,
                --last_address  => tb_last_address,
                
                -- Memory interface signals
                --r_enable  => tb_read_enable,
                --w_enable  => tb_write_enable,
                --addr      => tb_address,
                --data      => tb_data
              --);
