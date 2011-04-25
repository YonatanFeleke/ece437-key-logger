
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_U_EOP_DETECT is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_U_EOP_DETECT;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_U_EOP_DETECT.all;

entity U_EOP_DETECT is

   port( D_PLUS, D_MINUS : in std_logic;  EOP : out std_logic);

end U_EOP_DETECT;

architecture SYN_dataflow of U_EOP_DETECT is

   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;

begin
   
   U2 : NOR2X1 port map( A => D_PLUS, B => D_MINUS, Y => EOP);

end SYN_dataflow;
