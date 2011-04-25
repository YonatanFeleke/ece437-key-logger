
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_U_BUFFER is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_U_BUFFER;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_U_BUFFER.all;

entity U_BUFFER is

   port( D_CLK, RST, W_ENABLE, EOP : in std_logic;  W_ENABLE_OUT : out 
         std_logic;  RCV_DATA : in std_logic_vector (7 downto 0);  W_DATA : out
         std_logic_vector (7 downto 0));

end U_BUFFER;

architecture SYN_buffer16 of U_BUFFER is

   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFPOSX1
      port( D, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal W_ENABLE_OUT_port, W_DATA_7_port, W_DATA_6_port, W_DATA_5_port, 
      W_DATA_4_port, W_DATA_3_port, W_DATA_2_port, W_DATA_1_port, W_DATA_0_port
      , Byte0_7_port, Byte0_6_port, Byte0_5_port, Byte0_4_port, Byte0_3_port, 
      Byte0_2_port, Byte0_1_port, Byte0_0_port, Byte1_7_port, Byte1_6_port, 
      Byte1_5_port, Byte1_4_port, Byte1_3_port, Byte1_2_port, Byte1_1_port, 
      Byte1_0_port, ctr_1_port, ctr_0_port, n44, n45, n46, n47, n48, n49, n50, 
      n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65
      , n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, 
      n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94
      , n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107
      , n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
      n120, n121 : std_logic;

begin
   W_ENABLE_OUT <= W_ENABLE_OUT_port;
   W_DATA <= ( W_DATA_7_port, W_DATA_6_port, W_DATA_5_port, W_DATA_4_port, 
      W_DATA_3_port, W_DATA_2_port, W_DATA_1_port, W_DATA_0_port );
   
   Byte0_reg_7_inst : DFFSR port map( D => n78, CLK => D_CLK, R => n87, S => 
                           n77, Q => Byte0_7_port);
   Byte0_reg_6_inst : DFFSR port map( D => n76, CLK => D_CLK, R => n87, S => 
                           n75, Q => Byte0_6_port);
   Byte0_reg_5_inst : DFFSR port map( D => n74, CLK => D_CLK, R => n87, S => 
                           n73, Q => Byte0_5_port);
   Byte0_reg_4_inst : DFFSR port map( D => n72, CLK => D_CLK, R => n87, S => 
                           n71, Q => Byte0_4_port);
   Byte0_reg_3_inst : DFFSR port map( D => n70, CLK => D_CLK, R => n87, S => 
                           n69, Q => Byte0_3_port);
   Byte0_reg_2_inst : DFFSR port map( D => n68, CLK => D_CLK, R => n87, S => 
                           n67, Q => Byte0_2_port);
   Byte0_reg_1_inst : DFFSR port map( D => n66, CLK => D_CLK, R => n87, S => 
                           n65, Q => Byte0_1_port);
   Byte0_reg_0_inst : DFFSR port map( D => n64, CLK => D_CLK, R => n87, S => 
                           n63, Q => Byte0_0_port);
   Byte1_reg_7_inst : DFFSR port map( D => n62, CLK => D_CLK, R => n87, S => 
                           n61, Q => Byte1_7_port);
   Byte1_reg_6_inst : DFFSR port map( D => n60, CLK => D_CLK, R => n87, S => 
                           n59, Q => Byte1_6_port);
   Byte1_reg_5_inst : DFFSR port map( D => n58, CLK => D_CLK, R => n87, S => 
                           n57, Q => Byte1_5_port);
   Byte1_reg_4_inst : DFFSR port map( D => n56, CLK => D_CLK, R => n87, S => 
                           n55, Q => Byte1_4_port);
   Byte1_reg_3_inst : DFFSR port map( D => n54, CLK => D_CLK, R => n87, S => 
                           n53, Q => Byte1_3_port);
   Byte1_reg_2_inst : DFFSR port map( D => n52, CLK => D_CLK, R => n87, S => 
                           n51, Q => Byte1_2_port);
   Byte1_reg_1_inst : DFFSR port map( D => n50, CLK => D_CLK, R => n87, S => 
                           n49, Q => Byte1_1_port);
   Byte1_reg_0_inst : DFFSR port map( D => n48, CLK => D_CLK, R => n87, S => 
                           n47, Q => Byte1_0_port);
   ctr_reg_0_inst : DFFSR port map( D => n89, CLK => D_CLK, R => n87, S => n46,
                           Q => ctr_0_port);
   ctr_reg_1_inst : DFFSR port map( D => n88, CLK => D_CLK, R => n87, S => n45,
                           Q => ctr_1_port);
   W_ENABLE_OUT_reg : DFFPOSX1 port map( D => n44, CLK => D_CLK, Q => 
                           W_ENABLE_OUT_port);
   W_DATA_reg_7_inst : DFFPOSX1 port map( D => n79, CLK => D_CLK, Q => 
                           W_DATA_7_port);
   W_DATA_reg_6_inst : DFFPOSX1 port map( D => n80, CLK => D_CLK, Q => 
                           W_DATA_6_port);
   W_DATA_reg_5_inst : DFFPOSX1 port map( D => n81, CLK => D_CLK, Q => 
                           W_DATA_5_port);
   W_DATA_reg_4_inst : DFFPOSX1 port map( D => n82, CLK => D_CLK, Q => 
                           W_DATA_4_port);
   W_DATA_reg_3_inst : DFFPOSX1 port map( D => n83, CLK => D_CLK, Q => 
                           W_DATA_3_port);
   W_DATA_reg_2_inst : DFFPOSX1 port map( D => n84, CLK => D_CLK, Q => 
                           W_DATA_2_port);
   W_DATA_reg_1_inst : DFFPOSX1 port map( D => n85, CLK => D_CLK, Q => 
                           W_DATA_1_port);
   W_DATA_reg_0_inst : DFFPOSX1 port map( D => n86, CLK => D_CLK, Q => 
                           W_DATA_0_port);
   n45 <= '1';
   n46 <= '1';
   n47 <= '1';
   n49 <= '1';
   n51 <= '1';
   n53 <= '1';
   n55 <= '1';
   n57 <= '1';
   n59 <= '1';
   n61 <= '1';
   n63 <= '1';
   n65 <= '1';
   n67 <= '1';
   n69 <= '1';
   n71 <= '1';
   n73 <= '1';
   n75 <= '1';
   n77 <= '1';
   U90 : INVX2 port map( A => W_ENABLE, Y => n95);
   U91 : INVX2 port map( A => RST, Y => n87);
   U92 : MUX2X1 port map( B => n90, A => n91, S => ctr_0_port, Y => n89);
   U93 : NAND2X1 port map( A => n91, B => n92, Y => n90);
   U94 : MUX2X1 port map( B => n93, A => n94, S => n91, Y => n88);
   U95 : OAI21X1 port map( A => ctr_1_port, B => n95, C => n92, Y => n91);
   U96 : NAND2X1 port map( A => ctr_0_port, B => n92, Y => n94);
   U97 : INVX1 port map( A => EOP, Y => n92);
   U98 : INVX1 port map( A => ctr_1_port, Y => n93);
   U99 : INVX1 port map( A => n96, Y => n86);
   U100 : MUX2X1 port map( B => Byte1_0_port, A => W_DATA_0_port, S => n97, Y 
                           => n96);
   U101 : INVX1 port map( A => n98, Y => n85);
   U102 : MUX2X1 port map( B => Byte1_1_port, A => W_DATA_1_port, S => n97, Y 
                           => n98);
   U103 : INVX1 port map( A => n99, Y => n84);
   U104 : MUX2X1 port map( B => Byte1_2_port, A => W_DATA_2_port, S => n97, Y 
                           => n99);
   U105 : INVX1 port map( A => n100, Y => n83);
   U106 : MUX2X1 port map( B => Byte1_3_port, A => W_DATA_3_port, S => n97, Y 
                           => n100);
   U107 : INVX1 port map( A => n101, Y => n82);
   U108 : MUX2X1 port map( B => Byte1_4_port, A => W_DATA_4_port, S => n97, Y 
                           => n101);
   U109 : INVX1 port map( A => n102, Y => n81);
   U110 : MUX2X1 port map( B => Byte1_5_port, A => W_DATA_5_port, S => n97, Y 
                           => n102);
   U111 : INVX1 port map( A => n103, Y => n80);
   U112 : MUX2X1 port map( B => Byte1_6_port, A => W_DATA_6_port, S => n97, Y 
                           => n103);
   U113 : INVX1 port map( A => n104, Y => n79);
   U114 : MUX2X1 port map( B => Byte1_7_port, A => W_DATA_7_port, S => n97, Y 
                           => n104);
   U115 : INVX1 port map( A => n105, Y => n78);
   U116 : MUX2X1 port map( B => RCV_DATA(7), A => Byte0_7_port, S => n95, Y => 
                           n105);
   U117 : INVX1 port map( A => n106, Y => n76);
   U118 : MUX2X1 port map( B => RCV_DATA(6), A => Byte0_6_port, S => n95, Y => 
                           n106);
   U119 : INVX1 port map( A => n107, Y => n74);
   U120 : MUX2X1 port map( B => RCV_DATA(5), A => Byte0_5_port, S => n95, Y => 
                           n107);
   U121 : INVX1 port map( A => n108, Y => n72);
   U122 : MUX2X1 port map( B => RCV_DATA(4), A => Byte0_4_port, S => n95, Y => 
                           n108);
   U123 : INVX1 port map( A => n109, Y => n70);
   U124 : MUX2X1 port map( B => RCV_DATA(3), A => Byte0_3_port, S => n95, Y => 
                           n109);
   U125 : INVX1 port map( A => n110, Y => n68);
   U126 : MUX2X1 port map( B => RCV_DATA(2), A => Byte0_2_port, S => n95, Y => 
                           n110);
   U127 : INVX1 port map( A => n111, Y => n66);
   U128 : MUX2X1 port map( B => RCV_DATA(1), A => Byte0_1_port, S => n95, Y => 
                           n111);
   U129 : INVX1 port map( A => n112, Y => n64);
   U130 : MUX2X1 port map( B => RCV_DATA(0), A => Byte0_0_port, S => n95, Y => 
                           n112);
   U131 : INVX1 port map( A => n113, Y => n62);
   U132 : MUX2X1 port map( B => Byte0_7_port, A => Byte1_7_port, S => n95, Y =>
                           n113);
   U133 : INVX1 port map( A => n114, Y => n60);
   U134 : MUX2X1 port map( B => Byte0_6_port, A => Byte1_6_port, S => n95, Y =>
                           n114);
   U135 : INVX1 port map( A => n115, Y => n58);
   U136 : MUX2X1 port map( B => Byte0_5_port, A => Byte1_5_port, S => n95, Y =>
                           n115);
   U137 : INVX1 port map( A => n116, Y => n56);
   U138 : MUX2X1 port map( B => Byte0_4_port, A => Byte1_4_port, S => n95, Y =>
                           n116);
   U139 : INVX1 port map( A => n117, Y => n54);
   U140 : MUX2X1 port map( B => Byte0_3_port, A => Byte1_3_port, S => n95, Y =>
                           n117);
   U141 : INVX1 port map( A => n118, Y => n52);
   U142 : MUX2X1 port map( B => Byte0_2_port, A => Byte1_2_port, S => n95, Y =>
                           n118);
   U143 : INVX1 port map( A => n119, Y => n50);
   U144 : MUX2X1 port map( B => Byte0_1_port, A => Byte1_1_port, S => n95, Y =>
                           n119);
   U145 : INVX1 port map( A => n120, Y => n48);
   U146 : MUX2X1 port map( B => Byte0_0_port, A => Byte1_0_port, S => n95, Y =>
                           n120);
   U147 : OAI21X1 port map( A => ctr_0_port, B => n97, C => n121, Y => n44);
   U148 : NAND2X1 port map( A => W_ENABLE_OUT_port, B => RST, Y => n121);
   U149 : NAND3X1 port map( A => W_ENABLE, B => n87, C => ctr_1_port, Y => n97)
                           ;

end SYN_buffer16;
