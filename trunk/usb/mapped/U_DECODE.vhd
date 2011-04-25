
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_U_DECODE is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_U_DECODE;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_U_DECODE.all;

entity U_DECODE is

   port( D_CLK, rst_n, d_plus, shift_enable, eop : in std_logic;  d_orig : out 
         std_logic);

end U_DECODE;

architecture SYN_behavioral of U_DECODE is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_1_port, state_0_port, nextstate_1_port, nextstate_0_port, 
      prevbit, currentbit, N32, N34, N35, n1, n2, n3, n4, n13, n14, n15, n16, 
      n17, n18, n19 : std_logic;

begin
   
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n3, S => n2, Q => state_0_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n2, S => n1, Q => state_1_port);
   prevbit_reg : LATCH port map( CLK => N34, D => N35, Q => prevbit);
   currentbit_reg : LATCH port map( CLK => n4, D => d_plus, Q => currentbit);
   d_orig_reg : LATCH port map( CLK => n4, D => N32, Q => d_orig);
   n1 <= '1';
   n3 <= '1';
   U20 : NOR2X1 port map( A => n13, B => n14, Y => nextstate_1_port);
   U21 : NAND2X1 port map( A => shift_enable, B => n15, Y => n14);
   U22 : NAND2X1 port map( A => n16, B => n4, Y => n13);
   U23 : NOR2X1 port map( A => state_1_port, B => n15, Y => nextstate_0_port);
   U24 : INVX1 port map( A => eop, Y => n15);
   U25 : INVX1 port map( A => rst_n, Y => n2);
   U26 : MUX2X1 port map( B => state_1_port, A => n17, S => n16, Y => N35);
   U27 : NAND2X1 port map( A => d_plus, B => state_1_port, Y => n17);
   U28 : MUX2X1 port map( B => state_1_port, A => n18, S => n16, Y => N34);
   U29 : OR2X1 port map( A => n4, B => shift_enable, Y => n18);
   U30 : INVX1 port map( A => state_1_port, Y => n4);
   U31 : AOI21X1 port map( A => n19, B => n16, C => state_1_port, Y => N32);
   U32 : INVX1 port map( A => state_0_port, Y => n16);
   U33 : XOR2X1 port map( A => prevbit, B => currentbit, Y => n19);

end SYN_behavioral;
