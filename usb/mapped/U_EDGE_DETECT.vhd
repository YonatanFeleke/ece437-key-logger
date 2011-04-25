
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_U_EDGE_DETECT is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_U_EDGE_DETECT;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_U_EDGE_DETECT.all;

entity U_EDGE_DETECT is

   port( D_CLK, rst_n, d_plus : in std_logic;  d_edge : out std_logic);

end U_EDGE_DETECT;

architecture SYN_behavioral of U_EDGE_DETECT is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal current, previous, N0, n1, n2, n3, n4 : std_logic;

begin
   
   current_reg : DFFSR port map( D => d_plus, CLK => D_CLK, R => n4, S => n3, Q
                           => current);
   previous_reg : DFFSR port map( D => current, CLK => D_CLK, R => n2, S => n3,
                           Q => previous);
   d_edge_reg : DFFSR port map( D => N0, CLK => D_CLK, R => n3, S => n1, Q => 
                           d_edge);
   n1 <= '1';
   n2 <= '1';
   n4 <= '1';
   U8 : INVX1 port map( A => rst_n, Y => n3);
   U9 : XOR2X1 port map( A => previous, B => current, Y => N0);

end SYN_behavioral;
