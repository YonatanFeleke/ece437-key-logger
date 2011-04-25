
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_U_CRC is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_U_CRC;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_U_CRC.all;

entity U_CRC is

   port( D_CLK, RST_N, CRC_SHIFT, D_ORIG, CRC_EN : in std_logic;  CRC_ERROR : 
         out std_logic);

end U_CRC;

architecture SYN_simple_shift_reg of U_CRC is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal present_val_15_port, present_val_14_port, present_val_13_port, 
      present_val_12_port, present_val_11_port, present_val_10_port, 
      present_val_9_port, present_val_8_port, present_val_7_port, 
      present_val_6_port, present_val_5_port, present_val_4_port, 
      present_val_3_port, present_val_2_port, present_val_1_port, 
      present_val_0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, 
      n13, n14, n15, n16, n17, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74
      , n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, 
      n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, 
      n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, 
      n115, n116, n117, n118, n119, n120, n121, n122, n123 : std_logic;

begin
   
   present_val_reg_0_inst : DFFSR port map( D => n80, CLK => D_CLK, R => n17, S
                           => n16, Q => present_val_0_port);
   present_val_reg_1_inst : DFFSR port map( D => n79, CLK => D_CLK, R => n15, S
                           => n16, Q => present_val_1_port);
   present_val_reg_2_inst : DFFSR port map( D => n78, CLK => D_CLK, R => n14, S
                           => n16, Q => present_val_2_port);
   present_val_reg_3_inst : DFFSR port map( D => n77, CLK => D_CLK, R => n13, S
                           => n16, Q => present_val_3_port);
   present_val_reg_4_inst : DFFSR port map( D => n76, CLK => D_CLK, R => n12, S
                           => n16, Q => present_val_4_port);
   present_val_reg_5_inst : DFFSR port map( D => n75, CLK => D_CLK, R => n11, S
                           => n16, Q => present_val_5_port);
   present_val_reg_6_inst : DFFSR port map( D => n74, CLK => D_CLK, R => n10, S
                           => n16, Q => present_val_6_port);
   present_val_reg_7_inst : DFFSR port map( D => n73, CLK => D_CLK, R => n9, S 
                           => n16, Q => present_val_7_port);
   present_val_reg_8_inst : DFFSR port map( D => n72, CLK => D_CLK, R => n8, S 
                           => n16, Q => present_val_8_port);
   present_val_reg_9_inst : DFFSR port map( D => n71, CLK => D_CLK, R => n7, S 
                           => n16, Q => present_val_9_port);
   present_val_reg_10_inst : DFFSR port map( D => n70, CLK => D_CLK, R => n6, S
                           => n16, Q => present_val_10_port);
   present_val_reg_11_inst : DFFSR port map( D => n69, CLK => D_CLK, R => n5, S
                           => n16, Q => present_val_11_port);
   present_val_reg_12_inst : DFFSR port map( D => n68, CLK => D_CLK, R => n4, S
                           => n16, Q => present_val_12_port);
   present_val_reg_13_inst : DFFSR port map( D => n67, CLK => D_CLK, R => n3, S
                           => n16, Q => present_val_13_port);
   present_val_reg_14_inst : DFFSR port map( D => n66, CLK => D_CLK, R => n2, S
                           => n16, Q => present_val_14_port);
   present_val_reg_15_inst : DFFSR port map( D => n65, CLK => D_CLK, R => n1, S
                           => n16, Q => present_val_15_port);
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
   n11 <= '1';
   n12 <= '1';
   n13 <= '1';
   n14 <= '1';
   n15 <= '1';
   n17 <= '1';
   U84 : INVX2 port map( A => RST_N, Y => n16);
   U85 : NAND2X1 port map( A => CRC_EN, B => n81, Y => n80);
   U86 : INVX1 port map( A => n82, Y => n81);
   U87 : OAI21X1 port map( A => CRC_SHIFT, B => n83, C => n84, Y => n82);
   U88 : NAND2X1 port map( A => n85, B => CRC_EN, Y => n79);
   U89 : MUX2X1 port map( B => present_val_1_port, A => present_val_0_port, S 
                           => CRC_SHIFT, Y => n85);
   U90 : OR2X1 port map( A => n86, B => n87, Y => n78);
   U91 : OAI21X1 port map( A => present_val_1_port, B => n84, C => CRC_EN, Y =>
                           n87);
   U92 : MUX2X1 port map( B => n88, A => n89, S => CRC_SHIFT, Y => n86);
   U93 : NAND2X1 port map( A => present_val_1_port, B => n90, Y => n89);
   U94 : INVX1 port map( A => present_val_2_port, Y => n88);
   U95 : NAND2X1 port map( A => n91, B => CRC_EN, Y => n77);
   U96 : MUX2X1 port map( B => present_val_3_port, A => present_val_2_port, S 
                           => CRC_SHIFT, Y => n91);
   U97 : NAND2X1 port map( A => n92, B => CRC_EN, Y => n76);
   U98 : MUX2X1 port map( B => present_val_4_port, A => present_val_3_port, S 
                           => CRC_SHIFT, Y => n92);
   U99 : NAND2X1 port map( A => n93, B => CRC_EN, Y => n75);
   U100 : MUX2X1 port map( B => present_val_5_port, A => present_val_4_port, S 
                           => CRC_SHIFT, Y => n93);
   U101 : NAND2X1 port map( A => n94, B => CRC_EN, Y => n74);
   U102 : MUX2X1 port map( B => present_val_6_port, A => present_val_5_port, S 
                           => CRC_SHIFT, Y => n94);
   U103 : NAND2X1 port map( A => n95, B => CRC_EN, Y => n73);
   U104 : MUX2X1 port map( B => present_val_7_port, A => present_val_6_port, S 
                           => CRC_SHIFT, Y => n95);
   U105 : NAND2X1 port map( A => n96, B => CRC_EN, Y => n72);
   U106 : MUX2X1 port map( B => present_val_8_port, A => present_val_7_port, S 
                           => CRC_SHIFT, Y => n96);
   U107 : NAND2X1 port map( A => n97, B => CRC_EN, Y => n71);
   U108 : MUX2X1 port map( B => present_val_9_port, A => present_val_8_port, S 
                           => CRC_SHIFT, Y => n97);
   U109 : NAND2X1 port map( A => n98, B => CRC_EN, Y => n70);
   U110 : MUX2X1 port map( B => present_val_10_port, A => present_val_9_port, S
                           => CRC_SHIFT, Y => n98);
   U111 : NAND2X1 port map( A => n99, B => CRC_EN, Y => n69);
   U112 : MUX2X1 port map( B => present_val_11_port, A => present_val_10_port, 
                           S => CRC_SHIFT, Y => n99);
   U113 : NAND2X1 port map( A => n100, B => CRC_EN, Y => n68);
   U114 : MUX2X1 port map( B => present_val_12_port, A => present_val_11_port, 
                           S => CRC_SHIFT, Y => n100);
   U115 : NAND2X1 port map( A => n101, B => CRC_EN, Y => n67);
   U116 : MUX2X1 port map( B => present_val_13_port, A => present_val_12_port, 
                           S => CRC_SHIFT, Y => n101);
   U117 : NAND2X1 port map( A => n102, B => CRC_EN, Y => n66);
   U118 : MUX2X1 port map( B => present_val_14_port, A => present_val_13_port, 
                           S => CRC_SHIFT, Y => n102);
   U119 : OR2X1 port map( A => n103, B => n104, Y => n65);
   U120 : OAI21X1 port map( A => present_val_14_port, B => n84, C => CRC_EN, Y 
                           => n104);
   U121 : NAND2X1 port map( A => CRC_SHIFT, B => n105, Y => n84);
   U122 : MUX2X1 port map( B => n106, A => n107, S => CRC_SHIFT, Y => n103);
   U123 : NAND2X1 port map( A => present_val_14_port, B => n90, Y => n107);
   U124 : INVX1 port map( A => n105, Y => n90);
   U125 : XOR2X1 port map( A => present_val_15_port, B => D_ORIG, Y => n105);
   U126 : NAND2X1 port map( A => n108, B => n109, Y => CRC_ERROR);
   U127 : NOR2X1 port map( A => n110, B => n111, Y => n109);
   U128 : NAND3X1 port map( A => n112, B => n113, C => n114, Y => n111);
   U129 : NOR2X1 port map( A => present_val_1_port, B => present_val_14_port, Y
                           => n114);
   U130 : INVX1 port map( A => present_val_5_port, Y => n113);
   U131 : INVX1 port map( A => present_val_4_port, Y => n112);
   U132 : NAND3X1 port map( A => n115, B => n116, C => n117, Y => n110);
   U133 : NOR2X1 port map( A => present_val_9_port, B => present_val_8_port, Y 
                           => n117);
   U134 : INVX1 port map( A => present_val_7_port, Y => n116);
   U135 : INVX1 port map( A => present_val_6_port, Y => n115);
   U136 : NOR2X1 port map( A => n118, B => n119, Y => n108);
   U137 : NAND3X1 port map( A => present_val_3_port, B => present_val_2_port, C
                           => n120, Y => n119);
   U138 : NOR2X1 port map( A => n106, B => n83, Y => n120);
   U139 : INVX1 port map( A => present_val_0_port, Y => n83);
   U140 : INVX1 port map( A => present_val_15_port, Y => n106);
   U141 : NAND3X1 port map( A => n121, B => n122, C => n123, Y => n118);
   U142 : NOR2X1 port map( A => present_val_13_port, B => present_val_12_port, 
                           Y => n123);
   U143 : INVX1 port map( A => present_val_11_port, Y => n122);
   U144 : INVX1 port map( A => present_val_10_port, Y => n121);

end SYN_simple_shift_reg;
