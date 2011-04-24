-- $Id: $
-- File name:   tb_ReadController.vhd
-- Created:     4/24/2011
-- Author:      Evan Graves
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_ReadController is
end tb_ReadController;

architecture TEST of tb_ReadController is

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

  component ReadController
    PORT(
         num_writes : in std_logic;
         read_done : in std_logic;
         empty : out std_logic;
         read_ready : out std_logic
    );
  end component;

-- Insert signals Declarations here
  signal num_writes : std_logic;
  signal read_done : std_logic;
  signal empty : std_logic;
  signal read_ready : std_logic;

-- signal <name> : <type>;

begin
  DUT: ReadController port map(
                num_writes => num_writes,
                read_done => read_done,
                empty => empty,
                read_ready => read_ready
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    num_writes <= '0';

    read_done <= '0';
    
    wait for 3.5 ns;
    
    
        num_writes <= '1';
    
        read_done <= '0';
        
        wait for 7 ns;
        
        
                num_writes <= '1';
            
                read_done <= '0';
                
                wait for 7 ns;
                
                
                        num_writes <= '1';
                    
                        read_done <= '1';
                        
                        wait for 7 ns;
                        
                        
                                num_writes <= '0';
                            
                                read_done <= '1';
                                
                                wait for 7 ns;
                                
                                
                                        num_writes <= '0';
                                    
                                        read_done <= '0';
                                        
                                        wait for 7 ns;
                                        
                                        
                                                num_writes <= '0';
                                            
                                                read_done <= '1';
                                                
                                                wait for 7 ns;              

  end process;
end TEST;