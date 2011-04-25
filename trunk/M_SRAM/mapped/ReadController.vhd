
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_ReadController is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ReadController;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ReadController.all;

entity ReadController is

   port( num_writes, read_done : in std_logic;  empty, read_ready : out 
         std_logic);

end ReadController;

architecture SYN_dataflow of ReadController is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   signal N0, n2 : std_logic;

begin
   empty <= N0;
   read_ready <= N0;
   
   U3 : NOR2X1 port map( A => read_done, B => n2, Y => N0);
   U4 : INVX1 port map( A => num_writes, Y => n2);

end SYN_dataflow;
