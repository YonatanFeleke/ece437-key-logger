
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_U_TIMER is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_U_TIMER;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_U_TIMER.all;

entity U_TIMER is

   port( D_CLK, RST_N, D_EDGE, RCVING : in std_logic;  SHIFT_ENABLE : out 
         std_logic);

end U_TIMER;

architecture SYN_behavioral of U_TIMER is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_2_port, state_1_port, state_0_port, nextstate_2_port, 
      nextstate_1_port, nextstate_0_port, ctr2_3_port, ctr2_2_port, ctr2_1_port
      , ctr2_0_port, ctr8_3_port, ctr8_2_port, ctr8_1_port, ctr8_0_port, n1, n2
      , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n35, n62, n63, n64, n65, n66
      , n67, n68, n69, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, 
      n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96
      , n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, 
      n109, n110, n111 : std_logic;

begin
   
   state_reg_2_inst : DFFSR port map( D => nextstate_2_port, CLK => D_CLK, R =>
                           n11, S => n12, Q => state_2_port);
   ctr8_reg_0_inst : DFFSR port map( D => n69, CLK => D_CLK, R => n71, S => n10
                           , Q => ctr8_0_port);
   ctr8_reg_3_inst : DFFSR port map( D => n68, CLK => D_CLK, R => n71, S => n9,
                           Q => ctr8_3_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n11, S => n8, Q => state_1_port);
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n11, S => n7, Q => state_0_port);
   ctr2_reg_0_inst : DFFSR port map( D => n66, CLK => D_CLK, R => n71, S => n6,
                           Q => ctr2_0_port);
   ctr8_reg_1_inst : DFFSR port map( D => n63, CLK => D_CLK, R => n71, S => n5,
                           Q => ctr8_1_port);
   ctr8_reg_2_inst : DFFSR port map( D => n62, CLK => D_CLK, R => n71, S => n4,
                           Q => ctr8_2_port);
   ctr2_reg_1_inst : DFFSR port map( D => n65, CLK => D_CLK, R => n3, S => n71,
                           Q => ctr2_1_port);
   ctr2_reg_2_inst : DFFSR port map( D => n64, CLK => D_CLK, R => n71, S => n2,
                           Q => ctr2_2_port);
   ctr2_reg_3_inst : DFFSR port map( D => n67, CLK => D_CLK, R => n71, S => n1,
                           Q => ctr2_3_port);
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   n7 <= '1';
   n8 <= '1';
   n9 <= '1';
   n10 <= '1';
   n12 <= '1';
   U76 : BUFX2 port map( A => n35, Y => n71);
   U77 : NOR2X1 port map( A => n72, B => n73, Y => nextstate_2_port);
   U78 : OAI21X1 port map( A => n74, B => n75, C => n71, Y => nextstate_1_port)
                           ;
   U79 : MUX2X1 port map( B => n76, A => n77, S => state_0_port, Y => n75);
   U80 : OR2X1 port map( A => n78, B => ctr8_0_port, Y => n77);
   U81 : NOR2X1 port map( A => n74, B => n79, Y => nextstate_0_port);
   U82 : INVX1 port map( A => n80, Y => n79);
   U83 : OAI21X1 port map( A => n76, B => n81, C => n82, Y => n80);
   U84 : NAND3X1 port map( A => ctr2_1_port, B => n83, C => n84, Y => n76);
   U85 : NOR2X1 port map( A => ctr2_3_port, B => ctr2_2_port, Y => n84);
   U86 : NAND3X1 port map( A => n72, B => n85, C => RCVING, Y => n74);
   U87 : MUX2X1 port map( B => ctr8_0_port, A => n86, S => n87, Y => n69);
   U88 : NAND2X1 port map( A => ctr8_0_port, B => n71, Y => n86);
   U89 : OAI21X1 port map( A => n78, B => n88, C => n89, Y => n68);
   U90 : OAI21X1 port map( A => n90, B => n91, C => ctr8_3_port, Y => n89);
   U91 : NOR2X1 port map( A => ctr8_2_port, B => n87, Y => n90);
   U92 : NAND3X1 port map( A => ctr8_1_port, B => n92, C => ctr8_2_port, Y => 
                           n78);
   U93 : INVX1 port map( A => ctr8_3_port, Y => n92);
   U94 : MUX2X1 port map( B => n93, A => n94, S => ctr2_3_port, Y => n67);
   U95 : INVX1 port map( A => n95, Y => n94);
   U96 : OAI21X1 port map( A => n96, B => ctr2_2_port, C => n97, Y => n95);
   U97 : NAND2X1 port map( A => ctr2_2_port, B => n98, Y => n93);
   U98 : INVX1 port map( A => n99, Y => n98);
   U99 : MUX2X1 port map( B => n100, A => ctr2_0_port, S => n101, Y => n66);
   U100 : NAND2X1 port map( A => ctr2_0_port, B => n71, Y => n100);
   U101 : NAND2X1 port map( A => n102, B => n71, Y => n65);
   U102 : XNOR2X1 port map( A => ctr2_1_port, B => n103, Y => n102);
   U103 : NOR2X1 port map( A => n96, B => n83, Y => n103);
   U104 : INVX1 port map( A => ctr2_0_port, Y => n83);
   U105 : MUX2X1 port map( B => n99, A => n97, S => ctr2_2_port, Y => n64);
   U106 : MUX2X1 port map( B => n71, A => n104, S => n101, Y => n97);
   U107 : NAND2X1 port map( A => ctr2_0_port, B => ctr2_1_port, Y => n104);
   U108 : NAND3X1 port map( A => n101, B => ctr2_1_port, C => ctr2_0_port, Y =>
                           n99);
   U109 : INVX1 port map( A => n96, Y => n101);
   U110 : MUX2X1 port map( B => n88, A => n105, S => ctr8_1_port, Y => n63);
   U111 : INVX1 port map( A => n106, Y => n88);
   U112 : MUX2X1 port map( B => n107, A => n108, S => ctr8_2_port, Y => n62);
   U113 : INVX1 port map( A => n91, Y => n108);
   U114 : OAI21X1 port map( A => ctr8_1_port, B => n87, C => n105, Y => n91);
   U115 : MUX2X1 port map( B => n109, A => n71, S => n87, Y => n105);
   U116 : NAND2X1 port map( A => n106, B => ctr8_1_port, Y => n107);
   U117 : NOR2X1 port map( A => n109, B => n87, Y => n106);
   U118 : NAND3X1 port map( A => n96, B => n85, C => state_1_port, Y => n87);
   U119 : NAND3X1 port map( A => n82, B => n85, C => state_1_port, Y => n96);
   U120 : INVX1 port map( A => ctr8_0_port, Y => n109);
   U121 : NAND3X1 port map( A => n72, B => n81, C => n110, Y => n35);
   U122 : AOI21X1 port map( A => state_2_port, B => state_0_port, C => n73, Y 
                           => n110);
   U123 : INVX1 port map( A => RCVING, Y => n73);
   U124 : INVX1 port map( A => D_EDGE, Y => n72);
   U125 : INVX1 port map( A => RST_N, Y => n11);
   U126 : NOR2X1 port map( A => n82, B => n111, Y => SHIFT_ENABLE);
   U127 : NAND2X1 port map( A => n81, B => n85, Y => n111);
   U128 : INVX1 port map( A => state_2_port, Y => n85);
   U129 : INVX1 port map( A => state_1_port, Y => n81);
   U130 : INVX1 port map( A => state_0_port, Y => n82);

end SYN_behavioral;
