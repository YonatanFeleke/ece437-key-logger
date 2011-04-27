
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_BENC is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_BENC;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity B_Header_WAITREG5264_DW01_inc_0 is

   port( A : in std_logic_vector (16 downto 0);  SUM : out std_logic_vector (16
         downto 0));

end B_Header_WAITREG5264_DW01_inc_0;

architecture SYN_rpl of B_Header_WAITREG5264_DW01_inc_0 is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component HAX1
      port( A, B : in std_logic;  YC, YS : out std_logic);
   end component;
   
   signal carry_16_port, carry_15_port, carry_14_port, carry_13_port, 
      carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, 
      carry_2_port : std_logic;

begin
   
   U1_1_15 : HAX1 port map( A => A(15), B => carry_15_port, YC => carry_16_port
                           , YS => SUM(15));
   U1_1_14 : HAX1 port map( A => A(14), B => carry_14_port, YC => carry_15_port
                           , YS => SUM(14));
   U1_1_13 : HAX1 port map( A => A(13), B => carry_13_port, YC => carry_14_port
                           , YS => SUM(13));
   U1_1_12 : HAX1 port map( A => A(12), B => carry_12_port, YC => carry_13_port
                           , YS => SUM(12));
   U1_1_11 : HAX1 port map( A => A(11), B => carry_11_port, YC => carry_12_port
                           , YS => SUM(11));
   U1_1_10 : HAX1 port map( A => A(10), B => carry_10_port, YC => carry_11_port
                           , YS => SUM(10));
   U1_1_9 : HAX1 port map( A => A(9), B => carry_9_port, YC => carry_10_port, 
                           YS => SUM(9));
   U1_1_8 : HAX1 port map( A => A(8), B => carry_8_port, YC => carry_9_port, YS
                           => SUM(8));
   U1_1_7 : HAX1 port map( A => A(7), B => carry_7_port, YC => carry_8_port, YS
                           => SUM(7));
   U1_1_6 : HAX1 port map( A => A(6), B => carry_6_port, YC => carry_7_port, YS
                           => SUM(6));
   U1_1_5 : HAX1 port map( A => A(5), B => carry_5_port, YC => carry_6_port, YS
                           => SUM(5));
   U1_1_4 : HAX1 port map( A => A(4), B => carry_4_port, YC => carry_5_port, YS
                           => SUM(4));
   U1_1_3 : HAX1 port map( A => A(3), B => carry_3_port, YC => carry_4_port, YS
                           => SUM(3));
   U1_1_2 : HAX1 port map( A => A(2), B => carry_2_port, YC => carry_3_port, YS
                           => SUM(2));
   U1_1_1 : HAX1 port map( A => A(1), B => A(0), YC => carry_2_port, YS => 
                           SUM(1));
   U1 : INVX2 port map( A => A(0), Y => SUM(0));
   U2 : XOR2X1 port map( A => carry_16_port, B => A(16), Y => SUM(16));

end SYN_rpl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869_DW01_inc_0 is

   port( A : in std_logic_vector (12 downto 0);  SUM : out std_logic_vector (12
         downto 0));

end B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869_DW01_inc_0;

architecture SYN_rpl of 
   B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869_DW01_inc_0 is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component HAX1
      port( A, B : in std_logic;  YC, YS : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port : std_logic;

begin
   
   U1_1_11 : HAX1 port map( A => A(11), B => carry_11_port, YC => carry_12_port
                           , YS => SUM(11));
   U1_1_10 : HAX1 port map( A => A(10), B => carry_10_port, YC => carry_11_port
                           , YS => SUM(10));
   U1_1_9 : HAX1 port map( A => A(9), B => carry_9_port, YC => carry_10_port, 
                           YS => SUM(9));
   U1_1_8 : HAX1 port map( A => A(8), B => carry_8_port, YC => carry_9_port, YS
                           => SUM(8));
   U1_1_7 : HAX1 port map( A => A(7), B => carry_7_port, YC => carry_8_port, YS
                           => SUM(7));
   U1_1_6 : HAX1 port map( A => A(6), B => carry_6_port, YC => carry_7_port, YS
                           => SUM(6));
   U1_1_5 : HAX1 port map( A => A(5), B => carry_5_port, YC => carry_6_port, YS
                           => SUM(5));
   U1_1_4 : HAX1 port map( A => A(4), B => carry_4_port, YC => carry_5_port, YS
                           => SUM(4));
   U1_1_3 : HAX1 port map( A => A(3), B => carry_3_port, YC => carry_4_port, YS
                           => SUM(3));
   U1_1_2 : HAX1 port map( A => A(2), B => carry_2_port, YC => carry_3_port, YS
                           => SUM(2));
   U1_1_1 : HAX1 port map( A => A(1), B => A(0), YC => carry_2_port, YS => 
                           SUM(1));
   U1 : INVX2 port map( A => A(0), Y => SUM(0));
   U2 : XOR2X1 port map( A => carry_12_port, B => A(12), Y => SUM(12));

end SYN_rpl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_2 is

   port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector (7 
         downto 0));

end B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_2;

architecture SYN_rpl of B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_2 is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component HAX1
      port( A, B : in std_logic;  YC, YS : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port : std_logic;

begin
   
   U1_1_6 : HAX1 port map( A => A(6), B => carry_6_port, YC => carry_7_port, YS
                           => SUM(6));
   U1_1_5 : HAX1 port map( A => A(5), B => carry_5_port, YC => carry_6_port, YS
                           => SUM(5));
   U1_1_4 : HAX1 port map( A => A(4), B => carry_4_port, YC => carry_5_port, YS
                           => SUM(4));
   U1_1_3 : HAX1 port map( A => A(3), B => carry_3_port, YC => carry_4_port, YS
                           => SUM(3));
   U1_1_2 : HAX1 port map( A => A(2), B => carry_2_port, YC => carry_3_port, YS
                           => SUM(2));
   U1_1_1 : HAX1 port map( A => A(1), B => A(0), YC => carry_2_port, YS => 
                           SUM(1));
   U1 : INVX2 port map( A => A(0), Y => SUM(0));
   U2 : XOR2X1 port map( A => carry_7_port, B => A(7), Y => SUM(7));

end SYN_rpl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_0 is

   port( A : in std_logic_vector (9 downto 0);  SUM : out std_logic_vector (9 
         downto 0));

end B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_0;

architecture SYN_rpl of B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_0 is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component HAX1
      port( A, B : in std_logic;  YC, YS : out std_logic);
   end component;
   
   signal carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port,
      carry_4_port, carry_3_port, carry_2_port : std_logic;

begin
   
   U1_1_8 : HAX1 port map( A => A(8), B => carry_8_port, YC => carry_9_port, YS
                           => SUM(8));
   U1_1_7 : HAX1 port map( A => A(7), B => carry_7_port, YC => carry_8_port, YS
                           => SUM(7));
   U1_1_6 : HAX1 port map( A => A(6), B => carry_6_port, YC => carry_7_port, YS
                           => SUM(6));
   U1_1_5 : HAX1 port map( A => A(5), B => carry_5_port, YC => carry_6_port, YS
                           => SUM(5));
   U1_1_4 : HAX1 port map( A => A(4), B => carry_4_port, YC => carry_5_port, YS
                           => SUM(4));
   U1_1_3 : HAX1 port map( A => A(3), B => carry_3_port, YC => carry_4_port, YS
                           => SUM(3));
   U1_1_2 : HAX1 port map( A => A(2), B => carry_2_port, YC => carry_3_port, YS
                           => SUM(2));
   U1_1_1 : HAX1 port map( A => A(1), B => A(0), YC => carry_2_port, YS => 
                           SUM(1));
   U1 : INVX2 port map( A => A(0), Y => SUM(0));
   U2 : XOR2X1 port map( A => carry_9_port, B => A(9), Y => SUM(9));

end SYN_rpl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity s_Control_DW01_sub_0 is

   port( A, B : in std_logic_vector (11 downto 0);  CI : in std_logic;  DIFF : 
         out std_logic_vector (11 downto 0);  CO : out std_logic);

end s_Control_DW01_sub_0;

architecture SYN_rpl of s_Control_DW01_sub_0 is

   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component FAX1
      port( A, B, C : in std_logic;  YC, YS : out std_logic);
   end component;
   
   signal carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, 
      carry_2_port, carry_1_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
      n12, n13 : std_logic;

begin
   
   U2_11 : FAX1 port map( A => A(11), B => n2, C => carry_11_port, YC => n13, 
                           YS => DIFF(11));
   U2_10 : FAX1 port map( A => A(10), B => n3, C => carry_10_port, YC => 
                           carry_11_port, YS => DIFF(10));
   U2_9 : FAX1 port map( A => A(9), B => n12, C => carry_9_port, YC => 
                           carry_10_port, YS => DIFF(9));
   U2_8 : FAX1 port map( A => A(8), B => n11, C => carry_8_port, YC => 
                           carry_9_port, YS => DIFF(8));
   U2_7 : FAX1 port map( A => A(7), B => n10, C => carry_7_port, YC => 
                           carry_8_port, YS => DIFF(7));
   U2_6 : FAX1 port map( A => A(6), B => n9, C => carry_6_port, YC => 
                           carry_7_port, YS => DIFF(6));
   U2_5 : FAX1 port map( A => A(5), B => n8, C => carry_5_port, YC => 
                           carry_6_port, YS => DIFF(5));
   U2_4 : FAX1 port map( A => A(4), B => n7, C => carry_4_port, YC => 
                           carry_5_port, YS => DIFF(4));
   U2_3 : FAX1 port map( A => A(3), B => n6, C => carry_3_port, YC => 
                           carry_4_port, YS => DIFF(3));
   U2_2 : FAX1 port map( A => A(2), B => n5, C => carry_2_port, YC => 
                           carry_3_port, YS => DIFF(2));
   U2_1 : FAX1 port map( A => A(1), B => n4, C => carry_1_port, YC => 
                           carry_2_port, YS => DIFF(1));
   U1 : OR2X2 port map( A => A(0), B => n1, Y => carry_1_port);
   U2 : XNOR2X1 port map( A => n1, B => A(0), Y => DIFF(0));
   U3 : INVX2 port map( A => B(0), Y => n1);
   U4 : INVX2 port map( A => B(11), Y => n2);
   U5 : INVX2 port map( A => B(10), Y => n3);
   U6 : INVX2 port map( A => B(1), Y => n4);
   U7 : INVX2 port map( A => B(2), Y => n5);
   U8 : INVX2 port map( A => B(3), Y => n6);
   U9 : INVX2 port map( A => B(4), Y => n7);
   U10 : INVX2 port map( A => B(5), Y => n8);
   U11 : INVX2 port map( A => B(6), Y => n9);
   U12 : INVX2 port map( A => B(7), Y => n10);
   U13 : INVX2 port map( A => B(8), Y => n11);
   U14 : INVX2 port map( A => B(9), Y => n12);

end SYN_rpl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity s_Control_DW01_inc_0 is

   port( A : in std_logic_vector (11 downto 0);  SUM : out std_logic_vector (11
         downto 0));

end s_Control_DW01_inc_0;

architecture SYN_rpl of s_Control_DW01_inc_0 is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component HAX1
      port( A, B : in std_logic;  YC, YS : out std_logic);
   end component;
   
   signal carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, 
      carry_2_port : std_logic;

begin
   
   U1_1_10 : HAX1 port map( A => A(10), B => carry_10_port, YC => carry_11_port
                           , YS => SUM(10));
   U1_1_9 : HAX1 port map( A => A(9), B => carry_9_port, YC => carry_10_port, 
                           YS => SUM(9));
   U1_1_8 : HAX1 port map( A => A(8), B => carry_8_port, YC => carry_9_port, YS
                           => SUM(8));
   U1_1_7 : HAX1 port map( A => A(7), B => carry_7_port, YC => carry_8_port, YS
                           => SUM(7));
   U1_1_6 : HAX1 port map( A => A(6), B => carry_6_port, YC => carry_7_port, YS
                           => SUM(6));
   U1_1_5 : HAX1 port map( A => A(5), B => carry_5_port, YC => carry_6_port, YS
                           => SUM(5));
   U1_1_4 : HAX1 port map( A => A(4), B => carry_4_port, YC => carry_5_port, YS
                           => SUM(4));
   U1_1_3 : HAX1 port map( A => A(3), B => carry_3_port, YC => carry_4_port, YS
                           => SUM(3));
   U1_1_2 : HAX1 port map( A => A(2), B => carry_2_port, YC => carry_3_port, YS
                           => SUM(2));
   U1_1_1 : HAX1 port map( A => A(1), B => A(0), YC => carry_2_port, YS => 
                           SUM(1));
   U1 : INVX2 port map( A => A(0), Y => SUM(0));
   U2 : XOR2X1 port map( A => carry_11_port, B => A(11), Y => SUM(11));

end SYN_rpl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity s_Control_DW01_dec_0 is

   port( A : in std_logic_vector (11 downto 0);  SUM : out std_logic_vector (11
         downto 0));

end s_Control_DW01_dec_0;

architecture SYN_rpl of s_Control_DW01_dec_0 is

   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
      n20, n21, n22, n23, n24 : std_logic;

begin
   
   U1 : INVX2 port map( A => n13, Y => SUM(8));
   U2 : INVX2 port map( A => n16, Y => SUM(6));
   U3 : INVX2 port map( A => n19, Y => SUM(4));
   U4 : INVX2 port map( A => n22, Y => SUM(2));
   U5 : INVX2 port map( A => A(0), Y => n5);
   U6 : INVX2 port map( A => A(1), Y => n6);
   U7 : INVX2 port map( A => A(3), Y => n7);
   U8 : INVX2 port map( A => A(5), Y => n8);
   U9 : INVX2 port map( A => A(7), Y => n9);
   U10 : INVX2 port map( A => A(9), Y => n10);
   U11 : OAI21X1 port map( A => n11, B => n10, C => n12, Y => SUM(9));
   U12 : AOI21X1 port map( A => n14, B => A(8), C => n11, Y => n13);
   U13 : OAI21X1 port map( A => n15, B => n9, C => n14, Y => SUM(7));
   U14 : AOI21X1 port map( A => n17, B => A(6), C => n15, Y => n16);
   U15 : OAI21X1 port map( A => n18, B => n8, C => n17, Y => SUM(5));
   U16 : AOI21X1 port map( A => n20, B => A(4), C => n18, Y => n19);
   U17 : OAI21X1 port map( A => n21, B => n7, C => n20, Y => SUM(3));
   U18 : AOI21X1 port map( A => n23, B => A(2), C => n21, Y => n22);
   U19 : OAI21X1 port map( A => n5, B => n6, C => n23, Y => SUM(1));
   U20 : XOR2X1 port map( A => A(11), B => n24, Y => SUM(11));
   U21 : NOR2X1 port map( A => A(10), B => n12, Y => n24);
   U22 : XNOR2X1 port map( A => A(10), B => n12, Y => SUM(10));
   U23 : NAND2X1 port map( A => n11, B => n10, Y => n12);
   U24 : NOR2X1 port map( A => n14, B => A(8), Y => n11);
   U25 : NAND2X1 port map( A => n15, B => n9, Y => n14);
   U26 : NOR2X1 port map( A => n17, B => A(6), Y => n15);
   U27 : NAND2X1 port map( A => n18, B => n8, Y => n17);
   U28 : NOR2X1 port map( A => n20, B => A(4), Y => n18);
   U29 : NAND2X1 port map( A => n21, B => n7, Y => n20);
   U30 : NOR2X1 port map( A => n23, B => A(2), Y => n21);
   U31 : NAND2X1 port map( A => n6, B => n5, Y => n23);

end SYN_rpl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity read_ptr_1 is

   port( rclk, rst_n, renable : in std_logic;  rptr, rptr_nxt : out 
         std_logic_vector (3 downto 0));

end read_ptr_1;

architecture SYN_rtl of read_ptr_1 is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal rptr_nxt_3_port, rptr_nxt_2_port, rptr_nxt_1_port, rptr_nxt_0_port, 
      binary_nxt_2_port, binary_nxt_1_port, binary_nxt_0_port, binary_r_3_port,
      binary_r_2_port, binary_r_1_port, binary_r_0_port, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20 : std_logic;

begin
   rptr_nxt <= ( rptr_nxt_3_port, rptr_nxt_2_port, rptr_nxt_1_port, 
      rptr_nxt_0_port );
   
   binary_r_reg_0_inst : DFFSR port map( D => binary_nxt_0_port, CLK => rclk, R
                           => rst_n, S => n13, Q => binary_r_0_port);
   binary_r_reg_1_inst : DFFSR port map( D => binary_nxt_1_port, CLK => rclk, R
                           => rst_n, S => n14, Q => binary_r_1_port);
   binary_r_reg_2_inst : DFFSR port map( D => binary_nxt_2_port, CLK => rclk, R
                           => rst_n, S => n15, Q => binary_r_2_port);
   binary_r_reg_3_inst : DFFSR port map( D => rptr_nxt_3_port, CLK => rclk, R 
                           => rst_n, S => n16, Q => binary_r_3_port);
   gray_r_reg_3_inst : DFFSR port map( D => rptr_nxt_3_port, CLK => rclk, R => 
                           rst_n, S => n17, Q => rptr(3));
   gray_r_reg_2_inst : DFFSR port map( D => rptr_nxt_2_port, CLK => rclk, R => 
                           rst_n, S => n18, Q => rptr(2));
   gray_r_reg_1_inst : DFFSR port map( D => rptr_nxt_1_port, CLK => rclk, R => 
                           rst_n, S => n19, Q => rptr(1));
   gray_r_reg_0_inst : DFFSR port map( D => rptr_nxt_0_port, CLK => rclk, R => 
                           rst_n, S => n20, Q => rptr(0));
   n20 <= '1';
   n19 <= '1';
   n18 <= '1';
   n17 <= '1';
   n16 <= '1';
   n15 <= '1';
   n14 <= '1';
   n13 <= '1';
   U11 : XOR2X1 port map( A => rptr_nxt_3_port, B => binary_nxt_2_port, Y => 
                           rptr_nxt_2_port);
   U12 : XNOR2X1 port map( A => n9, B => binary_r_3_port, Y => rptr_nxt_3_port)
                           ;
   U13 : NAND2X1 port map( A => binary_r_2_port, B => n10, Y => n9);
   U14 : XOR2X1 port map( A => binary_nxt_2_port, B => binary_nxt_1_port, Y => 
                           rptr_nxt_1_port);
   U15 : XOR2X1 port map( A => binary_nxt_1_port, B => binary_nxt_0_port, Y => 
                           rptr_nxt_0_port);
   U16 : XOR2X1 port map( A => n10, B => binary_r_2_port, Y => 
                           binary_nxt_2_port);
   U17 : INVX1 port map( A => n11, Y => n10);
   U18 : NAND3X1 port map( A => binary_r_1_port, B => binary_r_0_port, C => 
                           renable, Y => n11);
   U19 : XNOR2X1 port map( A => n12, B => binary_r_1_port, Y => 
                           binary_nxt_1_port);
   U20 : NAND2X1 port map( A => renable, B => binary_r_0_port, Y => n12);
   U21 : XOR2X1 port map( A => binary_r_0_port, B => renable, Y => 
                           binary_nxt_0_port);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity read_ptr_0 is

   port( rclk, rst_n, renable : in std_logic;  rptr, rptr_nxt : out 
         std_logic_vector (3 downto 0));

end read_ptr_0;

architecture SYN_rtl of read_ptr_0 is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal rptr_nxt_3_port, rptr_nxt_2_port, rptr_nxt_1_port, rptr_nxt_0_port, 
      binary_nxt_2_port, binary_nxt_1_port, binary_nxt_0_port, binary_r_3_port,
      binary_r_2_port, binary_r_1_port, binary_r_0_port, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20 : std_logic;

begin
   rptr_nxt <= ( rptr_nxt_3_port, rptr_nxt_2_port, rptr_nxt_1_port, 
      rptr_nxt_0_port );
   
   binary_r_reg_0_inst : DFFSR port map( D => binary_nxt_0_port, CLK => rclk, R
                           => rst_n, S => n13, Q => binary_r_0_port);
   binary_r_reg_1_inst : DFFSR port map( D => binary_nxt_1_port, CLK => rclk, R
                           => rst_n, S => n14, Q => binary_r_1_port);
   binary_r_reg_2_inst : DFFSR port map( D => binary_nxt_2_port, CLK => rclk, R
                           => rst_n, S => n15, Q => binary_r_2_port);
   binary_r_reg_3_inst : DFFSR port map( D => rptr_nxt_3_port, CLK => rclk, R 
                           => rst_n, S => n16, Q => binary_r_3_port);
   gray_r_reg_3_inst : DFFSR port map( D => rptr_nxt_3_port, CLK => rclk, R => 
                           rst_n, S => n17, Q => rptr(3));
   gray_r_reg_2_inst : DFFSR port map( D => rptr_nxt_2_port, CLK => rclk, R => 
                           rst_n, S => n18, Q => rptr(2));
   gray_r_reg_1_inst : DFFSR port map( D => rptr_nxt_1_port, CLK => rclk, R => 
                           rst_n, S => n19, Q => rptr(1));
   gray_r_reg_0_inst : DFFSR port map( D => rptr_nxt_0_port, CLK => rclk, R => 
                           rst_n, S => n20, Q => rptr(0));
   n20 <= '1';
   n19 <= '1';
   n18 <= '1';
   n17 <= '1';
   n16 <= '1';
   n15 <= '1';
   n14 <= '1';
   n13 <= '1';
   U11 : XOR2X1 port map( A => rptr_nxt_3_port, B => binary_nxt_2_port, Y => 
                           rptr_nxt_2_port);
   U12 : XNOR2X1 port map( A => n9, B => binary_r_3_port, Y => rptr_nxt_3_port)
                           ;
   U13 : NAND2X1 port map( A => binary_r_2_port, B => n10, Y => n9);
   U14 : XOR2X1 port map( A => binary_nxt_2_port, B => binary_nxt_1_port, Y => 
                           rptr_nxt_1_port);
   U15 : XOR2X1 port map( A => binary_nxt_1_port, B => binary_nxt_0_port, Y => 
                           rptr_nxt_0_port);
   U16 : XOR2X1 port map( A => n10, B => binary_r_2_port, Y => 
                           binary_nxt_2_port);
   U17 : INVX1 port map( A => n11, Y => n10);
   U18 : NAND3X1 port map( A => binary_r_1_port, B => binary_r_0_port, C => 
                           renable, Y => n11);
   U19 : XNOR2X1 port map( A => n12, B => binary_r_1_port, Y => 
                           binary_nxt_1_port);
   U20 : NAND2X1 port map( A => renable, B => binary_r_0_port, Y => n12);
   U21 : XOR2X1 port map( A => binary_r_0_port, B => renable, Y => 
                           binary_nxt_0_port);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity write_ptr_1 is

   port( wclk, rst_n, wenable : in std_logic;  wptr, wptr_nxt : out 
         std_logic_vector (3 downto 0));

end write_ptr_1;

architecture SYN_rtl of write_ptr_1 is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal wptr_nxt_3_port, wptr_nxt_2_port, wptr_nxt_1_port, wptr_nxt_0_port, 
      binary_nxt_2_port, binary_nxt_1_port, binary_nxt_0_port, binary_r_3_port,
      binary_r_2_port, binary_r_1_port, binary_r_0_port, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20 : std_logic;

begin
   wptr_nxt <= ( wptr_nxt_3_port, wptr_nxt_2_port, wptr_nxt_1_port, 
      wptr_nxt_0_port );
   
   binary_r_reg_0_inst : DFFSR port map( D => binary_nxt_0_port, CLK => wclk, R
                           => rst_n, S => n13, Q => binary_r_0_port);
   binary_r_reg_1_inst : DFFSR port map( D => binary_nxt_1_port, CLK => wclk, R
                           => rst_n, S => n14, Q => binary_r_1_port);
   binary_r_reg_2_inst : DFFSR port map( D => binary_nxt_2_port, CLK => wclk, R
                           => rst_n, S => n15, Q => binary_r_2_port);
   binary_r_reg_3_inst : DFFSR port map( D => wptr_nxt_3_port, CLK => wclk, R 
                           => rst_n, S => n16, Q => binary_r_3_port);
   gray_r_reg_3_inst : DFFSR port map( D => wptr_nxt_3_port, CLK => wclk, R => 
                           rst_n, S => n17, Q => wptr(3));
   gray_r_reg_2_inst : DFFSR port map( D => wptr_nxt_2_port, CLK => wclk, R => 
                           rst_n, S => n18, Q => wptr(2));
   gray_r_reg_1_inst : DFFSR port map( D => wptr_nxt_1_port, CLK => wclk, R => 
                           rst_n, S => n19, Q => wptr(1));
   gray_r_reg_0_inst : DFFSR port map( D => wptr_nxt_0_port, CLK => wclk, R => 
                           rst_n, S => n20, Q => wptr(0));
   n20 <= '1';
   n19 <= '1';
   n18 <= '1';
   n17 <= '1';
   n16 <= '1';
   n15 <= '1';
   n14 <= '1';
   n13 <= '1';
   U11 : XOR2X1 port map( A => wptr_nxt_3_port, B => binary_nxt_2_port, Y => 
                           wptr_nxt_2_port);
   U12 : XNOR2X1 port map( A => n9, B => binary_r_3_port, Y => wptr_nxt_3_port)
                           ;
   U13 : NAND2X1 port map( A => binary_r_2_port, B => n10, Y => n9);
   U14 : XOR2X1 port map( A => binary_nxt_2_port, B => binary_nxt_1_port, Y => 
                           wptr_nxt_1_port);
   U15 : XOR2X1 port map( A => binary_nxt_1_port, B => binary_nxt_0_port, Y => 
                           wptr_nxt_0_port);
   U16 : XOR2X1 port map( A => n10, B => binary_r_2_port, Y => 
                           binary_nxt_2_port);
   U17 : INVX1 port map( A => n11, Y => n10);
   U18 : NAND3X1 port map( A => binary_r_1_port, B => binary_r_0_port, C => 
                           wenable, Y => n11);
   U19 : XNOR2X1 port map( A => n12, B => binary_r_1_port, Y => 
                           binary_nxt_1_port);
   U20 : NAND2X1 port map( A => wenable, B => binary_r_0_port, Y => n12);
   U21 : XOR2X1 port map( A => binary_r_0_port, B => wenable, Y => 
                           binary_nxt_0_port);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity write_ptr_0 is

   port( wclk, rst_n, wenable : in std_logic;  wptr, wptr_nxt : out 
         std_logic_vector (3 downto 0));

end write_ptr_0;

architecture SYN_rtl of write_ptr_0 is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal wptr_nxt_3_port, wptr_nxt_2_port, wptr_nxt_1_port, wptr_nxt_0_port, 
      binary_nxt_2_port, binary_nxt_1_port, binary_nxt_0_port, binary_r_3_port,
      binary_r_2_port, binary_r_1_port, binary_r_0_port, n9, n10, n11, n12, n13
      , n14, n15, n16, n17, n18, n19, n20 : std_logic;

begin
   wptr_nxt <= ( wptr_nxt_3_port, wptr_nxt_2_port, wptr_nxt_1_port, 
      wptr_nxt_0_port );
   
   binary_r_reg_0_inst : DFFSR port map( D => binary_nxt_0_port, CLK => wclk, R
                           => rst_n, S => n13, Q => binary_r_0_port);
   binary_r_reg_1_inst : DFFSR port map( D => binary_nxt_1_port, CLK => wclk, R
                           => rst_n, S => n14, Q => binary_r_1_port);
   binary_r_reg_2_inst : DFFSR port map( D => binary_nxt_2_port, CLK => wclk, R
                           => rst_n, S => n15, Q => binary_r_2_port);
   binary_r_reg_3_inst : DFFSR port map( D => wptr_nxt_3_port, CLK => wclk, R 
                           => rst_n, S => n16, Q => binary_r_3_port);
   gray_r_reg_3_inst : DFFSR port map( D => wptr_nxt_3_port, CLK => wclk, R => 
                           rst_n, S => n17, Q => wptr(3));
   gray_r_reg_2_inst : DFFSR port map( D => wptr_nxt_2_port, CLK => wclk, R => 
                           rst_n, S => n18, Q => wptr(2));
   gray_r_reg_1_inst : DFFSR port map( D => wptr_nxt_1_port, CLK => wclk, R => 
                           rst_n, S => n19, Q => wptr(1));
   gray_r_reg_0_inst : DFFSR port map( D => wptr_nxt_0_port, CLK => wclk, R => 
                           rst_n, S => n20, Q => wptr(0));
   n20 <= '1';
   n19 <= '1';
   n18 <= '1';
   n17 <= '1';
   n16 <= '1';
   n15 <= '1';
   n14 <= '1';
   n13 <= '1';
   U11 : XOR2X1 port map( A => wptr_nxt_3_port, B => binary_nxt_2_port, Y => 
                           wptr_nxt_2_port);
   U12 : XNOR2X1 port map( A => n9, B => binary_r_3_port, Y => wptr_nxt_3_port)
                           ;
   U13 : NAND2X1 port map( A => binary_r_2_port, B => n10, Y => n9);
   U14 : XOR2X1 port map( A => binary_nxt_2_port, B => binary_nxt_1_port, Y => 
                           wptr_nxt_1_port);
   U15 : XOR2X1 port map( A => binary_nxt_1_port, B => binary_nxt_0_port, Y => 
                           wptr_nxt_0_port);
   U16 : XOR2X1 port map( A => n10, B => binary_r_2_port, Y => 
                           binary_nxt_2_port);
   U17 : INVX1 port map( A => n11, Y => n10);
   U18 : NAND3X1 port map( A => binary_r_1_port, B => binary_r_0_port, C => 
                           wenable, Y => n11);
   U19 : XNOR2X1 port map( A => n12, B => binary_r_1_port, Y => 
                           binary_nxt_1_port);
   U20 : NAND2X1 port map( A => wenable, B => binary_r_0_port, Y => n12);
   U21 : XOR2X1 port map( A => binary_r_0_port, B => wenable, Y => 
                           binary_nxt_0_port);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity read_fifo_ctrl_1 is

   port( rclk, rst_n, renable : in std_logic;  wptr : in std_logic_vector (3 
         downto 0);  rptr : out std_logic_vector (3 downto 0);  raddr : out 
         std_logic_vector (2 downto 0);  empty_flag : out std_logic);

end read_fifo_ctrl_1;

architecture SYN_rtl of read_fifo_ctrl_1 is

   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component read_ptr_1
      port( rclk, rst_n, renable : in std_logic;  rptr, rptr_nxt : out 
            std_logic_vector (3 downto 0));
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal empty_flag_port, renable_p2, rptr_nxt_3_port, rptr_nxt_2_port, 
      rptr_nxt_1_port, rptr_nxt_0_port, rwptr_r2_3_port, rwptr_r2_2_port, 
      rwptr_r2_1_port, rwptr_r2_0_port, rwptr_r1_3_port, rwptr_r1_2_port, 
      rwptr_r1_1_port, rwptr_r1_0_port, gray_rptr_2_port, N3, n1, n2, n15, n16,
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31
      , n32 : std_logic;

begin
   empty_flag <= empty_flag_port;
   
   rwptr_r1_reg_3_inst : DFFSR port map( D => wptr(3), CLK => rclk, R => rst_n,
                           S => n21, Q => rwptr_r1_3_port);
   rwptr_r1_reg_2_inst : DFFSR port map( D => wptr(2), CLK => rclk, R => rst_n,
                           S => n22, Q => rwptr_r1_2_port);
   rwptr_r1_reg_1_inst : DFFSR port map( D => wptr(1), CLK => rclk, R => rst_n,
                           S => n23, Q => rwptr_r1_1_port);
   rwptr_r1_reg_0_inst : DFFSR port map( D => wptr(0), CLK => rclk, R => rst_n,
                           S => n24, Q => rwptr_r1_0_port);
   rwptr_r2_reg_3_inst : DFFSR port map( D => rwptr_r1_3_port, CLK => rclk, R 
                           => rst_n, S => n25, Q => rwptr_r2_3_port);
   rwptr_r2_reg_2_inst : DFFSR port map( D => rwptr_r1_2_port, CLK => rclk, R 
                           => rst_n, S => n26, Q => rwptr_r2_2_port);
   rwptr_r2_reg_1_inst : DFFSR port map( D => rwptr_r1_1_port, CLK => rclk, R 
                           => rst_n, S => n27, Q => rwptr_r2_1_port);
   rwptr_r2_reg_0_inst : DFFSR port map( D => rwptr_r1_0_port, CLK => rclk, R 
                           => rst_n, S => n28, Q => rwptr_r2_0_port);
   empty_flag_r_reg : DFFSR port map( D => N3, CLK => rclk, R => n29, S => 
                           rst_n, Q => empty_flag_port);
   raddr_reg_2_inst : DFFSR port map( D => gray_rptr_2_port, CLK => rclk, R => 
                           rst_n, S => n30, Q => raddr(2));
   raddr_reg_1_inst : DFFSR port map( D => rptr_nxt_1_port, CLK => rclk, R => 
                           rst_n, S => n31, Q => raddr(1));
   raddr_reg_0_inst : DFFSR port map( D => rptr_nxt_0_port, CLK => rclk, R => 
                           rst_n, S => n32, Q => raddr(0));
   n32 <= '1';
   n31 <= '1';
   n30 <= '1';
   n29 <= '1';
   n28 <= '1';
   n27 <= '1';
   n26 <= '1';
   n25 <= '1';
   n24 <= '1';
   n23 <= '1';
   n22 <= '1';
   n21 <= '1';
   RPU1 : read_ptr_1 port map( rclk => rclk, rst_n => rst_n, renable => 
                           renable_p2, rptr(3) => rptr(3), rptr(2) => rptr(2), 
                           rptr(1) => rptr(1), rptr(0) => rptr(0), rptr_nxt(3) 
                           => rptr_nxt_3_port, rptr_nxt(2) => rptr_nxt_2_port, 
                           rptr_nxt(1) => rptr_nxt_1_port, rptr_nxt(0) => 
                           rptr_nxt_0_port);
   U15 : NOR2X1 port map( A => empty_flag_port, B => n1, Y => renable_p2);
   U16 : INVX1 port map( A => renable, Y => n1);
   U17 : NOR2X1 port map( A => n2, B => n15, Y => N3);
   U18 : NAND2X1 port map( A => n16, B => n17, Y => n15);
   U19 : XOR2X1 port map( A => n18, B => gray_rptr_2_port, Y => n17);
   U20 : XOR2X1 port map( A => rptr_nxt_3_port, B => rptr_nxt_2_port, Y => 
                           gray_rptr_2_port);
   U21 : XNOR2X1 port map( A => rwptr_r2_3_port, B => rwptr_r2_2_port, Y => n18
                           );
   U22 : XNOR2X1 port map( A => rwptr_r2_1_port, B => rptr_nxt_1_port, Y => n16
                           );
   U23 : NAND2X1 port map( A => n19, B => n20, Y => n2);
   U24 : XNOR2X1 port map( A => rwptr_r2_0_port, B => rptr_nxt_0_port, Y => n20
                           );
   U25 : XNOR2X1 port map( A => rptr_nxt_3_port, B => rwptr_r2_3_port, Y => n19
                           );

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity read_fifo_ctrl_0 is

   port( rclk, rst_n, renable : in std_logic;  wptr : in std_logic_vector (3 
         downto 0);  rptr : out std_logic_vector (3 downto 0);  raddr : out 
         std_logic_vector (2 downto 0);  empty_flag : out std_logic);

end read_fifo_ctrl_0;

architecture SYN_rtl of read_fifo_ctrl_0 is

   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component read_ptr_0
      port( rclk, rst_n, renable : in std_logic;  rptr, rptr_nxt : out 
            std_logic_vector (3 downto 0));
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal empty_flag_port, renable_p2, rptr_nxt_3_port, rptr_nxt_2_port, 
      rptr_nxt_1_port, rptr_nxt_0_port, rwptr_r2_3_port, rwptr_r2_2_port, 
      rwptr_r2_1_port, rwptr_r2_0_port, rwptr_r1_3_port, rwptr_r1_2_port, 
      rwptr_r1_1_port, rwptr_r1_0_port, gray_rptr_2_port, N3, n1, n2, n15, n16,
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31
      , n32 : std_logic;

begin
   empty_flag <= empty_flag_port;
   
   rwptr_r1_reg_3_inst : DFFSR port map( D => wptr(3), CLK => rclk, R => rst_n,
                           S => n21, Q => rwptr_r1_3_port);
   rwptr_r1_reg_2_inst : DFFSR port map( D => wptr(2), CLK => rclk, R => rst_n,
                           S => n22, Q => rwptr_r1_2_port);
   rwptr_r1_reg_1_inst : DFFSR port map( D => wptr(1), CLK => rclk, R => rst_n,
                           S => n23, Q => rwptr_r1_1_port);
   rwptr_r1_reg_0_inst : DFFSR port map( D => wptr(0), CLK => rclk, R => rst_n,
                           S => n24, Q => rwptr_r1_0_port);
   rwptr_r2_reg_3_inst : DFFSR port map( D => rwptr_r1_3_port, CLK => rclk, R 
                           => rst_n, S => n25, Q => rwptr_r2_3_port);
   rwptr_r2_reg_2_inst : DFFSR port map( D => rwptr_r1_2_port, CLK => rclk, R 
                           => rst_n, S => n26, Q => rwptr_r2_2_port);
   rwptr_r2_reg_1_inst : DFFSR port map( D => rwptr_r1_1_port, CLK => rclk, R 
                           => rst_n, S => n27, Q => rwptr_r2_1_port);
   rwptr_r2_reg_0_inst : DFFSR port map( D => rwptr_r1_0_port, CLK => rclk, R 
                           => rst_n, S => n28, Q => rwptr_r2_0_port);
   empty_flag_r_reg : DFFSR port map( D => N3, CLK => rclk, R => n29, S => 
                           rst_n, Q => empty_flag_port);
   raddr_reg_2_inst : DFFSR port map( D => gray_rptr_2_port, CLK => rclk, R => 
                           rst_n, S => n30, Q => raddr(2));
   raddr_reg_1_inst : DFFSR port map( D => rptr_nxt_1_port, CLK => rclk, R => 
                           rst_n, S => n31, Q => raddr(1));
   raddr_reg_0_inst : DFFSR port map( D => rptr_nxt_0_port, CLK => rclk, R => 
                           rst_n, S => n32, Q => raddr(0));
   n32 <= '1';
   n31 <= '1';
   n30 <= '1';
   n29 <= '1';
   n28 <= '1';
   n27 <= '1';
   n26 <= '1';
   n25 <= '1';
   n24 <= '1';
   n23 <= '1';
   n22 <= '1';
   n21 <= '1';
   RPU1 : read_ptr_0 port map( rclk => rclk, rst_n => rst_n, renable => 
                           renable_p2, rptr(3) => rptr(3), rptr(2) => rptr(2), 
                           rptr(1) => rptr(1), rptr(0) => rptr(0), rptr_nxt(3) 
                           => rptr_nxt_3_port, rptr_nxt(2) => rptr_nxt_2_port, 
                           rptr_nxt(1) => rptr_nxt_1_port, rptr_nxt(0) => 
                           rptr_nxt_0_port);
   U15 : NOR2X1 port map( A => empty_flag_port, B => n1, Y => renable_p2);
   U16 : INVX1 port map( A => renable, Y => n1);
   U17 : NOR2X1 port map( A => n2, B => n15, Y => N3);
   U18 : NAND2X1 port map( A => n16, B => n17, Y => n15);
   U19 : XOR2X1 port map( A => n18, B => gray_rptr_2_port, Y => n17);
   U20 : XOR2X1 port map( A => rptr_nxt_3_port, B => rptr_nxt_2_port, Y => 
                           gray_rptr_2_port);
   U21 : XNOR2X1 port map( A => rwptr_r2_3_port, B => rwptr_r2_2_port, Y => n18
                           );
   U22 : XNOR2X1 port map( A => rwptr_r2_1_port, B => rptr_nxt_1_port, Y => n16
                           );
   U23 : NAND2X1 port map( A => n19, B => n20, Y => n2);
   U24 : XNOR2X1 port map( A => rwptr_r2_0_port, B => rptr_nxt_0_port, Y => n20
                           );
   U25 : XNOR2X1 port map( A => rptr_nxt_3_port, B => rwptr_r2_3_port, Y => n19
                           );

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity write_fifo_ctrl_1 is

   port( wclk, rst_n, wenable : in std_logic;  rptr : in std_logic_vector (3 
         downto 0);  wenable_fifo : out std_logic;  wptr : out std_logic_vector
         (3 downto 0);  waddr : out std_logic_vector (2 downto 0);  full_flag :
         out std_logic);

end write_fifo_ctrl_1;

architecture SYN_rtl of write_fifo_ctrl_1 is

   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component write_ptr_1
      port( wclk, rst_n, wenable : in std_logic;  wptr, wptr_nxt : out 
            std_logic_vector (3 downto 0));
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal full_flag_port, wptr_nxt_3_port, wptr_nxt_2_port, wptr_nxt_1_port, 
      wptr_nxt_0_port, wrptr_r2_3_port, wrptr_r2_2_port, wrptr_r2_1_port, 
      wrptr_r2_0_port, wrptr_r1_3_port, wrptr_r1_2_port, wrptr_r1_1_port, 
      wrptr_r1_0_port, gray_wptr_2_port, N5, n1, wenable_fifo_port, n15, n16, 
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31
      , n32, n33, n34 : std_logic;

begin
   wenable_fifo <= wenable_fifo_port;
   full_flag <= full_flag_port;
   
   wrptr_r1_reg_3_inst : DFFSR port map( D => rptr(3), CLK => wclk, R => rst_n,
                           S => n23, Q => wrptr_r1_3_port);
   wrptr_r1_reg_2_inst : DFFSR port map( D => rptr(2), CLK => wclk, R => rst_n,
                           S => n24, Q => wrptr_r1_2_port);
   wrptr_r1_reg_1_inst : DFFSR port map( D => rptr(1), CLK => wclk, R => rst_n,
                           S => n25, Q => wrptr_r1_1_port);
   wrptr_r1_reg_0_inst : DFFSR port map( D => rptr(0), CLK => wclk, R => rst_n,
                           S => n26, Q => wrptr_r1_0_port);
   wrptr_r2_reg_3_inst : DFFSR port map( D => wrptr_r1_3_port, CLK => wclk, R 
                           => rst_n, S => n27, Q => wrptr_r2_3_port);
   wrptr_r2_reg_2_inst : DFFSR port map( D => wrptr_r1_2_port, CLK => wclk, R 
                           => rst_n, S => n28, Q => wrptr_r2_2_port);
   wrptr_r2_reg_1_inst : DFFSR port map( D => wrptr_r1_1_port, CLK => wclk, R 
                           => rst_n, S => n29, Q => wrptr_r2_1_port);
   wrptr_r2_reg_0_inst : DFFSR port map( D => wrptr_r1_0_port, CLK => wclk, R 
                           => rst_n, S => n30, Q => wrptr_r2_0_port);
   full_flag_r_reg : DFFSR port map( D => N5, CLK => wclk, R => rst_n, S => n31
                           , Q => full_flag_port);
   waddr_reg_2_inst : DFFSR port map( D => gray_wptr_2_port, CLK => wclk, R => 
                           rst_n, S => n32, Q => waddr(2));
   waddr_reg_1_inst : DFFSR port map( D => wptr_nxt_1_port, CLK => wclk, R => 
                           rst_n, S => n33, Q => waddr(1));
   waddr_reg_0_inst : DFFSR port map( D => wptr_nxt_0_port, CLK => wclk, R => 
                           rst_n, S => n34, Q => waddr(0));
   n34 <= '1';
   n33 <= '1';
   n32 <= '1';
   n31 <= '1';
   n30 <= '1';
   n29 <= '1';
   n28 <= '1';
   n27 <= '1';
   n26 <= '1';
   n25 <= '1';
   n24 <= '1';
   n23 <= '1';
   WPU1 : write_ptr_1 port map( wclk => wclk, rst_n => rst_n, wenable => 
                           wenable_fifo_port, wptr(3) => wptr(3), wptr(2) => 
                           wptr(2), wptr(1) => wptr(1), wptr(0) => wptr(0), 
                           wptr_nxt(3) => wptr_nxt_3_port, wptr_nxt(2) => 
                           wptr_nxt_2_port, wptr_nxt(1) => wptr_nxt_1_port, 
                           wptr_nxt(0) => wptr_nxt_0_port);
   U15 : OR2X2 port map( A => full_flag_port, B => n15, Y => n1);
   U16 : INVX1 port map( A => n1, Y => wenable_fifo_port);
   U17 : INVX1 port map( A => wenable, Y => n15);
   U18 : NOR2X1 port map( A => n16, B => n17, Y => N5);
   U19 : NAND2X1 port map( A => n18, B => n19, Y => n17);
   U20 : XOR2X1 port map( A => n20, B => gray_wptr_2_port, Y => n19);
   U21 : XOR2X1 port map( A => wptr_nxt_3_port, B => wptr_nxt_2_port, Y => 
                           gray_wptr_2_port);
   U22 : XNOR2X1 port map( A => wrptr_r2_3_port, B => wrptr_r2_2_port, Y => n20
                           );
   U23 : XNOR2X1 port map( A => wrptr_r2_1_port, B => wptr_nxt_1_port, Y => n18
                           );
   U24 : NAND2X1 port map( A => n21, B => n22, Y => n16);
   U25 : XOR2X1 port map( A => wrptr_r2_3_port, B => wptr_nxt_3_port, Y => n22)
                           ;
   U26 : XNOR2X1 port map( A => wrptr_r2_0_port, B => wptr_nxt_0_port, Y => n21
                           );

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity write_fifo_ctrl_0 is

   port( wclk, rst_n, wenable : in std_logic;  rptr : in std_logic_vector (3 
         downto 0);  wenable_fifo : out std_logic;  wptr : out std_logic_vector
         (3 downto 0);  waddr : out std_logic_vector (2 downto 0);  full_flag :
         out std_logic);

end write_fifo_ctrl_0;

architecture SYN_rtl of write_fifo_ctrl_0 is

   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component write_ptr_0
      port( wclk, rst_n, wenable : in std_logic;  wptr, wptr_nxt : out 
            std_logic_vector (3 downto 0));
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal full_flag_port, wptr_nxt_3_port, wptr_nxt_2_port, wptr_nxt_1_port, 
      wptr_nxt_0_port, wrptr_r2_3_port, wrptr_r2_2_port, wrptr_r2_1_port, 
      wrptr_r2_0_port, wrptr_r1_3_port, wrptr_r1_2_port, wrptr_r1_1_port, 
      wrptr_r1_0_port, gray_wptr_2_port, N5, n1, wenable_fifo_port, n15, n16, 
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31
      , n32, n33, n34 : std_logic;

begin
   wenable_fifo <= wenable_fifo_port;
   full_flag <= full_flag_port;
   
   wrptr_r1_reg_3_inst : DFFSR port map( D => rptr(3), CLK => wclk, R => rst_n,
                           S => n23, Q => wrptr_r1_3_port);
   wrptr_r1_reg_2_inst : DFFSR port map( D => rptr(2), CLK => wclk, R => rst_n,
                           S => n24, Q => wrptr_r1_2_port);
   wrptr_r1_reg_1_inst : DFFSR port map( D => rptr(1), CLK => wclk, R => rst_n,
                           S => n25, Q => wrptr_r1_1_port);
   wrptr_r1_reg_0_inst : DFFSR port map( D => rptr(0), CLK => wclk, R => rst_n,
                           S => n26, Q => wrptr_r1_0_port);
   wrptr_r2_reg_3_inst : DFFSR port map( D => wrptr_r1_3_port, CLK => wclk, R 
                           => rst_n, S => n27, Q => wrptr_r2_3_port);
   wrptr_r2_reg_2_inst : DFFSR port map( D => wrptr_r1_2_port, CLK => wclk, R 
                           => rst_n, S => n28, Q => wrptr_r2_2_port);
   wrptr_r2_reg_1_inst : DFFSR port map( D => wrptr_r1_1_port, CLK => wclk, R 
                           => rst_n, S => n29, Q => wrptr_r2_1_port);
   wrptr_r2_reg_0_inst : DFFSR port map( D => wrptr_r1_0_port, CLK => wclk, R 
                           => rst_n, S => n30, Q => wrptr_r2_0_port);
   full_flag_r_reg : DFFSR port map( D => N5, CLK => wclk, R => rst_n, S => n31
                           , Q => full_flag_port);
   waddr_reg_2_inst : DFFSR port map( D => gray_wptr_2_port, CLK => wclk, R => 
                           rst_n, S => n32, Q => waddr(2));
   waddr_reg_1_inst : DFFSR port map( D => wptr_nxt_1_port, CLK => wclk, R => 
                           rst_n, S => n33, Q => waddr(1));
   waddr_reg_0_inst : DFFSR port map( D => wptr_nxt_0_port, CLK => wclk, R => 
                           rst_n, S => n34, Q => waddr(0));
   n34 <= '1';
   n33 <= '1';
   n32 <= '1';
   n31 <= '1';
   n30 <= '1';
   n29 <= '1';
   n28 <= '1';
   n27 <= '1';
   n26 <= '1';
   n25 <= '1';
   n24 <= '1';
   n23 <= '1';
   WPU1 : write_ptr_0 port map( wclk => wclk, rst_n => rst_n, wenable => 
                           wenable_fifo_port, wptr(3) => wptr(3), wptr(2) => 
                           wptr(2), wptr(1) => wptr(1), wptr(0) => wptr(0), 
                           wptr_nxt(3) => wptr_nxt_3_port, wptr_nxt(2) => 
                           wptr_nxt_2_port, wptr_nxt(1) => wptr_nxt_1_port, 
                           wptr_nxt(0) => wptr_nxt_0_port);
   U15 : OR2X2 port map( A => full_flag_port, B => n15, Y => n1);
   U16 : INVX1 port map( A => n1, Y => wenable_fifo_port);
   U17 : INVX1 port map( A => wenable, Y => n15);
   U18 : NOR2X1 port map( A => n16, B => n17, Y => N5);
   U19 : NAND2X1 port map( A => n18, B => n19, Y => n17);
   U20 : XOR2X1 port map( A => n20, B => gray_wptr_2_port, Y => n19);
   U21 : XOR2X1 port map( A => wptr_nxt_3_port, B => wptr_nxt_2_port, Y => 
                           gray_wptr_2_port);
   U22 : XNOR2X1 port map( A => wrptr_r2_3_port, B => wrptr_r2_2_port, Y => n20
                           );
   U23 : XNOR2X1 port map( A => wrptr_r2_1_port, B => wptr_nxt_1_port, Y => n18
                           );
   U24 : NAND2X1 port map( A => n21, B => n22, Y => n16);
   U25 : XOR2X1 port map( A => wrptr_r2_3_port, B => wptr_nxt_3_port, Y => n22)
                           ;
   U26 : XNOR2X1 port map( A => wrptr_r2_0_port, B => wptr_nxt_0_port, Y => n21
                           );

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity fiforam_1 is

   port( wclk, wenable : in std_logic;  waddr, raddr : in std_logic_vector (2 
         downto 0);  wdata : in std_logic_vector (7 downto 0);  rdata : out 
         std_logic_vector (7 downto 0));

end fiforam_1;

architecture SYN_rtl of fiforam_1 is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFPOSX1
      port( D, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   signal fiforeg_0_7_port, fiforeg_0_6_port, fiforeg_0_5_port, 
      fiforeg_0_4_port, fiforeg_0_3_port, fiforeg_0_2_port, fiforeg_0_1_port, 
      fiforeg_0_0_port, fiforeg_1_7_port, fiforeg_1_6_port, fiforeg_1_5_port, 
      fiforeg_1_4_port, fiforeg_1_3_port, fiforeg_1_2_port, fiforeg_1_1_port, 
      fiforeg_1_0_port, fiforeg_2_7_port, fiforeg_2_6_port, fiforeg_2_5_port, 
      fiforeg_2_4_port, fiforeg_2_3_port, fiforeg_2_2_port, fiforeg_2_1_port, 
      fiforeg_2_0_port, fiforeg_3_7_port, fiforeg_3_6_port, fiforeg_3_5_port, 
      fiforeg_3_4_port, fiforeg_3_3_port, fiforeg_3_2_port, fiforeg_3_1_port, 
      fiforeg_3_0_port, fiforeg_4_7_port, fiforeg_4_6_port, fiforeg_4_5_port, 
      fiforeg_4_4_port, fiforeg_4_3_port, fiforeg_4_2_port, fiforeg_4_1_port, 
      fiforeg_4_0_port, fiforeg_5_7_port, fiforeg_5_6_port, fiforeg_5_5_port, 
      fiforeg_5_4_port, fiforeg_5_3_port, fiforeg_5_2_port, fiforeg_5_1_port, 
      fiforeg_5_0_port, fiforeg_6_7_port, fiforeg_6_6_port, fiforeg_6_5_port, 
      fiforeg_6_4_port, fiforeg_6_3_port, fiforeg_6_2_port, fiforeg_6_1_port, 
      fiforeg_6_0_port, fiforeg_7_7_port, fiforeg_7_6_port, fiforeg_7_5_port, 
      fiforeg_7_4_port, fiforeg_7_3_port, fiforeg_7_2_port, fiforeg_7_1_port, 
      fiforeg_7_0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
      n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28
      , n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, 
      n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57
      , n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, 
      n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86
      , n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, 
      n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, 
      n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, 
      n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, 
      n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, 
      n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, 
      n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, 
      n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, 
      n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, 
      n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, 
      n209, n210, n211, n267, n268, n269, n270, n271, n272, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321 : std_logic;

begin
   
   fiforeg_reg_7_7_inst : DFFPOSX1 port map( D => n321, CLK => n8, Q => 
                           fiforeg_7_7_port);
   fiforeg_reg_6_7_inst : DFFPOSX1 port map( D => n320, CLK => n8, Q => 
                           fiforeg_6_7_port);
   fiforeg_reg_5_7_inst : DFFPOSX1 port map( D => n319, CLK => n8, Q => 
                           fiforeg_5_7_port);
   fiforeg_reg_4_7_inst : DFFPOSX1 port map( D => n318, CLK => n8, Q => 
                           fiforeg_4_7_port);
   fiforeg_reg_3_7_inst : DFFPOSX1 port map( D => n317, CLK => n8, Q => 
                           fiforeg_3_7_port);
   fiforeg_reg_2_7_inst : DFFPOSX1 port map( D => n316, CLK => n8, Q => 
                           fiforeg_2_7_port);
   fiforeg_reg_1_7_inst : DFFPOSX1 port map( D => n315, CLK => n8, Q => 
                           fiforeg_1_7_port);
   fiforeg_reg_0_7_inst : DFFPOSX1 port map( D => n314, CLK => n8, Q => 
                           fiforeg_0_7_port);
   fiforeg_reg_7_6_inst : DFFPOSX1 port map( D => n313, CLK => n9, Q => 
                           fiforeg_7_6_port);
   fiforeg_reg_6_6_inst : DFFPOSX1 port map( D => n312, CLK => n9, Q => 
                           fiforeg_6_6_port);
   fiforeg_reg_5_6_inst : DFFPOSX1 port map( D => n311, CLK => n9, Q => 
                           fiforeg_5_6_port);
   fiforeg_reg_4_6_inst : DFFPOSX1 port map( D => n310, CLK => n8, Q => 
                           fiforeg_4_6_port);
   fiforeg_reg_3_6_inst : DFFPOSX1 port map( D => n309, CLK => n8, Q => 
                           fiforeg_3_6_port);
   fiforeg_reg_2_6_inst : DFFPOSX1 port map( D => n308, CLK => n8, Q => 
                           fiforeg_2_6_port);
   fiforeg_reg_1_6_inst : DFFPOSX1 port map( D => n307, CLK => n8, Q => 
                           fiforeg_1_6_port);
   fiforeg_reg_0_6_inst : DFFPOSX1 port map( D => n306, CLK => n8, Q => 
                           fiforeg_0_6_port);
   fiforeg_reg_7_5_inst : DFFPOSX1 port map( D => n305, CLK => n9, Q => 
                           fiforeg_7_5_port);
   fiforeg_reg_6_5_inst : DFFPOSX1 port map( D => n304, CLK => n9, Q => 
                           fiforeg_6_5_port);
   fiforeg_reg_5_5_inst : DFFPOSX1 port map( D => n303, CLK => n9, Q => 
                           fiforeg_5_5_port);
   fiforeg_reg_4_5_inst : DFFPOSX1 port map( D => n302, CLK => n9, Q => 
                           fiforeg_4_5_port);
   fiforeg_reg_3_5_inst : DFFPOSX1 port map( D => n301, CLK => n9, Q => 
                           fiforeg_3_5_port);
   fiforeg_reg_2_5_inst : DFFPOSX1 port map( D => n300, CLK => n9, Q => 
                           fiforeg_2_5_port);
   fiforeg_reg_1_5_inst : DFFPOSX1 port map( D => n299, CLK => n9, Q => 
                           fiforeg_1_5_port);
   fiforeg_reg_0_5_inst : DFFPOSX1 port map( D => n298, CLK => n9, Q => 
                           fiforeg_0_5_port);
   fiforeg_reg_7_4_inst : DFFPOSX1 port map( D => n297, CLK => n10, Q => 
                           fiforeg_7_4_port);
   fiforeg_reg_6_4_inst : DFFPOSX1 port map( D => n296, CLK => n10, Q => 
                           fiforeg_6_4_port);
   fiforeg_reg_5_4_inst : DFFPOSX1 port map( D => n295, CLK => n10, Q => 
                           fiforeg_5_4_port);
   fiforeg_reg_4_4_inst : DFFPOSX1 port map( D => n294, CLK => n10, Q => 
                           fiforeg_4_4_port);
   fiforeg_reg_3_4_inst : DFFPOSX1 port map( D => n293, CLK => n10, Q => 
                           fiforeg_3_4_port);
   fiforeg_reg_2_4_inst : DFFPOSX1 port map( D => n292, CLK => n10, Q => 
                           fiforeg_2_4_port);
   fiforeg_reg_1_4_inst : DFFPOSX1 port map( D => n291, CLK => n9, Q => 
                           fiforeg_1_4_port);
   fiforeg_reg_0_4_inst : DFFPOSX1 port map( D => n290, CLK => n9, Q => 
                           fiforeg_0_4_port);
   fiforeg_reg_7_3_inst : DFFPOSX1 port map( D => n289, CLK => n11, Q => 
                           fiforeg_7_3_port);
   fiforeg_reg_6_3_inst : DFFPOSX1 port map( D => n288, CLK => n10, Q => 
                           fiforeg_6_3_port);
   fiforeg_reg_5_3_inst : DFFPOSX1 port map( D => n287, CLK => n10, Q => 
                           fiforeg_5_3_port);
   fiforeg_reg_4_3_inst : DFFPOSX1 port map( D => n286, CLK => n10, Q => 
                           fiforeg_4_3_port);
   fiforeg_reg_3_3_inst : DFFPOSX1 port map( D => n285, CLK => n10, Q => 
                           fiforeg_3_3_port);
   fiforeg_reg_2_3_inst : DFFPOSX1 port map( D => n284, CLK => n10, Q => 
                           fiforeg_2_3_port);
   fiforeg_reg_1_3_inst : DFFPOSX1 port map( D => n283, CLK => n10, Q => 
                           fiforeg_1_3_port);
   fiforeg_reg_0_3_inst : DFFPOSX1 port map( D => n282, CLK => n10, Q => 
                           fiforeg_0_3_port);
   fiforeg_reg_7_2_inst : DFFPOSX1 port map( D => n281, CLK => n11, Q => 
                           fiforeg_7_2_port);
   fiforeg_reg_6_2_inst : DFFPOSX1 port map( D => n280, CLK => n11, Q => 
                           fiforeg_6_2_port);
   fiforeg_reg_5_2_inst : DFFPOSX1 port map( D => n279, CLK => n11, Q => 
                           fiforeg_5_2_port);
   fiforeg_reg_4_2_inst : DFFPOSX1 port map( D => n278, CLK => n11, Q => 
                           fiforeg_4_2_port);
   fiforeg_reg_3_2_inst : DFFPOSX1 port map( D => n277, CLK => n11, Q => 
                           fiforeg_3_2_port);
   fiforeg_reg_2_2_inst : DFFPOSX1 port map( D => n276, CLK => n11, Q => 
                           fiforeg_2_2_port);
   fiforeg_reg_1_2_inst : DFFPOSX1 port map( D => n275, CLK => n11, Q => 
                           fiforeg_1_2_port);
   fiforeg_reg_0_2_inst : DFFPOSX1 port map( D => n274, CLK => n11, Q => 
                           fiforeg_0_2_port);
   fiforeg_reg_7_1_inst : DFFPOSX1 port map( D => n273, CLK => n12, Q => 
                           fiforeg_7_1_port);
   fiforeg_reg_6_1_inst : DFFPOSX1 port map( D => n272, CLK => n12, Q => 
                           fiforeg_6_1_port);
   fiforeg_reg_5_1_inst : DFFPOSX1 port map( D => n271, CLK => n12, Q => 
                           fiforeg_5_1_port);
   fiforeg_reg_4_1_inst : DFFPOSX1 port map( D => n270, CLK => n12, Q => 
                           fiforeg_4_1_port);
   fiforeg_reg_3_1_inst : DFFPOSX1 port map( D => n269, CLK => n11, Q => 
                           fiforeg_3_1_port);
   fiforeg_reg_2_1_inst : DFFPOSX1 port map( D => n268, CLK => n11, Q => 
                           fiforeg_2_1_port);
   fiforeg_reg_1_1_inst : DFFPOSX1 port map( D => n267, CLK => n11, Q => 
                           fiforeg_1_1_port);
   fiforeg_reg_0_1_inst : DFFPOSX1 port map( D => n211, CLK => n11, Q => 
                           fiforeg_0_1_port);
   fiforeg_reg_7_0_inst : DFFPOSX1 port map( D => n203, CLK => n12, Q => 
                           fiforeg_7_0_port);
   fiforeg_reg_6_0_inst : DFFPOSX1 port map( D => n210, CLK => n12, Q => 
                           fiforeg_6_0_port);
   fiforeg_reg_5_0_inst : DFFPOSX1 port map( D => n209, CLK => n12, Q => 
                           fiforeg_5_0_port);
   fiforeg_reg_4_0_inst : DFFPOSX1 port map( D => n208, CLK => n12, Q => 
                           fiforeg_4_0_port);
   fiforeg_reg_3_0_inst : DFFPOSX1 port map( D => n207, CLK => n12, Q => 
                           fiforeg_3_0_port);
   fiforeg_reg_2_0_inst : DFFPOSX1 port map( D => n206, CLK => n12, Q => 
                           fiforeg_2_0_port);
   fiforeg_reg_1_0_inst : DFFPOSX1 port map( D => n205, CLK => n12, Q => 
                           fiforeg_1_0_port);
   fiforeg_reg_0_0_inst : DFFPOSX1 port map( D => n204, CLK => n12, Q => 
                           fiforeg_0_0_port);
   U2 : INVX1 port map( A => n104, Y => n1);
   U3 : INVX2 port map( A => n1, Y => n2);
   U4 : INVX1 port map( A => n106, Y => n3);
   U5 : INVX2 port map( A => n3, Y => n4);
   U6 : INVX1 port map( A => n105, Y => n5);
   U7 : INVX2 port map( A => n5, Y => n6);
   U8 : BUFX2 port map( A => n103, Y => n7);
   U9 : BUFX2 port map( A => wclk, Y => n11);
   U10 : BUFX2 port map( A => wclk, Y => n10);
   U11 : BUFX2 port map( A => wclk, Y => n9);
   U12 : BUFX2 port map( A => wclk, Y => n8);
   U13 : BUFX2 port map( A => wclk, Y => n12);
   U14 : NAND3X1 port map( A => n13, B => n14, C => n15, Y => rdata(7));
   U15 : NOR2X1 port map( A => n16, B => n17, Y => n15);
   U16 : OAI22X1 port map( A => n18, B => n19, C => n20, D => n21, Y => n17);
   U17 : OAI22X1 port map( A => n22, B => n23, C => n24, D => n25, Y => n16);
   U18 : AOI22X1 port map( A => fiforeg_5_7_port, B => n26, C => 
                           fiforeg_4_7_port, D => n27, Y => n14);
   U19 : AOI22X1 port map( A => fiforeg_7_7_port, B => n28, C => 
                           fiforeg_6_7_port, D => n29, Y => n13);
   U20 : NAND3X1 port map( A => n30, B => n31, C => n32, Y => rdata(6));
   U21 : NOR2X1 port map( A => n33, B => n34, Y => n32);
   U22 : OAI22X1 port map( A => n18, B => n35, C => n20, D => n36, Y => n34);
   U23 : OAI22X1 port map( A => n22, B => n37, C => n24, D => n38, Y => n33);
   U24 : AOI22X1 port map( A => fiforeg_5_6_port, B => n26, C => 
                           fiforeg_4_6_port, D => n27, Y => n31);
   U25 : AOI22X1 port map( A => fiforeg_7_6_port, B => n28, C => 
                           fiforeg_6_6_port, D => n29, Y => n30);
   U26 : NAND3X1 port map( A => n39, B => n40, C => n41, Y => rdata(5));
   U27 : NOR2X1 port map( A => n42, B => n43, Y => n41);
   U28 : OAI22X1 port map( A => n18, B => n44, C => n20, D => n45, Y => n43);
   U29 : OAI22X1 port map( A => n22, B => n46, C => n24, D => n47, Y => n42);
   U30 : AOI22X1 port map( A => fiforeg_5_5_port, B => n26, C => 
                           fiforeg_4_5_port, D => n27, Y => n40);
   U31 : AOI22X1 port map( A => fiforeg_7_5_port, B => n28, C => 
                           fiforeg_6_5_port, D => n29, Y => n39);
   U32 : NAND3X1 port map( A => n48, B => n49, C => n50, Y => rdata(4));
   U33 : NOR2X1 port map( A => n51, B => n52, Y => n50);
   U34 : OAI22X1 port map( A => n18, B => n53, C => n20, D => n54, Y => n52);
   U35 : OAI22X1 port map( A => n22, B => n55, C => n24, D => n56, Y => n51);
   U36 : AOI22X1 port map( A => fiforeg_5_4_port, B => n26, C => 
                           fiforeg_4_4_port, D => n27, Y => n49);
   U37 : AOI22X1 port map( A => fiforeg_7_4_port, B => n28, C => 
                           fiforeg_6_4_port, D => n29, Y => n48);
   U38 : NAND3X1 port map( A => n57, B => n58, C => n59, Y => rdata(3));
   U39 : NOR2X1 port map( A => n60, B => n61, Y => n59);
   U40 : OAI22X1 port map( A => n18, B => n62, C => n20, D => n63, Y => n61);
   U41 : OAI22X1 port map( A => n22, B => n64, C => n24, D => n65, Y => n60);
   U42 : AOI22X1 port map( A => fiforeg_5_3_port, B => n26, C => 
                           fiforeg_4_3_port, D => n27, Y => n58);
   U43 : AOI22X1 port map( A => fiforeg_7_3_port, B => n28, C => 
                           fiforeg_6_3_port, D => n29, Y => n57);
   U44 : NAND3X1 port map( A => n66, B => n67, C => n68, Y => rdata(2));
   U45 : NOR2X1 port map( A => n69, B => n70, Y => n68);
   U46 : OAI22X1 port map( A => n18, B => n71, C => n20, D => n72, Y => n70);
   U47 : OAI22X1 port map( A => n22, B => n73, C => n24, D => n74, Y => n69);
   U48 : AOI22X1 port map( A => fiforeg_5_2_port, B => n26, C => 
                           fiforeg_4_2_port, D => n27, Y => n67);
   U49 : AOI22X1 port map( A => fiforeg_7_2_port, B => n28, C => 
                           fiforeg_6_2_port, D => n29, Y => n66);
   U50 : NAND3X1 port map( A => n75, B => n76, C => n77, Y => rdata(1));
   U51 : NOR2X1 port map( A => n78, B => n79, Y => n77);
   U52 : OAI22X1 port map( A => n18, B => n80, C => n20, D => n81, Y => n79);
   U53 : OAI22X1 port map( A => n22, B => n82, C => n24, D => n83, Y => n78);
   U54 : AOI22X1 port map( A => fiforeg_5_1_port, B => n26, C => 
                           fiforeg_4_1_port, D => n27, Y => n76);
   U55 : AOI22X1 port map( A => fiforeg_7_1_port, B => n28, C => 
                           fiforeg_6_1_port, D => n29, Y => n75);
   U56 : NAND3X1 port map( A => n84, B => n85, C => n86, Y => rdata(0));
   U57 : NOR2X1 port map( A => n87, B => n88, Y => n86);
   U58 : OAI22X1 port map( A => n18, B => n89, C => n20, D => n90, Y => n88);
   U59 : NAND3X1 port map( A => n91, B => n92, C => n93, Y => n20);
   U60 : NAND3X1 port map( A => n91, B => n92, C => raddr(0), Y => n18);
   U61 : OAI22X1 port map( A => n22, B => n94, C => n24, D => n95, Y => n87);
   U62 : NAND3X1 port map( A => n93, B => n92, C => raddr(1), Y => n24);
   U63 : NAND3X1 port map( A => raddr(0), B => n92, C => raddr(1), Y => n22);
   U64 : INVX1 port map( A => raddr(2), Y => n92);
   U65 : AOI22X1 port map( A => fiforeg_5_0_port, B => n26, C => 
                           fiforeg_4_0_port, D => n27, Y => n85);
   U66 : INVX1 port map( A => n96, Y => n27);
   U67 : NAND3X1 port map( A => n93, B => n91, C => raddr(2), Y => n96);
   U68 : INVX1 port map( A => n97, Y => n26);
   U69 : NAND3X1 port map( A => raddr(0), B => n91, C => raddr(2), Y => n97);
   U70 : INVX1 port map( A => raddr(1), Y => n91);
   U71 : AOI22X1 port map( A => fiforeg_7_0_port, B => n28, C => 
                           fiforeg_6_0_port, D => n29, Y => n84);
   U72 : INVX1 port map( A => n98, Y => n29);
   U73 : NAND3X1 port map( A => raddr(2), B => n93, C => raddr(1), Y => n98);
   U74 : INVX1 port map( A => raddr(0), Y => n93);
   U75 : INVX1 port map( A => n99, Y => n28);
   U76 : NAND3X1 port map( A => raddr(2), B => raddr(0), C => raddr(1), Y => 
                           n99);
   U77 : MUX2X1 port map( B => n100, A => n101, S => n102, Y => n203);
   U78 : INVX1 port map( A => fiforeg_7_0_port, Y => n101);
   U79 : MUX2X1 port map( B => n100, A => n90, S => n7, Y => n204);
   U80 : MUX2X1 port map( B => n100, A => n89, S => n2, Y => n205);
   U81 : MUX2X1 port map( B => n100, A => n95, S => n6, Y => n206);
   U82 : MUX2X1 port map( B => n100, A => n94, S => n4, Y => n207);
   U83 : MUX2X1 port map( B => n100, A => n107, S => n108, Y => n208);
   U84 : INVX1 port map( A => fiforeg_4_0_port, Y => n107);
   U85 : MUX2X1 port map( B => n100, A => n109, S => n110, Y => n209);
   U86 : INVX1 port map( A => fiforeg_5_0_port, Y => n109);
   U87 : MUX2X1 port map( B => n100, A => n111, S => n112, Y => n210);
   U88 : INVX1 port map( A => fiforeg_6_0_port, Y => n111);
   U89 : MUX2X1 port map( B => n113, A => wdata(0), S => wenable, Y => n100);
   U90 : NAND3X1 port map( A => n114, B => n115, C => n116, Y => n113);
   U91 : NOR2X1 port map( A => n117, B => n118, Y => n116);
   U92 : OAI22X1 port map( A => n89, B => n2, C => n90, D => n7, Y => n118);
   U93 : INVX1 port map( A => fiforeg_0_0_port, Y => n90);
   U94 : INVX1 port map( A => fiforeg_1_0_port, Y => n89);
   U95 : OAI22X1 port map( A => n94, B => n4, C => n95, D => n6, Y => n117);
   U96 : INVX1 port map( A => fiforeg_2_0_port, Y => n95);
   U97 : INVX1 port map( A => fiforeg_3_0_port, Y => n94);
   U98 : AOI22X1 port map( A => n119, B => fiforeg_6_0_port, C => n120, D => 
                           fiforeg_4_0_port, Y => n115);
   U99 : AOI22X1 port map( A => n121, B => fiforeg_5_0_port, C => n122, D => 
                           fiforeg_7_0_port, Y => n114);
   U100 : MUX2X1 port map( B => n123, A => n81, S => n7, Y => n211);
   U101 : MUX2X1 port map( B => n123, A => n80, S => n2, Y => n267);
   U102 : MUX2X1 port map( B => n123, A => n83, S => n6, Y => n268);
   U103 : MUX2X1 port map( B => n123, A => n82, S => n4, Y => n269);
   U104 : MUX2X1 port map( B => n123, A => n124, S => n108, Y => n270);
   U105 : INVX1 port map( A => fiforeg_4_1_port, Y => n124);
   U106 : MUX2X1 port map( B => n123, A => n125, S => n110, Y => n271);
   U107 : INVX1 port map( A => fiforeg_5_1_port, Y => n125);
   U108 : MUX2X1 port map( B => n123, A => n126, S => n112, Y => n272);
   U109 : INVX1 port map( A => fiforeg_6_1_port, Y => n126);
   U110 : MUX2X1 port map( B => n123, A => n127, S => n102, Y => n273);
   U111 : INVX1 port map( A => fiforeg_7_1_port, Y => n127);
   U112 : MUX2X1 port map( B => n128, A => wdata(1), S => wenable, Y => n123);
   U113 : NAND3X1 port map( A => n129, B => n130, C => n131, Y => n128);
   U114 : NOR2X1 port map( A => n132, B => n133, Y => n131);
   U115 : OAI22X1 port map( A => n80, B => n2, C => n81, D => n7, Y => n133);
   U116 : INVX1 port map( A => fiforeg_0_1_port, Y => n81);
   U117 : INVX1 port map( A => fiforeg_1_1_port, Y => n80);
   U118 : OAI22X1 port map( A => n82, B => n4, C => n83, D => n6, Y => n132);
   U119 : INVX1 port map( A => fiforeg_2_1_port, Y => n83);
   U120 : INVX1 port map( A => fiforeg_3_1_port, Y => n82);
   U121 : AOI22X1 port map( A => n119, B => fiforeg_6_1_port, C => n120, D => 
                           fiforeg_4_1_port, Y => n130);
   U122 : AOI22X1 port map( A => n121, B => fiforeg_5_1_port, C => n122, D => 
                           fiforeg_7_1_port, Y => n129);
   U123 : MUX2X1 port map( B => n134, A => n72, S => n7, Y => n274);
   U124 : MUX2X1 port map( B => n134, A => n71, S => n2, Y => n275);
   U125 : MUX2X1 port map( B => n134, A => n74, S => n6, Y => n276);
   U126 : MUX2X1 port map( B => n134, A => n73, S => n4, Y => n277);
   U127 : MUX2X1 port map( B => n134, A => n135, S => n108, Y => n278);
   U128 : INVX1 port map( A => fiforeg_4_2_port, Y => n135);
   U129 : MUX2X1 port map( B => n134, A => n136, S => n110, Y => n279);
   U130 : INVX1 port map( A => fiforeg_5_2_port, Y => n136);
   U131 : MUX2X1 port map( B => n134, A => n137, S => n112, Y => n280);
   U132 : INVX1 port map( A => fiforeg_6_2_port, Y => n137);
   U133 : MUX2X1 port map( B => n134, A => n138, S => n102, Y => n281);
   U134 : INVX1 port map( A => fiforeg_7_2_port, Y => n138);
   U135 : MUX2X1 port map( B => n139, A => wdata(2), S => wenable, Y => n134);
   U136 : NAND3X1 port map( A => n140, B => n141, C => n142, Y => n139);
   U137 : NOR2X1 port map( A => n143, B => n144, Y => n142);
   U138 : OAI22X1 port map( A => n71, B => n2, C => n72, D => n7, Y => n144);
   U139 : INVX1 port map( A => fiforeg_0_2_port, Y => n72);
   U140 : INVX1 port map( A => fiforeg_1_2_port, Y => n71);
   U141 : OAI22X1 port map( A => n73, B => n4, C => n74, D => n6, Y => n143);
   U142 : INVX1 port map( A => fiforeg_2_2_port, Y => n74);
   U143 : INVX1 port map( A => fiforeg_3_2_port, Y => n73);
   U144 : AOI22X1 port map( A => n119, B => fiforeg_6_2_port, C => n120, D => 
                           fiforeg_4_2_port, Y => n141);
   U145 : AOI22X1 port map( A => n121, B => fiforeg_5_2_port, C => n122, D => 
                           fiforeg_7_2_port, Y => n140);
   U146 : MUX2X1 port map( B => n145, A => n63, S => n7, Y => n282);
   U147 : MUX2X1 port map( B => n145, A => n62, S => n2, Y => n283);
   U148 : MUX2X1 port map( B => n145, A => n65, S => n6, Y => n284);
   U149 : MUX2X1 port map( B => n145, A => n64, S => n4, Y => n285);
   U150 : MUX2X1 port map( B => n145, A => n146, S => n108, Y => n286);
   U151 : INVX1 port map( A => fiforeg_4_3_port, Y => n146);
   U152 : MUX2X1 port map( B => n145, A => n147, S => n110, Y => n287);
   U153 : INVX1 port map( A => fiforeg_5_3_port, Y => n147);
   U154 : MUX2X1 port map( B => n145, A => n148, S => n112, Y => n288);
   U155 : INVX1 port map( A => fiforeg_6_3_port, Y => n148);
   U156 : MUX2X1 port map( B => n145, A => n149, S => n102, Y => n289);
   U157 : INVX1 port map( A => fiforeg_7_3_port, Y => n149);
   U158 : MUX2X1 port map( B => n150, A => wdata(3), S => wenable, Y => n145);
   U159 : NAND3X1 port map( A => n151, B => n152, C => n153, Y => n150);
   U160 : NOR2X1 port map( A => n154, B => n155, Y => n153);
   U161 : OAI22X1 port map( A => n62, B => n2, C => n63, D => n7, Y => n155);
   U162 : INVX1 port map( A => fiforeg_0_3_port, Y => n63);
   U163 : INVX1 port map( A => fiforeg_1_3_port, Y => n62);
   U164 : OAI22X1 port map( A => n64, B => n4, C => n65, D => n6, Y => n154);
   U165 : INVX1 port map( A => fiforeg_2_3_port, Y => n65);
   U166 : INVX1 port map( A => fiforeg_3_3_port, Y => n64);
   U167 : AOI22X1 port map( A => n119, B => fiforeg_6_3_port, C => n120, D => 
                           fiforeg_4_3_port, Y => n152);
   U168 : AOI22X1 port map( A => n121, B => fiforeg_5_3_port, C => n122, D => 
                           fiforeg_7_3_port, Y => n151);
   U169 : MUX2X1 port map( B => n156, A => n54, S => n7, Y => n290);
   U170 : MUX2X1 port map( B => n156, A => n53, S => n2, Y => n291);
   U171 : MUX2X1 port map( B => n156, A => n56, S => n6, Y => n292);
   U172 : MUX2X1 port map( B => n156, A => n55, S => n4, Y => n293);
   U173 : MUX2X1 port map( B => n156, A => n157, S => n108, Y => n294);
   U174 : INVX1 port map( A => fiforeg_4_4_port, Y => n157);
   U175 : MUX2X1 port map( B => n156, A => n158, S => n110, Y => n295);
   U176 : INVX1 port map( A => fiforeg_5_4_port, Y => n158);
   U177 : MUX2X1 port map( B => n156, A => n159, S => n112, Y => n296);
   U178 : INVX1 port map( A => fiforeg_6_4_port, Y => n159);
   U179 : MUX2X1 port map( B => n156, A => n160, S => n102, Y => n297);
   U180 : INVX1 port map( A => fiforeg_7_4_port, Y => n160);
   U181 : MUX2X1 port map( B => n161, A => wdata(4), S => wenable, Y => n156);
   U182 : NAND3X1 port map( A => n162, B => n163, C => n164, Y => n161);
   U183 : NOR2X1 port map( A => n165, B => n166, Y => n164);
   U184 : OAI22X1 port map( A => n53, B => n2, C => n54, D => n7, Y => n166);
   U185 : INVX1 port map( A => fiforeg_0_4_port, Y => n54);
   U186 : INVX1 port map( A => fiforeg_1_4_port, Y => n53);
   U187 : OAI22X1 port map( A => n55, B => n4, C => n56, D => n6, Y => n165);
   U188 : INVX1 port map( A => fiforeg_2_4_port, Y => n56);
   U189 : INVX1 port map( A => fiforeg_3_4_port, Y => n55);
   U190 : AOI22X1 port map( A => n119, B => fiforeg_6_4_port, C => n120, D => 
                           fiforeg_4_4_port, Y => n163);
   U191 : AOI22X1 port map( A => n121, B => fiforeg_5_4_port, C => n122, D => 
                           fiforeg_7_4_port, Y => n162);
   U192 : MUX2X1 port map( B => n167, A => n45, S => n7, Y => n298);
   U193 : MUX2X1 port map( B => n167, A => n44, S => n2, Y => n299);
   U194 : MUX2X1 port map( B => n167, A => n47, S => n6, Y => n300);
   U195 : MUX2X1 port map( B => n167, A => n46, S => n4, Y => n301);
   U196 : MUX2X1 port map( B => n167, A => n168, S => n108, Y => n302);
   U197 : INVX1 port map( A => fiforeg_4_5_port, Y => n168);
   U198 : MUX2X1 port map( B => n167, A => n169, S => n110, Y => n303);
   U199 : INVX1 port map( A => fiforeg_5_5_port, Y => n169);
   U200 : MUX2X1 port map( B => n167, A => n170, S => n112, Y => n304);
   U201 : INVX1 port map( A => fiforeg_6_5_port, Y => n170);
   U202 : MUX2X1 port map( B => n167, A => n171, S => n102, Y => n305);
   U203 : INVX1 port map( A => fiforeg_7_5_port, Y => n171);
   U204 : MUX2X1 port map( B => n172, A => wdata(5), S => wenable, Y => n167);
   U205 : NAND3X1 port map( A => n173, B => n174, C => n175, Y => n172);
   U206 : NOR2X1 port map( A => n176, B => n177, Y => n175);
   U207 : OAI22X1 port map( A => n44, B => n2, C => n45, D => n7, Y => n177);
   U208 : INVX1 port map( A => fiforeg_0_5_port, Y => n45);
   U209 : INVX1 port map( A => fiforeg_1_5_port, Y => n44);
   U210 : OAI22X1 port map( A => n46, B => n4, C => n47, D => n6, Y => n176);
   U211 : INVX1 port map( A => fiforeg_2_5_port, Y => n47);
   U212 : INVX1 port map( A => fiforeg_3_5_port, Y => n46);
   U213 : AOI22X1 port map( A => n119, B => fiforeg_6_5_port, C => n120, D => 
                           fiforeg_4_5_port, Y => n174);
   U214 : AOI22X1 port map( A => n121, B => fiforeg_5_5_port, C => n122, D => 
                           fiforeg_7_5_port, Y => n173);
   U215 : MUX2X1 port map( B => n178, A => n36, S => n7, Y => n306);
   U216 : MUX2X1 port map( B => n178, A => n35, S => n2, Y => n307);
   U217 : MUX2X1 port map( B => n178, A => n38, S => n6, Y => n308);
   U218 : MUX2X1 port map( B => n178, A => n37, S => n4, Y => n309);
   U219 : MUX2X1 port map( B => n178, A => n179, S => n108, Y => n310);
   U220 : INVX1 port map( A => fiforeg_4_6_port, Y => n179);
   U221 : MUX2X1 port map( B => n178, A => n180, S => n110, Y => n311);
   U222 : INVX1 port map( A => fiforeg_5_6_port, Y => n180);
   U223 : MUX2X1 port map( B => n178, A => n181, S => n112, Y => n312);
   U224 : INVX1 port map( A => fiforeg_6_6_port, Y => n181);
   U225 : MUX2X1 port map( B => n178, A => n182, S => n102, Y => n313);
   U226 : INVX1 port map( A => fiforeg_7_6_port, Y => n182);
   U227 : MUX2X1 port map( B => n183, A => wdata(6), S => wenable, Y => n178);
   U228 : NAND3X1 port map( A => n184, B => n185, C => n186, Y => n183);
   U229 : NOR2X1 port map( A => n187, B => n188, Y => n186);
   U230 : OAI22X1 port map( A => n35, B => n2, C => n36, D => n7, Y => n188);
   U231 : INVX1 port map( A => fiforeg_0_6_port, Y => n36);
   U232 : INVX1 port map( A => fiforeg_1_6_port, Y => n35);
   U233 : OAI22X1 port map( A => n37, B => n4, C => n38, D => n6, Y => n187);
   U234 : INVX1 port map( A => fiforeg_2_6_port, Y => n38);
   U235 : INVX1 port map( A => fiforeg_3_6_port, Y => n37);
   U236 : AOI22X1 port map( A => n119, B => fiforeg_6_6_port, C => n120, D => 
                           fiforeg_4_6_port, Y => n185);
   U237 : AOI22X1 port map( A => n121, B => fiforeg_5_6_port, C => n122, D => 
                           fiforeg_7_6_port, Y => n184);
   U238 : MUX2X1 port map( B => n189, A => n21, S => n7, Y => n314);
   U239 : MUX2X1 port map( B => n189, A => n19, S => n2, Y => n315);
   U240 : MUX2X1 port map( B => n189, A => n25, S => n6, Y => n316);
   U241 : MUX2X1 port map( B => n189, A => n23, S => n4, Y => n317);
   U242 : MUX2X1 port map( B => n189, A => n190, S => n108, Y => n318);
   U243 : INVX1 port map( A => fiforeg_4_7_port, Y => n190);
   U244 : MUX2X1 port map( B => n189, A => n191, S => n110, Y => n319);
   U245 : INVX1 port map( A => fiforeg_5_7_port, Y => n191);
   U246 : MUX2X1 port map( B => n189, A => n192, S => n112, Y => n320);
   U247 : INVX1 port map( A => fiforeg_6_7_port, Y => n192);
   U248 : MUX2X1 port map( B => n189, A => n193, S => n102, Y => n321);
   U249 : INVX1 port map( A => fiforeg_7_7_port, Y => n193);
   U250 : MUX2X1 port map( B => n194, A => wdata(7), S => wenable, Y => n189);
   U251 : NAND3X1 port map( A => n195, B => n196, C => n197, Y => n194);
   U252 : NOR2X1 port map( A => n198, B => n199, Y => n197);
   U253 : OAI22X1 port map( A => n19, B => n2, C => n21, D => n7, Y => n199);
   U254 : NAND3X1 port map( A => n200, B => n201, C => n202, Y => n103);
   U255 : INVX1 port map( A => fiforeg_0_7_port, Y => n21);
   U256 : NAND3X1 port map( A => n200, B => n201, C => waddr(0), Y => n104);
   U257 : INVX1 port map( A => fiforeg_1_7_port, Y => n19);
   U258 : OAI22X1 port map( A => n23, B => n4, C => n25, D => n6, Y => n198);
   U259 : NAND3X1 port map( A => n202, B => n201, C => waddr(1), Y => n105);
   U260 : INVX1 port map( A => fiforeg_2_7_port, Y => n25);
   U261 : NAND3X1 port map( A => waddr(0), B => n201, C => waddr(1), Y => n106)
                           ;
   U262 : INVX1 port map( A => waddr(2), Y => n201);
   U263 : INVX1 port map( A => fiforeg_3_7_port, Y => n23);
   U264 : AOI22X1 port map( A => n119, B => fiforeg_6_7_port, C => n120, D => 
                           fiforeg_4_7_port, Y => n196);
   U265 : INVX1 port map( A => n108, Y => n120);
   U266 : NAND3X1 port map( A => n202, B => n200, C => waddr(2), Y => n108);
   U267 : INVX1 port map( A => n112, Y => n119);
   U268 : NAND3X1 port map( A => waddr(1), B => n202, C => waddr(2), Y => n112)
                           ;
   U269 : INVX1 port map( A => waddr(0), Y => n202);
   U270 : AOI22X1 port map( A => n121, B => fiforeg_5_7_port, C => n122, D => 
                           fiforeg_7_7_port, Y => n195);
   U271 : INVX1 port map( A => n102, Y => n122);
   U272 : NAND3X1 port map( A => waddr(1), B => waddr(0), C => waddr(2), Y => 
                           n102);
   U273 : INVX1 port map( A => n110, Y => n121);
   U274 : NAND3X1 port map( A => waddr(0), B => n200, C => waddr(2), Y => n110)
                           ;
   U275 : INVX1 port map( A => waddr(1), Y => n200);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity fiforam_0 is

   port( wclk, wenable : in std_logic;  waddr, raddr : in std_logic_vector (2 
         downto 0);  wdata : in std_logic_vector (7 downto 0);  rdata : out 
         std_logic_vector (7 downto 0));

end fiforam_0;

architecture SYN_rtl of fiforam_0 is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFPOSX1
      port( D, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   signal fiforeg_0_7_port, fiforeg_0_6_port, fiforeg_0_5_port, 
      fiforeg_0_4_port, fiforeg_0_3_port, fiforeg_0_2_port, fiforeg_0_1_port, 
      fiforeg_0_0_port, fiforeg_1_7_port, fiforeg_1_6_port, fiforeg_1_5_port, 
      fiforeg_1_4_port, fiforeg_1_3_port, fiforeg_1_2_port, fiforeg_1_1_port, 
      fiforeg_1_0_port, fiforeg_2_7_port, fiforeg_2_6_port, fiforeg_2_5_port, 
      fiforeg_2_4_port, fiforeg_2_3_port, fiforeg_2_2_port, fiforeg_2_1_port, 
      fiforeg_2_0_port, fiforeg_3_7_port, fiforeg_3_6_port, fiforeg_3_5_port, 
      fiforeg_3_4_port, fiforeg_3_3_port, fiforeg_3_2_port, fiforeg_3_1_port, 
      fiforeg_3_0_port, fiforeg_4_7_port, fiforeg_4_6_port, fiforeg_4_5_port, 
      fiforeg_4_4_port, fiforeg_4_3_port, fiforeg_4_2_port, fiforeg_4_1_port, 
      fiforeg_4_0_port, fiforeg_5_7_port, fiforeg_5_6_port, fiforeg_5_5_port, 
      fiforeg_5_4_port, fiforeg_5_3_port, fiforeg_5_2_port, fiforeg_5_1_port, 
      fiforeg_5_0_port, fiforeg_6_7_port, fiforeg_6_6_port, fiforeg_6_5_port, 
      fiforeg_6_4_port, fiforeg_6_3_port, fiforeg_6_2_port, fiforeg_6_1_port, 
      fiforeg_6_0_port, fiforeg_7_7_port, fiforeg_7_6_port, fiforeg_7_5_port, 
      fiforeg_7_4_port, fiforeg_7_3_port, fiforeg_7_2_port, fiforeg_7_1_port, 
      fiforeg_7_0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
      n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28
      , n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, 
      n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57
      , n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, 
      n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86
      , n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, 
      n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, 
      n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, 
      n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, 
      n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, 
      n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, 
      n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, 
      n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, 
      n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, 
      n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, 
      n209, n210, n211, n267, n268, n269, n270, n271, n272, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321 : std_logic;

begin
   
   fiforeg_reg_7_7_inst : DFFPOSX1 port map( D => n321, CLK => n8, Q => 
                           fiforeg_7_7_port);
   fiforeg_reg_6_7_inst : DFFPOSX1 port map( D => n320, CLK => n8, Q => 
                           fiforeg_6_7_port);
   fiforeg_reg_5_7_inst : DFFPOSX1 port map( D => n319, CLK => n8, Q => 
                           fiforeg_5_7_port);
   fiforeg_reg_4_7_inst : DFFPOSX1 port map( D => n318, CLK => n8, Q => 
                           fiforeg_4_7_port);
   fiforeg_reg_3_7_inst : DFFPOSX1 port map( D => n317, CLK => n8, Q => 
                           fiforeg_3_7_port);
   fiforeg_reg_2_7_inst : DFFPOSX1 port map( D => n316, CLK => n8, Q => 
                           fiforeg_2_7_port);
   fiforeg_reg_1_7_inst : DFFPOSX1 port map( D => n315, CLK => n8, Q => 
                           fiforeg_1_7_port);
   fiforeg_reg_0_7_inst : DFFPOSX1 port map( D => n314, CLK => n8, Q => 
                           fiforeg_0_7_port);
   fiforeg_reg_7_6_inst : DFFPOSX1 port map( D => n313, CLK => n9, Q => 
                           fiforeg_7_6_port);
   fiforeg_reg_6_6_inst : DFFPOSX1 port map( D => n312, CLK => n9, Q => 
                           fiforeg_6_6_port);
   fiforeg_reg_5_6_inst : DFFPOSX1 port map( D => n311, CLK => n9, Q => 
                           fiforeg_5_6_port);
   fiforeg_reg_4_6_inst : DFFPOSX1 port map( D => n310, CLK => n8, Q => 
                           fiforeg_4_6_port);
   fiforeg_reg_3_6_inst : DFFPOSX1 port map( D => n309, CLK => n8, Q => 
                           fiforeg_3_6_port);
   fiforeg_reg_2_6_inst : DFFPOSX1 port map( D => n308, CLK => n8, Q => 
                           fiforeg_2_6_port);
   fiforeg_reg_1_6_inst : DFFPOSX1 port map( D => n307, CLK => n8, Q => 
                           fiforeg_1_6_port);
   fiforeg_reg_0_6_inst : DFFPOSX1 port map( D => n306, CLK => n8, Q => 
                           fiforeg_0_6_port);
   fiforeg_reg_7_5_inst : DFFPOSX1 port map( D => n305, CLK => n9, Q => 
                           fiforeg_7_5_port);
   fiforeg_reg_6_5_inst : DFFPOSX1 port map( D => n304, CLK => n9, Q => 
                           fiforeg_6_5_port);
   fiforeg_reg_5_5_inst : DFFPOSX1 port map( D => n303, CLK => n9, Q => 
                           fiforeg_5_5_port);
   fiforeg_reg_4_5_inst : DFFPOSX1 port map( D => n302, CLK => n9, Q => 
                           fiforeg_4_5_port);
   fiforeg_reg_3_5_inst : DFFPOSX1 port map( D => n301, CLK => n9, Q => 
                           fiforeg_3_5_port);
   fiforeg_reg_2_5_inst : DFFPOSX1 port map( D => n300, CLK => n9, Q => 
                           fiforeg_2_5_port);
   fiforeg_reg_1_5_inst : DFFPOSX1 port map( D => n299, CLK => n9, Q => 
                           fiforeg_1_5_port);
   fiforeg_reg_0_5_inst : DFFPOSX1 port map( D => n298, CLK => n9, Q => 
                           fiforeg_0_5_port);
   fiforeg_reg_7_4_inst : DFFPOSX1 port map( D => n297, CLK => n10, Q => 
                           fiforeg_7_4_port);
   fiforeg_reg_6_4_inst : DFFPOSX1 port map( D => n296, CLK => n10, Q => 
                           fiforeg_6_4_port);
   fiforeg_reg_5_4_inst : DFFPOSX1 port map( D => n295, CLK => n10, Q => 
                           fiforeg_5_4_port);
   fiforeg_reg_4_4_inst : DFFPOSX1 port map( D => n294, CLK => n10, Q => 
                           fiforeg_4_4_port);
   fiforeg_reg_3_4_inst : DFFPOSX1 port map( D => n293, CLK => n10, Q => 
                           fiforeg_3_4_port);
   fiforeg_reg_2_4_inst : DFFPOSX1 port map( D => n292, CLK => n10, Q => 
                           fiforeg_2_4_port);
   fiforeg_reg_1_4_inst : DFFPOSX1 port map( D => n291, CLK => n9, Q => 
                           fiforeg_1_4_port);
   fiforeg_reg_0_4_inst : DFFPOSX1 port map( D => n290, CLK => n9, Q => 
                           fiforeg_0_4_port);
   fiforeg_reg_7_3_inst : DFFPOSX1 port map( D => n289, CLK => n11, Q => 
                           fiforeg_7_3_port);
   fiforeg_reg_6_3_inst : DFFPOSX1 port map( D => n288, CLK => n10, Q => 
                           fiforeg_6_3_port);
   fiforeg_reg_5_3_inst : DFFPOSX1 port map( D => n287, CLK => n10, Q => 
                           fiforeg_5_3_port);
   fiforeg_reg_4_3_inst : DFFPOSX1 port map( D => n286, CLK => n10, Q => 
                           fiforeg_4_3_port);
   fiforeg_reg_3_3_inst : DFFPOSX1 port map( D => n285, CLK => n10, Q => 
                           fiforeg_3_3_port);
   fiforeg_reg_2_3_inst : DFFPOSX1 port map( D => n284, CLK => n10, Q => 
                           fiforeg_2_3_port);
   fiforeg_reg_1_3_inst : DFFPOSX1 port map( D => n283, CLK => n10, Q => 
                           fiforeg_1_3_port);
   fiforeg_reg_0_3_inst : DFFPOSX1 port map( D => n282, CLK => n10, Q => 
                           fiforeg_0_3_port);
   fiforeg_reg_7_2_inst : DFFPOSX1 port map( D => n281, CLK => n11, Q => 
                           fiforeg_7_2_port);
   fiforeg_reg_6_2_inst : DFFPOSX1 port map( D => n280, CLK => n11, Q => 
                           fiforeg_6_2_port);
   fiforeg_reg_5_2_inst : DFFPOSX1 port map( D => n279, CLK => n11, Q => 
                           fiforeg_5_2_port);
   fiforeg_reg_4_2_inst : DFFPOSX1 port map( D => n278, CLK => n11, Q => 
                           fiforeg_4_2_port);
   fiforeg_reg_3_2_inst : DFFPOSX1 port map( D => n277, CLK => n11, Q => 
                           fiforeg_3_2_port);
   fiforeg_reg_2_2_inst : DFFPOSX1 port map( D => n276, CLK => n11, Q => 
                           fiforeg_2_2_port);
   fiforeg_reg_1_2_inst : DFFPOSX1 port map( D => n275, CLK => n11, Q => 
                           fiforeg_1_2_port);
   fiforeg_reg_0_2_inst : DFFPOSX1 port map( D => n274, CLK => n11, Q => 
                           fiforeg_0_2_port);
   fiforeg_reg_7_1_inst : DFFPOSX1 port map( D => n273, CLK => n12, Q => 
                           fiforeg_7_1_port);
   fiforeg_reg_6_1_inst : DFFPOSX1 port map( D => n272, CLK => n12, Q => 
                           fiforeg_6_1_port);
   fiforeg_reg_5_1_inst : DFFPOSX1 port map( D => n271, CLK => n12, Q => 
                           fiforeg_5_1_port);
   fiforeg_reg_4_1_inst : DFFPOSX1 port map( D => n270, CLK => n12, Q => 
                           fiforeg_4_1_port);
   fiforeg_reg_3_1_inst : DFFPOSX1 port map( D => n269, CLK => n11, Q => 
                           fiforeg_3_1_port);
   fiforeg_reg_2_1_inst : DFFPOSX1 port map( D => n268, CLK => n11, Q => 
                           fiforeg_2_1_port);
   fiforeg_reg_1_1_inst : DFFPOSX1 port map( D => n267, CLK => n11, Q => 
                           fiforeg_1_1_port);
   fiforeg_reg_0_1_inst : DFFPOSX1 port map( D => n211, CLK => n11, Q => 
                           fiforeg_0_1_port);
   fiforeg_reg_7_0_inst : DFFPOSX1 port map( D => n203, CLK => n12, Q => 
                           fiforeg_7_0_port);
   fiforeg_reg_6_0_inst : DFFPOSX1 port map( D => n210, CLK => n12, Q => 
                           fiforeg_6_0_port);
   fiforeg_reg_5_0_inst : DFFPOSX1 port map( D => n209, CLK => n12, Q => 
                           fiforeg_5_0_port);
   fiforeg_reg_4_0_inst : DFFPOSX1 port map( D => n208, CLK => n12, Q => 
                           fiforeg_4_0_port);
   fiforeg_reg_3_0_inst : DFFPOSX1 port map( D => n207, CLK => n12, Q => 
                           fiforeg_3_0_port);
   fiforeg_reg_2_0_inst : DFFPOSX1 port map( D => n206, CLK => n12, Q => 
                           fiforeg_2_0_port);
   fiforeg_reg_1_0_inst : DFFPOSX1 port map( D => n205, CLK => n12, Q => 
                           fiforeg_1_0_port);
   fiforeg_reg_0_0_inst : DFFPOSX1 port map( D => n204, CLK => n12, Q => 
                           fiforeg_0_0_port);
   U2 : INVX1 port map( A => n104, Y => n1);
   U3 : INVX2 port map( A => n1, Y => n2);
   U4 : INVX1 port map( A => n106, Y => n3);
   U5 : INVX2 port map( A => n3, Y => n4);
   U6 : INVX1 port map( A => n105, Y => n5);
   U7 : INVX2 port map( A => n5, Y => n6);
   U8 : BUFX2 port map( A => n103, Y => n7);
   U9 : BUFX2 port map( A => wclk, Y => n11);
   U10 : BUFX2 port map( A => wclk, Y => n10);
   U11 : BUFX2 port map( A => wclk, Y => n9);
   U12 : BUFX2 port map( A => wclk, Y => n8);
   U13 : BUFX2 port map( A => wclk, Y => n12);
   U14 : NAND3X1 port map( A => n13, B => n14, C => n15, Y => rdata(7));
   U15 : NOR2X1 port map( A => n16, B => n17, Y => n15);
   U16 : OAI22X1 port map( A => n18, B => n19, C => n20, D => n21, Y => n17);
   U17 : OAI22X1 port map( A => n22, B => n23, C => n24, D => n25, Y => n16);
   U18 : AOI22X1 port map( A => fiforeg_5_7_port, B => n26, C => 
                           fiforeg_4_7_port, D => n27, Y => n14);
   U19 : AOI22X1 port map( A => fiforeg_7_7_port, B => n28, C => 
                           fiforeg_6_7_port, D => n29, Y => n13);
   U20 : NAND3X1 port map( A => n30, B => n31, C => n32, Y => rdata(6));
   U21 : NOR2X1 port map( A => n33, B => n34, Y => n32);
   U22 : OAI22X1 port map( A => n18, B => n35, C => n20, D => n36, Y => n34);
   U23 : OAI22X1 port map( A => n22, B => n37, C => n24, D => n38, Y => n33);
   U24 : AOI22X1 port map( A => fiforeg_5_6_port, B => n26, C => 
                           fiforeg_4_6_port, D => n27, Y => n31);
   U25 : AOI22X1 port map( A => fiforeg_7_6_port, B => n28, C => 
                           fiforeg_6_6_port, D => n29, Y => n30);
   U26 : NAND3X1 port map( A => n39, B => n40, C => n41, Y => rdata(5));
   U27 : NOR2X1 port map( A => n42, B => n43, Y => n41);
   U28 : OAI22X1 port map( A => n18, B => n44, C => n20, D => n45, Y => n43);
   U29 : OAI22X1 port map( A => n22, B => n46, C => n24, D => n47, Y => n42);
   U30 : AOI22X1 port map( A => fiforeg_5_5_port, B => n26, C => 
                           fiforeg_4_5_port, D => n27, Y => n40);
   U31 : AOI22X1 port map( A => fiforeg_7_5_port, B => n28, C => 
                           fiforeg_6_5_port, D => n29, Y => n39);
   U32 : NAND3X1 port map( A => n48, B => n49, C => n50, Y => rdata(4));
   U33 : NOR2X1 port map( A => n51, B => n52, Y => n50);
   U34 : OAI22X1 port map( A => n18, B => n53, C => n20, D => n54, Y => n52);
   U35 : OAI22X1 port map( A => n22, B => n55, C => n24, D => n56, Y => n51);
   U36 : AOI22X1 port map( A => fiforeg_5_4_port, B => n26, C => 
                           fiforeg_4_4_port, D => n27, Y => n49);
   U37 : AOI22X1 port map( A => fiforeg_7_4_port, B => n28, C => 
                           fiforeg_6_4_port, D => n29, Y => n48);
   U38 : NAND3X1 port map( A => n57, B => n58, C => n59, Y => rdata(3));
   U39 : NOR2X1 port map( A => n60, B => n61, Y => n59);
   U40 : OAI22X1 port map( A => n18, B => n62, C => n20, D => n63, Y => n61);
   U41 : OAI22X1 port map( A => n22, B => n64, C => n24, D => n65, Y => n60);
   U42 : AOI22X1 port map( A => fiforeg_5_3_port, B => n26, C => 
                           fiforeg_4_3_port, D => n27, Y => n58);
   U43 : AOI22X1 port map( A => fiforeg_7_3_port, B => n28, C => 
                           fiforeg_6_3_port, D => n29, Y => n57);
   U44 : NAND3X1 port map( A => n66, B => n67, C => n68, Y => rdata(2));
   U45 : NOR2X1 port map( A => n69, B => n70, Y => n68);
   U46 : OAI22X1 port map( A => n18, B => n71, C => n20, D => n72, Y => n70);
   U47 : OAI22X1 port map( A => n22, B => n73, C => n24, D => n74, Y => n69);
   U48 : AOI22X1 port map( A => fiforeg_5_2_port, B => n26, C => 
                           fiforeg_4_2_port, D => n27, Y => n67);
   U49 : AOI22X1 port map( A => fiforeg_7_2_port, B => n28, C => 
                           fiforeg_6_2_port, D => n29, Y => n66);
   U50 : NAND3X1 port map( A => n75, B => n76, C => n77, Y => rdata(1));
   U51 : NOR2X1 port map( A => n78, B => n79, Y => n77);
   U52 : OAI22X1 port map( A => n18, B => n80, C => n20, D => n81, Y => n79);
   U53 : OAI22X1 port map( A => n22, B => n82, C => n24, D => n83, Y => n78);
   U54 : AOI22X1 port map( A => fiforeg_5_1_port, B => n26, C => 
                           fiforeg_4_1_port, D => n27, Y => n76);
   U55 : AOI22X1 port map( A => fiforeg_7_1_port, B => n28, C => 
                           fiforeg_6_1_port, D => n29, Y => n75);
   U56 : NAND3X1 port map( A => n84, B => n85, C => n86, Y => rdata(0));
   U57 : NOR2X1 port map( A => n87, B => n88, Y => n86);
   U58 : OAI22X1 port map( A => n18, B => n89, C => n20, D => n90, Y => n88);
   U59 : NAND3X1 port map( A => n91, B => n92, C => n93, Y => n20);
   U60 : NAND3X1 port map( A => n91, B => n92, C => raddr(0), Y => n18);
   U61 : OAI22X1 port map( A => n22, B => n94, C => n24, D => n95, Y => n87);
   U62 : NAND3X1 port map( A => n93, B => n92, C => raddr(1), Y => n24);
   U63 : NAND3X1 port map( A => raddr(0), B => n92, C => raddr(1), Y => n22);
   U64 : INVX1 port map( A => raddr(2), Y => n92);
   U65 : AOI22X1 port map( A => fiforeg_5_0_port, B => n26, C => 
                           fiforeg_4_0_port, D => n27, Y => n85);
   U66 : INVX1 port map( A => n96, Y => n27);
   U67 : NAND3X1 port map( A => n93, B => n91, C => raddr(2), Y => n96);
   U68 : INVX1 port map( A => n97, Y => n26);
   U69 : NAND3X1 port map( A => raddr(0), B => n91, C => raddr(2), Y => n97);
   U70 : INVX1 port map( A => raddr(1), Y => n91);
   U71 : AOI22X1 port map( A => fiforeg_7_0_port, B => n28, C => 
                           fiforeg_6_0_port, D => n29, Y => n84);
   U72 : INVX1 port map( A => n98, Y => n29);
   U73 : NAND3X1 port map( A => raddr(2), B => n93, C => raddr(1), Y => n98);
   U74 : INVX1 port map( A => raddr(0), Y => n93);
   U75 : INVX1 port map( A => n99, Y => n28);
   U76 : NAND3X1 port map( A => raddr(2), B => raddr(0), C => raddr(1), Y => 
                           n99);
   U77 : MUX2X1 port map( B => n100, A => n101, S => n102, Y => n203);
   U78 : INVX1 port map( A => fiforeg_7_0_port, Y => n101);
   U79 : MUX2X1 port map( B => n100, A => n90, S => n7, Y => n204);
   U80 : MUX2X1 port map( B => n100, A => n89, S => n2, Y => n205);
   U81 : MUX2X1 port map( B => n100, A => n95, S => n6, Y => n206);
   U82 : MUX2X1 port map( B => n100, A => n94, S => n4, Y => n207);
   U83 : MUX2X1 port map( B => n100, A => n107, S => n108, Y => n208);
   U84 : INVX1 port map( A => fiforeg_4_0_port, Y => n107);
   U85 : MUX2X1 port map( B => n100, A => n109, S => n110, Y => n209);
   U86 : INVX1 port map( A => fiforeg_5_0_port, Y => n109);
   U87 : MUX2X1 port map( B => n100, A => n111, S => n112, Y => n210);
   U88 : INVX1 port map( A => fiforeg_6_0_port, Y => n111);
   U89 : MUX2X1 port map( B => n113, A => wdata(0), S => wenable, Y => n100);
   U90 : NAND3X1 port map( A => n114, B => n115, C => n116, Y => n113);
   U91 : NOR2X1 port map( A => n117, B => n118, Y => n116);
   U92 : OAI22X1 port map( A => n89, B => n2, C => n90, D => n7, Y => n118);
   U93 : INVX1 port map( A => fiforeg_0_0_port, Y => n90);
   U94 : INVX1 port map( A => fiforeg_1_0_port, Y => n89);
   U95 : OAI22X1 port map( A => n94, B => n4, C => n95, D => n6, Y => n117);
   U96 : INVX1 port map( A => fiforeg_2_0_port, Y => n95);
   U97 : INVX1 port map( A => fiforeg_3_0_port, Y => n94);
   U98 : AOI22X1 port map( A => n119, B => fiforeg_6_0_port, C => n120, D => 
                           fiforeg_4_0_port, Y => n115);
   U99 : AOI22X1 port map( A => n121, B => fiforeg_5_0_port, C => n122, D => 
                           fiforeg_7_0_port, Y => n114);
   U100 : MUX2X1 port map( B => n123, A => n81, S => n7, Y => n211);
   U101 : MUX2X1 port map( B => n123, A => n80, S => n2, Y => n267);
   U102 : MUX2X1 port map( B => n123, A => n83, S => n6, Y => n268);
   U103 : MUX2X1 port map( B => n123, A => n82, S => n4, Y => n269);
   U104 : MUX2X1 port map( B => n123, A => n124, S => n108, Y => n270);
   U105 : INVX1 port map( A => fiforeg_4_1_port, Y => n124);
   U106 : MUX2X1 port map( B => n123, A => n125, S => n110, Y => n271);
   U107 : INVX1 port map( A => fiforeg_5_1_port, Y => n125);
   U108 : MUX2X1 port map( B => n123, A => n126, S => n112, Y => n272);
   U109 : INVX1 port map( A => fiforeg_6_1_port, Y => n126);
   U110 : MUX2X1 port map( B => n123, A => n127, S => n102, Y => n273);
   U111 : INVX1 port map( A => fiforeg_7_1_port, Y => n127);
   U112 : MUX2X1 port map( B => n128, A => wdata(1), S => wenable, Y => n123);
   U113 : NAND3X1 port map( A => n129, B => n130, C => n131, Y => n128);
   U114 : NOR2X1 port map( A => n132, B => n133, Y => n131);
   U115 : OAI22X1 port map( A => n80, B => n2, C => n81, D => n7, Y => n133);
   U116 : INVX1 port map( A => fiforeg_0_1_port, Y => n81);
   U117 : INVX1 port map( A => fiforeg_1_1_port, Y => n80);
   U118 : OAI22X1 port map( A => n82, B => n4, C => n83, D => n6, Y => n132);
   U119 : INVX1 port map( A => fiforeg_2_1_port, Y => n83);
   U120 : INVX1 port map( A => fiforeg_3_1_port, Y => n82);
   U121 : AOI22X1 port map( A => n119, B => fiforeg_6_1_port, C => n120, D => 
                           fiforeg_4_1_port, Y => n130);
   U122 : AOI22X1 port map( A => n121, B => fiforeg_5_1_port, C => n122, D => 
                           fiforeg_7_1_port, Y => n129);
   U123 : MUX2X1 port map( B => n134, A => n72, S => n7, Y => n274);
   U124 : MUX2X1 port map( B => n134, A => n71, S => n2, Y => n275);
   U125 : MUX2X1 port map( B => n134, A => n74, S => n6, Y => n276);
   U126 : MUX2X1 port map( B => n134, A => n73, S => n4, Y => n277);
   U127 : MUX2X1 port map( B => n134, A => n135, S => n108, Y => n278);
   U128 : INVX1 port map( A => fiforeg_4_2_port, Y => n135);
   U129 : MUX2X1 port map( B => n134, A => n136, S => n110, Y => n279);
   U130 : INVX1 port map( A => fiforeg_5_2_port, Y => n136);
   U131 : MUX2X1 port map( B => n134, A => n137, S => n112, Y => n280);
   U132 : INVX1 port map( A => fiforeg_6_2_port, Y => n137);
   U133 : MUX2X1 port map( B => n134, A => n138, S => n102, Y => n281);
   U134 : INVX1 port map( A => fiforeg_7_2_port, Y => n138);
   U135 : MUX2X1 port map( B => n139, A => wdata(2), S => wenable, Y => n134);
   U136 : NAND3X1 port map( A => n140, B => n141, C => n142, Y => n139);
   U137 : NOR2X1 port map( A => n143, B => n144, Y => n142);
   U138 : OAI22X1 port map( A => n71, B => n2, C => n72, D => n7, Y => n144);
   U139 : INVX1 port map( A => fiforeg_0_2_port, Y => n72);
   U140 : INVX1 port map( A => fiforeg_1_2_port, Y => n71);
   U141 : OAI22X1 port map( A => n73, B => n4, C => n74, D => n6, Y => n143);
   U142 : INVX1 port map( A => fiforeg_2_2_port, Y => n74);
   U143 : INVX1 port map( A => fiforeg_3_2_port, Y => n73);
   U144 : AOI22X1 port map( A => n119, B => fiforeg_6_2_port, C => n120, D => 
                           fiforeg_4_2_port, Y => n141);
   U145 : AOI22X1 port map( A => n121, B => fiforeg_5_2_port, C => n122, D => 
                           fiforeg_7_2_port, Y => n140);
   U146 : MUX2X1 port map( B => n145, A => n63, S => n7, Y => n282);
   U147 : MUX2X1 port map( B => n145, A => n62, S => n2, Y => n283);
   U148 : MUX2X1 port map( B => n145, A => n65, S => n6, Y => n284);
   U149 : MUX2X1 port map( B => n145, A => n64, S => n4, Y => n285);
   U150 : MUX2X1 port map( B => n145, A => n146, S => n108, Y => n286);
   U151 : INVX1 port map( A => fiforeg_4_3_port, Y => n146);
   U152 : MUX2X1 port map( B => n145, A => n147, S => n110, Y => n287);
   U153 : INVX1 port map( A => fiforeg_5_3_port, Y => n147);
   U154 : MUX2X1 port map( B => n145, A => n148, S => n112, Y => n288);
   U155 : INVX1 port map( A => fiforeg_6_3_port, Y => n148);
   U156 : MUX2X1 port map( B => n145, A => n149, S => n102, Y => n289);
   U157 : INVX1 port map( A => fiforeg_7_3_port, Y => n149);
   U158 : MUX2X1 port map( B => n150, A => wdata(3), S => wenable, Y => n145);
   U159 : NAND3X1 port map( A => n151, B => n152, C => n153, Y => n150);
   U160 : NOR2X1 port map( A => n154, B => n155, Y => n153);
   U161 : OAI22X1 port map( A => n62, B => n2, C => n63, D => n7, Y => n155);
   U162 : INVX1 port map( A => fiforeg_0_3_port, Y => n63);
   U163 : INVX1 port map( A => fiforeg_1_3_port, Y => n62);
   U164 : OAI22X1 port map( A => n64, B => n4, C => n65, D => n6, Y => n154);
   U165 : INVX1 port map( A => fiforeg_2_3_port, Y => n65);
   U166 : INVX1 port map( A => fiforeg_3_3_port, Y => n64);
   U167 : AOI22X1 port map( A => n119, B => fiforeg_6_3_port, C => n120, D => 
                           fiforeg_4_3_port, Y => n152);
   U168 : AOI22X1 port map( A => n121, B => fiforeg_5_3_port, C => n122, D => 
                           fiforeg_7_3_port, Y => n151);
   U169 : MUX2X1 port map( B => n156, A => n54, S => n7, Y => n290);
   U170 : MUX2X1 port map( B => n156, A => n53, S => n2, Y => n291);
   U171 : MUX2X1 port map( B => n156, A => n56, S => n6, Y => n292);
   U172 : MUX2X1 port map( B => n156, A => n55, S => n4, Y => n293);
   U173 : MUX2X1 port map( B => n156, A => n157, S => n108, Y => n294);
   U174 : INVX1 port map( A => fiforeg_4_4_port, Y => n157);
   U175 : MUX2X1 port map( B => n156, A => n158, S => n110, Y => n295);
   U176 : INVX1 port map( A => fiforeg_5_4_port, Y => n158);
   U177 : MUX2X1 port map( B => n156, A => n159, S => n112, Y => n296);
   U178 : INVX1 port map( A => fiforeg_6_4_port, Y => n159);
   U179 : MUX2X1 port map( B => n156, A => n160, S => n102, Y => n297);
   U180 : INVX1 port map( A => fiforeg_7_4_port, Y => n160);
   U181 : MUX2X1 port map( B => n161, A => wdata(4), S => wenable, Y => n156);
   U182 : NAND3X1 port map( A => n162, B => n163, C => n164, Y => n161);
   U183 : NOR2X1 port map( A => n165, B => n166, Y => n164);
   U184 : OAI22X1 port map( A => n53, B => n2, C => n54, D => n7, Y => n166);
   U185 : INVX1 port map( A => fiforeg_0_4_port, Y => n54);
   U186 : INVX1 port map( A => fiforeg_1_4_port, Y => n53);
   U187 : OAI22X1 port map( A => n55, B => n4, C => n56, D => n6, Y => n165);
   U188 : INVX1 port map( A => fiforeg_2_4_port, Y => n56);
   U189 : INVX1 port map( A => fiforeg_3_4_port, Y => n55);
   U190 : AOI22X1 port map( A => n119, B => fiforeg_6_4_port, C => n120, D => 
                           fiforeg_4_4_port, Y => n163);
   U191 : AOI22X1 port map( A => n121, B => fiforeg_5_4_port, C => n122, D => 
                           fiforeg_7_4_port, Y => n162);
   U192 : MUX2X1 port map( B => n167, A => n45, S => n7, Y => n298);
   U193 : MUX2X1 port map( B => n167, A => n44, S => n2, Y => n299);
   U194 : MUX2X1 port map( B => n167, A => n47, S => n6, Y => n300);
   U195 : MUX2X1 port map( B => n167, A => n46, S => n4, Y => n301);
   U196 : MUX2X1 port map( B => n167, A => n168, S => n108, Y => n302);
   U197 : INVX1 port map( A => fiforeg_4_5_port, Y => n168);
   U198 : MUX2X1 port map( B => n167, A => n169, S => n110, Y => n303);
   U199 : INVX1 port map( A => fiforeg_5_5_port, Y => n169);
   U200 : MUX2X1 port map( B => n167, A => n170, S => n112, Y => n304);
   U201 : INVX1 port map( A => fiforeg_6_5_port, Y => n170);
   U202 : MUX2X1 port map( B => n167, A => n171, S => n102, Y => n305);
   U203 : INVX1 port map( A => fiforeg_7_5_port, Y => n171);
   U204 : MUX2X1 port map( B => n172, A => wdata(5), S => wenable, Y => n167);
   U205 : NAND3X1 port map( A => n173, B => n174, C => n175, Y => n172);
   U206 : NOR2X1 port map( A => n176, B => n177, Y => n175);
   U207 : OAI22X1 port map( A => n44, B => n2, C => n45, D => n7, Y => n177);
   U208 : INVX1 port map( A => fiforeg_0_5_port, Y => n45);
   U209 : INVX1 port map( A => fiforeg_1_5_port, Y => n44);
   U210 : OAI22X1 port map( A => n46, B => n4, C => n47, D => n6, Y => n176);
   U211 : INVX1 port map( A => fiforeg_2_5_port, Y => n47);
   U212 : INVX1 port map( A => fiforeg_3_5_port, Y => n46);
   U213 : AOI22X1 port map( A => n119, B => fiforeg_6_5_port, C => n120, D => 
                           fiforeg_4_5_port, Y => n174);
   U214 : AOI22X1 port map( A => n121, B => fiforeg_5_5_port, C => n122, D => 
                           fiforeg_7_5_port, Y => n173);
   U215 : MUX2X1 port map( B => n178, A => n36, S => n7, Y => n306);
   U216 : MUX2X1 port map( B => n178, A => n35, S => n2, Y => n307);
   U217 : MUX2X1 port map( B => n178, A => n38, S => n6, Y => n308);
   U218 : MUX2X1 port map( B => n178, A => n37, S => n4, Y => n309);
   U219 : MUX2X1 port map( B => n178, A => n179, S => n108, Y => n310);
   U220 : INVX1 port map( A => fiforeg_4_6_port, Y => n179);
   U221 : MUX2X1 port map( B => n178, A => n180, S => n110, Y => n311);
   U222 : INVX1 port map( A => fiforeg_5_6_port, Y => n180);
   U223 : MUX2X1 port map( B => n178, A => n181, S => n112, Y => n312);
   U224 : INVX1 port map( A => fiforeg_6_6_port, Y => n181);
   U225 : MUX2X1 port map( B => n178, A => n182, S => n102, Y => n313);
   U226 : INVX1 port map( A => fiforeg_7_6_port, Y => n182);
   U227 : MUX2X1 port map( B => n183, A => wdata(6), S => wenable, Y => n178);
   U228 : NAND3X1 port map( A => n184, B => n185, C => n186, Y => n183);
   U229 : NOR2X1 port map( A => n187, B => n188, Y => n186);
   U230 : OAI22X1 port map( A => n35, B => n2, C => n36, D => n7, Y => n188);
   U231 : INVX1 port map( A => fiforeg_0_6_port, Y => n36);
   U232 : INVX1 port map( A => fiforeg_1_6_port, Y => n35);
   U233 : OAI22X1 port map( A => n37, B => n4, C => n38, D => n6, Y => n187);
   U234 : INVX1 port map( A => fiforeg_2_6_port, Y => n38);
   U235 : INVX1 port map( A => fiforeg_3_6_port, Y => n37);
   U236 : AOI22X1 port map( A => n119, B => fiforeg_6_6_port, C => n120, D => 
                           fiforeg_4_6_port, Y => n185);
   U237 : AOI22X1 port map( A => n121, B => fiforeg_5_6_port, C => n122, D => 
                           fiforeg_7_6_port, Y => n184);
   U238 : MUX2X1 port map( B => n189, A => n21, S => n7, Y => n314);
   U239 : MUX2X1 port map( B => n189, A => n19, S => n2, Y => n315);
   U240 : MUX2X1 port map( B => n189, A => n25, S => n6, Y => n316);
   U241 : MUX2X1 port map( B => n189, A => n23, S => n4, Y => n317);
   U242 : MUX2X1 port map( B => n189, A => n190, S => n108, Y => n318);
   U243 : INVX1 port map( A => fiforeg_4_7_port, Y => n190);
   U244 : MUX2X1 port map( B => n189, A => n191, S => n110, Y => n319);
   U245 : INVX1 port map( A => fiforeg_5_7_port, Y => n191);
   U246 : MUX2X1 port map( B => n189, A => n192, S => n112, Y => n320);
   U247 : INVX1 port map( A => fiforeg_6_7_port, Y => n192);
   U248 : MUX2X1 port map( B => n189, A => n193, S => n102, Y => n321);
   U249 : INVX1 port map( A => fiforeg_7_7_port, Y => n193);
   U250 : MUX2X1 port map( B => n194, A => wdata(7), S => wenable, Y => n189);
   U251 : NAND3X1 port map( A => n195, B => n196, C => n197, Y => n194);
   U252 : NOR2X1 port map( A => n198, B => n199, Y => n197);
   U253 : OAI22X1 port map( A => n19, B => n2, C => n21, D => n7, Y => n199);
   U254 : NAND3X1 port map( A => n200, B => n201, C => n202, Y => n103);
   U255 : INVX1 port map( A => fiforeg_0_7_port, Y => n21);
   U256 : NAND3X1 port map( A => n200, B => n201, C => waddr(0), Y => n104);
   U257 : INVX1 port map( A => fiforeg_1_7_port, Y => n19);
   U258 : OAI22X1 port map( A => n23, B => n4, C => n25, D => n6, Y => n198);
   U259 : NAND3X1 port map( A => n202, B => n201, C => waddr(1), Y => n105);
   U260 : INVX1 port map( A => fiforeg_2_7_port, Y => n25);
   U261 : NAND3X1 port map( A => waddr(0), B => n201, C => waddr(1), Y => n106)
                           ;
   U262 : INVX1 port map( A => waddr(2), Y => n201);
   U263 : INVX1 port map( A => fiforeg_3_7_port, Y => n23);
   U264 : AOI22X1 port map( A => n119, B => fiforeg_6_7_port, C => n120, D => 
                           fiforeg_4_7_port, Y => n196);
   U265 : INVX1 port map( A => n108, Y => n120);
   U266 : NAND3X1 port map( A => n202, B => n200, C => waddr(2), Y => n108);
   U267 : INVX1 port map( A => n112, Y => n119);
   U268 : NAND3X1 port map( A => waddr(1), B => n202, C => waddr(2), Y => n112)
                           ;
   U269 : INVX1 port map( A => waddr(0), Y => n202);
   U270 : AOI22X1 port map( A => n121, B => fiforeg_5_7_port, C => n122, D => 
                           fiforeg_7_7_port, Y => n195);
   U271 : INVX1 port map( A => n102, Y => n122);
   U272 : NAND3X1 port map( A => waddr(1), B => waddr(0), C => waddr(2), Y => 
                           n102);
   U273 : INVX1 port map( A => n110, Y => n121);
   U274 : NAND3X1 port map( A => waddr(0), B => n200, C => waddr(2), Y => n110)
                           ;
   U275 : INVX1 port map( A => waddr(1), Y => n200);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity fifo_1 is

   port( rclk, wclk, rst_n, renable, wenable : in std_logic;  wdata : in 
         std_logic_vector (7 downto 0);  rdata : out std_logic_vector (7 downto
         0);  empty, full : out std_logic);

end fifo_1;

architecture SYN_RTL of fifo_1 is

   component read_fifo_ctrl_1
      port( rclk, rst_n, renable : in std_logic;  wptr : in std_logic_vector (3
            downto 0);  rptr : out std_logic_vector (3 downto 0);  raddr : out 
            std_logic_vector (2 downto 0);  empty_flag : out std_logic);
   end component;
   
   component write_fifo_ctrl_1
      port( wclk, rst_n, wenable : in std_logic;  rptr : in std_logic_vector (3
            downto 0);  wenable_fifo : out std_logic;  wptr : out 
            std_logic_vector (3 downto 0);  waddr : out std_logic_vector (2 
            downto 0);  full_flag : out std_logic);
   end component;
   
   component fiforam_1
      port( wclk, wenable : in std_logic;  waddr, raddr : in std_logic_vector 
            (2 downto 0);  wdata : in std_logic_vector (7 downto 0);  rdata : 
            out std_logic_vector (7 downto 0));
   end component;
   
   signal wenable_fifo, waddr_2_port, waddr_1_port, waddr_0_port, raddr_2_port,
      raddr_1_port, raddr_0_port, rptr_3_port, rptr_2_port, rptr_1_port, 
      rptr_0_port, wptr_3_port, wptr_2_port, wptr_1_port, wptr_0_port : 
      std_logic;

begin
   
   UFIFORAM : fiforam_1 port map( wclk => wclk, wenable => wenable_fifo, 
                           waddr(2) => waddr_2_port, waddr(1) => waddr_1_port, 
                           waddr(0) => waddr_0_port, raddr(2) => raddr_2_port, 
                           raddr(1) => raddr_1_port, raddr(0) => raddr_0_port, 
                           wdata(7) => wdata(7), wdata(6) => wdata(6), wdata(5)
                           => wdata(5), wdata(4) => wdata(4), wdata(3) => 
                           wdata(3), wdata(2) => wdata(2), wdata(1) => wdata(1)
                           , wdata(0) => wdata(0), rdata(7) => rdata(7), 
                           rdata(6) => rdata(6), rdata(5) => rdata(5), rdata(4)
                           => rdata(4), rdata(3) => rdata(3), rdata(2) => 
                           rdata(2), rdata(1) => rdata(1), rdata(0) => rdata(0)
                           );
   UWFC : write_fifo_ctrl_1 port map( wclk => wclk, rst_n => rst_n, wenable => 
                           wenable, rptr(3) => rptr_3_port, rptr(2) => 
                           rptr_2_port, rptr(1) => rptr_1_port, rptr(0) => 
                           rptr_0_port, wenable_fifo => wenable_fifo, wptr(3) 
                           => wptr_3_port, wptr(2) => wptr_2_port, wptr(1) => 
                           wptr_1_port, wptr(0) => wptr_0_port, waddr(2) => 
                           waddr_2_port, waddr(1) => waddr_1_port, waddr(0) => 
                           waddr_0_port, full_flag => full);
   URFC : read_fifo_ctrl_1 port map( rclk => rclk, rst_n => rst_n, renable => 
                           renable, wptr(3) => wptr_3_port, wptr(2) => 
                           wptr_2_port, wptr(1) => wptr_1_port, wptr(0) => 
                           wptr_0_port, rptr(3) => rptr_3_port, rptr(2) => 
                           rptr_2_port, rptr(1) => rptr_1_port, rptr(0) => 
                           rptr_0_port, raddr(2) => raddr_2_port, raddr(1) => 
                           raddr_1_port, raddr(0) => raddr_0_port, empty_flag 
                           => empty);

end SYN_RTL;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity fifo_0 is

   port( rclk, wclk, rst_n, renable, wenable : in std_logic;  wdata : in 
         std_logic_vector (7 downto 0);  rdata : out std_logic_vector (7 downto
         0);  empty, full : out std_logic);

end fifo_0;

architecture SYN_RTL of fifo_0 is

   component read_fifo_ctrl_0
      port( rclk, rst_n, renable : in std_logic;  wptr : in std_logic_vector (3
            downto 0);  rptr : out std_logic_vector (3 downto 0);  raddr : out 
            std_logic_vector (2 downto 0);  empty_flag : out std_logic);
   end component;
   
   component write_fifo_ctrl_0
      port( wclk, rst_n, wenable : in std_logic;  rptr : in std_logic_vector (3
            downto 0);  wenable_fifo : out std_logic;  wptr : out 
            std_logic_vector (3 downto 0);  waddr : out std_logic_vector (2 
            downto 0);  full_flag : out std_logic);
   end component;
   
   component fiforam_0
      port( wclk, wenable : in std_logic;  waddr, raddr : in std_logic_vector 
            (2 downto 0);  wdata : in std_logic_vector (7 downto 0);  rdata : 
            out std_logic_vector (7 downto 0));
   end component;
   
   signal wenable_fifo, waddr_2_port, waddr_1_port, waddr_0_port, raddr_2_port,
      raddr_1_port, raddr_0_port, rptr_3_port, rptr_2_port, rptr_1_port, 
      rptr_0_port, wptr_3_port, wptr_2_port, wptr_1_port, wptr_0_port : 
      std_logic;

begin
   
   UFIFORAM : fiforam_0 port map( wclk => wclk, wenable => wenable_fifo, 
                           waddr(2) => waddr_2_port, waddr(1) => waddr_1_port, 
                           waddr(0) => waddr_0_port, raddr(2) => raddr_2_port, 
                           raddr(1) => raddr_1_port, raddr(0) => raddr_0_port, 
                           wdata(7) => wdata(7), wdata(6) => wdata(6), wdata(5)
                           => wdata(5), wdata(4) => wdata(4), wdata(3) => 
                           wdata(3), wdata(2) => wdata(2), wdata(1) => wdata(1)
                           , wdata(0) => wdata(0), rdata(7) => rdata(7), 
                           rdata(6) => rdata(6), rdata(5) => rdata(5), rdata(4)
                           => rdata(4), rdata(3) => rdata(3), rdata(2) => 
                           rdata(2), rdata(1) => rdata(1), rdata(0) => rdata(0)
                           );
   UWFC : write_fifo_ctrl_0 port map( wclk => wclk, rst_n => rst_n, wenable => 
                           wenable, rptr(3) => rptr_3_port, rptr(2) => 
                           rptr_2_port, rptr(1) => rptr_1_port, rptr(0) => 
                           rptr_0_port, wenable_fifo => wenable_fifo, wptr(3) 
                           => wptr_3_port, wptr(2) => wptr_2_port, wptr(1) => 
                           wptr_1_port, wptr(0) => wptr_0_port, waddr(2) => 
                           waddr_2_port, waddr(1) => waddr_1_port, waddr(0) => 
                           waddr_0_port, full_flag => full);
   URFC : read_fifo_ctrl_0 port map( rclk => rclk, rst_n => rst_n, renable => 
                           renable, wptr(3) => wptr_3_port, wptr(2) => 
                           wptr_2_port, wptr(1) => wptr_1_port, wptr(0) => 
                           wptr_0_port, rptr(3) => rptr_3_port, rptr(2) => 
                           rptr_2_port, rptr(1) => rptr_1_port, rptr(0) => 
                           rptr_0_port, raddr(2) => raddr_2_port, raddr(1) => 
                           raddr_1_port, raddr(0) => raddr_0_port, empty_flag 
                           => empty);

end SYN_RTL;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity RCV_FIFO_1 is

   port( CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE : in std_logic;  WDATA : in 
         std_logic_vector (7 downto 0);  R_DATA : out std_logic_vector (7 
         downto 0);  EMPTY, FULL : out std_logic);

end RCV_FIFO_1;

architecture SYN_wrapper of RCV_FIFO_1 is

   component fifo_1
      port( rclk, wclk, rst_n, renable, wenable : in std_logic;  wdata : in 
            std_logic_vector (7 downto 0);  rdata : out std_logic_vector (7 
            downto 0);  empty, full : out std_logic);
   end component;

begin
   
   MAPPING : fifo_1 port map( rclk => CLK, wclk => D_CLK, rst_n => RST_N, 
                           renable => R_ENABLE, wenable => W_ENABLE, wdata(7) 
                           => WDATA(7), wdata(6) => WDATA(6), wdata(5) => 
                           WDATA(5), wdata(4) => WDATA(4), wdata(3) => WDATA(3)
                           , wdata(2) => WDATA(2), wdata(1) => WDATA(1), 
                           wdata(0) => WDATA(0), rdata(7) => R_DATA(7), 
                           rdata(6) => R_DATA(6), rdata(5) => R_DATA(5), 
                           rdata(4) => R_DATA(4), rdata(3) => R_DATA(3), 
                           rdata(2) => R_DATA(2), rdata(1) => R_DATA(1), 
                           rdata(0) => R_DATA(0), empty => EMPTY, full => FULL)
                           ;

end SYN_wrapper;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity RCV_FIFO_0 is

   port( CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE : in std_logic;  WDATA : in 
         std_logic_vector (7 downto 0);  R_DATA : out std_logic_vector (7 
         downto 0);  EMPTY, FULL : out std_logic);

end RCV_FIFO_0;

architecture SYN_wrapper of RCV_FIFO_0 is

   component fifo_0
      port( rclk, wclk, rst_n, renable, wenable : in std_logic;  wdata : in 
            std_logic_vector (7 downto 0);  rdata : out std_logic_vector (7 
            downto 0);  empty, full : out std_logic);
   end component;

begin
   
   MAPPING : fifo_0 port map( rclk => CLK, wclk => D_CLK, rst_n => RST_N, 
                           renable => R_ENABLE, wenable => W_ENABLE, wdata(7) 
                           => WDATA(7), wdata(6) => WDATA(6), wdata(5) => 
                           WDATA(5), wdata(4) => WDATA(4), wdata(3) => WDATA(3)
                           , wdata(2) => WDATA(2), wdata(1) => WDATA(1), 
                           wdata(0) => WDATA(0), rdata(7) => R_DATA(7), 
                           rdata(6) => R_DATA(6), rdata(5) => R_DATA(5), 
                           rdata(4) => R_DATA(4), rdata(3) => R_DATA(3), 
                           rdata(2) => R_DATA(2), rdata(1) => R_DATA(1), 
                           rdata(0) => R_DATA(0), empty => EMPTY, full => FULL)
                           ;

end SYN_wrapper;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity read_ptr_2 is

   port( rclk, rst_n, renable : in std_logic;  rptr, rptr_nxt : out 
         std_logic_vector (3 downto 0));

end read_ptr_2;

architecture SYN_rtl of read_ptr_2 is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal rptr_nxt_3_port, rptr_nxt_2_port, rptr_nxt_1_port, rptr_nxt_0_port, 
      binary_nxt_2_port, binary_nxt_1_port, binary_nxt_0_port, binary_r_3_port,
      binary_r_2_port, binary_r_1_port, binary_r_0_port, n1, n2, n3, n4, n5, n6
      , n7, n8, n9, n10, n11, n12 : std_logic;

begin
   rptr_nxt <= ( rptr_nxt_3_port, rptr_nxt_2_port, rptr_nxt_1_port, 
      rptr_nxt_0_port );
   
   binary_r_reg_0_inst : DFFSR port map( D => binary_nxt_0_port, CLK => rclk, R
                           => rst_n, S => n8, Q => binary_r_0_port);
   binary_r_reg_1_inst : DFFSR port map( D => binary_nxt_1_port, CLK => rclk, R
                           => rst_n, S => n7, Q => binary_r_1_port);
   binary_r_reg_2_inst : DFFSR port map( D => binary_nxt_2_port, CLK => rclk, R
                           => rst_n, S => n6, Q => binary_r_2_port);
   binary_r_reg_3_inst : DFFSR port map( D => rptr_nxt_3_port, CLK => rclk, R 
                           => rst_n, S => n5, Q => binary_r_3_port);
   gray_r_reg_3_inst : DFFSR port map( D => rptr_nxt_3_port, CLK => rclk, R => 
                           rst_n, S => n4, Q => rptr(3));
   gray_r_reg_2_inst : DFFSR port map( D => rptr_nxt_2_port, CLK => rclk, R => 
                           rst_n, S => n3, Q => rptr(2));
   gray_r_reg_1_inst : DFFSR port map( D => rptr_nxt_1_port, CLK => rclk, R => 
                           rst_n, S => n2, Q => rptr(1));
   gray_r_reg_0_inst : DFFSR port map( D => rptr_nxt_0_port, CLK => rclk, R => 
                           rst_n, S => n1, Q => rptr(0));
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   n7 <= '1';
   n8 <= '1';
   U11 : XOR2X1 port map( A => rptr_nxt_3_port, B => binary_nxt_2_port, Y => 
                           rptr_nxt_2_port);
   U12 : XNOR2X1 port map( A => n9, B => binary_r_3_port, Y => rptr_nxt_3_port)
                           ;
   U13 : NAND2X1 port map( A => binary_r_2_port, B => n10, Y => n9);
   U14 : XOR2X1 port map( A => binary_nxt_2_port, B => binary_nxt_1_port, Y => 
                           rptr_nxt_1_port);
   U15 : XOR2X1 port map( A => binary_nxt_1_port, B => binary_nxt_0_port, Y => 
                           rptr_nxt_0_port);
   U16 : XOR2X1 port map( A => n10, B => binary_r_2_port, Y => 
                           binary_nxt_2_port);
   U17 : INVX1 port map( A => n11, Y => n10);
   U18 : NAND3X1 port map( A => binary_r_1_port, B => binary_r_0_port, C => 
                           renable, Y => n11);
   U19 : XNOR2X1 port map( A => n12, B => binary_r_1_port, Y => 
                           binary_nxt_1_port);
   U20 : NAND2X1 port map( A => renable, B => binary_r_0_port, Y => n12);
   U21 : XOR2X1 port map( A => binary_r_0_port, B => renable, Y => 
                           binary_nxt_0_port);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity write_ptr_2 is

   port( wclk, rst_n, wenable : in std_logic;  wptr, wptr_nxt : out 
         std_logic_vector (3 downto 0));

end write_ptr_2;

architecture SYN_rtl of write_ptr_2 is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal wptr_nxt_3_port, wptr_nxt_2_port, wptr_nxt_1_port, wptr_nxt_0_port, 
      binary_nxt_2_port, binary_nxt_1_port, binary_nxt_0_port, binary_r_3_port,
      binary_r_2_port, binary_r_1_port, binary_r_0_port, n1, n2, n3, n4, n5, n6
      , n7, n8, n9, n10, n11, n12 : std_logic;

begin
   wptr_nxt <= ( wptr_nxt_3_port, wptr_nxt_2_port, wptr_nxt_1_port, 
      wptr_nxt_0_port );
   
   binary_r_reg_0_inst : DFFSR port map( D => binary_nxt_0_port, CLK => wclk, R
                           => rst_n, S => n8, Q => binary_r_0_port);
   binary_r_reg_1_inst : DFFSR port map( D => binary_nxt_1_port, CLK => wclk, R
                           => rst_n, S => n7, Q => binary_r_1_port);
   binary_r_reg_2_inst : DFFSR port map( D => binary_nxt_2_port, CLK => wclk, R
                           => rst_n, S => n6, Q => binary_r_2_port);
   binary_r_reg_3_inst : DFFSR port map( D => wptr_nxt_3_port, CLK => wclk, R 
                           => rst_n, S => n5, Q => binary_r_3_port);
   gray_r_reg_3_inst : DFFSR port map( D => wptr_nxt_3_port, CLK => wclk, R => 
                           rst_n, S => n4, Q => wptr(3));
   gray_r_reg_2_inst : DFFSR port map( D => wptr_nxt_2_port, CLK => wclk, R => 
                           rst_n, S => n3, Q => wptr(2));
   gray_r_reg_1_inst : DFFSR port map( D => wptr_nxt_1_port, CLK => wclk, R => 
                           rst_n, S => n2, Q => wptr(1));
   gray_r_reg_0_inst : DFFSR port map( D => wptr_nxt_0_port, CLK => wclk, R => 
                           rst_n, S => n1, Q => wptr(0));
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   n7 <= '1';
   n8 <= '1';
   U11 : XOR2X1 port map( A => wptr_nxt_3_port, B => binary_nxt_2_port, Y => 
                           wptr_nxt_2_port);
   U12 : XNOR2X1 port map( A => n9, B => binary_r_3_port, Y => wptr_nxt_3_port)
                           ;
   U13 : NAND2X1 port map( A => binary_r_2_port, B => n10, Y => n9);
   U14 : XOR2X1 port map( A => binary_nxt_2_port, B => binary_nxt_1_port, Y => 
                           wptr_nxt_1_port);
   U15 : XOR2X1 port map( A => binary_nxt_1_port, B => binary_nxt_0_port, Y => 
                           wptr_nxt_0_port);
   U16 : XOR2X1 port map( A => n10, B => binary_r_2_port, Y => 
                           binary_nxt_2_port);
   U17 : INVX1 port map( A => n11, Y => n10);
   U18 : NAND3X1 port map( A => binary_r_1_port, B => binary_r_0_port, C => 
                           wenable, Y => n11);
   U19 : XNOR2X1 port map( A => n12, B => binary_r_1_port, Y => 
                           binary_nxt_1_port);
   U20 : NAND2X1 port map( A => wenable, B => binary_r_0_port, Y => n12);
   U21 : XOR2X1 port map( A => binary_r_0_port, B => wenable, Y => 
                           binary_nxt_0_port);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity read_fifo_ctrl_2 is

   port( rclk, rst_n, renable : in std_logic;  wptr : in std_logic_vector (3 
         downto 0);  rptr : out std_logic_vector (3 downto 0);  raddr : out 
         std_logic_vector (2 downto 0);  empty_flag : out std_logic);

end read_fifo_ctrl_2;

architecture SYN_rtl of read_fifo_ctrl_2 is

   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component read_ptr_2
      port( rclk, rst_n, renable : in std_logic;  rptr, rptr_nxt : out 
            std_logic_vector (3 downto 0));
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal empty_flag_port, renable_p2, rptr_nxt_3_port, rptr_nxt_2_port, 
      rptr_nxt_1_port, rptr_nxt_0_port, rwptr_r2_3_port, rwptr_r2_2_port, 
      rwptr_r2_1_port, rwptr_r2_0_port, rwptr_r1_3_port, rwptr_r1_2_port, 
      rwptr_r1_1_port, rwptr_r1_0_port, gray_rptr_2_port, N3, n3_port, n4, n5, 
      n6, n7, n8, n9, n10, n11, n12, n13, n14, n1, n2, n15, n16, n17, n18, n19,
      n20 : std_logic;

begin
   empty_flag <= empty_flag_port;
   
   rwptr_r1_reg_3_inst : DFFSR port map( D => wptr(3), CLK => rclk, R => rst_n,
                           S => n14, Q => rwptr_r1_3_port);
   rwptr_r1_reg_2_inst : DFFSR port map( D => wptr(2), CLK => rclk, R => rst_n,
                           S => n13, Q => rwptr_r1_2_port);
   rwptr_r1_reg_1_inst : DFFSR port map( D => wptr(1), CLK => rclk, R => rst_n,
                           S => n12, Q => rwptr_r1_1_port);
   rwptr_r1_reg_0_inst : DFFSR port map( D => wptr(0), CLK => rclk, R => rst_n,
                           S => n11, Q => rwptr_r1_0_port);
   rwptr_r2_reg_3_inst : DFFSR port map( D => rwptr_r1_3_port, CLK => rclk, R 
                           => rst_n, S => n10, Q => rwptr_r2_3_port);
   rwptr_r2_reg_2_inst : DFFSR port map( D => rwptr_r1_2_port, CLK => rclk, R 
                           => rst_n, S => n9, Q => rwptr_r2_2_port);
   rwptr_r2_reg_1_inst : DFFSR port map( D => rwptr_r1_1_port, CLK => rclk, R 
                           => rst_n, S => n8, Q => rwptr_r2_1_port);
   rwptr_r2_reg_0_inst : DFFSR port map( D => rwptr_r1_0_port, CLK => rclk, R 
                           => rst_n, S => n7, Q => rwptr_r2_0_port);
   empty_flag_r_reg : DFFSR port map( D => N3, CLK => rclk, R => n6, S => rst_n
                           , Q => empty_flag_port);
   raddr_reg_2_inst : DFFSR port map( D => gray_rptr_2_port, CLK => rclk, R => 
                           rst_n, S => n5, Q => raddr(2));
   raddr_reg_1_inst : DFFSR port map( D => rptr_nxt_1_port, CLK => rclk, R => 
                           rst_n, S => n4, Q => raddr(1));
   raddr_reg_0_inst : DFFSR port map( D => rptr_nxt_0_port, CLK => rclk, R => 
                           rst_n, S => n3_port, Q => raddr(0));
   n3_port <= '1';
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
   RPU1 : read_ptr_2 port map( rclk => rclk, rst_n => rst_n, renable => 
                           renable_p2, rptr(3) => rptr(3), rptr(2) => rptr(2), 
                           rptr(1) => rptr(1), rptr(0) => rptr(0), rptr_nxt(3) 
                           => rptr_nxt_3_port, rptr_nxt(2) => rptr_nxt_2_port, 
                           rptr_nxt(1) => rptr_nxt_1_port, rptr_nxt(0) => 
                           rptr_nxt_0_port);
   U15 : NOR2X1 port map( A => empty_flag_port, B => n1, Y => renable_p2);
   U16 : INVX1 port map( A => renable, Y => n1);
   U17 : NOR2X1 port map( A => n2, B => n15, Y => N3);
   U18 : NAND2X1 port map( A => n16, B => n17, Y => n15);
   U19 : XOR2X1 port map( A => n18, B => gray_rptr_2_port, Y => n17);
   U20 : XOR2X1 port map( A => rptr_nxt_3_port, B => rptr_nxt_2_port, Y => 
                           gray_rptr_2_port);
   U21 : XNOR2X1 port map( A => rwptr_r2_3_port, B => rwptr_r2_2_port, Y => n18
                           );
   U22 : XNOR2X1 port map( A => rwptr_r2_1_port, B => rptr_nxt_1_port, Y => n16
                           );
   U23 : NAND2X1 port map( A => n19, B => n20, Y => n2);
   U24 : XNOR2X1 port map( A => rwptr_r2_0_port, B => rptr_nxt_0_port, Y => n20
                           );
   U25 : XNOR2X1 port map( A => rptr_nxt_3_port, B => rwptr_r2_3_port, Y => n19
                           );

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity write_fifo_ctrl_2 is

   port( wclk, rst_n, wenable : in std_logic;  rptr : in std_logic_vector (3 
         downto 0);  wenable_fifo : out std_logic;  wptr : out std_logic_vector
         (3 downto 0);  waddr : out std_logic_vector (2 downto 0);  full_flag :
         out std_logic);

end write_fifo_ctrl_2;

architecture SYN_rtl of write_fifo_ctrl_2 is

   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component write_ptr_2
      port( wclk, rst_n, wenable : in std_logic;  wptr, wptr_nxt : out 
            std_logic_vector (3 downto 0));
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal full_flag_port, wptr_nxt_3_port, wptr_nxt_2_port, wptr_nxt_1_port, 
      wptr_nxt_0_port, wrptr_r2_3_port, wrptr_r2_2_port, wrptr_r2_1_port, 
      wrptr_r2_0_port, wrptr_r1_3_port, wrptr_r1_2_port, wrptr_r1_1_port, 
      wrptr_r1_0_port, gray_wptr_2_port, N5, n3, n4, n5_port, n6, n7, n8, n9, 
      n10, n11, n12, n13, n14, n1, wenable_fifo_port, n15, n16, n17, n18, n19, 
      n20, n21, n22 : std_logic;

begin
   wenable_fifo <= wenable_fifo_port;
   full_flag <= full_flag_port;
   
   wrptr_r1_reg_3_inst : DFFSR port map( D => rptr(3), CLK => wclk, R => rst_n,
                           S => n14, Q => wrptr_r1_3_port);
   wrptr_r1_reg_2_inst : DFFSR port map( D => rptr(2), CLK => wclk, R => rst_n,
                           S => n13, Q => wrptr_r1_2_port);
   wrptr_r1_reg_1_inst : DFFSR port map( D => rptr(1), CLK => wclk, R => rst_n,
                           S => n12, Q => wrptr_r1_1_port);
   wrptr_r1_reg_0_inst : DFFSR port map( D => rptr(0), CLK => wclk, R => rst_n,
                           S => n11, Q => wrptr_r1_0_port);
   wrptr_r2_reg_3_inst : DFFSR port map( D => wrptr_r1_3_port, CLK => wclk, R 
                           => rst_n, S => n10, Q => wrptr_r2_3_port);
   wrptr_r2_reg_2_inst : DFFSR port map( D => wrptr_r1_2_port, CLK => wclk, R 
                           => rst_n, S => n9, Q => wrptr_r2_2_port);
   wrptr_r2_reg_1_inst : DFFSR port map( D => wrptr_r1_1_port, CLK => wclk, R 
                           => rst_n, S => n8, Q => wrptr_r2_1_port);
   wrptr_r2_reg_0_inst : DFFSR port map( D => wrptr_r1_0_port, CLK => wclk, R 
                           => rst_n, S => n7, Q => wrptr_r2_0_port);
   full_flag_r_reg : DFFSR port map( D => N5, CLK => wclk, R => rst_n, S => n6,
                           Q => full_flag_port);
   waddr_reg_2_inst : DFFSR port map( D => gray_wptr_2_port, CLK => wclk, R => 
                           rst_n, S => n5_port, Q => waddr(2));
   waddr_reg_1_inst : DFFSR port map( D => wptr_nxt_1_port, CLK => wclk, R => 
                           rst_n, S => n4, Q => waddr(1));
   waddr_reg_0_inst : DFFSR port map( D => wptr_nxt_0_port, CLK => wclk, R => 
                           rst_n, S => n3, Q => waddr(0));
   n3 <= '1';
   n4 <= '1';
   n5_port <= '1';
   n6 <= '1';
   n7 <= '1';
   n8 <= '1';
   n9 <= '1';
   n10 <= '1';
   n11 <= '1';
   n12 <= '1';
   n13 <= '1';
   n14 <= '1';
   WPU1 : write_ptr_2 port map( wclk => wclk, rst_n => rst_n, wenable => 
                           wenable_fifo_port, wptr(3) => wptr(3), wptr(2) => 
                           wptr(2), wptr(1) => wptr(1), wptr(0) => wptr(0), 
                           wptr_nxt(3) => wptr_nxt_3_port, wptr_nxt(2) => 
                           wptr_nxt_2_port, wptr_nxt(1) => wptr_nxt_1_port, 
                           wptr_nxt(0) => wptr_nxt_0_port);
   U15 : OR2X2 port map( A => full_flag_port, B => n15, Y => n1);
   U16 : INVX1 port map( A => n1, Y => wenable_fifo_port);
   U17 : INVX1 port map( A => wenable, Y => n15);
   U18 : NOR2X1 port map( A => n16, B => n17, Y => N5);
   U19 : NAND2X1 port map( A => n18, B => n19, Y => n17);
   U20 : XOR2X1 port map( A => n20, B => gray_wptr_2_port, Y => n19);
   U21 : XOR2X1 port map( A => wptr_nxt_3_port, B => wptr_nxt_2_port, Y => 
                           gray_wptr_2_port);
   U22 : XNOR2X1 port map( A => wrptr_r2_3_port, B => wrptr_r2_2_port, Y => n20
                           );
   U23 : XNOR2X1 port map( A => wrptr_r2_1_port, B => wptr_nxt_1_port, Y => n18
                           );
   U24 : NAND2X1 port map( A => n21, B => n22, Y => n16);
   U25 : XOR2X1 port map( A => wrptr_r2_3_port, B => wptr_nxt_3_port, Y => n22)
                           ;
   U26 : XNOR2X1 port map( A => wrptr_r2_0_port, B => wptr_nxt_0_port, Y => n21
                           );

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity fiforam_2 is

   port( wclk, wenable : in std_logic;  waddr, raddr : in std_logic_vector (2 
         downto 0);  wdata : in std_logic_vector (7 downto 0);  rdata : out 
         std_logic_vector (7 downto 0));

end fiforam_2;

architecture SYN_rtl of fiforam_2 is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFPOSX1
      port( D, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   signal fiforeg_0_7_port, fiforeg_0_6_port, fiforeg_0_5_port, 
      fiforeg_0_4_port, fiforeg_0_3_port, fiforeg_0_2_port, fiforeg_0_1_port, 
      fiforeg_0_0_port, fiforeg_1_7_port, fiforeg_1_6_port, fiforeg_1_5_port, 
      fiforeg_1_4_port, fiforeg_1_3_port, fiforeg_1_2_port, fiforeg_1_1_port, 
      fiforeg_1_0_port, fiforeg_2_7_port, fiforeg_2_6_port, fiforeg_2_5_port, 
      fiforeg_2_4_port, fiforeg_2_3_port, fiforeg_2_2_port, fiforeg_2_1_port, 
      fiforeg_2_0_port, fiforeg_3_7_port, fiforeg_3_6_port, fiforeg_3_5_port, 
      fiforeg_3_4_port, fiforeg_3_3_port, fiforeg_3_2_port, fiforeg_3_1_port, 
      fiforeg_3_0_port, fiforeg_4_7_port, fiforeg_4_6_port, fiforeg_4_5_port, 
      fiforeg_4_4_port, fiforeg_4_3_port, fiforeg_4_2_port, fiforeg_4_1_port, 
      fiforeg_4_0_port, fiforeg_5_7_port, fiforeg_5_6_port, fiforeg_5_5_port, 
      fiforeg_5_4_port, fiforeg_5_3_port, fiforeg_5_2_port, fiforeg_5_1_port, 
      fiforeg_5_0_port, fiforeg_6_7_port, fiforeg_6_6_port, fiforeg_6_5_port, 
      fiforeg_6_4_port, fiforeg_6_3_port, fiforeg_6_2_port, fiforeg_6_1_port, 
      fiforeg_6_0_port, fiforeg_7_7_port, fiforeg_7_6_port, fiforeg_7_5_port, 
      fiforeg_7_4_port, fiforeg_7_3_port, fiforeg_7_2_port, fiforeg_7_1_port, 
      fiforeg_7_0_port, n212, n213, n214, n215, n216, n217, n218, n219, n220, 
      n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, 
      n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, 
      n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, 
      n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, 
      n269, n270, n271, n272, n273, n274, n275, n1, n2, n3, n4, n5, n6, n7, n8,
      n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
      n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38
      , n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, 
      n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67
      , n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, 
      n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96
      , n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, 
      n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, 
      n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, 
      n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, 
      n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, 
      n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, 
      n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, 
      n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, 
      n193, n194, n195, n196, n197 : std_logic;

begin
   
   fiforeg_reg_7_7_inst : DFFPOSX1 port map( D => n212, CLK => wclk, Q => 
                           fiforeg_7_7_port);
   fiforeg_reg_6_7_inst : DFFPOSX1 port map( D => n213, CLK => wclk, Q => 
                           fiforeg_6_7_port);
   fiforeg_reg_5_7_inst : DFFPOSX1 port map( D => n214, CLK => wclk, Q => 
                           fiforeg_5_7_port);
   fiforeg_reg_4_7_inst : DFFPOSX1 port map( D => n215, CLK => wclk, Q => 
                           fiforeg_4_7_port);
   fiforeg_reg_3_7_inst : DFFPOSX1 port map( D => n216, CLK => wclk, Q => 
                           fiforeg_3_7_port);
   fiforeg_reg_2_7_inst : DFFPOSX1 port map( D => n217, CLK => wclk, Q => 
                           fiforeg_2_7_port);
   fiforeg_reg_1_7_inst : DFFPOSX1 port map( D => n218, CLK => wclk, Q => 
                           fiforeg_1_7_port);
   fiforeg_reg_0_7_inst : DFFPOSX1 port map( D => n219, CLK => wclk, Q => 
                           fiforeg_0_7_port);
   fiforeg_reg_7_6_inst : DFFPOSX1 port map( D => n220, CLK => wclk, Q => 
                           fiforeg_7_6_port);
   fiforeg_reg_6_6_inst : DFFPOSX1 port map( D => n221, CLK => wclk, Q => 
                           fiforeg_6_6_port);
   fiforeg_reg_5_6_inst : DFFPOSX1 port map( D => n222, CLK => wclk, Q => 
                           fiforeg_5_6_port);
   fiforeg_reg_4_6_inst : DFFPOSX1 port map( D => n223, CLK => wclk, Q => 
                           fiforeg_4_6_port);
   fiforeg_reg_3_6_inst : DFFPOSX1 port map( D => n224, CLK => wclk, Q => 
                           fiforeg_3_6_port);
   fiforeg_reg_2_6_inst : DFFPOSX1 port map( D => n225, CLK => wclk, Q => 
                           fiforeg_2_6_port);
   fiforeg_reg_1_6_inst : DFFPOSX1 port map( D => n226, CLK => wclk, Q => 
                           fiforeg_1_6_port);
   fiforeg_reg_0_6_inst : DFFPOSX1 port map( D => n227, CLK => wclk, Q => 
                           fiforeg_0_6_port);
   fiforeg_reg_7_5_inst : DFFPOSX1 port map( D => n228, CLK => wclk, Q => 
                           fiforeg_7_5_port);
   fiforeg_reg_6_5_inst : DFFPOSX1 port map( D => n229, CLK => wclk, Q => 
                           fiforeg_6_5_port);
   fiforeg_reg_5_5_inst : DFFPOSX1 port map( D => n230, CLK => wclk, Q => 
                           fiforeg_5_5_port);
   fiforeg_reg_4_5_inst : DFFPOSX1 port map( D => n231, CLK => wclk, Q => 
                           fiforeg_4_5_port);
   fiforeg_reg_3_5_inst : DFFPOSX1 port map( D => n232, CLK => wclk, Q => 
                           fiforeg_3_5_port);
   fiforeg_reg_2_5_inst : DFFPOSX1 port map( D => n233, CLK => wclk, Q => 
                           fiforeg_2_5_port);
   fiforeg_reg_1_5_inst : DFFPOSX1 port map( D => n234, CLK => wclk, Q => 
                           fiforeg_1_5_port);
   fiforeg_reg_0_5_inst : DFFPOSX1 port map( D => n235, CLK => wclk, Q => 
                           fiforeg_0_5_port);
   fiforeg_reg_7_4_inst : DFFPOSX1 port map( D => n236, CLK => wclk, Q => 
                           fiforeg_7_4_port);
   fiforeg_reg_6_4_inst : DFFPOSX1 port map( D => n237, CLK => wclk, Q => 
                           fiforeg_6_4_port);
   fiforeg_reg_5_4_inst : DFFPOSX1 port map( D => n238, CLK => wclk, Q => 
                           fiforeg_5_4_port);
   fiforeg_reg_4_4_inst : DFFPOSX1 port map( D => n239, CLK => wclk, Q => 
                           fiforeg_4_4_port);
   fiforeg_reg_3_4_inst : DFFPOSX1 port map( D => n240, CLK => wclk, Q => 
                           fiforeg_3_4_port);
   fiforeg_reg_2_4_inst : DFFPOSX1 port map( D => n241, CLK => wclk, Q => 
                           fiforeg_2_4_port);
   fiforeg_reg_1_4_inst : DFFPOSX1 port map( D => n242, CLK => wclk, Q => 
                           fiforeg_1_4_port);
   fiforeg_reg_0_4_inst : DFFPOSX1 port map( D => n243, CLK => wclk, Q => 
                           fiforeg_0_4_port);
   fiforeg_reg_7_3_inst : DFFPOSX1 port map( D => n244, CLK => wclk, Q => 
                           fiforeg_7_3_port);
   fiforeg_reg_6_3_inst : DFFPOSX1 port map( D => n245, CLK => wclk, Q => 
                           fiforeg_6_3_port);
   fiforeg_reg_5_3_inst : DFFPOSX1 port map( D => n246, CLK => wclk, Q => 
                           fiforeg_5_3_port);
   fiforeg_reg_4_3_inst : DFFPOSX1 port map( D => n247, CLK => wclk, Q => 
                           fiforeg_4_3_port);
   fiforeg_reg_3_3_inst : DFFPOSX1 port map( D => n248, CLK => wclk, Q => 
                           fiforeg_3_3_port);
   fiforeg_reg_2_3_inst : DFFPOSX1 port map( D => n249, CLK => wclk, Q => 
                           fiforeg_2_3_port);
   fiforeg_reg_1_3_inst : DFFPOSX1 port map( D => n250, CLK => wclk, Q => 
                           fiforeg_1_3_port);
   fiforeg_reg_0_3_inst : DFFPOSX1 port map( D => n251, CLK => wclk, Q => 
                           fiforeg_0_3_port);
   fiforeg_reg_7_2_inst : DFFPOSX1 port map( D => n252, CLK => wclk, Q => 
                           fiforeg_7_2_port);
   fiforeg_reg_6_2_inst : DFFPOSX1 port map( D => n253, CLK => wclk, Q => 
                           fiforeg_6_2_port);
   fiforeg_reg_5_2_inst : DFFPOSX1 port map( D => n254, CLK => wclk, Q => 
                           fiforeg_5_2_port);
   fiforeg_reg_4_2_inst : DFFPOSX1 port map( D => n255, CLK => wclk, Q => 
                           fiforeg_4_2_port);
   fiforeg_reg_3_2_inst : DFFPOSX1 port map( D => n256, CLK => wclk, Q => 
                           fiforeg_3_2_port);
   fiforeg_reg_2_2_inst : DFFPOSX1 port map( D => n257, CLK => wclk, Q => 
                           fiforeg_2_2_port);
   fiforeg_reg_1_2_inst : DFFPOSX1 port map( D => n258, CLK => wclk, Q => 
                           fiforeg_1_2_port);
   fiforeg_reg_0_2_inst : DFFPOSX1 port map( D => n259, CLK => wclk, Q => 
                           fiforeg_0_2_port);
   fiforeg_reg_7_1_inst : DFFPOSX1 port map( D => n260, CLK => wclk, Q => 
                           fiforeg_7_1_port);
   fiforeg_reg_6_1_inst : DFFPOSX1 port map( D => n261, CLK => wclk, Q => 
                           fiforeg_6_1_port);
   fiforeg_reg_5_1_inst : DFFPOSX1 port map( D => n262, CLK => wclk, Q => 
                           fiforeg_5_1_port);
   fiforeg_reg_4_1_inst : DFFPOSX1 port map( D => n263, CLK => wclk, Q => 
                           fiforeg_4_1_port);
   fiforeg_reg_3_1_inst : DFFPOSX1 port map( D => n264, CLK => wclk, Q => 
                           fiforeg_3_1_port);
   fiforeg_reg_2_1_inst : DFFPOSX1 port map( D => n265, CLK => wclk, Q => 
                           fiforeg_2_1_port);
   fiforeg_reg_1_1_inst : DFFPOSX1 port map( D => n266, CLK => wclk, Q => 
                           fiforeg_1_1_port);
   fiforeg_reg_0_1_inst : DFFPOSX1 port map( D => n267, CLK => wclk, Q => 
                           fiforeg_0_1_port);
   fiforeg_reg_7_0_inst : DFFPOSX1 port map( D => n275, CLK => wclk, Q => 
                           fiforeg_7_0_port);
   fiforeg_reg_6_0_inst : DFFPOSX1 port map( D => n268, CLK => wclk, Q => 
                           fiforeg_6_0_port);
   fiforeg_reg_5_0_inst : DFFPOSX1 port map( D => n269, CLK => wclk, Q => 
                           fiforeg_5_0_port);
   fiforeg_reg_4_0_inst : DFFPOSX1 port map( D => n270, CLK => wclk, Q => 
                           fiforeg_4_0_port);
   fiforeg_reg_3_0_inst : DFFPOSX1 port map( D => n271, CLK => wclk, Q => 
                           fiforeg_3_0_port);
   fiforeg_reg_2_0_inst : DFFPOSX1 port map( D => n272, CLK => wclk, Q => 
                           fiforeg_2_0_port);
   fiforeg_reg_1_0_inst : DFFPOSX1 port map( D => n273, CLK => wclk, Q => 
                           fiforeg_1_0_port);
   fiforeg_reg_0_0_inst : DFFPOSX1 port map( D => n274, CLK => wclk, Q => 
                           fiforeg_0_0_port);
   U2 : INVX1 port map( A => n99, Y => n1);
   U3 : INVX2 port map( A => n1, Y => n2);
   U4 : INVX1 port map( A => n101, Y => n3);
   U5 : INVX2 port map( A => n3, Y => n4);
   U6 : INVX1 port map( A => n100, Y => n5);
   U7 : INVX2 port map( A => n5, Y => n6);
   U8 : BUFX2 port map( A => n98, Y => n7);
   U9 : NAND3X1 port map( A => n8, B => n9, C => n10, Y => rdata(7));
   U10 : NOR2X1 port map( A => n11, B => n12, Y => n10);
   U11 : OAI22X1 port map( A => n13, B => n14, C => n15, D => n16, Y => n12);
   U12 : OAI22X1 port map( A => n17, B => n18, C => n19, D => n20, Y => n11);
   U13 : AOI22X1 port map( A => fiforeg_5_7_port, B => n21, C => 
                           fiforeg_4_7_port, D => n22, Y => n9);
   U14 : AOI22X1 port map( A => fiforeg_7_7_port, B => n23, C => 
                           fiforeg_6_7_port, D => n24, Y => n8);
   U15 : NAND3X1 port map( A => n25, B => n26, C => n27, Y => rdata(6));
   U16 : NOR2X1 port map( A => n28, B => n29, Y => n27);
   U17 : OAI22X1 port map( A => n13, B => n30, C => n15, D => n31, Y => n29);
   U18 : OAI22X1 port map( A => n17, B => n32, C => n19, D => n33, Y => n28);
   U19 : AOI22X1 port map( A => fiforeg_5_6_port, B => n21, C => 
                           fiforeg_4_6_port, D => n22, Y => n26);
   U20 : AOI22X1 port map( A => fiforeg_7_6_port, B => n23, C => 
                           fiforeg_6_6_port, D => n24, Y => n25);
   U21 : NAND3X1 port map( A => n34, B => n35, C => n36, Y => rdata(5));
   U22 : NOR2X1 port map( A => n37, B => n38, Y => n36);
   U23 : OAI22X1 port map( A => n13, B => n39, C => n15, D => n40, Y => n38);
   U24 : OAI22X1 port map( A => n17, B => n41, C => n19, D => n42, Y => n37);
   U25 : AOI22X1 port map( A => fiforeg_5_5_port, B => n21, C => 
                           fiforeg_4_5_port, D => n22, Y => n35);
   U26 : AOI22X1 port map( A => fiforeg_7_5_port, B => n23, C => 
                           fiforeg_6_5_port, D => n24, Y => n34);
   U27 : NAND3X1 port map( A => n43, B => n44, C => n45, Y => rdata(4));
   U28 : NOR2X1 port map( A => n46, B => n47, Y => n45);
   U29 : OAI22X1 port map( A => n13, B => n48, C => n15, D => n49, Y => n47);
   U30 : OAI22X1 port map( A => n17, B => n50, C => n19, D => n51, Y => n46);
   U31 : AOI22X1 port map( A => fiforeg_5_4_port, B => n21, C => 
                           fiforeg_4_4_port, D => n22, Y => n44);
   U32 : AOI22X1 port map( A => fiforeg_7_4_port, B => n23, C => 
                           fiforeg_6_4_port, D => n24, Y => n43);
   U33 : NAND3X1 port map( A => n52, B => n53, C => n54, Y => rdata(3));
   U34 : NOR2X1 port map( A => n55, B => n56, Y => n54);
   U35 : OAI22X1 port map( A => n13, B => n57, C => n15, D => n58, Y => n56);
   U36 : OAI22X1 port map( A => n17, B => n59, C => n19, D => n60, Y => n55);
   U37 : AOI22X1 port map( A => fiforeg_5_3_port, B => n21, C => 
                           fiforeg_4_3_port, D => n22, Y => n53);
   U38 : AOI22X1 port map( A => fiforeg_7_3_port, B => n23, C => 
                           fiforeg_6_3_port, D => n24, Y => n52);
   U39 : NAND3X1 port map( A => n61, B => n62, C => n63, Y => rdata(2));
   U40 : NOR2X1 port map( A => n64, B => n65, Y => n63);
   U41 : OAI22X1 port map( A => n13, B => n66, C => n15, D => n67, Y => n65);
   U42 : OAI22X1 port map( A => n17, B => n68, C => n19, D => n69, Y => n64);
   U43 : AOI22X1 port map( A => fiforeg_5_2_port, B => n21, C => 
                           fiforeg_4_2_port, D => n22, Y => n62);
   U44 : AOI22X1 port map( A => fiforeg_7_2_port, B => n23, C => 
                           fiforeg_6_2_port, D => n24, Y => n61);
   U45 : NAND3X1 port map( A => n70, B => n71, C => n72, Y => rdata(1));
   U46 : NOR2X1 port map( A => n73, B => n74, Y => n72);
   U47 : OAI22X1 port map( A => n13, B => n75, C => n15, D => n76, Y => n74);
   U48 : OAI22X1 port map( A => n17, B => n77, C => n19, D => n78, Y => n73);
   U49 : AOI22X1 port map( A => fiforeg_5_1_port, B => n21, C => 
                           fiforeg_4_1_port, D => n22, Y => n71);
   U50 : AOI22X1 port map( A => fiforeg_7_1_port, B => n23, C => 
                           fiforeg_6_1_port, D => n24, Y => n70);
   U51 : NAND3X1 port map( A => n79, B => n80, C => n81, Y => rdata(0));
   U52 : NOR2X1 port map( A => n82, B => n83, Y => n81);
   U53 : OAI22X1 port map( A => n13, B => n84, C => n15, D => n85, Y => n83);
   U54 : NAND3X1 port map( A => n86, B => n87, C => n88, Y => n15);
   U55 : NAND3X1 port map( A => n86, B => n87, C => raddr(0), Y => n13);
   U56 : OAI22X1 port map( A => n17, B => n89, C => n19, D => n90, Y => n82);
   U57 : NAND3X1 port map( A => n88, B => n87, C => raddr(1), Y => n19);
   U58 : NAND3X1 port map( A => raddr(0), B => n87, C => raddr(1), Y => n17);
   U59 : INVX1 port map( A => raddr(2), Y => n87);
   U60 : AOI22X1 port map( A => fiforeg_5_0_port, B => n21, C => 
                           fiforeg_4_0_port, D => n22, Y => n80);
   U61 : INVX1 port map( A => n91, Y => n22);
   U62 : NAND3X1 port map( A => n88, B => n86, C => raddr(2), Y => n91);
   U63 : INVX1 port map( A => n92, Y => n21);
   U64 : NAND3X1 port map( A => raddr(0), B => n86, C => raddr(2), Y => n92);
   U65 : INVX1 port map( A => raddr(1), Y => n86);
   U66 : AOI22X1 port map( A => fiforeg_7_0_port, B => n23, C => 
                           fiforeg_6_0_port, D => n24, Y => n79);
   U67 : INVX1 port map( A => n93, Y => n24);
   U68 : NAND3X1 port map( A => raddr(2), B => n88, C => raddr(1), Y => n93);
   U69 : INVX1 port map( A => raddr(0), Y => n88);
   U70 : INVX1 port map( A => n94, Y => n23);
   U71 : NAND3X1 port map( A => raddr(2), B => raddr(0), C => raddr(1), Y => 
                           n94);
   U72 : MUX2X1 port map( B => n95, A => n96, S => n97, Y => n275);
   U73 : INVX1 port map( A => fiforeg_7_0_port, Y => n96);
   U74 : MUX2X1 port map( B => n95, A => n85, S => n7, Y => n274);
   U75 : MUX2X1 port map( B => n95, A => n84, S => n2, Y => n273);
   U76 : MUX2X1 port map( B => n95, A => n90, S => n6, Y => n272);
   U77 : MUX2X1 port map( B => n95, A => n89, S => n4, Y => n271);
   U78 : MUX2X1 port map( B => n95, A => n102, S => n103, Y => n270);
   U79 : INVX1 port map( A => fiforeg_4_0_port, Y => n102);
   U80 : MUX2X1 port map( B => n95, A => n104, S => n105, Y => n269);
   U81 : INVX1 port map( A => fiforeg_5_0_port, Y => n104);
   U82 : MUX2X1 port map( B => n95, A => n106, S => n107, Y => n268);
   U83 : INVX1 port map( A => fiforeg_6_0_port, Y => n106);
   U84 : MUX2X1 port map( B => n108, A => wdata(0), S => wenable, Y => n95);
   U85 : NAND3X1 port map( A => n109, B => n110, C => n111, Y => n108);
   U86 : NOR2X1 port map( A => n112, B => n113, Y => n111);
   U87 : OAI22X1 port map( A => n84, B => n2, C => n85, D => n7, Y => n113);
   U88 : INVX1 port map( A => fiforeg_0_0_port, Y => n85);
   U89 : INVX1 port map( A => fiforeg_1_0_port, Y => n84);
   U90 : OAI22X1 port map( A => n89, B => n4, C => n90, D => n6, Y => n112);
   U91 : INVX1 port map( A => fiforeg_2_0_port, Y => n90);
   U92 : INVX1 port map( A => fiforeg_3_0_port, Y => n89);
   U93 : AOI22X1 port map( A => n114, B => fiforeg_6_0_port, C => n115, D => 
                           fiforeg_4_0_port, Y => n110);
   U94 : AOI22X1 port map( A => n116, B => fiforeg_5_0_port, C => n117, D => 
                           fiforeg_7_0_port, Y => n109);
   U95 : MUX2X1 port map( B => n118, A => n76, S => n7, Y => n267);
   U96 : MUX2X1 port map( B => n118, A => n75, S => n2, Y => n266);
   U97 : MUX2X1 port map( B => n118, A => n78, S => n6, Y => n265);
   U98 : MUX2X1 port map( B => n118, A => n77, S => n4, Y => n264);
   U99 : MUX2X1 port map( B => n118, A => n119, S => n103, Y => n263);
   U100 : INVX1 port map( A => fiforeg_4_1_port, Y => n119);
   U101 : MUX2X1 port map( B => n118, A => n120, S => n105, Y => n262);
   U102 : INVX1 port map( A => fiforeg_5_1_port, Y => n120);
   U103 : MUX2X1 port map( B => n118, A => n121, S => n107, Y => n261);
   U104 : INVX1 port map( A => fiforeg_6_1_port, Y => n121);
   U105 : MUX2X1 port map( B => n118, A => n122, S => n97, Y => n260);
   U106 : INVX1 port map( A => fiforeg_7_1_port, Y => n122);
   U107 : MUX2X1 port map( B => n123, A => wdata(1), S => wenable, Y => n118);
   U108 : NAND3X1 port map( A => n124, B => n125, C => n126, Y => n123);
   U109 : NOR2X1 port map( A => n127, B => n128, Y => n126);
   U110 : OAI22X1 port map( A => n75, B => n2, C => n76, D => n7, Y => n128);
   U111 : INVX1 port map( A => fiforeg_0_1_port, Y => n76);
   U112 : INVX1 port map( A => fiforeg_1_1_port, Y => n75);
   U113 : OAI22X1 port map( A => n77, B => n4, C => n78, D => n6, Y => n127);
   U114 : INVX1 port map( A => fiforeg_2_1_port, Y => n78);
   U115 : INVX1 port map( A => fiforeg_3_1_port, Y => n77);
   U116 : AOI22X1 port map( A => n114, B => fiforeg_6_1_port, C => n115, D => 
                           fiforeg_4_1_port, Y => n125);
   U117 : AOI22X1 port map( A => n116, B => fiforeg_5_1_port, C => n117, D => 
                           fiforeg_7_1_port, Y => n124);
   U118 : MUX2X1 port map( B => n129, A => n67, S => n7, Y => n259);
   U119 : MUX2X1 port map( B => n129, A => n66, S => n2, Y => n258);
   U120 : MUX2X1 port map( B => n129, A => n69, S => n6, Y => n257);
   U121 : MUX2X1 port map( B => n129, A => n68, S => n4, Y => n256);
   U122 : MUX2X1 port map( B => n129, A => n130, S => n103, Y => n255);
   U123 : INVX1 port map( A => fiforeg_4_2_port, Y => n130);
   U124 : MUX2X1 port map( B => n129, A => n131, S => n105, Y => n254);
   U125 : INVX1 port map( A => fiforeg_5_2_port, Y => n131);
   U126 : MUX2X1 port map( B => n129, A => n132, S => n107, Y => n253);
   U127 : INVX1 port map( A => fiforeg_6_2_port, Y => n132);
   U128 : MUX2X1 port map( B => n129, A => n133, S => n97, Y => n252);
   U129 : INVX1 port map( A => fiforeg_7_2_port, Y => n133);
   U130 : MUX2X1 port map( B => n134, A => wdata(2), S => wenable, Y => n129);
   U131 : NAND3X1 port map( A => n135, B => n136, C => n137, Y => n134);
   U132 : NOR2X1 port map( A => n138, B => n139, Y => n137);
   U133 : OAI22X1 port map( A => n66, B => n2, C => n67, D => n7, Y => n139);
   U134 : INVX1 port map( A => fiforeg_0_2_port, Y => n67);
   U135 : INVX1 port map( A => fiforeg_1_2_port, Y => n66);
   U136 : OAI22X1 port map( A => n68, B => n4, C => n69, D => n6, Y => n138);
   U137 : INVX1 port map( A => fiforeg_2_2_port, Y => n69);
   U138 : INVX1 port map( A => fiforeg_3_2_port, Y => n68);
   U139 : AOI22X1 port map( A => n114, B => fiforeg_6_2_port, C => n115, D => 
                           fiforeg_4_2_port, Y => n136);
   U140 : AOI22X1 port map( A => n116, B => fiforeg_5_2_port, C => n117, D => 
                           fiforeg_7_2_port, Y => n135);
   U141 : MUX2X1 port map( B => n140, A => n58, S => n7, Y => n251);
   U142 : MUX2X1 port map( B => n140, A => n57, S => n2, Y => n250);
   U143 : MUX2X1 port map( B => n140, A => n60, S => n6, Y => n249);
   U144 : MUX2X1 port map( B => n140, A => n59, S => n4, Y => n248);
   U145 : MUX2X1 port map( B => n140, A => n141, S => n103, Y => n247);
   U146 : INVX1 port map( A => fiforeg_4_3_port, Y => n141);
   U147 : MUX2X1 port map( B => n140, A => n142, S => n105, Y => n246);
   U148 : INVX1 port map( A => fiforeg_5_3_port, Y => n142);
   U149 : MUX2X1 port map( B => n140, A => n143, S => n107, Y => n245);
   U150 : INVX1 port map( A => fiforeg_6_3_port, Y => n143);
   U151 : MUX2X1 port map( B => n140, A => n144, S => n97, Y => n244);
   U152 : INVX1 port map( A => fiforeg_7_3_port, Y => n144);
   U153 : MUX2X1 port map( B => n145, A => wdata(3), S => wenable, Y => n140);
   U154 : NAND3X1 port map( A => n146, B => n147, C => n148, Y => n145);
   U155 : NOR2X1 port map( A => n149, B => n150, Y => n148);
   U156 : OAI22X1 port map( A => n57, B => n2, C => n58, D => n7, Y => n150);
   U157 : INVX1 port map( A => fiforeg_0_3_port, Y => n58);
   U158 : INVX1 port map( A => fiforeg_1_3_port, Y => n57);
   U159 : OAI22X1 port map( A => n59, B => n4, C => n60, D => n6, Y => n149);
   U160 : INVX1 port map( A => fiforeg_2_3_port, Y => n60);
   U161 : INVX1 port map( A => fiforeg_3_3_port, Y => n59);
   U162 : AOI22X1 port map( A => n114, B => fiforeg_6_3_port, C => n115, D => 
                           fiforeg_4_3_port, Y => n147);
   U163 : AOI22X1 port map( A => n116, B => fiforeg_5_3_port, C => n117, D => 
                           fiforeg_7_3_port, Y => n146);
   U164 : MUX2X1 port map( B => n151, A => n49, S => n7, Y => n243);
   U165 : MUX2X1 port map( B => n151, A => n48, S => n2, Y => n242);
   U166 : MUX2X1 port map( B => n151, A => n51, S => n6, Y => n241);
   U167 : MUX2X1 port map( B => n151, A => n50, S => n4, Y => n240);
   U168 : MUX2X1 port map( B => n151, A => n152, S => n103, Y => n239);
   U169 : INVX1 port map( A => fiforeg_4_4_port, Y => n152);
   U170 : MUX2X1 port map( B => n151, A => n153, S => n105, Y => n238);
   U171 : INVX1 port map( A => fiforeg_5_4_port, Y => n153);
   U172 : MUX2X1 port map( B => n151, A => n154, S => n107, Y => n237);
   U173 : INVX1 port map( A => fiforeg_6_4_port, Y => n154);
   U174 : MUX2X1 port map( B => n151, A => n155, S => n97, Y => n236);
   U175 : INVX1 port map( A => fiforeg_7_4_port, Y => n155);
   U176 : MUX2X1 port map( B => n156, A => wdata(4), S => wenable, Y => n151);
   U177 : NAND3X1 port map( A => n157, B => n158, C => n159, Y => n156);
   U178 : NOR2X1 port map( A => n160, B => n161, Y => n159);
   U179 : OAI22X1 port map( A => n48, B => n2, C => n49, D => n7, Y => n161);
   U180 : INVX1 port map( A => fiforeg_0_4_port, Y => n49);
   U181 : INVX1 port map( A => fiforeg_1_4_port, Y => n48);
   U182 : OAI22X1 port map( A => n50, B => n4, C => n51, D => n6, Y => n160);
   U183 : INVX1 port map( A => fiforeg_2_4_port, Y => n51);
   U184 : INVX1 port map( A => fiforeg_3_4_port, Y => n50);
   U185 : AOI22X1 port map( A => n114, B => fiforeg_6_4_port, C => n115, D => 
                           fiforeg_4_4_port, Y => n158);
   U186 : AOI22X1 port map( A => n116, B => fiforeg_5_4_port, C => n117, D => 
                           fiforeg_7_4_port, Y => n157);
   U187 : MUX2X1 port map( B => n162, A => n40, S => n7, Y => n235);
   U188 : MUX2X1 port map( B => n162, A => n39, S => n2, Y => n234);
   U189 : MUX2X1 port map( B => n162, A => n42, S => n6, Y => n233);
   U190 : MUX2X1 port map( B => n162, A => n41, S => n4, Y => n232);
   U191 : MUX2X1 port map( B => n162, A => n163, S => n103, Y => n231);
   U192 : INVX1 port map( A => fiforeg_4_5_port, Y => n163);
   U193 : MUX2X1 port map( B => n162, A => n164, S => n105, Y => n230);
   U194 : INVX1 port map( A => fiforeg_5_5_port, Y => n164);
   U195 : MUX2X1 port map( B => n162, A => n165, S => n107, Y => n229);
   U196 : INVX1 port map( A => fiforeg_6_5_port, Y => n165);
   U197 : MUX2X1 port map( B => n162, A => n166, S => n97, Y => n228);
   U198 : INVX1 port map( A => fiforeg_7_5_port, Y => n166);
   U199 : MUX2X1 port map( B => n167, A => wdata(5), S => wenable, Y => n162);
   U200 : NAND3X1 port map( A => n168, B => n169, C => n170, Y => n167);
   U201 : NOR2X1 port map( A => n171, B => n172, Y => n170);
   U202 : OAI22X1 port map( A => n39, B => n2, C => n40, D => n7, Y => n172);
   U203 : INVX1 port map( A => fiforeg_0_5_port, Y => n40);
   U204 : INVX1 port map( A => fiforeg_1_5_port, Y => n39);
   U205 : OAI22X1 port map( A => n41, B => n4, C => n42, D => n6, Y => n171);
   U206 : INVX1 port map( A => fiforeg_2_5_port, Y => n42);
   U207 : INVX1 port map( A => fiforeg_3_5_port, Y => n41);
   U208 : AOI22X1 port map( A => n114, B => fiforeg_6_5_port, C => n115, D => 
                           fiforeg_4_5_port, Y => n169);
   U209 : AOI22X1 port map( A => n116, B => fiforeg_5_5_port, C => n117, D => 
                           fiforeg_7_5_port, Y => n168);
   U210 : MUX2X1 port map( B => n173, A => n31, S => n7, Y => n227);
   U211 : MUX2X1 port map( B => n173, A => n30, S => n2, Y => n226);
   U212 : MUX2X1 port map( B => n173, A => n33, S => n6, Y => n225);
   U213 : MUX2X1 port map( B => n173, A => n32, S => n4, Y => n224);
   U214 : MUX2X1 port map( B => n173, A => n174, S => n103, Y => n223);
   U215 : INVX1 port map( A => fiforeg_4_6_port, Y => n174);
   U216 : MUX2X1 port map( B => n173, A => n175, S => n105, Y => n222);
   U217 : INVX1 port map( A => fiforeg_5_6_port, Y => n175);
   U218 : MUX2X1 port map( B => n173, A => n176, S => n107, Y => n221);
   U219 : INVX1 port map( A => fiforeg_6_6_port, Y => n176);
   U220 : MUX2X1 port map( B => n173, A => n177, S => n97, Y => n220);
   U221 : INVX1 port map( A => fiforeg_7_6_port, Y => n177);
   U222 : MUX2X1 port map( B => n178, A => wdata(6), S => wenable, Y => n173);
   U223 : NAND3X1 port map( A => n179, B => n180, C => n181, Y => n178);
   U224 : NOR2X1 port map( A => n182, B => n183, Y => n181);
   U225 : OAI22X1 port map( A => n30, B => n2, C => n31, D => n7, Y => n183);
   U226 : INVX1 port map( A => fiforeg_0_6_port, Y => n31);
   U227 : INVX1 port map( A => fiforeg_1_6_port, Y => n30);
   U228 : OAI22X1 port map( A => n32, B => n4, C => n33, D => n6, Y => n182);
   U229 : INVX1 port map( A => fiforeg_2_6_port, Y => n33);
   U230 : INVX1 port map( A => fiforeg_3_6_port, Y => n32);
   U231 : AOI22X1 port map( A => n114, B => fiforeg_6_6_port, C => n115, D => 
                           fiforeg_4_6_port, Y => n180);
   U232 : AOI22X1 port map( A => n116, B => fiforeg_5_6_port, C => n117, D => 
                           fiforeg_7_6_port, Y => n179);
   U233 : MUX2X1 port map( B => n184, A => n16, S => n7, Y => n219);
   U234 : MUX2X1 port map( B => n184, A => n14, S => n2, Y => n218);
   U235 : MUX2X1 port map( B => n184, A => n20, S => n6, Y => n217);
   U236 : MUX2X1 port map( B => n184, A => n18, S => n4, Y => n216);
   U237 : MUX2X1 port map( B => n184, A => n185, S => n103, Y => n215);
   U238 : INVX1 port map( A => fiforeg_4_7_port, Y => n185);
   U239 : MUX2X1 port map( B => n184, A => n186, S => n105, Y => n214);
   U240 : INVX1 port map( A => fiforeg_5_7_port, Y => n186);
   U241 : MUX2X1 port map( B => n184, A => n187, S => n107, Y => n213);
   U242 : INVX1 port map( A => fiforeg_6_7_port, Y => n187);
   U243 : MUX2X1 port map( B => n184, A => n188, S => n97, Y => n212);
   U244 : INVX1 port map( A => fiforeg_7_7_port, Y => n188);
   U245 : MUX2X1 port map( B => n189, A => wdata(7), S => wenable, Y => n184);
   U246 : NAND3X1 port map( A => n190, B => n191, C => n192, Y => n189);
   U247 : NOR2X1 port map( A => n193, B => n194, Y => n192);
   U248 : OAI22X1 port map( A => n14, B => n2, C => n16, D => n7, Y => n194);
   U249 : NAND3X1 port map( A => n195, B => n196, C => n197, Y => n98);
   U250 : INVX1 port map( A => fiforeg_0_7_port, Y => n16);
   U251 : NAND3X1 port map( A => n195, B => n196, C => waddr(0), Y => n99);
   U252 : INVX1 port map( A => fiforeg_1_7_port, Y => n14);
   U253 : OAI22X1 port map( A => n18, B => n4, C => n20, D => n6, Y => n193);
   U254 : NAND3X1 port map( A => n197, B => n196, C => waddr(1), Y => n100);
   U255 : INVX1 port map( A => fiforeg_2_7_port, Y => n20);
   U256 : NAND3X1 port map( A => waddr(0), B => n196, C => waddr(1), Y => n101)
                           ;
   U257 : INVX1 port map( A => waddr(2), Y => n196);
   U258 : INVX1 port map( A => fiforeg_3_7_port, Y => n18);
   U259 : AOI22X1 port map( A => n114, B => fiforeg_6_7_port, C => n115, D => 
                           fiforeg_4_7_port, Y => n191);
   U260 : INVX1 port map( A => n103, Y => n115);
   U261 : NAND3X1 port map( A => n197, B => n195, C => waddr(2), Y => n103);
   U262 : INVX1 port map( A => n107, Y => n114);
   U263 : NAND3X1 port map( A => waddr(1), B => n197, C => waddr(2), Y => n107)
                           ;
   U264 : INVX1 port map( A => waddr(0), Y => n197);
   U265 : AOI22X1 port map( A => n116, B => fiforeg_5_7_port, C => n117, D => 
                           fiforeg_7_7_port, Y => n190);
   U266 : INVX1 port map( A => n97, Y => n117);
   U267 : NAND3X1 port map( A => waddr(1), B => waddr(0), C => waddr(2), Y => 
                           n97);
   U268 : INVX1 port map( A => n105, Y => n116);
   U269 : NAND3X1 port map( A => waddr(0), B => n195, C => waddr(2), Y => n105)
                           ;
   U270 : INVX1 port map( A => waddr(1), Y => n195);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity fifo_2 is

   port( rclk, wclk, rst_n, renable, wenable : in std_logic;  wdata : in 
         std_logic_vector (7 downto 0);  rdata : out std_logic_vector (7 downto
         0);  empty, full : out std_logic);

end fifo_2;

architecture SYN_RTL of fifo_2 is

   component read_fifo_ctrl_2
      port( rclk, rst_n, renable : in std_logic;  wptr : in std_logic_vector (3
            downto 0);  rptr : out std_logic_vector (3 downto 0);  raddr : out 
            std_logic_vector (2 downto 0);  empty_flag : out std_logic);
   end component;
   
   component write_fifo_ctrl_2
      port( wclk, rst_n, wenable : in std_logic;  rptr : in std_logic_vector (3
            downto 0);  wenable_fifo : out std_logic;  wptr : out 
            std_logic_vector (3 downto 0);  waddr : out std_logic_vector (2 
            downto 0);  full_flag : out std_logic);
   end component;
   
   component fiforam_2
      port( wclk, wenable : in std_logic;  waddr, raddr : in std_logic_vector 
            (2 downto 0);  wdata : in std_logic_vector (7 downto 0);  rdata : 
            out std_logic_vector (7 downto 0));
   end component;
   
   signal wenable_fifo, waddr_2_port, waddr_1_port, waddr_0_port, raddr_2_port,
      raddr_1_port, raddr_0_port, rptr_3_port, rptr_2_port, rptr_1_port, 
      rptr_0_port, wptr_3_port, wptr_2_port, wptr_1_port, wptr_0_port : 
      std_logic;

begin
   
   UFIFORAM : fiforam_2 port map( wclk => wclk, wenable => wenable_fifo, 
                           waddr(2) => waddr_2_port, waddr(1) => waddr_1_port, 
                           waddr(0) => waddr_0_port, raddr(2) => raddr_2_port, 
                           raddr(1) => raddr_1_port, raddr(0) => raddr_0_port, 
                           wdata(7) => wdata(7), wdata(6) => wdata(6), wdata(5)
                           => wdata(5), wdata(4) => wdata(4), wdata(3) => 
                           wdata(3), wdata(2) => wdata(2), wdata(1) => wdata(1)
                           , wdata(0) => wdata(0), rdata(7) => rdata(7), 
                           rdata(6) => rdata(6), rdata(5) => rdata(5), rdata(4)
                           => rdata(4), rdata(3) => rdata(3), rdata(2) => 
                           rdata(2), rdata(1) => rdata(1), rdata(0) => rdata(0)
                           );
   UWFC : write_fifo_ctrl_2 port map( wclk => wclk, rst_n => rst_n, wenable => 
                           wenable, rptr(3) => rptr_3_port, rptr(2) => 
                           rptr_2_port, rptr(1) => rptr_1_port, rptr(0) => 
                           rptr_0_port, wenable_fifo => wenable_fifo, wptr(3) 
                           => wptr_3_port, wptr(2) => wptr_2_port, wptr(1) => 
                           wptr_1_port, wptr(0) => wptr_0_port, waddr(2) => 
                           waddr_2_port, waddr(1) => waddr_1_port, waddr(0) => 
                           waddr_0_port, full_flag => full);
   URFC : read_fifo_ctrl_2 port map( rclk => rclk, rst_n => rst_n, renable => 
                           renable, wptr(3) => wptr_3_port, wptr(2) => 
                           wptr_2_port, wptr(1) => wptr_1_port, wptr(0) => 
                           wptr_0_port, rptr(3) => rptr_3_port, rptr(2) => 
                           rptr_2_port, rptr(1) => rptr_1_port, rptr(0) => 
                           rptr_0_port, raddr(2) => raddr_2_port, raddr(1) => 
                           raddr_1_port, raddr(0) => raddr_0_port, empty_flag 
                           => empty);

end SYN_RTL;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity B_UAT_WAITSRAM24_WAITREG5264 is

   port( CLK, RST : in std_logic;  ACCESS_CODE : in std_logic_vector (71 downto
         0);  HEADER : in std_logic_vector (53 downto 0);  PAYLOAD : in 
         std_logic_vector (7 downto 0);  TRAN_EN, ESTORE_EN : in std_logic;  
         ANT_LOUT : out std_logic);

end B_UAT_WAITSRAM24_WAITREG5264;

architecture SYN_b_serialtx of B_UAT_WAITSRAM24_WAITREG5264 is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_2
      port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_0
      port( A : in std_logic_vector (9 downto 0);  SUM : out std_logic_vector 
            (9 downto 0));
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_1_port, state_0_port, nxtstate_1_port, nxtstate_0_port, 
      cnt128_7_port, cnt128_6_port, cnt128_5_port, cnt128_4_port, cnt128_3_port
      , cnt128_2_port, cnt128_1_port, cnt128_0_port, cnt658_9_port, 
      cnt658_8_port, cnt658_7_port, cnt658_6_port, cnt658_5_port, cnt658_4_port
      , cnt658_3_port, cnt658_2_port, cnt658_1_port, cnt658_0_port, 
      nxtcnt658_9_port, nxtcnt658_8_port, nxtcnt658_7_port, nxtcnt658_6_port, 
      nxtcnt658_5_port, nxtcnt658_4_port, nxtcnt658_3_port, nxtcnt658_2_port, 
      nxtcnt658_1_port, nxtcnt658_0_port, N59, N60, N61, N62, N63, N64, N65, 
      N66, N67, N68, N79, N80, N81, N82, N83, N84, N85, N86, nxtcnt128_7_port, 
      nxtcnt128_6_port, nxtcnt128_5_port, nxtcnt128_4_port, nxtcnt128_3_port, 
      nxtcnt128_2_port, nxtcnt128_1_port, nxtcnt128_0_port, cnt34_5_port, 
      cnt34_4_port, cnt34_3_port, cnt34_2_port, cnt34_1_port, cnt34_0_port, 
      N118, N119, N120, N121, N122, N123, nxtcnt34_5_port, nxtcnt34_4_port, 
      nxtcnt34_3_port, nxtcnt34_2_port, nxtcnt34_1_port, nxtcnt34_0_port, 
      cnt8_3_port, cnt8_2_port, cnt8_1_port, cnt8_0_port, N125, N126, N127, 
      nxtcnt8_3_port, nxtcnt8_2_port, nxtcnt8_1_port, nxtcnt8_0_port, N143, 
      N144, N145, N146, N147, N148, N149, N150, N151, N152, nxtANT, 
      tHeader_127_port, tHeader_126_port, tHeader_125_port, tHeader_124_port, 
      tHeader_123_port, tHeader_122_port, tHeader_121_port, tHeader_120_port, 
      tHeader_119_port, tHeader_118_port, tHeader_117_port, tHeader_116_port, 
      tHeader_115_port, tHeader_114_port, tHeader_113_port, tHeader_112_port, 
      tHeader_111_port, tHeader_110_port, tHeader_109_port, tHeader_108_port, 
      tHeader_107_port, tHeader_106_port, tHeader_105_port, tHeader_104_port, 
      tHeader_103_port, tHeader_102_port, tHeader_101_port, tHeader_100_port, 
      tHeader_99_port, tHeader_98_port, tHeader_97_port, tHeader_96_port, 
      tHeader_95_port, tHeader_94_port, tHeader_93_port, tHeader_92_port, 
      tHeader_91_port, tHeader_90_port, tHeader_89_port, tHeader_88_port, 
      tHeader_87_port, tHeader_86_port, tHeader_85_port, tHeader_84_port, 
      tHeader_83_port, tHeader_82_port, tHeader_81_port, tHeader_80_port, 
      tHeader_79_port, tHeader_78_port, tHeader_77_port, tHeader_76_port, 
      tHeader_75_port, tHeader_74_port, tHeader_73_port, tHeader_72_port, 
      tHeader_71_port, tHeader_70_port, tHeader_69_port, tHeader_68_port, 
      tHeader_67_port, tHeader_66_port, tHeader_65_port, tHeader_64_port, 
      tHeader_63_port, tHeader_62_port, tHeader_61_port, tHeader_60_port, 
      tHeader_59_port, tHeader_58_port, tHeader_57_port, tHeader_56_port, 
      tHeader_55_port, tHeader_54_port, tHeader_53_port, tHeader_52_port, 
      tHeader_51_port, tHeader_50_port, tHeader_49_port, tHeader_48_port, 
      tHeader_47_port, tHeader_46_port, tHeader_45_port, tHeader_44_port, 
      tHeader_43_port, tHeader_42_port, tHeader_41_port, tHeader_40_port, 
      tHeader_39_port, tHeader_38_port, tHeader_37_port, tHeader_36_port, 
      tHeader_35_port, tHeader_34_port, tHeader_33_port, tHeader_32_port, 
      tHeader_31_port, tHeader_30_port, tHeader_29_port, tHeader_28_port, 
      tHeader_27_port, tHeader_26_port, tHeader_25_port, tHeader_24_port, 
      tHeader_23_port, tHeader_22_port, tHeader_21_port, tHeader_20_port, 
      tHeader_19_port, tHeader_18_port, tHeader_17_port, tHeader_16_port, 
      tHeader_15_port, tHeader_14_port, tHeader_13_port, tHeader_12_port, 
      tHeader_11_port, tHeader_10_port, tHeader_9_port, tHeader_8_port, 
      tHeader_7_port, tHeader_6_port, tHeader_5_port, tHeader_4_port, 
      tHeader_3_port, tHeader_2_port, tHeader_1_port, tHeader_0_port, 
      pLoad_7_port, pLoad_6_port, pLoad_5_port, pLoad_4_port, pLoad_3_port, 
      pLoad_2_port, pLoad_1_port, pLoad_0_port, N527, N528, N529, N530, N531, 
      N532, N533, N534, N535, N536, n5, n22, n23, n24, n25, n26, n27, n28, n29,
      n30, n31, n32, n33, n34, n35, n36, n37, n38, n291, n292, n293, n294, n295
      , n296, n297, n298, n299, n300, n301, n302, n303, n304, n306, n675, n678,
      n681, n684, n687, n690, n693, n696, n699, n702, n705, n708, n711, n714, 
      n717, n720, n723, n726, n729, n732, n735, n738, n741, n744, n747, n750, 
      n753, n756, n759, n762, n765, n768, n771, n774, n777, n780, n783, n786, 
      n789, n792, n795, n798, n801, n804, n807, n810, n813, n816, n819, n822, 
      n825, n828, n831, n834, n837, n840, n843, n846, n849, n852, n855, n858, 
      n861, n864, n867, n870, n873, n876, n879, n882, n885, n888, n891, n894, 
      n897, n900, n903, n906, n909, n912, n915, n918, n921, n924, n927, n930, 
      n933, n936, n939, n942, n945, n948, n951, n954, n957, n960, n963, n966, 
      n969, n972, n975, n978, n981, n984, n987, n990, n993, n996, n999, n1002, 
      n1005, n1008, n1011, n1014, n1017, n1020, n1023, n1026, n1029, n1032, 
      n1035, n1038, n1041, n1044, n1047, n1050, n1053, n1056, n1059, n1062, 
      n1065, n1068, n1071, n1074, n1075, n1076, n1079, n1080, n1081, n1082, 
      n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, 
      n1093, n1094, n1095, n1096, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12
      , n13, n14, n15, n16, n17, n18, n19, n20, n21, n39, n40, n41, n42, n43, 
      n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58
      , n59_port, n60_port, n61_port, n62_port, n63_port, n64_port, n65_port, 
      n66_port, n67_port, n68_port, n69, n70, n71, n72, n73, n74, n75, n76, n77
      , n78, n79_port, n80_port, n81_port, n82_port, n83_port, n84_port, 
      n85_port, n86_port, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97
      , n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, 
      n110, n111, n112, n113, n114, n115, n116, n117, n118_port, n119_port, 
      n120_port, n121_port, n122_port, n123_port, n124, n125_port, n126_port, 
      n127_port, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, 
      n138, n139, n140, n141, n142, n143_port, n144_port, n145_port, n146_port,
      n147_port, n148_port, n149_port, n150_port, n151_port, n152_port, n153, 
      n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
      n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, 
      n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, 
      n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, 
      n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, 
      n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, 
      n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, 
      n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, 
      n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, 
      n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, 
      n286, n287, n288, n289, n290, n305, n307, n308, n309, n310, n311, n312, 
      n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, 
      n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, 
      n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, 
      n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, 
      n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, 
      n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, 
      n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, 
      n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, 
      n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, 
      n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, 
      n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, 
      n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, 
      n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, 
      n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, 
      n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, 
      n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, 
      n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, 
      n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527_port, 
      n528_port, n529_port, n530_port, n531_port, n532_port, n533_port, 
      n534_port, n535_port, n536_port, n537, n538, n539, n540, n541, n542, n543
      , n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
      n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, 
      n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, 
      n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, 
      n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, 
      n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, 
      n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, 
      n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, 
      n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651, 
      n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, 
      n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n676, 
      n677, n679, n680, n682, n683, n685, n686, n688, n689, n691, n692, n694, 
      n695, n697, n698, n700, n701, n703, n704, n706, n707, n709, n710, n712, 
      n713, n715, n716, n718, n719, n721, n722, n724, n725, n727, n728, n730, 
      n731, n733, n734, n736 : std_logic;

begin
   
   cnt128_reg_0_inst : DFFSR port map( D => n1096, CLK => CLK, R => n736, S => 
                           n306, Q => cnt128_0_port);
   state_reg_0_inst : DFFSR port map( D => nxtstate_0_port, CLK => CLK, R => 
                           n736, S => n304, Q => state_0_port);
   state_reg_1_inst : DFFSR port map( D => nxtstate_1_port, CLK => CLK, R => 
                           n736, S => n303, Q => state_1_port);
   cnt658_reg_0_inst : DFFSR port map( D => N527, CLK => CLK, R => n736, S => 
                           n302, Q => cnt658_0_port);
   nxtcnt658_reg_1_inst : LATCH port map( CLK => n3, D => N144, Q => 
                           nxtcnt658_1_port);
   cnt658_reg_1_inst : DFFSR port map( D => N528, CLK => CLK, R => n736, S => 
                           n301, Q => cnt658_1_port);
   nxtcnt658_reg_2_inst : LATCH port map( CLK => n3, D => N145, Q => 
                           nxtcnt658_2_port);
   cnt658_reg_2_inst : DFFSR port map( D => N529, CLK => CLK, R => n736, S => 
                           n300, Q => cnt658_2_port);
   nxtcnt658_reg_3_inst : LATCH port map( CLK => n3, D => N146, Q => 
                           nxtcnt658_3_port);
   cnt658_reg_3_inst : DFFSR port map( D => N530, CLK => CLK, R => n736, S => 
                           n299, Q => cnt658_3_port);
   nxtcnt658_reg_4_inst : LATCH port map( CLK => n3, D => N147, Q => 
                           nxtcnt658_4_port);
   cnt658_reg_4_inst : DFFSR port map( D => N531, CLK => CLK, R => n736, S => 
                           n298, Q => cnt658_4_port);
   nxtcnt658_reg_5_inst : LATCH port map( CLK => n3, D => N148, Q => 
                           nxtcnt658_5_port);
   cnt658_reg_5_inst : DFFSR port map( D => N532, CLK => CLK, R => n736, S => 
                           n297, Q => cnt658_5_port);
   nxtcnt658_reg_6_inst : LATCH port map( CLK => n3, D => N149, Q => 
                           nxtcnt658_6_port);
   cnt658_reg_6_inst : DFFSR port map( D => N533, CLK => CLK, R => n736, S => 
                           n296, Q => cnt658_6_port);
   nxtcnt658_reg_7_inst : LATCH port map( CLK => n3, D => N150, Q => 
                           nxtcnt658_7_port);
   cnt658_reg_7_inst : DFFSR port map( D => N534, CLK => CLK, R => n736, S => 
                           n295, Q => cnt658_7_port);
   nxtcnt658_reg_8_inst : LATCH port map( CLK => n3, D => N151, Q => 
                           nxtcnt658_8_port);
   cnt658_reg_8_inst : DFFSR port map( D => N535, CLK => CLK, R => n736, S => 
                           n294, Q => cnt658_8_port);
   nxtcnt658_reg_9_inst : LATCH port map( CLK => n3, D => N152, Q => 
                           nxtcnt658_9_port);
   cnt658_reg_9_inst : DFFSR port map( D => N536, CLK => CLK, R => n736, S => 
                           n293, Q => cnt658_9_port);
   tHeader_reg_1_inst : DFFSR port map( D => n1074, CLK => CLK, R => n292, S =>
                           n11, Q => tHeader_1_port);
   tHeader_reg_0_inst : DFFSR port map( D => n1075, CLK => CLK, R => n291, S =>
                           n11, Q => tHeader_0_port);
   tHeader_reg_127_inst : DFFSR port map( D => n1076, CLK => CLK, R => n585, S 
                           => n586, Q => tHeader_127_port);
   tHeader_reg_126_inst : DFFSR port map( D => n699, CLK => CLK, R => n460, S 
                           => n730, Q => tHeader_126_port);
   tHeader_reg_125_inst : DFFSR port map( D => n702, CLK => CLK, R => n461, S 
                           => n728, Q => tHeader_125_port);
   tHeader_reg_124_inst : DFFSR port map( D => n705, CLK => CLK, R => n462, S 
                           => n727, Q => tHeader_124_port);
   tHeader_reg_123_inst : DFFSR port map( D => n708, CLK => CLK, R => n463, S 
                           => n725, Q => tHeader_123_port);
   tHeader_reg_122_inst : DFFSR port map( D => n711, CLK => CLK, R => n464, S 
                           => n724, Q => tHeader_122_port);
   tHeader_reg_121_inst : DFFSR port map( D => n714, CLK => CLK, R => n465, S 
                           => n722, Q => tHeader_121_port);
   tHeader_reg_120_inst : DFFSR port map( D => n717, CLK => CLK, R => n466, S 
                           => n721, Q => tHeader_120_port);
   tHeader_reg_119_inst : DFFSR port map( D => n720, CLK => CLK, R => n467, S 
                           => n719, Q => tHeader_119_port);
   tHeader_reg_118_inst : DFFSR port map( D => n723, CLK => CLK, R => n468, S 
                           => n718, Q => tHeader_118_port);
   tHeader_reg_117_inst : DFFSR port map( D => n726, CLK => CLK, R => n469, S 
                           => n716, Q => tHeader_117_port);
   tHeader_reg_116_inst : DFFSR port map( D => n729, CLK => CLK, R => n470, S 
                           => n715, Q => tHeader_116_port);
   tHeader_reg_115_inst : DFFSR port map( D => n732, CLK => CLK, R => n471, S 
                           => n713, Q => tHeader_115_port);
   tHeader_reg_114_inst : DFFSR port map( D => n735, CLK => CLK, R => n472, S 
                           => n712, Q => tHeader_114_port);
   tHeader_reg_113_inst : DFFSR port map( D => n738, CLK => CLK, R => n473, S 
                           => n710, Q => tHeader_113_port);
   tHeader_reg_112_inst : DFFSR port map( D => n741, CLK => CLK, R => n474, S 
                           => n709, Q => tHeader_112_port);
   tHeader_reg_111_inst : DFFSR port map( D => n744, CLK => CLK, R => n475, S 
                           => n707, Q => tHeader_111_port);
   tHeader_reg_110_inst : DFFSR port map( D => n747, CLK => CLK, R => n476, S 
                           => n706, Q => tHeader_110_port);
   tHeader_reg_109_inst : DFFSR port map( D => n750, CLK => CLK, R => n477, S 
                           => n704, Q => tHeader_109_port);
   tHeader_reg_108_inst : DFFSR port map( D => n753, CLK => CLK, R => n478, S 
                           => n703, Q => tHeader_108_port);
   tHeader_reg_107_inst : DFFSR port map( D => n756, CLK => CLK, R => n479, S 
                           => n701, Q => tHeader_107_port);
   tHeader_reg_106_inst : DFFSR port map( D => n759, CLK => CLK, R => n480, S 
                           => n700, Q => tHeader_106_port);
   tHeader_reg_105_inst : DFFSR port map( D => n762, CLK => CLK, R => n481, S 
                           => n698, Q => tHeader_105_port);
   tHeader_reg_104_inst : DFFSR port map( D => n765, CLK => CLK, R => n482, S 
                           => n697, Q => tHeader_104_port);
   tHeader_reg_103_inst : DFFSR port map( D => n768, CLK => CLK, R => n483, S 
                           => n695, Q => tHeader_103_port);
   tHeader_reg_102_inst : DFFSR port map( D => n771, CLK => CLK, R => n484, S 
                           => n694, Q => tHeader_102_port);
   tHeader_reg_101_inst : DFFSR port map( D => n774, CLK => CLK, R => n485, S 
                           => n692, Q => tHeader_101_port);
   tHeader_reg_100_inst : DFFSR port map( D => n777, CLK => CLK, R => n486, S 
                           => n691, Q => tHeader_100_port);
   tHeader_reg_99_inst : DFFSR port map( D => n780, CLK => CLK, R => n487, S =>
                           n689, Q => tHeader_99_port);
   tHeader_reg_98_inst : DFFSR port map( D => n783, CLK => CLK, R => n488, S =>
                           n688, Q => tHeader_98_port);
   tHeader_reg_97_inst : DFFSR port map( D => n786, CLK => CLK, R => n489, S =>
                           n686, Q => tHeader_97_port);
   tHeader_reg_96_inst : DFFSR port map( D => n789, CLK => CLK, R => n490, S =>
                           n685, Q => tHeader_96_port);
   tHeader_reg_95_inst : DFFSR port map( D => n792, CLK => CLK, R => n491, S =>
                           n683, Q => tHeader_95_port);
   tHeader_reg_94_inst : DFFSR port map( D => n795, CLK => CLK, R => n492, S =>
                           n682, Q => tHeader_94_port);
   tHeader_reg_93_inst : DFFSR port map( D => n798, CLK => CLK, R => n493, S =>
                           n680, Q => tHeader_93_port);
   tHeader_reg_92_inst : DFFSR port map( D => n801, CLK => CLK, R => n494, S =>
                           n679, Q => tHeader_92_port);
   tHeader_reg_91_inst : DFFSR port map( D => n804, CLK => CLK, R => n495, S =>
                           n677, Q => tHeader_91_port);
   tHeader_reg_90_inst : DFFSR port map( D => n807, CLK => CLK, R => n496, S =>
                           n676, Q => tHeader_90_port);
   tHeader_reg_89_inst : DFFSR port map( D => n810, CLK => CLK, R => n497, S =>
                           n674, Q => tHeader_89_port);
   tHeader_reg_88_inst : DFFSR port map( D => n813, CLK => CLK, R => n498, S =>
                           n673, Q => tHeader_88_port);
   tHeader_reg_87_inst : DFFSR port map( D => n816, CLK => CLK, R => n499, S =>
                           n672, Q => tHeader_87_port);
   tHeader_reg_86_inst : DFFSR port map( D => n819, CLK => CLK, R => n500, S =>
                           n671, Q => tHeader_86_port);
   tHeader_reg_85_inst : DFFSR port map( D => n822, CLK => CLK, R => n501, S =>
                           n670, Q => tHeader_85_port);
   tHeader_reg_84_inst : DFFSR port map( D => n825, CLK => CLK, R => n502, S =>
                           n669, Q => tHeader_84_port);
   tHeader_reg_83_inst : DFFSR port map( D => n828, CLK => CLK, R => n503, S =>
                           n668, Q => tHeader_83_port);
   tHeader_reg_82_inst : DFFSR port map( D => n831, CLK => CLK, R => n504, S =>
                           n667, Q => tHeader_82_port);
   tHeader_reg_81_inst : DFFSR port map( D => n834, CLK => CLK, R => n505, S =>
                           n666, Q => tHeader_81_port);
   tHeader_reg_80_inst : DFFSR port map( D => n837, CLK => CLK, R => n506, S =>
                           n665, Q => tHeader_80_port);
   tHeader_reg_79_inst : DFFSR port map( D => n840, CLK => CLK, R => n507, S =>
                           n664, Q => tHeader_79_port);
   tHeader_reg_78_inst : DFFSR port map( D => n843, CLK => CLK, R => n508, S =>
                           n663, Q => tHeader_78_port);
   tHeader_reg_77_inst : DFFSR port map( D => n846, CLK => CLK, R => n509, S =>
                           n662, Q => tHeader_77_port);
   tHeader_reg_76_inst : DFFSR port map( D => n849, CLK => CLK, R => n510, S =>
                           n661, Q => tHeader_76_port);
   tHeader_reg_75_inst : DFFSR port map( D => n852, CLK => CLK, R => n511, S =>
                           n660, Q => tHeader_75_port);
   tHeader_reg_74_inst : DFFSR port map( D => n855, CLK => CLK, R => n512, S =>
                           n659, Q => tHeader_74_port);
   tHeader_reg_73_inst : DFFSR port map( D => n858, CLK => CLK, R => n513, S =>
                           n658, Q => tHeader_73_port);
   tHeader_reg_72_inst : DFFSR port map( D => n861, CLK => CLK, R => n514, S =>
                           n657, Q => tHeader_72_port);
   tHeader_reg_71_inst : DFFSR port map( D => n864, CLK => CLK, R => n515, S =>
                           n656, Q => tHeader_71_port);
   tHeader_reg_70_inst : DFFSR port map( D => n867, CLK => CLK, R => n516, S =>
                           n655, Q => tHeader_70_port);
   tHeader_reg_69_inst : DFFSR port map( D => n870, CLK => CLK, R => n517, S =>
                           n654, Q => tHeader_69_port);
   tHeader_reg_68_inst : DFFSR port map( D => n873, CLK => CLK, R => n518, S =>
                           n653, Q => tHeader_68_port);
   tHeader_reg_67_inst : DFFSR port map( D => n876, CLK => CLK, R => n519, S =>
                           n652, Q => tHeader_67_port);
   tHeader_reg_66_inst : DFFSR port map( D => n879, CLK => CLK, R => n520, S =>
                           n651, Q => tHeader_66_port);
   tHeader_reg_65_inst : DFFSR port map( D => n882, CLK => CLK, R => n521, S =>
                           n650, Q => tHeader_65_port);
   tHeader_reg_64_inst : DFFSR port map( D => n885, CLK => CLK, R => n522, S =>
                           n649, Q => tHeader_64_port);
   tHeader_reg_63_inst : DFFSR port map( D => n888, CLK => CLK, R => n523, S =>
                           n648, Q => tHeader_63_port);
   tHeader_reg_62_inst : DFFSR port map( D => n891, CLK => CLK, R => n524, S =>
                           n647, Q => tHeader_62_port);
   tHeader_reg_61_inst : DFFSR port map( D => n894, CLK => CLK, R => n525, S =>
                           n646, Q => tHeader_61_port);
   tHeader_reg_60_inst : DFFSR port map( D => n897, CLK => CLK, R => n526, S =>
                           n645, Q => tHeader_60_port);
   tHeader_reg_59_inst : DFFSR port map( D => n900, CLK => CLK, R => n527_port,
                           S => n644, Q => tHeader_59_port);
   tHeader_reg_58_inst : DFFSR port map( D => n903, CLK => CLK, R => n528_port,
                           S => n643, Q => tHeader_58_port);
   tHeader_reg_57_inst : DFFSR port map( D => n906, CLK => CLK, R => n529_port,
                           S => n642, Q => tHeader_57_port);
   tHeader_reg_56_inst : DFFSR port map( D => n909, CLK => CLK, R => n530_port,
                           S => n641, Q => tHeader_56_port);
   tHeader_reg_55_inst : DFFSR port map( D => n912, CLK => CLK, R => n531_port,
                           S => n640, Q => tHeader_55_port);
   tHeader_reg_54_inst : DFFSR port map( D => n915, CLK => CLK, R => n532_port,
                           S => n639, Q => tHeader_54_port);
   tHeader_reg_53_inst : DFFSR port map( D => n918, CLK => CLK, R => n533_port,
                           S => n638, Q => tHeader_53_port);
   tHeader_reg_52_inst : DFFSR port map( D => n921, CLK => CLK, R => n534_port,
                           S => n637, Q => tHeader_52_port);
   tHeader_reg_51_inst : DFFSR port map( D => n924, CLK => CLK, R => n535_port,
                           S => n636, Q => tHeader_51_port);
   tHeader_reg_50_inst : DFFSR port map( D => n927, CLK => CLK, R => n536_port,
                           S => n635, Q => tHeader_50_port);
   tHeader_reg_49_inst : DFFSR port map( D => n930, CLK => CLK, R => n537, S =>
                           n634, Q => tHeader_49_port);
   tHeader_reg_48_inst : DFFSR port map( D => n933, CLK => CLK, R => n538, S =>
                           n633, Q => tHeader_48_port);
   tHeader_reg_47_inst : DFFSR port map( D => n936, CLK => CLK, R => n539, S =>
                           n632, Q => tHeader_47_port);
   tHeader_reg_46_inst : DFFSR port map( D => n939, CLK => CLK, R => n540, S =>
                           n631, Q => tHeader_46_port);
   tHeader_reg_45_inst : DFFSR port map( D => n942, CLK => CLK, R => n541, S =>
                           n630, Q => tHeader_45_port);
   tHeader_reg_44_inst : DFFSR port map( D => n945, CLK => CLK, R => n542, S =>
                           n629, Q => tHeader_44_port);
   tHeader_reg_43_inst : DFFSR port map( D => n948, CLK => CLK, R => n543, S =>
                           n628, Q => tHeader_43_port);
   tHeader_reg_42_inst : DFFSR port map( D => n951, CLK => CLK, R => n544, S =>
                           n627, Q => tHeader_42_port);
   tHeader_reg_41_inst : DFFSR port map( D => n954, CLK => CLK, R => n545, S =>
                           n626, Q => tHeader_41_port);
   tHeader_reg_40_inst : DFFSR port map( D => n957, CLK => CLK, R => n546, S =>
                           n625, Q => tHeader_40_port);
   tHeader_reg_39_inst : DFFSR port map( D => n960, CLK => CLK, R => n547, S =>
                           n624, Q => tHeader_39_port);
   tHeader_reg_38_inst : DFFSR port map( D => n963, CLK => CLK, R => n548, S =>
                           n623, Q => tHeader_38_port);
   tHeader_reg_37_inst : DFFSR port map( D => n966, CLK => CLK, R => n549, S =>
                           n622, Q => tHeader_37_port);
   tHeader_reg_36_inst : DFFSR port map( D => n969, CLK => CLK, R => n550, S =>
                           n621, Q => tHeader_36_port);
   tHeader_reg_35_inst : DFFSR port map( D => n972, CLK => CLK, R => n551, S =>
                           n620, Q => tHeader_35_port);
   tHeader_reg_34_inst : DFFSR port map( D => n975, CLK => CLK, R => n552, S =>
                           n619, Q => tHeader_34_port);
   tHeader_reg_33_inst : DFFSR port map( D => n978, CLK => CLK, R => n553, S =>
                           n618, Q => tHeader_33_port);
   tHeader_reg_32_inst : DFFSR port map( D => n981, CLK => CLK, R => n554, S =>
                           n617, Q => tHeader_32_port);
   tHeader_reg_31_inst : DFFSR port map( D => n984, CLK => CLK, R => n555, S =>
                           n616, Q => tHeader_31_port);
   tHeader_reg_30_inst : DFFSR port map( D => n987, CLK => CLK, R => n556, S =>
                           n615, Q => tHeader_30_port);
   tHeader_reg_29_inst : DFFSR port map( D => n990, CLK => CLK, R => n557, S =>
                           n614, Q => tHeader_29_port);
   tHeader_reg_28_inst : DFFSR port map( D => n993, CLK => CLK, R => n558, S =>
                           n613, Q => tHeader_28_port);
   tHeader_reg_27_inst : DFFSR port map( D => n996, CLK => CLK, R => n559, S =>
                           n612, Q => tHeader_27_port);
   tHeader_reg_26_inst : DFFSR port map( D => n999, CLK => CLK, R => n560, S =>
                           n611, Q => tHeader_26_port);
   tHeader_reg_25_inst : DFFSR port map( D => n1002, CLK => CLK, R => n561, S 
                           => n610, Q => tHeader_25_port);
   tHeader_reg_24_inst : DFFSR port map( D => n1005, CLK => CLK, R => n562, S 
                           => n609, Q => tHeader_24_port);
   tHeader_reg_23_inst : DFFSR port map( D => n1008, CLK => CLK, R => n563, S 
                           => n608, Q => tHeader_23_port);
   tHeader_reg_22_inst : DFFSR port map( D => n1011, CLK => CLK, R => n564, S 
                           => n607, Q => tHeader_22_port);
   tHeader_reg_21_inst : DFFSR port map( D => n1014, CLK => CLK, R => n565, S 
                           => n606, Q => tHeader_21_port);
   tHeader_reg_20_inst : DFFSR port map( D => n1017, CLK => CLK, R => n566, S 
                           => n605, Q => tHeader_20_port);
   tHeader_reg_19_inst : DFFSR port map( D => n1020, CLK => CLK, R => n567, S 
                           => n604, Q => tHeader_19_port);
   tHeader_reg_18_inst : DFFSR port map( D => n1023, CLK => CLK, R => n568, S 
                           => n603, Q => tHeader_18_port);
   tHeader_reg_17_inst : DFFSR port map( D => n1026, CLK => CLK, R => n569, S 
                           => n602, Q => tHeader_17_port);
   tHeader_reg_16_inst : DFFSR port map( D => n1029, CLK => CLK, R => n570, S 
                           => n601, Q => tHeader_16_port);
   tHeader_reg_15_inst : DFFSR port map( D => n1032, CLK => CLK, R => n571, S 
                           => n600, Q => tHeader_15_port);
   tHeader_reg_14_inst : DFFSR port map( D => n1035, CLK => CLK, R => n572, S 
                           => n599, Q => tHeader_14_port);
   tHeader_reg_13_inst : DFFSR port map( D => n1038, CLK => CLK, R => n573, S 
                           => n598, Q => tHeader_13_port);
   tHeader_reg_12_inst : DFFSR port map( D => n1041, CLK => CLK, R => n574, S 
                           => n597, Q => tHeader_12_port);
   tHeader_reg_11_inst : DFFSR port map( D => n1044, CLK => CLK, R => n575, S 
                           => n596, Q => tHeader_11_port);
   tHeader_reg_10_inst : DFFSR port map( D => n1047, CLK => CLK, R => n576, S 
                           => n595, Q => tHeader_10_port);
   tHeader_reg_9_inst : DFFSR port map( D => n1050, CLK => CLK, R => n577, S =>
                           n594, Q => tHeader_9_port);
   tHeader_reg_8_inst : DFFSR port map( D => n1053, CLK => CLK, R => n578, S =>
                           n593, Q => tHeader_8_port);
   tHeader_reg_7_inst : DFFSR port map( D => n1056, CLK => CLK, R => n579, S =>
                           n592, Q => tHeader_7_port);
   tHeader_reg_6_inst : DFFSR port map( D => n1059, CLK => CLK, R => n580, S =>
                           n591, Q => tHeader_6_port);
   tHeader_reg_5_inst : DFFSR port map( D => n1062, CLK => CLK, R => n581, S =>
                           n590, Q => tHeader_5_port);
   tHeader_reg_4_inst : DFFSR port map( D => n1065, CLK => CLK, R => n582, S =>
                           n589, Q => tHeader_4_port);
   tHeader_reg_3_inst : DFFSR port map( D => n1068, CLK => CLK, R => n583, S =>
                           n588, Q => tHeader_3_port);
   tHeader_reg_2_inst : DFFSR port map( D => n1071, CLK => CLK, R => n584, S =>
                           n587, Q => tHeader_2_port);
   nxtcnt658_reg_0_inst : LATCH port map( CLK => n3, D => N143, Q => 
                           nxtcnt658_0_port);
   cnt8_reg_0_inst : DFFSR port map( D => n1094, CLK => CLK, R => n736, S => 
                           n38, Q => cnt8_0_port);
   nxtcnt8_reg_1_inst : LATCH port map( CLK => n731, D => N125, Q => 
                           nxtcnt8_1_port);
   cnt8_reg_1_inst : DFFSR port map( D => n1093, CLK => CLK, R => n736, S => 
                           n37, Q => cnt8_1_port);
   nxtcnt8_reg_2_inst : LATCH port map( CLK => n731, D => N126, Q => 
                           nxtcnt8_2_port);
   cnt8_reg_2_inst : DFFSR port map( D => n1092, CLK => CLK, R => n736, S => 
                           n36, Q => cnt8_2_port);
   nxtcnt8_reg_0_inst : LATCH port map( CLK => n731, D => n734, Q => 
                           nxtcnt8_0_port);
   cnt8_reg_3_inst : DFFSR port map( D => n1095, CLK => CLK, R => n736, S => 
                           n35, Q => cnt8_3_port);
   nxtcnt8_reg_3_inst : LATCH port map( CLK => n731, D => N127, Q => 
                           nxtcnt8_3_port);
   cnt34_reg_5_inst : DFFSR port map( D => n1091, CLK => CLK, R => n736, S => 
                           n34, Q => cnt34_5_port);
   nxtcnt34_reg_0_inst : LATCH port map( CLK => n731, D => N118, Q => 
                           nxtcnt34_0_port);
   cnt34_reg_0_inst : DFFSR port map( D => n1090, CLK => CLK, R => n736, S => 
                           n33, Q => cnt34_0_port);
   nxtcnt34_reg_1_inst : LATCH port map( CLK => n731, D => N119, Q => 
                           nxtcnt34_1_port);
   cnt34_reg_1_inst : DFFSR port map( D => n1089, CLK => CLK, R => n736, S => 
                           n32, Q => cnt34_1_port);
   nxtcnt34_reg_2_inst : LATCH port map( CLK => n731, D => N120, Q => 
                           nxtcnt34_2_port);
   cnt34_reg_2_inst : DFFSR port map( D => n1088, CLK => CLK, R => n736, S => 
                           n31, Q => cnt34_2_port);
   nxtcnt34_reg_3_inst : LATCH port map( CLK => n731, D => N121, Q => 
                           nxtcnt34_3_port);
   cnt34_reg_3_inst : DFFSR port map( D => n1087, CLK => CLK, R => n736, S => 
                           n30, Q => cnt34_3_port);
   nxtcnt34_reg_4_inst : LATCH port map( CLK => n731, D => N122, Q => 
                           nxtcnt34_4_port);
   cnt34_reg_4_inst : DFFSR port map( D => n1086, CLK => CLK, R => n736, S => 
                           n29, Q => cnt34_4_port);
   nxtcnt34_reg_5_inst : LATCH port map( CLK => n731, D => N123, Q => 
                           nxtcnt34_5_port);
   cnt128_reg_1_inst : DFFSR port map( D => n1085, CLK => CLK, R => n736, S => 
                           n28, Q => cnt128_1_port);
   nxtcnt128_reg_0_inst : LATCH port map( CLK => n733, D => N79, Q => 
                           nxtcnt128_0_port);
   nxtcnt128_reg_1_inst : LATCH port map( CLK => n733, D => N80, Q => 
                           nxtcnt128_1_port);
   nxtcnt128_reg_2_inst : LATCH port map( CLK => n733, D => N81, Q => 
                           nxtcnt128_2_port);
   cnt128_reg_2_inst : DFFSR port map( D => n1084, CLK => CLK, R => n736, S => 
                           n27, Q => cnt128_2_port);
   nxtcnt128_reg_3_inst : LATCH port map( CLK => n733, D => N82, Q => 
                           nxtcnt128_3_port);
   cnt128_reg_3_inst : DFFSR port map( D => n1083, CLK => CLK, R => n736, S => 
                           n26, Q => cnt128_3_port);
   nxtcnt128_reg_4_inst : LATCH port map( CLK => n733, D => N83, Q => 
                           nxtcnt128_4_port);
   cnt128_reg_4_inst : DFFSR port map( D => n1082, CLK => CLK, R => n736, S => 
                           n25, Q => cnt128_4_port);
   nxtcnt128_reg_5_inst : LATCH port map( CLK => n733, D => N84, Q => 
                           nxtcnt128_5_port);
   cnt128_reg_5_inst : DFFSR port map( D => n1081, CLK => CLK, R => n736, S => 
                           n24, Q => cnt128_5_port);
   nxtcnt128_reg_6_inst : LATCH port map( CLK => n733, D => N85, Q => 
                           nxtcnt128_6_port);
   cnt128_reg_6_inst : DFFSR port map( D => n1080, CLK => CLK, R => n736, S => 
                           n23, Q => cnt128_6_port);
   nxtcnt128_reg_7_inst : LATCH port map( CLK => n733, D => N86, Q => 
                           nxtcnt128_7_port);
   cnt128_reg_7_inst : DFFSR port map( D => n1079, CLK => CLK, R => n736, S => 
                           n22, Q => cnt128_7_port);
   pLoad_reg_0_inst : DFFSR port map( D => n696, CLK => CLK, R => n451, S => 
                           n452, Q => pLoad_0_port);
   pLoad_reg_7_inst : DFFSR port map( D => n675, CLK => CLK, R => n444, S => 
                           n459, Q => pLoad_7_port);
   pLoad_reg_6_inst : DFFSR port map( D => n678, CLK => CLK, R => n445, S => 
                           n458, Q => pLoad_6_port);
   pLoad_reg_5_inst : DFFSR port map( D => n681, CLK => CLK, R => n446, S => 
                           n457, Q => pLoad_5_port);
   pLoad_reg_4_inst : DFFSR port map( D => n684, CLK => CLK, R => n447, S => 
                           n456, Q => pLoad_4_port);
   pLoad_reg_3_inst : DFFSR port map( D => n687, CLK => CLK, R => n448, S => 
                           n455, Q => pLoad_3_port);
   pLoad_reg_2_inst : DFFSR port map( D => n690, CLK => CLK, R => n449, S => 
                           n454, Q => pLoad_2_port);
   pLoad_reg_1_inst : DFFSR port map( D => n693, CLK => CLK, R => n450, S => 
                           n453, Q => pLoad_1_port);
   ANT_LOUT_reg : DFFSR port map( D => nxtANT, CLK => CLK, R => n5, S => n736, 
                           Q => ANT_LOUT);
   n5 <= '1';
   n22 <= '1';
   n23 <= '1';
   n24 <= '1';
   n25 <= '1';
   n26 <= '1';
   n27 <= '1';
   n28 <= '1';
   n29 <= '1';
   n30 <= '1';
   n31 <= '1';
   n32 <= '1';
   n33 <= '1';
   n34 <= '1';
   n35 <= '1';
   n36 <= '1';
   n37 <= '1';
   n38 <= '1';
   n291 <= '1';
   n292 <= '1';
   n293 <= '1';
   n294 <= '1';
   n295 <= '1';
   n296 <= '1';
   n297 <= '1';
   n298 <= '1';
   n299 <= '1';
   n300 <= '1';
   n301 <= '1';
   n302 <= '1';
   n303 <= '1';
   n304 <= '1';
   n306 <= '1';
   r117 : B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_0 port map( A(9) => 
                           cnt658_9_port, A(8) => cnt658_8_port, A(7) => 
                           cnt658_7_port, A(6) => cnt658_6_port, A(5) => 
                           cnt658_5_port, A(4) => cnt658_4_port, A(3) => 
                           cnt658_3_port, A(2) => cnt658_2_port, A(1) => 
                           cnt658_1_port, A(0) => cnt658_0_port, SUM(9) => N68,
                           SUM(8) => N67, SUM(7) => N66, SUM(6) => N65, SUM(5) 
                           => N64, SUM(4) => N63, SUM(3) => N62, SUM(2) => N61,
                           SUM(1) => N60, SUM(0) => N59);
   add_74 : B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_2 port map( A(7) => 
                           cnt128_7_port, A(6) => cnt128_6_port, A(5) => 
                           cnt128_5_port, A(4) => cnt128_4_port, A(3) => 
                           cnt128_3_port, A(2) => cnt128_2_port, A(1) => 
                           cnt128_1_port, A(0) => cnt128_0_port, SUM(7) => N86,
                           SUM(6) => N85, SUM(5) => N84, SUM(4) => N83, SUM(3) 
                           => N82, SUM(2) => N81, SUM(1) => N80, SUM(0) => N79)
                           ;
   U4 : NAND2X1 port map( A => n63_port, B => n14, Y => n1);
   U5 : INVX1 port map( A => state_0_port, Y => n2);
   U6 : INVX2 port map( A => n2, Y => n3);
   U7 : INVX4 port map( A => RST, Y => n736);
   U8 : INVX4 port map( A => n375, Y => n4);
   U9 : INVX4 port map( A => n375, Y => n6);
   U10 : INVX4 port map( A => n375, Y => n7);
   U11 : INVX4 port map( A => n1, Y => n8);
   U12 : INVX4 port map( A => n1, Y => n9);
   U13 : INVX4 port map( A => n1, Y => n10);
   U14 : INVX2 port map( A => n92, Y => n731);
   U15 : INVX2 port map( A => n39, Y => n11);
   U16 : INVX2 port map( A => n18, Y => n12);
   U17 : INVX2 port map( A => n17, Y => n13);
   U18 : INVX2 port map( A => n16, Y => n14);
   U19 : BUFX2 port map( A => n52, Y => n16);
   U37 : BUFX2 port map( A => n52, Y => n17);
   U38 : BUFX2 port map( A => n52, Y => n18);
   U39 : BUFX2 port map( A => n51, Y => n19);
   U40 : BUFX2 port map( A => n51, Y => n20);
   U41 : BUFX2 port map( A => n51, Y => n21);
   U42 : BUFX2 port map( A => n50, Y => n39);
   U43 : BUFX2 port map( A => n50, Y => n40);
   U44 : BUFX2 port map( A => n50, Y => n41);
   U45 : BUFX2 port map( A => n49, Y => n42);
   U46 : BUFX2 port map( A => n49, Y => n43);
   U47 : BUFX2 port map( A => n49, Y => n44);
   U48 : BUFX2 port map( A => n48, Y => n45);
   U49 : BUFX2 port map( A => n48, Y => n46);
   U50 : BUFX2 port map( A => n48, Y => n47);
   U51 : BUFX2 port map( A => n94, Y => n54);
   U52 : BUFX2 port map( A => n94, Y => n62_port);
   U53 : BUFX2 port map( A => n94, Y => n55);
   U54 : BUFX2 port map( A => n94, Y => n56);
   U55 : BUFX2 port map( A => n94, Y => n57);
   U56 : BUFX2 port map( A => n94, Y => n58);
   U57 : BUFX2 port map( A => n94, Y => n59_port);
   U58 : BUFX2 port map( A => n94, Y => n60_port);
   U59 : BUFX2 port map( A => n94, Y => n61_port);
   U60 : BUFX2 port map( A => n53, Y => n15);
   U61 : BUFX2 port map( A => n90, Y => n53);
   U62 : BUFX2 port map( A => n94, Y => n63_port);
   U63 : BUFX2 port map( A => n90, Y => n52);
   U64 : BUFX2 port map( A => n90, Y => n51);
   U65 : BUFX2 port map( A => n90, Y => n49);
   U66 : BUFX2 port map( A => n90, Y => n48);
   U67 : BUFX2 port map( A => n90, Y => n50);
   U68 : OAI21X1 port map( A => n64_port, B => n65_port, C => n66_port, Y => 
                           nxtstate_1_port);
   U69 : AND2X1 port map( A => n67_port, B => n68_port, Y => n66_port);
   U70 : OAI21X1 port map( A => n69, B => n70, C => n731, Y => n67_port);
   U71 : INVX1 port map( A => n71, Y => n70);
   U72 : NAND2X1 port map( A => n72, B => n73, Y => nxtstate_0_port);
   U73 : AOI22X1 port map( A => n74, B => n731, C => n733, D => n64_port, Y => 
                           n73);
   U74 : OR2X1 port map( A => n75, B => n76, Y => n64_port);
   U75 : NAND3X1 port map( A => cnt128_6_port, B => cnt128_5_port, C => n77, Y 
                           => n76);
   U76 : NOR2X1 port map( A => n78, B => n79_port, Y => n77);
   U77 : NAND3X1 port map( A => cnt128_2_port, B => cnt128_1_port, C => 
                           n80_port, Y => n75);
   U78 : NOR2X1 port map( A => cnt128_7_port, B => n81_port, Y => n80_port);
   U79 : NOR2X1 port map( A => n71, B => n69, Y => n74);
   U80 : INVX1 port map( A => n82_port, Y => n69);
   U81 : NAND3X1 port map( A => cnt8_3_port, B => n734, C => n83_port, Y => 
                           n82_port);
   U82 : NOR2X1 port map( A => cnt8_2_port, B => cnt8_1_port, Y => n83_port);
   U83 : NOR2X1 port map( A => n84_port, B => n85_port, Y => n71);
   U84 : NAND3X1 port map( A => cnt34_1_port, B => N118, C => cnt34_5_port, Y 
                           => n85_port);
   U85 : NAND3X1 port map( A => n86_port, B => n87, C => n88, Y => n84_port);
   U86 : AOI22X1 port map( A => ESTORE_EN, B => n89, C => TRAN_EN, D => n15, Y 
                           => n72);
   U87 : OAI22X1 port map( A => n65_port, B => n91, C => n92, D => n93, Y => 
                           nxtANT);
   U88 : INVX1 port map( A => tHeader_0_port, Y => n91);
   U89 : OR2X1 port map( A => n68_port, B => PAYLOAD(7), Y => n444);
   U90 : OR2X1 port map( A => n68_port, B => PAYLOAD(6), Y => n445);
   U91 : OR2X1 port map( A => n68_port, B => PAYLOAD(5), Y => n446);
   U92 : OR2X1 port map( A => n68_port, B => PAYLOAD(4), Y => n447);
   U93 : OR2X1 port map( A => n68_port, B => PAYLOAD(3), Y => n448);
   U94 : OR2X1 port map( A => n68_port, B => PAYLOAD(2), Y => n449);
   U95 : OR2X1 port map( A => n68_port, B => PAYLOAD(1), Y => n450);
   U96 : OR2X1 port map( A => n68_port, B => PAYLOAD(0), Y => n451);
   U97 : NAND2X1 port map( A => PAYLOAD(0), B => n89, Y => n452);
   U98 : NAND2X1 port map( A => PAYLOAD(1), B => n89, Y => n453);
   U99 : NAND2X1 port map( A => PAYLOAD(2), B => n89, Y => n454);
   U100 : NAND2X1 port map( A => PAYLOAD(3), B => n89, Y => n455);
   U101 : NAND2X1 port map( A => PAYLOAD(4), B => n89, Y => n456);
   U102 : NAND2X1 port map( A => PAYLOAD(5), B => n89, Y => n457);
   U103 : NAND2X1 port map( A => PAYLOAD(6), B => n89, Y => n458);
   U104 : NAND2X1 port map( A => PAYLOAD(7), B => n89, Y => n459);
   U105 : OR2X1 port map( A => n11, B => ACCESS_CODE(70), Y => n460);
   U106 : OR2X1 port map( A => n14, B => ACCESS_CODE(69), Y => n461);
   U107 : OR2X1 port map( A => n12, B => ACCESS_CODE(68), Y => n462);
   U108 : OR2X1 port map( A => n13, B => ACCESS_CODE(67), Y => n463);
   U109 : OR2X1 port map( A => n14, B => ACCESS_CODE(66), Y => n464);
   U110 : OR2X1 port map( A => n12, B => ACCESS_CODE(65), Y => n465);
   U111 : OR2X1 port map( A => n11, B => ACCESS_CODE(64), Y => n466);
   U112 : OR2X1 port map( A => n12, B => ACCESS_CODE(63), Y => n467);
   U113 : OR2X1 port map( A => n13, B => ACCESS_CODE(62), Y => n468);
   U114 : OR2X1 port map( A => n14, B => ACCESS_CODE(61), Y => n469);
   U115 : OR2X1 port map( A => n14, B => ACCESS_CODE(60), Y => n470);
   U116 : OR2X1 port map( A => n14, B => ACCESS_CODE(59), Y => n471);
   U117 : OR2X1 port map( A => n14, B => ACCESS_CODE(58), Y => n472);
   U118 : OR2X1 port map( A => n14, B => ACCESS_CODE(57), Y => n473);
   U119 : OR2X1 port map( A => n14, B => ACCESS_CODE(56), Y => n474);
   U120 : OR2X1 port map( A => n14, B => ACCESS_CODE(55), Y => n475);
   U121 : OR2X1 port map( A => n14, B => ACCESS_CODE(54), Y => n476);
   U122 : OR2X1 port map( A => n14, B => ACCESS_CODE(53), Y => n477);
   U123 : OR2X1 port map( A => n14, B => ACCESS_CODE(52), Y => n478);
   U124 : OR2X1 port map( A => n14, B => ACCESS_CODE(51), Y => n479);
   U125 : OR2X1 port map( A => n14, B => ACCESS_CODE(50), Y => n480);
   U126 : OR2X1 port map( A => n14, B => ACCESS_CODE(49), Y => n481);
   U127 : OR2X1 port map( A => n14, B => ACCESS_CODE(48), Y => n482);
   U128 : OR2X1 port map( A => n14, B => ACCESS_CODE(47), Y => n483);
   U129 : OR2X1 port map( A => n14, B => ACCESS_CODE(46), Y => n484);
   U130 : OR2X1 port map( A => n14, B => ACCESS_CODE(45), Y => n485);
   U131 : OR2X1 port map( A => n13, B => ACCESS_CODE(44), Y => n486);
   U132 : OR2X1 port map( A => n14, B => ACCESS_CODE(43), Y => n487);
   U133 : OR2X1 port map( A => n13, B => ACCESS_CODE(42), Y => n488);
   U134 : OR2X1 port map( A => n13, B => ACCESS_CODE(41), Y => n489);
   U135 : OR2X1 port map( A => n13, B => ACCESS_CODE(40), Y => n490);
   U136 : OR2X1 port map( A => n13, B => ACCESS_CODE(39), Y => n491);
   U137 : OR2X1 port map( A => n13, B => ACCESS_CODE(38), Y => n492);
   U138 : OR2X1 port map( A => n13, B => ACCESS_CODE(37), Y => n493);
   U139 : OR2X1 port map( A => n13, B => ACCESS_CODE(36), Y => n494);
   U140 : OR2X1 port map( A => n13, B => ACCESS_CODE(35), Y => n495);
   U141 : OR2X1 port map( A => n13, B => ACCESS_CODE(34), Y => n496);
   U142 : OR2X1 port map( A => n13, B => ACCESS_CODE(33), Y => n497);
   U143 : OR2X1 port map( A => n13, B => ACCESS_CODE(32), Y => n498);
   U144 : OR2X1 port map( A => n13, B => ACCESS_CODE(31), Y => n499);
   U145 : OR2X1 port map( A => n13, B => ACCESS_CODE(30), Y => n500);
   U146 : OR2X1 port map( A => n13, B => ACCESS_CODE(29), Y => n501);
   U147 : OR2X1 port map( A => n13, B => ACCESS_CODE(28), Y => n502);
   U148 : OR2X1 port map( A => n13, B => ACCESS_CODE(27), Y => n503);
   U149 : OR2X1 port map( A => n12, B => ACCESS_CODE(26), Y => n504);
   U150 : OR2X1 port map( A => n12, B => ACCESS_CODE(25), Y => n505);
   U151 : OR2X1 port map( A => n12, B => ACCESS_CODE(24), Y => n506);
   U152 : OR2X1 port map( A => n12, B => ACCESS_CODE(23), Y => n507);
   U153 : OR2X1 port map( A => n12, B => ACCESS_CODE(22), Y => n508);
   U154 : OR2X1 port map( A => n12, B => ACCESS_CODE(21), Y => n509);
   U155 : OR2X1 port map( A => n12, B => ACCESS_CODE(20), Y => n510);
   U156 : OR2X1 port map( A => n12, B => ACCESS_CODE(19), Y => n511);
   U157 : OR2X1 port map( A => n12, B => ACCESS_CODE(18), Y => n512);
   U158 : OR2X1 port map( A => n12, B => ACCESS_CODE(17), Y => n513);
   U159 : OR2X1 port map( A => n12, B => ACCESS_CODE(16), Y => n514);
   U160 : OR2X1 port map( A => n12, B => ACCESS_CODE(15), Y => n515);
   U161 : OR2X1 port map( A => n12, B => ACCESS_CODE(14), Y => n516);
   U162 : OR2X1 port map( A => n12, B => ACCESS_CODE(13), Y => n517);
   U163 : OR2X1 port map( A => n12, B => ACCESS_CODE(12), Y => n518);
   U164 : OR2X1 port map( A => n12, B => ACCESS_CODE(11), Y => n519);
   U165 : OR2X1 port map( A => n12, B => ACCESS_CODE(10), Y => n520);
   U166 : OR2X1 port map( A => n11, B => ACCESS_CODE(9), Y => n521);
   U167 : OR2X1 port map( A => n14, B => ACCESS_CODE(8), Y => n522);
   U168 : OR2X1 port map( A => n12, B => ACCESS_CODE(7), Y => n523);
   U169 : OR2X1 port map( A => n11, B => ACCESS_CODE(6), Y => n524);
   U170 : OR2X1 port map( A => n14, B => ACCESS_CODE(5), Y => n525);
   U171 : OR2X1 port map( A => n13, B => ACCESS_CODE(4), Y => n526);
   U172 : OR2X1 port map( A => n12, B => ACCESS_CODE(3), Y => n527_port);
   U173 : OR2X1 port map( A => n11, B => ACCESS_CODE(2), Y => n528_port);
   U174 : OR2X1 port map( A => n14, B => ACCESS_CODE(1), Y => n529_port);
   U175 : OR2X1 port map( A => n13, B => ACCESS_CODE(0), Y => n530_port);
   U176 : OR2X1 port map( A => n12, B => HEADER(53), Y => n531_port);
   U177 : OR2X1 port map( A => n11, B => HEADER(52), Y => n532_port);
   U178 : OR2X1 port map( A => n14, B => HEADER(51), Y => n533_port);
   U179 : OR2X1 port map( A => n13, B => HEADER(50), Y => n534_port);
   U180 : OR2X1 port map( A => n12, B => HEADER(49), Y => n535_port);
   U181 : OR2X1 port map( A => n11, B => HEADER(48), Y => n536_port);
   U182 : OR2X1 port map( A => n13, B => HEADER(47), Y => n537);
   U183 : OR2X1 port map( A => n12, B => HEADER(46), Y => n538);
   U184 : OR2X1 port map( A => n14, B => HEADER(45), Y => n539);
   U185 : OR2X1 port map( A => n11, B => HEADER(44), Y => n540);
   U186 : OR2X1 port map( A => n14, B => HEADER(43), Y => n541);
   U187 : OR2X1 port map( A => n13, B => HEADER(42), Y => n542);
   U188 : OR2X1 port map( A => n12, B => HEADER(41), Y => n543);
   U189 : OR2X1 port map( A => n13, B => HEADER(40), Y => n544);
   U190 : OR2X1 port map( A => n11, B => HEADER(39), Y => n545);
   U191 : OR2X1 port map( A => n14, B => HEADER(38), Y => n546);
   U192 : OR2X1 port map( A => n13, B => HEADER(37), Y => n547);
   U193 : OR2X1 port map( A => n12, B => HEADER(36), Y => n548);
   U194 : OR2X1 port map( A => n12, B => HEADER(35), Y => n549);
   U195 : OR2X1 port map( A => n11, B => HEADER(34), Y => n550);
   U196 : OR2X1 port map( A => n14, B => HEADER(33), Y => n551);
   U197 : OR2X1 port map( A => n13, B => HEADER(32), Y => n552);
   U198 : OR2X1 port map( A => n12, B => HEADER(31), Y => n553);
   U199 : OR2X1 port map( A => n12, B => HEADER(30), Y => n554);
   U200 : OR2X1 port map( A => n13, B => HEADER(29), Y => n555);
   U201 : OR2X1 port map( A => n11, B => HEADER(28), Y => n556);
   U202 : OR2X1 port map( A => n11, B => HEADER(27), Y => n557);
   U203 : OR2X1 port map( A => n14, B => HEADER(26), Y => n558);
   U204 : OR2X1 port map( A => n13, B => HEADER(25), Y => n559);
   U205 : OR2X1 port map( A => n11, B => HEADER(24), Y => n560);
   U206 : OR2X1 port map( A => n12, B => HEADER(23), Y => n561);
   U207 : OR2X1 port map( A => n14, B => HEADER(22), Y => n562);
   U208 : OR2X1 port map( A => n11, B => HEADER(21), Y => n563);
   U209 : OR2X1 port map( A => n14, B => HEADER(20), Y => n564);
   U210 : OR2X1 port map( A => n13, B => HEADER(19), Y => n565);
   U211 : OR2X1 port map( A => n11, B => HEADER(18), Y => n566);
   U212 : OR2X1 port map( A => n12, B => HEADER(17), Y => n567);
   U213 : OR2X1 port map( A => n13, B => HEADER(16), Y => n568);
   U214 : OR2X1 port map( A => n11, B => HEADER(15), Y => n569);
   U215 : OR2X1 port map( A => n14, B => HEADER(14), Y => n570);
   U216 : OR2X1 port map( A => n13, B => HEADER(13), Y => n571);
   U217 : OR2X1 port map( A => n11, B => HEADER(12), Y => n572);
   U218 : OR2X1 port map( A => n11, B => HEADER(11), Y => n573);
   U219 : OR2X1 port map( A => n11, B => HEADER(10), Y => n574);
   U220 : OR2X1 port map( A => n11, B => HEADER(9), Y => n575);
   U221 : OR2X1 port map( A => n11, B => HEADER(8), Y => n576);
   U222 : OR2X1 port map( A => n11, B => HEADER(7), Y => n577);
   U223 : OR2X1 port map( A => n11, B => HEADER(6), Y => n578);
   U224 : OR2X1 port map( A => n11, B => HEADER(5), Y => n579);
   U225 : OR2X1 port map( A => n11, B => HEADER(4), Y => n580);
   U226 : OR2X1 port map( A => n11, B => HEADER(3), Y => n581);
   U227 : OR2X1 port map( A => n11, B => HEADER(2), Y => n582);
   U228 : OR2X1 port map( A => n11, B => HEADER(1), Y => n583);
   U229 : OR2X1 port map( A => n11, B => HEADER(0), Y => n584);
   U230 : OR2X1 port map( A => n11, B => ACCESS_CODE(71), Y => n585);
   U231 : NAND2X1 port map( A => ACCESS_CODE(71), B => n15, Y => n586);
   U232 : NAND2X1 port map( A => HEADER(0), B => n15, Y => n587);
   U233 : NAND2X1 port map( A => HEADER(1), B => n15, Y => n588);
   U234 : NAND2X1 port map( A => HEADER(2), B => n16, Y => n589);
   U235 : NAND2X1 port map( A => HEADER(3), B => n16, Y => n590);
   U236 : NAND2X1 port map( A => HEADER(4), B => n16, Y => n591);
   U237 : NAND2X1 port map( A => HEADER(5), B => n16, Y => n592);
   U238 : NAND2X1 port map( A => HEADER(6), B => n16, Y => n593);
   U239 : NAND2X1 port map( A => HEADER(7), B => n17, Y => n594);
   U240 : NAND2X1 port map( A => HEADER(8), B => n17, Y => n595);
   U241 : NAND2X1 port map( A => HEADER(9), B => n17, Y => n596);
   U242 : NAND2X1 port map( A => HEADER(10), B => n17, Y => n597);
   U243 : NAND2X1 port map( A => HEADER(11), B => n17, Y => n598);
   U244 : NAND2X1 port map( A => HEADER(12), B => n18, Y => n599);
   U245 : NAND2X1 port map( A => HEADER(13), B => n18, Y => n600);
   U246 : NAND2X1 port map( A => HEADER(14), B => n18, Y => n601);
   U247 : NAND2X1 port map( A => HEADER(15), B => n18, Y => n602);
   U248 : NAND2X1 port map( A => HEADER(16), B => n18, Y => n603);
   U249 : NAND2X1 port map( A => HEADER(17), B => n19, Y => n604);
   U250 : NAND2X1 port map( A => HEADER(18), B => n19, Y => n605);
   U251 : NAND2X1 port map( A => HEADER(19), B => n19, Y => n606);
   U252 : NAND2X1 port map( A => HEADER(20), B => n19, Y => n607);
   U253 : NAND2X1 port map( A => HEADER(21), B => n19, Y => n608);
   U254 : NAND2X1 port map( A => HEADER(22), B => n20, Y => n609);
   U255 : NAND2X1 port map( A => HEADER(23), B => n20, Y => n610);
   U256 : NAND2X1 port map( A => HEADER(24), B => n20, Y => n611);
   U257 : NAND2X1 port map( A => HEADER(25), B => n20, Y => n612);
   U258 : NAND2X1 port map( A => HEADER(26), B => n20, Y => n613);
   U259 : NAND2X1 port map( A => HEADER(27), B => n21, Y => n614);
   U260 : NAND2X1 port map( A => HEADER(28), B => n21, Y => n615);
   U261 : NAND2X1 port map( A => HEADER(29), B => n21, Y => n616);
   U262 : NAND2X1 port map( A => HEADER(30), B => n21, Y => n617);
   U263 : NAND2X1 port map( A => HEADER(31), B => n21, Y => n618);
   U264 : NAND2X1 port map( A => HEADER(32), B => n42, Y => n619);
   U265 : NAND2X1 port map( A => HEADER(33), B => n39, Y => n620);
   U266 : NAND2X1 port map( A => HEADER(34), B => n39, Y => n621);
   U267 : NAND2X1 port map( A => HEADER(35), B => n39, Y => n622);
   U268 : NAND2X1 port map( A => HEADER(36), B => n39, Y => n623);
   U269 : NAND2X1 port map( A => HEADER(37), B => n39, Y => n624);
   U270 : NAND2X1 port map( A => HEADER(38), B => n40, Y => n625);
   U271 : NAND2X1 port map( A => HEADER(39), B => n40, Y => n626);
   U272 : NAND2X1 port map( A => HEADER(40), B => n40, Y => n627);
   U273 : NAND2X1 port map( A => HEADER(41), B => n40, Y => n628);
   U274 : NAND2X1 port map( A => HEADER(42), B => n40, Y => n629);
   U275 : NAND2X1 port map( A => HEADER(43), B => n40, Y => n630);
   U276 : NAND2X1 port map( A => HEADER(44), B => n40, Y => n631);
   U277 : NAND2X1 port map( A => HEADER(45), B => n40, Y => n632);
   U278 : NAND2X1 port map( A => HEADER(46), B => n40, Y => n633);
   U279 : NAND2X1 port map( A => HEADER(47), B => n40, Y => n634);
   U280 : NAND2X1 port map( A => HEADER(48), B => n40, Y => n635);
   U281 : NAND2X1 port map( A => HEADER(49), B => n41, Y => n636);
   U282 : NAND2X1 port map( A => HEADER(50), B => n41, Y => n637);
   U283 : NAND2X1 port map( A => HEADER(51), B => n41, Y => n638);
   U284 : NAND2X1 port map( A => HEADER(52), B => n41, Y => n639);
   U285 : NAND2X1 port map( A => HEADER(53), B => n41, Y => n640);
   U286 : NAND2X1 port map( A => ACCESS_CODE(0), B => n41, Y => n641);
   U287 : NAND2X1 port map( A => ACCESS_CODE(1), B => n41, Y => n642);
   U288 : NAND2X1 port map( A => ACCESS_CODE(2), B => n41, Y => n643);
   U303 : NAND2X1 port map( A => ACCESS_CODE(3), B => n41, Y => n644);
   U305 : NAND2X1 port map( A => ACCESS_CODE(4), B => n41, Y => n645);
   U306 : NAND2X1 port map( A => ACCESS_CODE(5), B => n41, Y => n646);
   U307 : NAND2X1 port map( A => ACCESS_CODE(6), B => n42, Y => n647);
   U308 : NAND2X1 port map( A => ACCESS_CODE(7), B => n42, Y => n648);
   U309 : NAND2X1 port map( A => ACCESS_CODE(8), B => n42, Y => n649);
   U310 : NAND2X1 port map( A => ACCESS_CODE(9), B => n42, Y => n650);
   U311 : NAND2X1 port map( A => ACCESS_CODE(10), B => n42, Y => n651);
   U312 : NAND2X1 port map( A => ACCESS_CODE(11), B => n42, Y => n652);
   U313 : NAND2X1 port map( A => ACCESS_CODE(12), B => n42, Y => n653);
   U314 : NAND2X1 port map( A => ACCESS_CODE(13), B => n42, Y => n654);
   U315 : NAND2X1 port map( A => ACCESS_CODE(14), B => n42, Y => n655);
   U316 : NAND2X1 port map( A => ACCESS_CODE(15), B => n42, Y => n656);
   U317 : NAND2X1 port map( A => ACCESS_CODE(16), B => n43, Y => n657);
   U318 : NAND2X1 port map( A => ACCESS_CODE(17), B => n43, Y => n658);
   U319 : NAND2X1 port map( A => ACCESS_CODE(18), B => n43, Y => n659);
   U320 : NAND2X1 port map( A => ACCESS_CODE(19), B => n43, Y => n660);
   U321 : NAND2X1 port map( A => ACCESS_CODE(20), B => n43, Y => n661);
   U322 : NAND2X1 port map( A => ACCESS_CODE(21), B => n43, Y => n662);
   U323 : NAND2X1 port map( A => ACCESS_CODE(22), B => n43, Y => n663);
   U324 : NAND2X1 port map( A => ACCESS_CODE(23), B => n43, Y => n664);
   U325 : NAND2X1 port map( A => ACCESS_CODE(24), B => n43, Y => n665);
   U326 : NAND2X1 port map( A => ACCESS_CODE(25), B => n43, Y => n666);
   U327 : NAND2X1 port map( A => ACCESS_CODE(26), B => n43, Y => n667);
   U328 : NAND2X1 port map( A => ACCESS_CODE(27), B => n44, Y => n668);
   U329 : NAND2X1 port map( A => ACCESS_CODE(28), B => n44, Y => n669);
   U330 : NAND2X1 port map( A => ACCESS_CODE(29), B => n44, Y => n670);
   U331 : NAND2X1 port map( A => ACCESS_CODE(30), B => n44, Y => n671);
   U332 : NAND2X1 port map( A => ACCESS_CODE(31), B => n44, Y => n672);
   U333 : NAND2X1 port map( A => ACCESS_CODE(32), B => n44, Y => n673);
   U334 : NAND2X1 port map( A => ACCESS_CODE(33), B => n44, Y => n674);
   U335 : NAND2X1 port map( A => ACCESS_CODE(34), B => n44, Y => n676);
   U336 : NAND2X1 port map( A => ACCESS_CODE(35), B => n44, Y => n677);
   U337 : NAND2X1 port map( A => ACCESS_CODE(36), B => n44, Y => n679);
   U338 : NAND2X1 port map( A => ACCESS_CODE(37), B => n44, Y => n680);
   U339 : NAND2X1 port map( A => ACCESS_CODE(38), B => n45, Y => n682);
   U340 : NAND2X1 port map( A => ACCESS_CODE(39), B => n45, Y => n683);
   U341 : NAND2X1 port map( A => ACCESS_CODE(40), B => n45, Y => n685);
   U342 : NAND2X1 port map( A => ACCESS_CODE(41), B => n45, Y => n686);
   U343 : NAND2X1 port map( A => ACCESS_CODE(42), B => n45, Y => n688);
   U344 : NAND2X1 port map( A => ACCESS_CODE(43), B => n45, Y => n689);
   U345 : NAND2X1 port map( A => ACCESS_CODE(44), B => n45, Y => n691);
   U346 : NAND2X1 port map( A => ACCESS_CODE(45), B => n45, Y => n692);
   U347 : NAND2X1 port map( A => ACCESS_CODE(46), B => n45, Y => n694);
   U348 : NAND2X1 port map( A => ACCESS_CODE(47), B => n45, Y => n695);
   U349 : NAND2X1 port map( A => ACCESS_CODE(48), B => n45, Y => n697);
   U350 : NAND2X1 port map( A => ACCESS_CODE(49), B => n46, Y => n698);
   U351 : NAND2X1 port map( A => ACCESS_CODE(50), B => n46, Y => n700);
   U352 : NAND2X1 port map( A => ACCESS_CODE(51), B => n46, Y => n701);
   U353 : NAND2X1 port map( A => ACCESS_CODE(52), B => n46, Y => n703);
   U354 : NAND2X1 port map( A => ACCESS_CODE(53), B => n46, Y => n704);
   U355 : NAND2X1 port map( A => ACCESS_CODE(54), B => n46, Y => n706);
   U356 : NAND2X1 port map( A => ACCESS_CODE(55), B => n46, Y => n707);
   U357 : NAND2X1 port map( A => ACCESS_CODE(56), B => n46, Y => n709);
   U358 : NAND2X1 port map( A => ACCESS_CODE(57), B => n46, Y => n710);
   U359 : NAND2X1 port map( A => ACCESS_CODE(58), B => n46, Y => n712);
   U360 : NAND2X1 port map( A => ACCESS_CODE(59), B => n46, Y => n713);
   U361 : NAND2X1 port map( A => ACCESS_CODE(60), B => n47, Y => n715);
   U362 : NAND2X1 port map( A => ACCESS_CODE(61), B => n47, Y => n716);
   U363 : NAND2X1 port map( A => ACCESS_CODE(62), B => n47, Y => n718);
   U364 : NAND2X1 port map( A => ACCESS_CODE(63), B => n47, Y => n719);
   U365 : NAND2X1 port map( A => ACCESS_CODE(64), B => n47, Y => n721);
   U366 : NAND2X1 port map( A => ACCESS_CODE(65), B => n47, Y => n722);
   U367 : NAND2X1 port map( A => ACCESS_CODE(66), B => n47, Y => n724);
   U368 : NAND2X1 port map( A => ACCESS_CODE(67), B => n47, Y => n725);
   U369 : NAND2X1 port map( A => ACCESS_CODE(68), B => n47, Y => n727);
   U370 : NAND2X1 port map( A => ACCESS_CODE(69), B => n47, Y => n728);
   U371 : NAND2X1 port map( A => ACCESS_CODE(70), B => n47, Y => n730);
   U372 : OAI21X1 port map( A => n58, B => n95, C => n96, Y => n999);
   U373 : AOI22X1 port map( A => n4, B => HEADER(24), C => tHeader_27_port, D 
                           => n9, Y => n96);
   U374 : INVX1 port map( A => tHeader_26_port, Y => n95);
   U375 : OAI21X1 port map( A => n54, B => n97, C => n98, Y => n996);
   U376 : AOI22X1 port map( A => n7, B => HEADER(25), C => tHeader_28_port, D 
                           => n8, Y => n98);
   U377 : INVX1 port map( A => tHeader_27_port, Y => n97);
   U378 : OAI21X1 port map( A => n54, B => n99, C => n100, Y => n993);
   U379 : AOI22X1 port map( A => n6, B => HEADER(26), C => tHeader_29_port, D 
                           => n10, Y => n100);
   U380 : INVX1 port map( A => tHeader_28_port, Y => n99);
   U381 : OAI21X1 port map( A => n54, B => n101, C => n102, Y => n990);
   U382 : AOI22X1 port map( A => n4, B => HEADER(27), C => tHeader_30_port, D 
                           => n9, Y => n102);
   U383 : INVX1 port map( A => tHeader_29_port, Y => n101);
   U384 : OAI21X1 port map( A => n54, B => n103, C => n104, Y => n987);
   U385 : AOI22X1 port map( A => n7, B => HEADER(28), C => tHeader_31_port, D 
                           => n8, Y => n104);
   U386 : INVX1 port map( A => tHeader_30_port, Y => n103);
   U387 : OAI21X1 port map( A => n54, B => n105, C => n106, Y => n984);
   U388 : AOI22X1 port map( A => n6, B => HEADER(29), C => tHeader_32_port, D 
                           => n10, Y => n106);
   U389 : INVX1 port map( A => tHeader_31_port, Y => n105);
   U390 : OAI21X1 port map( A => n54, B => n107, C => n108, Y => n981);
   U391 : AOI22X1 port map( A => n4, B => HEADER(30), C => tHeader_33_port, D 
                           => n9, Y => n108);
   U392 : INVX1 port map( A => tHeader_32_port, Y => n107);
   U393 : OAI21X1 port map( A => n54, B => n109, C => n110, Y => n978);
   U394 : AOI22X1 port map( A => n7, B => HEADER(31), C => tHeader_34_port, D 
                           => n8, Y => n110);
   U395 : INVX1 port map( A => tHeader_33_port, Y => n109);
   U396 : OAI21X1 port map( A => n54, B => n111, C => n112, Y => n975);
   U397 : AOI22X1 port map( A => n6, B => HEADER(32), C => tHeader_35_port, D 
                           => n10, Y => n112);
   U398 : INVX1 port map( A => tHeader_34_port, Y => n111);
   U399 : OAI21X1 port map( A => n54, B => n113, C => n114, Y => n972);
   U400 : AOI22X1 port map( A => n4, B => HEADER(33), C => tHeader_36_port, D 
                           => n9, Y => n114);
   U401 : INVX1 port map( A => tHeader_35_port, Y => n113);
   U402 : OAI21X1 port map( A => n54, B => n115, C => n116, Y => n969);
   U403 : AOI22X1 port map( A => n7, B => HEADER(34), C => tHeader_37_port, D 
                           => n8, Y => n116);
   U404 : INVX1 port map( A => tHeader_36_port, Y => n115);
   U405 : OAI21X1 port map( A => n54, B => n117, C => n118_port, Y => n966);
   U406 : AOI22X1 port map( A => n6, B => HEADER(35), C => tHeader_38_port, D 
                           => n10, Y => n118_port);
   U407 : INVX1 port map( A => tHeader_37_port, Y => n117);
   U408 : OAI21X1 port map( A => n54, B => n119_port, C => n120_port, Y => n963
                           );
   U409 : AOI22X1 port map( A => n4, B => HEADER(36), C => tHeader_39_port, D 
                           => n9, Y => n120_port);
   U410 : INVX1 port map( A => tHeader_38_port, Y => n119_port);
   U411 : OAI21X1 port map( A => n55, B => n121_port, C => n122_port, Y => n960
                           );
   U412 : AOI22X1 port map( A => n7, B => HEADER(37), C => tHeader_40_port, D 
                           => n8, Y => n122_port);
   U413 : INVX1 port map( A => tHeader_39_port, Y => n121_port);
   U414 : OAI21X1 port map( A => n55, B => n123_port, C => n124, Y => n957);
   U415 : AOI22X1 port map( A => n6, B => HEADER(38), C => tHeader_41_port, D 
                           => n10, Y => n124);
   U416 : INVX1 port map( A => tHeader_40_port, Y => n123_port);
   U417 : OAI21X1 port map( A => n55, B => n125_port, C => n126_port, Y => n954
                           );
   U418 : AOI22X1 port map( A => n4, B => HEADER(39), C => tHeader_42_port, D 
                           => n9, Y => n126_port);
   U419 : INVX1 port map( A => tHeader_41_port, Y => n125_port);
   U420 : OAI21X1 port map( A => n55, B => n127_port, C => n128, Y => n951);
   U421 : AOI22X1 port map( A => n7, B => HEADER(40), C => tHeader_43_port, D 
                           => n8, Y => n128);
   U422 : INVX1 port map( A => tHeader_42_port, Y => n127_port);
   U423 : OAI21X1 port map( A => n55, B => n129, C => n130, Y => n948);
   U424 : AOI22X1 port map( A => n6, B => HEADER(41), C => tHeader_44_port, D 
                           => n10, Y => n130);
   U425 : INVX1 port map( A => tHeader_43_port, Y => n129);
   U426 : OAI21X1 port map( A => n55, B => n131, C => n132, Y => n945);
   U427 : AOI22X1 port map( A => n4, B => HEADER(42), C => tHeader_45_port, D 
                           => n9, Y => n132);
   U428 : INVX1 port map( A => tHeader_44_port, Y => n131);
   U429 : OAI21X1 port map( A => n55, B => n133, C => n134, Y => n942);
   U430 : AOI22X1 port map( A => n7, B => HEADER(43), C => tHeader_46_port, D 
                           => n8, Y => n134);
   U431 : INVX1 port map( A => tHeader_45_port, Y => n133);
   U432 : OAI21X1 port map( A => n55, B => n135, C => n136, Y => n939);
   U433 : AOI22X1 port map( A => n6, B => HEADER(44), C => tHeader_47_port, D 
                           => n10, Y => n136);
   U434 : INVX1 port map( A => tHeader_46_port, Y => n135);
   U435 : OAI21X1 port map( A => n55, B => n137, C => n138, Y => n936);
   U436 : AOI22X1 port map( A => n4, B => HEADER(45), C => tHeader_48_port, D 
                           => n9, Y => n138);
   U437 : INVX1 port map( A => tHeader_47_port, Y => n137);
   U438 : OAI21X1 port map( A => n55, B => n139, C => n140, Y => n933);
   U439 : AOI22X1 port map( A => n7, B => HEADER(46), C => tHeader_49_port, D 
                           => n8, Y => n140);
   U440 : INVX1 port map( A => tHeader_48_port, Y => n139);
   U441 : OAI21X1 port map( A => n55, B => n141, C => n142, Y => n930);
   U442 : AOI22X1 port map( A => n6, B => HEADER(47), C => tHeader_50_port, D 
                           => n10, Y => n142);
   U443 : INVX1 port map( A => tHeader_49_port, Y => n141);
   U444 : OAI21X1 port map( A => n55, B => n143_port, C => n144_port, Y => n927
                           );
   U445 : AOI22X1 port map( A => n4, B => HEADER(48), C => tHeader_51_port, D 
                           => n9, Y => n144_port);
   U446 : INVX1 port map( A => tHeader_50_port, Y => n143_port);
   U447 : OAI21X1 port map( A => n55, B => n145_port, C => n146_port, Y => n924
                           );
   U448 : AOI22X1 port map( A => n7, B => HEADER(49), C => tHeader_52_port, D 
                           => n8, Y => n146_port);
   U449 : INVX1 port map( A => tHeader_51_port, Y => n145_port);
   U450 : OAI21X1 port map( A => n55, B => n147_port, C => n148_port, Y => n921
                           );
   U451 : AOI22X1 port map( A => n6, B => HEADER(50), C => tHeader_53_port, D 
                           => n10, Y => n148_port);
   U452 : INVX1 port map( A => tHeader_52_port, Y => n147_port);
   U453 : OAI21X1 port map( A => n56, B => n149_port, C => n150_port, Y => n918
                           );
   U454 : AOI22X1 port map( A => n4, B => HEADER(51), C => tHeader_54_port, D 
                           => n9, Y => n150_port);
   U455 : INVX1 port map( A => tHeader_53_port, Y => n149_port);
   U456 : OAI21X1 port map( A => n56, B => n151_port, C => n152_port, Y => n915
                           );
   U457 : AOI22X1 port map( A => n7, B => HEADER(52), C => tHeader_55_port, D 
                           => n8, Y => n152_port);
   U458 : INVX1 port map( A => tHeader_54_port, Y => n151_port);
   U459 : OAI21X1 port map( A => n56, B => n153, C => n154, Y => n912);
   U460 : AOI22X1 port map( A => n6, B => HEADER(53), C => tHeader_56_port, D 
                           => n10, Y => n154);
   U461 : INVX1 port map( A => tHeader_55_port, Y => n153);
   U462 : OAI21X1 port map( A => n56, B => n155, C => n156, Y => n909);
   U463 : AOI22X1 port map( A => n4, B => ACCESS_CODE(0), C => tHeader_57_port,
                           D => n9, Y => n156);
   U464 : INVX1 port map( A => tHeader_56_port, Y => n155);
   U465 : OAI21X1 port map( A => n56, B => n157, C => n158, Y => n906);
   U466 : AOI22X1 port map( A => n7, B => ACCESS_CODE(1), C => tHeader_58_port,
                           D => n8, Y => n158);
   U467 : INVX1 port map( A => tHeader_57_port, Y => n157);
   U468 : OAI21X1 port map( A => n56, B => n159, C => n160, Y => n903);
   U469 : AOI22X1 port map( A => n6, B => ACCESS_CODE(2), C => tHeader_59_port,
                           D => n10, Y => n160);
   U470 : INVX1 port map( A => tHeader_58_port, Y => n159);
   U471 : OAI21X1 port map( A => n56, B => n161, C => n162, Y => n900);
   U472 : AOI22X1 port map( A => n4, B => ACCESS_CODE(3), C => tHeader_60_port,
                           D => n9, Y => n162);
   U473 : INVX1 port map( A => tHeader_59_port, Y => n161);
   U474 : OAI21X1 port map( A => n56, B => n163, C => n164, Y => n897);
   U475 : AOI22X1 port map( A => n7, B => ACCESS_CODE(4), C => tHeader_61_port,
                           D => n8, Y => n164);
   U476 : INVX1 port map( A => tHeader_60_port, Y => n163);
   U477 : OAI21X1 port map( A => n56, B => n165, C => n166, Y => n894);
   U478 : AOI22X1 port map( A => n6, B => ACCESS_CODE(5), C => tHeader_62_port,
                           D => n10, Y => n166);
   U479 : INVX1 port map( A => tHeader_61_port, Y => n165);
   U480 : OAI21X1 port map( A => n56, B => n167, C => n168, Y => n891);
   U481 : AOI22X1 port map( A => n4, B => ACCESS_CODE(6), C => tHeader_63_port,
                           D => n9, Y => n168);
   U482 : INVX1 port map( A => tHeader_62_port, Y => n167);
   U483 : OAI21X1 port map( A => n56, B => n169, C => n170, Y => n888);
   U484 : AOI22X1 port map( A => n7, B => ACCESS_CODE(7), C => tHeader_64_port,
                           D => n8, Y => n170);
   U485 : INVX1 port map( A => tHeader_63_port, Y => n169);
   U486 : OAI21X1 port map( A => n56, B => n171, C => n172, Y => n885);
   U487 : AOI22X1 port map( A => n6, B => ACCESS_CODE(8), C => tHeader_65_port,
                           D => n10, Y => n172);
   U488 : INVX1 port map( A => tHeader_64_port, Y => n171);
   U489 : OAI21X1 port map( A => n56, B => n173, C => n174, Y => n882);
   U490 : AOI22X1 port map( A => n4, B => ACCESS_CODE(9), C => tHeader_66_port,
                           D => n9, Y => n174);
   U491 : INVX1 port map( A => tHeader_65_port, Y => n173);
   U492 : OAI21X1 port map( A => n56, B => n175, C => n176, Y => n879);
   U493 : AOI22X1 port map( A => n7, B => ACCESS_CODE(10), C => tHeader_67_port
                           , D => n8, Y => n176);
   U494 : INVX1 port map( A => tHeader_66_port, Y => n175);
   U495 : OAI21X1 port map( A => n57, B => n177, C => n178, Y => n876);
   U496 : AOI22X1 port map( A => n6, B => ACCESS_CODE(11), C => tHeader_68_port
                           , D => n10, Y => n178);
   U497 : INVX1 port map( A => tHeader_67_port, Y => n177);
   U498 : OAI21X1 port map( A => n57, B => n179, C => n180, Y => n873);
   U499 : AOI22X1 port map( A => n4, B => ACCESS_CODE(12), C => tHeader_69_port
                           , D => n9, Y => n180);
   U500 : INVX1 port map( A => tHeader_68_port, Y => n179);
   U501 : OAI21X1 port map( A => n57, B => n181, C => n182, Y => n870);
   U502 : AOI22X1 port map( A => n7, B => ACCESS_CODE(13), C => tHeader_70_port
                           , D => n8, Y => n182);
   U503 : INVX1 port map( A => tHeader_69_port, Y => n181);
   U504 : OAI21X1 port map( A => n57, B => n183, C => n184, Y => n867);
   U505 : AOI22X1 port map( A => n6, B => ACCESS_CODE(14), C => tHeader_71_port
                           , D => n10, Y => n184);
   U506 : INVX1 port map( A => tHeader_70_port, Y => n183);
   U507 : OAI21X1 port map( A => n57, B => n185, C => n186, Y => n864);
   U508 : AOI22X1 port map( A => n4, B => ACCESS_CODE(15), C => tHeader_72_port
                           , D => n9, Y => n186);
   U509 : INVX1 port map( A => tHeader_71_port, Y => n185);
   U510 : OAI21X1 port map( A => n57, B => n187, C => n188, Y => n861);
   U511 : AOI22X1 port map( A => n7, B => ACCESS_CODE(16), C => tHeader_73_port
                           , D => n8, Y => n188);
   U512 : INVX1 port map( A => tHeader_72_port, Y => n187);
   U513 : OAI21X1 port map( A => n57, B => n189, C => n190, Y => n858);
   U514 : AOI22X1 port map( A => n6, B => ACCESS_CODE(17), C => tHeader_74_port
                           , D => n10, Y => n190);
   U515 : INVX1 port map( A => tHeader_73_port, Y => n189);
   U516 : OAI21X1 port map( A => n57, B => n191, C => n192, Y => n855);
   U517 : AOI22X1 port map( A => n4, B => ACCESS_CODE(18), C => tHeader_75_port
                           , D => n9, Y => n192);
   U518 : INVX1 port map( A => tHeader_74_port, Y => n191);
   U519 : OAI21X1 port map( A => n57, B => n193, C => n194, Y => n852);
   U520 : AOI22X1 port map( A => n7, B => ACCESS_CODE(19), C => tHeader_76_port
                           , D => n8, Y => n194);
   U521 : INVX1 port map( A => tHeader_75_port, Y => n193);
   U522 : OAI21X1 port map( A => n57, B => n195, C => n196, Y => n849);
   U523 : AOI22X1 port map( A => n6, B => ACCESS_CODE(20), C => tHeader_77_port
                           , D => n10, Y => n196);
   U524 : INVX1 port map( A => tHeader_76_port, Y => n195);
   U525 : OAI21X1 port map( A => n57, B => n197, C => n198, Y => n846);
   U526 : AOI22X1 port map( A => n4, B => ACCESS_CODE(21), C => tHeader_78_port
                           , D => n9, Y => n198);
   U527 : INVX1 port map( A => tHeader_77_port, Y => n197);
   U528 : OAI21X1 port map( A => n57, B => n199, C => n200, Y => n843);
   U529 : AOI22X1 port map( A => n7, B => ACCESS_CODE(22), C => tHeader_79_port
                           , D => n8, Y => n200);
   U530 : INVX1 port map( A => tHeader_78_port, Y => n199);
   U531 : OAI21X1 port map( A => n57, B => n201, C => n202, Y => n840);
   U532 : AOI22X1 port map( A => n6, B => ACCESS_CODE(23), C => tHeader_80_port
                           , D => n10, Y => n202);
   U533 : INVX1 port map( A => tHeader_79_port, Y => n201);
   U534 : OAI21X1 port map( A => n57, B => n203, C => n204, Y => n837);
   U535 : AOI22X1 port map( A => n4, B => ACCESS_CODE(24), C => tHeader_81_port
                           , D => n9, Y => n204);
   U536 : INVX1 port map( A => tHeader_80_port, Y => n203);
   U537 : OAI21X1 port map( A => n58, B => n205, C => n206, Y => n834);
   U538 : AOI22X1 port map( A => n7, B => ACCESS_CODE(25), C => tHeader_82_port
                           , D => n8, Y => n206);
   U539 : INVX1 port map( A => tHeader_81_port, Y => n205);
   U540 : OAI21X1 port map( A => n58, B => n207, C => n208, Y => n831);
   U541 : AOI22X1 port map( A => n6, B => ACCESS_CODE(26), C => tHeader_83_port
                           , D => n10, Y => n208);
   U542 : INVX1 port map( A => tHeader_82_port, Y => n207);
   U543 : OAI21X1 port map( A => n58, B => n209, C => n210, Y => n828);
   U544 : AOI22X1 port map( A => n4, B => ACCESS_CODE(27), C => tHeader_84_port
                           , D => n9, Y => n210);
   U545 : INVX1 port map( A => tHeader_83_port, Y => n209);
   U546 : OAI21X1 port map( A => n58, B => n211, C => n212, Y => n825);
   U547 : AOI22X1 port map( A => n7, B => ACCESS_CODE(28), C => tHeader_85_port
                           , D => n8, Y => n212);
   U548 : INVX1 port map( A => tHeader_84_port, Y => n211);
   U549 : OAI21X1 port map( A => n58, B => n213, C => n214, Y => n822);
   U550 : AOI22X1 port map( A => n6, B => ACCESS_CODE(29), C => tHeader_86_port
                           , D => n10, Y => n214);
   U551 : INVX1 port map( A => tHeader_85_port, Y => n213);
   U552 : OAI21X1 port map( A => n58, B => n215, C => n216, Y => n819);
   U553 : AOI22X1 port map( A => n4, B => ACCESS_CODE(30), C => tHeader_87_port
                           , D => n9, Y => n216);
   U554 : INVX1 port map( A => tHeader_86_port, Y => n215);
   U555 : OAI21X1 port map( A => n58, B => n217, C => n218, Y => n816);
   U556 : AOI22X1 port map( A => n7, B => ACCESS_CODE(31), C => tHeader_88_port
                           , D => n8, Y => n218);
   U557 : INVX1 port map( A => tHeader_87_port, Y => n217);
   U558 : OAI21X1 port map( A => n58, B => n219, C => n220, Y => n813);
   U559 : AOI22X1 port map( A => n6, B => ACCESS_CODE(32), C => tHeader_89_port
                           , D => n10, Y => n220);
   U560 : INVX1 port map( A => tHeader_88_port, Y => n219);
   U561 : OAI21X1 port map( A => n58, B => n221, C => n222, Y => n810);
   U562 : AOI22X1 port map( A => n4, B => ACCESS_CODE(33), C => tHeader_90_port
                           , D => n9, Y => n222);
   U563 : INVX1 port map( A => tHeader_89_port, Y => n221);
   U564 : OAI21X1 port map( A => n58, B => n223, C => n224, Y => n807);
   U565 : AOI22X1 port map( A => n7, B => ACCESS_CODE(34), C => tHeader_91_port
                           , D => n8, Y => n224);
   U566 : INVX1 port map( A => tHeader_90_port, Y => n223);
   U567 : OAI21X1 port map( A => n58, B => n225, C => n226, Y => n804);
   U568 : AOI22X1 port map( A => n6, B => ACCESS_CODE(35), C => tHeader_92_port
                           , D => n10, Y => n226);
   U569 : INVX1 port map( A => tHeader_91_port, Y => n225);
   U570 : OAI21X1 port map( A => n58, B => n227, C => n228, Y => n801);
   U571 : AOI22X1 port map( A => n4, B => ACCESS_CODE(36), C => tHeader_93_port
                           , D => n9, Y => n228);
   U572 : INVX1 port map( A => tHeader_92_port, Y => n227);
   U573 : OAI21X1 port map( A => n58, B => n229, C => n230, Y => n798);
   U574 : AOI22X1 port map( A => n7, B => ACCESS_CODE(37), C => tHeader_94_port
                           , D => n8, Y => n230);
   U575 : INVX1 port map( A => tHeader_93_port, Y => n229);
   U576 : OAI21X1 port map( A => n59_port, B => n231, C => n232, Y => n795);
   U577 : AOI22X1 port map( A => n6, B => ACCESS_CODE(38), C => tHeader_95_port
                           , D => n10, Y => n232);
   U578 : INVX1 port map( A => tHeader_94_port, Y => n231);
   U579 : OAI21X1 port map( A => n59_port, B => n233, C => n234, Y => n792);
   U580 : AOI22X1 port map( A => n4, B => ACCESS_CODE(39), C => tHeader_96_port
                           , D => n9, Y => n234);
   U581 : INVX1 port map( A => tHeader_95_port, Y => n233);
   U582 : OAI21X1 port map( A => n59_port, B => n235, C => n236, Y => n789);
   U583 : AOI22X1 port map( A => n7, B => ACCESS_CODE(40), C => tHeader_97_port
                           , D => n8, Y => n236);
   U584 : INVX1 port map( A => tHeader_96_port, Y => n235);
   U585 : OAI21X1 port map( A => n59_port, B => n237, C => n238, Y => n786);
   U586 : AOI22X1 port map( A => n6, B => ACCESS_CODE(41), C => tHeader_98_port
                           , D => n10, Y => n238);
   U587 : INVX1 port map( A => tHeader_97_port, Y => n237);
   U588 : OAI21X1 port map( A => n59_port, B => n239, C => n240, Y => n783);
   U589 : AOI22X1 port map( A => n4, B => ACCESS_CODE(42), C => tHeader_99_port
                           , D => n9, Y => n240);
   U590 : INVX1 port map( A => tHeader_98_port, Y => n239);
   U591 : OAI21X1 port map( A => n59_port, B => n241, C => n242, Y => n780);
   U592 : AOI22X1 port map( A => n7, B => ACCESS_CODE(43), C => 
                           tHeader_100_port, D => n8, Y => n242);
   U593 : INVX1 port map( A => tHeader_99_port, Y => n241);
   U594 : OAI21X1 port map( A => n59_port, B => n243, C => n244, Y => n777);
   U595 : AOI22X1 port map( A => n6, B => ACCESS_CODE(44), C => 
                           tHeader_101_port, D => n10, Y => n244);
   U596 : INVX1 port map( A => tHeader_100_port, Y => n243);
   U597 : OAI21X1 port map( A => n59_port, B => n245, C => n246, Y => n774);
   U598 : AOI22X1 port map( A => n4, B => ACCESS_CODE(45), C => 
                           tHeader_102_port, D => n9, Y => n246);
   U599 : INVX1 port map( A => tHeader_101_port, Y => n245);
   U600 : OAI21X1 port map( A => n59_port, B => n247, C => n248, Y => n771);
   U601 : AOI22X1 port map( A => n7, B => ACCESS_CODE(46), C => 
                           tHeader_103_port, D => n8, Y => n248);
   U602 : INVX1 port map( A => tHeader_102_port, Y => n247);
   U603 : OAI21X1 port map( A => n59_port, B => n249, C => n250, Y => n768);
   U604 : AOI22X1 port map( A => n6, B => ACCESS_CODE(47), C => 
                           tHeader_104_port, D => n10, Y => n250);
   U605 : INVX1 port map( A => tHeader_103_port, Y => n249);
   U606 : OAI21X1 port map( A => n59_port, B => n251, C => n252, Y => n765);
   U607 : AOI22X1 port map( A => n4, B => ACCESS_CODE(48), C => 
                           tHeader_105_port, D => n9, Y => n252);
   U608 : INVX1 port map( A => tHeader_104_port, Y => n251);
   U609 : OAI21X1 port map( A => n59_port, B => n253, C => n254, Y => n762);
   U610 : AOI22X1 port map( A => n7, B => ACCESS_CODE(49), C => 
                           tHeader_106_port, D => n8, Y => n254);
   U611 : INVX1 port map( A => tHeader_105_port, Y => n253);
   U612 : OAI21X1 port map( A => n59_port, B => n255, C => n256, Y => n759);
   U613 : AOI22X1 port map( A => n6, B => ACCESS_CODE(50), C => 
                           tHeader_107_port, D => n10, Y => n256);
   U614 : INVX1 port map( A => tHeader_106_port, Y => n255);
   U615 : OAI21X1 port map( A => n59_port, B => n257, C => n258, Y => n756);
   U616 : AOI22X1 port map( A => n4, B => ACCESS_CODE(51), C => 
                           tHeader_108_port, D => n9, Y => n258);
   U617 : INVX1 port map( A => tHeader_107_port, Y => n257);
   U618 : OAI21X1 port map( A => n60_port, B => n259, C => n260, Y => n753);
   U619 : AOI22X1 port map( A => n7, B => ACCESS_CODE(52), C => 
                           tHeader_109_port, D => n8, Y => n260);
   U620 : INVX1 port map( A => tHeader_108_port, Y => n259);
   U621 : OAI21X1 port map( A => n60_port, B => n261, C => n262, Y => n750);
   U622 : AOI22X1 port map( A => n6, B => ACCESS_CODE(53), C => 
                           tHeader_110_port, D => n10, Y => n262);
   U623 : INVX1 port map( A => tHeader_109_port, Y => n261);
   U624 : OAI21X1 port map( A => n60_port, B => n263, C => n264, Y => n747);
   U625 : AOI22X1 port map( A => n4, B => ACCESS_CODE(54), C => 
                           tHeader_111_port, D => n9, Y => n264);
   U626 : INVX1 port map( A => tHeader_110_port, Y => n263);
   U627 : OAI21X1 port map( A => n60_port, B => n265, C => n266, Y => n744);
   U628 : AOI22X1 port map( A => n7, B => ACCESS_CODE(55), C => 
                           tHeader_112_port, D => n8, Y => n266);
   U629 : INVX1 port map( A => tHeader_111_port, Y => n265);
   U630 : OAI21X1 port map( A => n60_port, B => n267, C => n268, Y => n741);
   U631 : AOI22X1 port map( A => n6, B => ACCESS_CODE(56), C => 
                           tHeader_113_port, D => n10, Y => n268);
   U632 : INVX1 port map( A => tHeader_112_port, Y => n267);
   U633 : OAI21X1 port map( A => n60_port, B => n269, C => n270, Y => n738);
   U634 : AOI22X1 port map( A => n4, B => ACCESS_CODE(57), C => 
                           tHeader_114_port, D => n9, Y => n270);
   U635 : INVX1 port map( A => tHeader_113_port, Y => n269);
   U636 : OAI21X1 port map( A => n60_port, B => n271, C => n272, Y => n735);
   U637 : AOI22X1 port map( A => n7, B => ACCESS_CODE(58), C => 
                           tHeader_115_port, D => n8, Y => n272);
   U638 : INVX1 port map( A => tHeader_114_port, Y => n271);
   U639 : OAI21X1 port map( A => n60_port, B => n273, C => n274, Y => n732);
   U640 : AOI22X1 port map( A => n6, B => ACCESS_CODE(59), C => 
                           tHeader_116_port, D => n10, Y => n274);
   U641 : INVX1 port map( A => tHeader_115_port, Y => n273);
   U642 : OAI21X1 port map( A => n60_port, B => n275, C => n276, Y => n729);
   U643 : AOI22X1 port map( A => n4, B => ACCESS_CODE(60), C => 
                           tHeader_117_port, D => n9, Y => n276);
   U644 : INVX1 port map( A => tHeader_116_port, Y => n275);
   U645 : OAI21X1 port map( A => n60_port, B => n277, C => n278, Y => n726);
   U646 : AOI22X1 port map( A => n7, B => ACCESS_CODE(61), C => 
                           tHeader_118_port, D => n8, Y => n278);
   U647 : INVX1 port map( A => tHeader_117_port, Y => n277);
   U648 : OAI21X1 port map( A => n60_port, B => n279, C => n280, Y => n723);
   U649 : AOI22X1 port map( A => n6, B => ACCESS_CODE(62), C => 
                           tHeader_119_port, D => n10, Y => n280);
   U650 : INVX1 port map( A => tHeader_118_port, Y => n279);
   U651 : OAI21X1 port map( A => n60_port, B => n281, C => n282, Y => n720);
   U652 : AOI22X1 port map( A => n4, B => ACCESS_CODE(63), C => 
                           tHeader_120_port, D => n9, Y => n282);
   U653 : INVX1 port map( A => tHeader_119_port, Y => n281);
   U654 : OAI21X1 port map( A => n60_port, B => n283, C => n284, Y => n717);
   U655 : AOI22X1 port map( A => n7, B => ACCESS_CODE(64), C => 
                           tHeader_121_port, D => n8, Y => n284);
   U656 : INVX1 port map( A => tHeader_120_port, Y => n283);
   U657 : OAI21X1 port map( A => n60_port, B => n285, C => n286, Y => n714);
   U658 : AOI22X1 port map( A => n6, B => ACCESS_CODE(65), C => 
                           tHeader_122_port, D => n10, Y => n286);
   U659 : INVX1 port map( A => tHeader_121_port, Y => n285);
   U660 : OAI21X1 port map( A => n61_port, B => n287, C => n288, Y => n711);
   U661 : AOI22X1 port map( A => n4, B => ACCESS_CODE(66), C => 
                           tHeader_123_port, D => n9, Y => n288);
   U662 : INVX1 port map( A => tHeader_122_port, Y => n287);
   U663 : OAI21X1 port map( A => n61_port, B => n289, C => n290, Y => n708);
   U664 : AOI22X1 port map( A => n7, B => ACCESS_CODE(67), C => 
                           tHeader_124_port, D => n8, Y => n290);
   U665 : INVX1 port map( A => tHeader_123_port, Y => n289);
   U666 : OAI21X1 port map( A => n61_port, B => n305, C => n307, Y => n705);
   U667 : AOI22X1 port map( A => n6, B => ACCESS_CODE(68), C => 
                           tHeader_125_port, D => n10, Y => n307);
   U668 : INVX1 port map( A => tHeader_124_port, Y => n305);
   U669 : OAI21X1 port map( A => n61_port, B => n308, C => n309, Y => n702);
   U670 : AOI22X1 port map( A => n4, B => ACCESS_CODE(69), C => 
                           tHeader_126_port, D => n9, Y => n309);
   U671 : INVX1 port map( A => tHeader_125_port, Y => n308);
   U672 : OAI21X1 port map( A => n61_port, B => n310, C => n311, Y => n699);
   U673 : AOI22X1 port map( A => n7, B => ACCESS_CODE(70), C => 
                           tHeader_127_port, D => n8, Y => n311);
   U674 : INVX1 port map( A => tHeader_126_port, Y => n310);
   U675 : OAI21X1 port map( A => n312, B => n93, C => n313, Y => n696);
   U676 : AOI22X1 port map( A => n314, B => PAYLOAD(0), C => pLoad_1_port, D =>
                           n315, Y => n313);
   U677 : INVX1 port map( A => pLoad_0_port, Y => n93);
   U678 : OAI21X1 port map( A => n312, B => n316, C => n317, Y => n693);
   U679 : AOI22X1 port map( A => n314, B => PAYLOAD(1), C => pLoad_2_port, D =>
                           n315, Y => n317);
   U680 : INVX1 port map( A => pLoad_1_port, Y => n316);
   U681 : OAI21X1 port map( A => n312, B => n318, C => n319, Y => n690);
   U682 : AOI22X1 port map( A => n314, B => PAYLOAD(2), C => pLoad_3_port, D =>
                           n315, Y => n319);
   U683 : INVX1 port map( A => pLoad_2_port, Y => n318);
   U684 : OAI21X1 port map( A => n312, B => n320, C => n321, Y => n687);
   U685 : AOI22X1 port map( A => n314, B => PAYLOAD(3), C => pLoad_4_port, D =>
                           n315, Y => n321);
   U686 : INVX1 port map( A => pLoad_3_port, Y => n320);
   U687 : OAI21X1 port map( A => n312, B => n322, C => n323, Y => n684);
   U688 : AOI22X1 port map( A => n314, B => PAYLOAD(4), C => pLoad_5_port, D =>
                           n315, Y => n323);
   U689 : INVX1 port map( A => pLoad_4_port, Y => n322);
   U690 : OAI21X1 port map( A => n312, B => n324, C => n325, Y => n681);
   U691 : AOI22X1 port map( A => n314, B => PAYLOAD(5), C => pLoad_6_port, D =>
                           n315, Y => n325);
   U692 : INVX1 port map( A => pLoad_5_port, Y => n324);
   U693 : OAI21X1 port map( A => n312, B => n326, C => n327, Y => n678);
   U694 : AOI22X1 port map( A => n314, B => PAYLOAD(6), C => pLoad_7_port, D =>
                           n315, Y => n327);
   U695 : INVX1 port map( A => pLoad_6_port, Y => n326);
   U696 : OAI21X1 port map( A => n312, B => n328, C => n329, Y => n675);
   U697 : AOI22X1 port map( A => n314, B => PAYLOAD(7), C => n315, D => 
                           pLoad_0_port, Y => n329);
   U698 : AND2X1 port map( A => n312, B => n731, Y => n315);
   U699 : AND2X1 port map( A => n312, B => n92, Y => n314);
   U700 : INVX1 port map( A => pLoad_7_port, Y => n328);
   U701 : AND2X1 port map( A => n330, B => n736, Y => n312);
   U702 : OAI21X1 port map( A => n92, B => n331, C => n68_port, Y => n330);
   U703 : INVX1 port map( A => n89, Y => n68_port);
   U704 : NOR2X1 port map( A => n332, B => n3, Y => n89);
   U705 : OAI21X1 port map( A => n81_port, B => n333, C => n334, Y => n1096);
   U706 : NAND2X1 port map( A => nxtcnt128_0_port, B => n335, Y => n334);
   U707 : INVX1 port map( A => cnt128_0_port, Y => n81_port);
   U708 : OAI21X1 port map( A => n336, B => n337, C => n338, Y => n1095);
   U709 : NAND2X1 port map( A => nxtcnt8_3_port, B => n339, Y => n338);
   U710 : INVX1 port map( A => cnt8_3_port, Y => n336);
   U711 : OAI21X1 port map( A => n734, B => n337, C => n340, Y => n1094);
   U712 : NAND2X1 port map( A => nxtcnt8_0_port, B => n339, Y => n340);
   U713 : INVX1 port map( A => cnt8_0_port, Y => n734);
   U714 : OAI21X1 port map( A => n337, B => n341, C => n342, Y => n1093);
   U715 : NAND2X1 port map( A => nxtcnt8_1_port, B => n339, Y => n342);
   U716 : OAI21X1 port map( A => n337, B => n343, C => n344, Y => n1092);
   U717 : NAND2X1 port map( A => nxtcnt8_2_port, B => n339, Y => n344);
   U718 : AND2X1 port map( A => n731, B => n337, Y => n339);
   U719 : OAI21X1 port map( A => n733, B => n331, C => n345, Y => n337);
   U720 : OAI21X1 port map( A => n346, B => n347, C => n348, Y => n1091);
   U721 : NAND2X1 port map( A => nxtcnt34_5_port, B => n349, Y => n348);
   U722 : OAI21X1 port map( A => N118, B => n347, C => n350, Y => n1090);
   U723 : NAND2X1 port map( A => nxtcnt34_0_port, B => n349, Y => n350);
   U724 : OAI21X1 port map( A => n351, B => n347, C => n352, Y => n1089);
   U725 : NAND2X1 port map( A => nxtcnt34_1_port, B => n349, Y => n352);
   U726 : INVX1 port map( A => cnt34_1_port, Y => n351);
   U727 : OAI21X1 port map( A => n347, B => n88, C => n353, Y => n1088);
   U728 : NAND2X1 port map( A => nxtcnt34_2_port, B => n349, Y => n353);
   U729 : OAI21X1 port map( A => n347, B => n86_port, C => n354, Y => n1087);
   U730 : NAND2X1 port map( A => nxtcnt34_3_port, B => n349, Y => n354);
   U731 : OAI21X1 port map( A => n347, B => n87, C => n355, Y => n1086);
   U732 : NAND2X1 port map( A => nxtcnt34_4_port, B => n349, Y => n355);
   U733 : AND2X1 port map( A => n731, B => n347, Y => n349);
   U734 : INVX1 port map( A => cnt34_4_port, Y => n87);
   U735 : OAI21X1 port map( A => n331, B => n356, C => n345, Y => n347);
   U736 : NAND2X1 port map( A => n357, B => n65_port, Y => n356);
   U737 : OAI21X1 port map( A => cnt8_0_port, B => n358, C => cnt8_3_port, Y =>
                           n357);
   U738 : NAND2X1 port map( A => n341, B => n343, Y => n358);
   U739 : INVX1 port map( A => cnt8_1_port, Y => n341);
   U740 : OAI21X1 port map( A => n359, B => n333, C => n360, Y => n1085);
   U741 : NAND2X1 port map( A => nxtcnt128_1_port, B => n335, Y => n360);
   U742 : INVX1 port map( A => cnt128_1_port, Y => n359);
   U743 : OAI21X1 port map( A => n361, B => n333, C => n362, Y => n1084);
   U744 : NAND2X1 port map( A => nxtcnt128_2_port, B => n335, Y => n362);
   U745 : INVX1 port map( A => cnt128_2_port, Y => n361);
   U746 : OAI21X1 port map( A => n78, B => n333, C => n363, Y => n1083);
   U747 : NAND2X1 port map( A => nxtcnt128_3_port, B => n335, Y => n363);
   U748 : INVX1 port map( A => cnt128_3_port, Y => n78);
   U749 : OAI21X1 port map( A => n79_port, B => n333, C => n364, Y => n1082);
   U750 : NAND2X1 port map( A => nxtcnt128_4_port, B => n335, Y => n364);
   U751 : INVX1 port map( A => cnt128_4_port, Y => n79_port);
   U752 : OAI21X1 port map( A => n365, B => n333, C => n366, Y => n1081);
   U753 : NAND2X1 port map( A => nxtcnt128_5_port, B => n335, Y => n366);
   U754 : INVX1 port map( A => cnt128_5_port, Y => n365);
   U755 : OAI21X1 port map( A => n367, B => n333, C => n368, Y => n1080);
   U756 : NAND2X1 port map( A => nxtcnt128_6_port, B => n335, Y => n368);
   U757 : INVX1 port map( A => cnt128_6_port, Y => n367);
   U758 : OAI21X1 port map( A => n333, B => n369, C => n370, Y => n1079);
   U759 : NAND2X1 port map( A => nxtcnt128_7_port, B => n335, Y => n370);
   U760 : AND2X1 port map( A => n733, B => n333, Y => n335);
   U761 : INVX1 port map( A => n65_port, Y => n733);
   U762 : INVX1 port map( A => cnt128_7_port, Y => n369);
   U763 : NAND2X1 port map( A => n371, B => n345, Y => n333);
   U764 : OAI21X1 port map( A => n61_port, B => n372, C => n373, Y => n1076);
   U765 : AOI22X1 port map( A => n6, B => ACCESS_CODE(71), C => n10, D => 
                           tHeader_0_port, Y => n373);
   U766 : INVX1 port map( A => tHeader_127_port, Y => n372);
   U767 : NAND2X1 port map( A => n374, B => n375, Y => n1075);
   U768 : MUX2X1 port map( B => tHeader_0_port, A => tHeader_1_port, S => n54, 
                           Y => n374);
   U769 : NAND2X1 port map( A => n376, B => n375, Y => n1074);
   U770 : MUX2X1 port map( B => tHeader_1_port, A => tHeader_2_port, S => n54, 
                           Y => n376);
   U771 : OAI21X1 port map( A => n61_port, B => n377, C => n378, Y => n1071);
   U772 : AOI22X1 port map( A => n4, B => HEADER(0), C => tHeader_3_port, D => 
                           n10, Y => n378);
   U773 : INVX1 port map( A => tHeader_2_port, Y => n377);
   U774 : OAI21X1 port map( A => n61_port, B => n379, C => n380, Y => n1068);
   U775 : AOI22X1 port map( A => n7, B => HEADER(1), C => tHeader_4_port, D => 
                           n9, Y => n380);
   U776 : INVX1 port map( A => tHeader_3_port, Y => n379);
   U777 : OAI21X1 port map( A => n61_port, B => n381, C => n382, Y => n1065);
   U778 : AOI22X1 port map( A => n6, B => HEADER(2), C => tHeader_5_port, D => 
                           n8, Y => n382);
   U779 : INVX1 port map( A => tHeader_4_port, Y => n381);
   U780 : OAI21X1 port map( A => n61_port, B => n383, C => n384, Y => n1062);
   U781 : AOI22X1 port map( A => n4, B => HEADER(3), C => tHeader_6_port, D => 
                           n10, Y => n384);
   U782 : INVX1 port map( A => tHeader_5_port, Y => n383);
   U783 : OAI21X1 port map( A => n61_port, B => n385, C => n386, Y => n1059);
   U784 : AOI22X1 port map( A => n7, B => HEADER(4), C => tHeader_7_port, D => 
                           n9, Y => n386);
   U785 : INVX1 port map( A => tHeader_6_port, Y => n385);
   U786 : OAI21X1 port map( A => n61_port, B => n387, C => n388, Y => n1056);
   U787 : AOI22X1 port map( A => n6, B => HEADER(5), C => tHeader_8_port, D => 
                           n8, Y => n388);
   U788 : INVX1 port map( A => tHeader_7_port, Y => n387);
   U789 : OAI21X1 port map( A => n61_port, B => n389, C => n390, Y => n1053);
   U790 : AOI22X1 port map( A => n4, B => HEADER(6), C => tHeader_9_port, D => 
                           n10, Y => n390);
   U791 : INVX1 port map( A => tHeader_8_port, Y => n389);
   U792 : OAI21X1 port map( A => n61_port, B => n391, C => n392, Y => n1050);
   U793 : AOI22X1 port map( A => n7, B => HEADER(7), C => tHeader_10_port, D =>
                           n9, Y => n392);
   U794 : INVX1 port map( A => tHeader_9_port, Y => n391);
   U795 : OAI21X1 port map( A => n62_port, B => n393, C => n394, Y => n1047);
   U796 : AOI22X1 port map( A => n6, B => HEADER(8), C => tHeader_11_port, D =>
                           n8, Y => n394);
   U797 : INVX1 port map( A => tHeader_10_port, Y => n393);
   U798 : OAI21X1 port map( A => n62_port, B => n395, C => n396, Y => n1044);
   U799 : AOI22X1 port map( A => n4, B => HEADER(9), C => tHeader_12_port, D =>
                           n10, Y => n396);
   U800 : INVX1 port map( A => tHeader_11_port, Y => n395);
   U801 : OAI21X1 port map( A => n62_port, B => n397, C => n398, Y => n1041);
   U802 : AOI22X1 port map( A => n7, B => HEADER(10), C => tHeader_13_port, D 
                           => n9, Y => n398);
   U803 : INVX1 port map( A => tHeader_12_port, Y => n397);
   U804 : OAI21X1 port map( A => n62_port, B => n399, C => n400, Y => n1038);
   U805 : AOI22X1 port map( A => n6, B => HEADER(11), C => tHeader_14_port, D 
                           => n8, Y => n400);
   U806 : INVX1 port map( A => tHeader_13_port, Y => n399);
   U807 : OAI21X1 port map( A => n62_port, B => n401, C => n402, Y => n1035);
   U808 : AOI22X1 port map( A => n4, B => HEADER(12), C => tHeader_15_port, D 
                           => n10, Y => n402);
   U809 : INVX1 port map( A => tHeader_14_port, Y => n401);
   U810 : OAI21X1 port map( A => n62_port, B => n403, C => n404, Y => n1032);
   U811 : AOI22X1 port map( A => n7, B => HEADER(13), C => tHeader_16_port, D 
                           => n9, Y => n404);
   U812 : INVX1 port map( A => tHeader_15_port, Y => n403);
   U813 : OAI21X1 port map( A => n62_port, B => n405, C => n406, Y => n1029);
   U814 : AOI22X1 port map( A => n6, B => HEADER(14), C => tHeader_17_port, D 
                           => n8, Y => n406);
   U815 : INVX1 port map( A => tHeader_16_port, Y => n405);
   U816 : OAI21X1 port map( A => n62_port, B => n407, C => n408, Y => n1026);
   U817 : AOI22X1 port map( A => n4, B => HEADER(15), C => tHeader_18_port, D 
                           => n10, Y => n408);
   U818 : INVX1 port map( A => tHeader_17_port, Y => n407);
   U819 : OAI21X1 port map( A => n62_port, B => n409, C => n410, Y => n1023);
   U820 : AOI22X1 port map( A => n7, B => HEADER(16), C => tHeader_19_port, D 
                           => n9, Y => n410);
   U821 : INVX1 port map( A => tHeader_18_port, Y => n409);
   U822 : OAI21X1 port map( A => n62_port, B => n411, C => n412, Y => n1020);
   U823 : AOI22X1 port map( A => n6, B => HEADER(17), C => tHeader_20_port, D 
                           => n8, Y => n412);
   U824 : INVX1 port map( A => tHeader_19_port, Y => n411);
   U825 : OAI21X1 port map( A => n62_port, B => n413, C => n414, Y => n1017);
   U826 : AOI22X1 port map( A => n4, B => HEADER(18), C => tHeader_21_port, D 
                           => n10, Y => n414);
   U827 : INVX1 port map( A => tHeader_20_port, Y => n413);
   U828 : OAI21X1 port map( A => n62_port, B => n415, C => n416, Y => n1014);
   U829 : AOI22X1 port map( A => n7, B => HEADER(19), C => tHeader_22_port, D 
                           => n9, Y => n416);
   U830 : INVX1 port map( A => tHeader_21_port, Y => n415);
   U831 : OAI21X1 port map( A => n62_port, B => n417, C => n418, Y => n1011);
   U832 : AOI22X1 port map( A => n6, B => HEADER(20), C => tHeader_23_port, D 
                           => n8, Y => n418);
   U833 : INVX1 port map( A => tHeader_22_port, Y => n417);
   U834 : OAI21X1 port map( A => n62_port, B => n419, C => n420, Y => n1008);
   U835 : AOI22X1 port map( A => n4, B => HEADER(21), C => tHeader_24_port, D 
                           => n10, Y => n420);
   U836 : INVX1 port map( A => tHeader_23_port, Y => n419);
   U837 : OAI21X1 port map( A => n63_port, B => n421, C => n422, Y => n1005);
   U838 : AOI22X1 port map( A => n7, B => HEADER(22), C => tHeader_25_port, D 
                           => n9, Y => n422);
   U839 : INVX1 port map( A => tHeader_24_port, Y => n421);
   U840 : OAI21X1 port map( A => n63_port, B => n423, C => n424, Y => n1002);
   U841 : AOI22X1 port map( A => n6, B => HEADER(23), C => tHeader_26_port, D 
                           => n8, Y => n424);
   U842 : NAND2X1 port map( A => n63_port, B => n15, Y => n375);
   U843 : INVX1 port map( A => tHeader_25_port, Y => n423);
   U844 : NOR2X1 port map( A => n371, B => RST, Y => n94);
   U845 : INVX1 port map( A => n425, Y => n371);
   U846 : OAI21X1 port map( A => n65_port, B => n331, C => n12, Y => n425);
   U847 : NOR2X1 port map( A => n3, B => state_1_port, Y => n90);
   U848 : NAND3X1 port map( A => n426, B => n427, C => cnt658_0_port, Y => n331
                           );
   U849 : INVX1 port map( A => n428, Y => n426);
   U850 : AND2X1 port map( A => nxtcnt658_9_port, B => n345, Y => N536);
   U851 : AND2X1 port map( A => nxtcnt658_8_port, B => n345, Y => N535);
   U852 : AND2X1 port map( A => nxtcnt658_7_port, B => n345, Y => N534);
   U853 : AND2X1 port map( A => nxtcnt658_6_port, B => n345, Y => N533);
   U854 : AND2X1 port map( A => nxtcnt658_5_port, B => n345, Y => N532);
   U855 : AND2X1 port map( A => nxtcnt658_4_port, B => n345, Y => N531);
   U856 : AND2X1 port map( A => nxtcnt658_3_port, B => n345, Y => N530);
   U857 : AND2X1 port map( A => nxtcnt658_2_port, B => n345, Y => N529);
   U858 : AND2X1 port map( A => nxtcnt658_1_port, B => n345, Y => N528);
   U859 : AND2X1 port map( A => nxtcnt658_0_port, B => n345, Y => N527);
   U860 : AND2X1 port map( A => N68, B => n429, Y => N152);
   U861 : AND2X1 port map( A => N67, B => n429, Y => N151);
   U862 : AND2X1 port map( A => N66, B => n429, Y => N150);
   U863 : AND2X1 port map( A => N65, B => n429, Y => N149);
   U864 : AND2X1 port map( A => N64, B => n429, Y => N148);
   U865 : AND2X1 port map( A => N63, B => n429, Y => N147);
   U866 : AND2X1 port map( A => N62, B => n429, Y => N146);
   U867 : AND2X1 port map( A => N61, B => n429, Y => N145);
   U868 : AND2X1 port map( A => N60, B => n429, Y => N144);
   U869 : AND2X1 port map( A => N59, B => n429, Y => N143);
   U870 : INVX1 port map( A => n430, Y => n429);
   U871 : OAI21X1 port map( A => n427, B => n431, C => n345, Y => n430);
   U872 : NAND2X1 port map( A => n65_port, B => n92, Y => n345);
   U873 : NAND2X1 port map( A => n3, B => state_1_port, Y => n92);
   U874 : NAND2X1 port map( A => n3, B => n332, Y => n65_port);
   U875 : INVX1 port map( A => state_1_port, Y => n332);
   U876 : OR2X1 port map( A => n428, B => cnt658_0_port, Y => n431);
   U877 : NAND3X1 port map( A => n432, B => n433, C => n434, Y => n428);
   U878 : NOR2X1 port map( A => n435, B => n436, Y => n434);
   U879 : NAND2X1 port map( A => cnt658_9_port, B => cnt658_7_port, Y => n436);
   U880 : NAND2X1 port map( A => cnt658_4_port, B => n437, Y => n435);
   U881 : INVX1 port map( A => cnt658_2_port, Y => n437);
   U882 : NOR2X1 port map( A => cnt658_8_port, B => cnt658_6_port, Y => n433);
   U883 : NOR2X1 port map( A => cnt658_5_port, B => cnt658_3_port, Y => n432);
   U884 : INVX1 port map( A => cnt658_1_port, Y => n427);
   U885 : XOR2X1 port map( A => cnt8_3_port, B => n438, Y => N127);
   U886 : NOR2X1 port map( A => n343, B => n439, Y => n438);
   U887 : XOR2X1 port map( A => n343, B => n439, Y => N126);
   U888 : NAND2X1 port map( A => cnt8_1_port, B => cnt8_0_port, Y => n439);
   U889 : INVX1 port map( A => cnt8_2_port, Y => n343);
   U890 : XOR2X1 port map( A => cnt8_1_port, B => cnt8_0_port, Y => N125);
   U891 : XOR2X1 port map( A => n346, B => n440, Y => N123);
   U892 : NAND2X1 port map( A => n441, B => cnt34_4_port, Y => n440);
   U893 : INVX1 port map( A => cnt34_5_port, Y => n346);
   U894 : XOR2X1 port map( A => cnt34_4_port, B => n441, Y => N122);
   U895 : NOR2X1 port map( A => n442, B => n86_port, Y => n441);
   U896 : XOR2X1 port map( A => n86_port, B => n442, Y => N121);
   U897 : NAND3X1 port map( A => cnt34_1_port, B => cnt34_0_port, C => 
                           cnt34_2_port, Y => n442);
   U898 : INVX1 port map( A => cnt34_3_port, Y => n86_port);
   U899 : XOR2X1 port map( A => n88, B => n443, Y => N120);
   U900 : NAND2X1 port map( A => cnt34_1_port, B => cnt34_0_port, Y => n443);
   U901 : INVX1 port map( A => cnt34_2_port, Y => n88);
   U902 : XOR2X1 port map( A => cnt34_1_port, B => cnt34_0_port, Y => N119);
   U903 : INVX1 port map( A => cnt34_0_port, Y => N118);

end SYN_b_serialtx;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869 is

   port( CLK, RST, REPLY_EN, ERR : in std_logic;  DATAOUT : out std_logic);

end B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869;

architecture SYN_b_next of B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869 is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869_DW01_inc_0
      port( A : in std_logic_vector (12 downto 0);  SUM : out std_logic_vector 
            (12 downto 0));
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal DATAOUT_port, bluewait_12_port, bluewait_11_port, bluewait_10_port, 
      bluewait_9_port, bluewait_8_port, bluewait_7_port, bluewait_6_port, 
      bluewait_5_port, bluewait_4_port, bluewait_3_port, bluewait_2_port, 
      bluewait_1_port, bluewait_0_port, cnt8_2_port, cnt8_1_port, cnt8_0_port, 
      txbuff_7_port, txbuff_6_port, txbuff_5_port, txbuff_4_port, txbuff_3_port
      , txbuff_2_port, txbuff_1_port, stop, run, N33, N34, N35, N36, N37, N38, 
      N39, N40, N41, N42, N43, N44, N45, b, a, N125, N126, N127, N128, N129, 
      n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82
      , n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, 
      n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n108, n109, n110
      , n111, n112, n113, n118, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, 
      n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26
      , n27, n28, n29, n30, n31, n32, n33_port, n34_port, n35_port, n36_port, 
      n37_port, n38_port, n39_port, n40_port, n41_port, n42_port, n43_port, 
      n44_port, n45_port, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56
      , n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67 : std_logic;

begin
   DATAOUT <= DATAOUT_port;
   
   b_reg : LATCH port map( CLK => N128, D => N127, Q => b);
   run_reg : LATCH port map( CLK => N125, D => N126, Q => run);
   bluewait_reg_12_inst : DFFSR port map( D => n109, CLK => CLK, R => n67, S =>
                           n108, Q => bluewait_12_port);
   bluewait_reg_3_inst : DFFSR port map( D => n106, CLK => CLK, R => n67, S => 
                           n105, Q => bluewait_3_port);
   bluewait_reg_0_inst : DFFSR port map( D => n104, CLK => CLK, R => n67, S => 
                           n103, Q => bluewait_0_port);
   bluewait_reg_1_inst : DFFSR port map( D => n102, CLK => CLK, R => n67, S => 
                           n101, Q => bluewait_1_port);
   bluewait_reg_2_inst : DFFSR port map( D => n100, CLK => CLK, R => n67, S => 
                           n99, Q => bluewait_2_port);
   bluewait_reg_4_inst : DFFSR port map( D => n98, CLK => CLK, R => n67, S => 
                           n97, Q => bluewait_4_port);
   bluewait_reg_5_inst : DFFSR port map( D => n96, CLK => CLK, R => n67, S => 
                           n95, Q => bluewait_5_port);
   bluewait_reg_6_inst : DFFSR port map( D => n94, CLK => CLK, R => n67, S => 
                           n93, Q => bluewait_6_port);
   bluewait_reg_7_inst : DFFSR port map( D => n92, CLK => CLK, R => n67, S => 
                           n91, Q => bluewait_7_port);
   bluewait_reg_8_inst : DFFSR port map( D => n90, CLK => CLK, R => n67, S => 
                           n89, Q => bluewait_8_port);
   bluewait_reg_9_inst : DFFSR port map( D => n88, CLK => CLK, R => n67, S => 
                           n87, Q => bluewait_9_port);
   bluewait_reg_10_inst : DFFSR port map( D => n86, CLK => CLK, R => n67, S => 
                           n85, Q => bluewait_10_port);
   bluewait_reg_11_inst : DFFSR port map( D => n84, CLK => CLK, R => n67, S => 
                           n83, Q => bluewait_11_port);
   txbuff_reg_1_inst : DFFSR port map( D => n82, CLK => CLK, R => n67, S => n81
                           , Q => txbuff_1_port);
   txbuff_reg_2_inst : DFFSR port map( D => n80, CLK => CLK, R => n67, S => n79
                           , Q => txbuff_2_port);
   txbuff_reg_3_inst : DFFSR port map( D => n78, CLK => CLK, R => n67, S => n77
                           , Q => txbuff_3_port);
   txbuff_reg_4_inst : DFFSR port map( D => n63, CLK => CLK, R => n67, S => n76
                           , Q => txbuff_4_port);
   txbuff_reg_5_inst : DFFSR port map( D => n64, CLK => CLK, R => n67, S => n75
                           , Q => txbuff_5_port);
   txbuff_reg_6_inst : DFFSR port map( D => n65, CLK => CLK, R => n67, S => n74
                           , Q => txbuff_6_port);
   txbuff_reg_7_inst : DFFSR port map( D => n66, CLK => CLK, R => n67, S => n73
                           , Q => txbuff_7_port);
   DATAOUT_reg : DFFSR port map( D => n118, CLK => CLK, R => n67, S => n72, Q 
                           => DATAOUT_port);
   cnt8_reg_0_inst : DFFSR port map( D => n113, CLK => CLK, R => n67, S => n71,
                           Q => cnt8_0_port);
   cnt8_reg_1_inst : DFFSR port map( D => n112, CLK => CLK, R => n67, S => n70,
                           Q => cnt8_1_port);
   cnt8_reg_2_inst : DFFSR port map( D => n111, CLK => CLK, R => n67, S => n69,
                           Q => cnt8_2_port);
   stop_reg : DFFSR port map( D => n110, CLK => CLK, R => n67, S => n68, Q => 
                           stop);
   a_reg : LATCH port map( CLK => N128, D => N129, Q => a);
   n68 <= '1';
   n69 <= '1';
   n70 <= '1';
   n71 <= '1';
   n72 <= '1';
   n73 <= '1';
   n74 <= '1';
   n75 <= '1';
   n76 <= '1';
   n77 <= '1';
   n79 <= '1';
   n81 <= '1';
   n83 <= '1';
   n85 <= '1';
   n87 <= '1';
   n89 <= '1';
   n91 <= '1';
   n93 <= '1';
   n95 <= '1';
   n97 <= '1';
   n99 <= '1';
   n101 <= '1';
   n103 <= '1';
   n105 <= '1';
   n108 <= '1';
   r78 : B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869_DW01_inc_0 port map( 
                           A(12) => bluewait_12_port, A(11) => bluewait_11_port
                           , A(10) => bluewait_10_port, A(9) => bluewait_9_port
                           , A(8) => bluewait_8_port, A(7) => bluewait_7_port, 
                           A(6) => bluewait_6_port, A(5) => bluewait_5_port, 
                           A(4) => bluewait_4_port, A(3) => bluewait_3_port, 
                           A(2) => bluewait_2_port, A(1) => bluewait_1_port, 
                           A(0) => bluewait_0_port, SUM(12) => N45, SUM(11) => 
                           N44, SUM(10) => N43, SUM(9) => N42, SUM(8) => N41, 
                           SUM(7) => N40, SUM(6) => N39, SUM(5) => N38, SUM(4) 
                           => N37, SUM(3) => N36, SUM(2) => N35, SUM(1) => N34,
                           SUM(0) => N33);
   U3 : INVX4 port map( A => RST, Y => n67);
   U4 : INVX1 port map( A => n1, Y => n63);
   U5 : MUX2X1 port map( B => txbuff_4_port, A => ERR, S => n2, Y => n1);
   U6 : INVX1 port map( A => n3, Y => n64);
   U7 : MUX2X1 port map( B => txbuff_5_port, A => n4, S => n2, Y => n3);
   U8 : INVX1 port map( A => n5, Y => n65);
   U9 : MUX2X1 port map( B => txbuff_6_port, A => ERR, S => n2, Y => n5);
   U10 : INVX1 port map( A => n6, Y => n66);
   U11 : MUX2X1 port map( B => txbuff_7_port, A => n4, S => n2, Y => n6);
   U12 : INVX1 port map( A => ERR, Y => n4);
   U13 : OAI21X1 port map( A => run, B => n7, C => n8, Y => n98);
   U14 : NAND2X1 port map( A => N37, B => n9, Y => n8);
   U15 : OAI21X1 port map( A => run, B => n10, C => n11, Y => n96);
   U16 : NAND2X1 port map( A => N38, B => n9, Y => n11);
   U17 : OAI21X1 port map( A => run, B => n12, C => n13, Y => n94);
   U18 : NAND2X1 port map( A => N39, B => n9, Y => n13);
   U19 : INVX1 port map( A => bluewait_6_port, Y => n12);
   U20 : OAI21X1 port map( A => run, B => n14, C => n15, Y => n92);
   U21 : NAND2X1 port map( A => N40, B => n9, Y => n15);
   U22 : INVX1 port map( A => bluewait_7_port, Y => n14);
   U23 : OAI21X1 port map( A => run, B => n16, C => n17, Y => n90);
   U24 : NAND2X1 port map( A => N41, B => n9, Y => n17);
   U25 : INVX1 port map( A => bluewait_8_port, Y => n16);
   U26 : OAI21X1 port map( A => run, B => n18, C => n19, Y => n88);
   U27 : NAND2X1 port map( A => N42, B => n9, Y => n19);
   U28 : INVX1 port map( A => bluewait_9_port, Y => n18);
   U29 : OAI21X1 port map( A => run, B => n20, C => n21, Y => n86);
   U30 : NAND2X1 port map( A => N43, B => n9, Y => n21);
   U31 : OAI21X1 port map( A => run, B => n22, C => n23, Y => n84);
   U32 : NAND2X1 port map( A => N44, B => n9, Y => n23);
   U33 : OR2X1 port map( A => txbuff_1_port, B => n2, Y => n82);
   U34 : OR2X1 port map( A => txbuff_2_port, B => n2, Y => n80);
   U35 : OR2X1 port map( A => txbuff_3_port, B => n2, Y => n78);
   U36 : NOR2X1 port map( A => n24, B => n25, Y => n2);
   U37 : NAND3X1 port map( A => n26, B => n27, C => run, Y => n25);
   U38 : NAND3X1 port map( A => n28, B => n29, C => n30, Y => n24);
   U39 : NOR2X1 port map( A => bluewait_9_port, B => bluewait_8_port, Y => n30)
                           ;
   U40 : MUX2X1 port map( B => n31, A => n32, S => run, Y => n118);
   U41 : MUX2X1 port map( B => n33_port, A => n34_port, S => cnt8_2_port, Y => 
                           n32);
   U42 : MUX2X1 port map( B => n35_port, A => n36_port, S => cnt8_1_port, Y => 
                           n34_port);
   U43 : MUX2X1 port map( B => txbuff_6_port, A => txbuff_7_port, S => 
                           cnt8_0_port, Y => n36_port);
   U44 : MUX2X1 port map( B => txbuff_4_port, A => txbuff_5_port, S => 
                           cnt8_0_port, Y => n35_port);
   U45 : MUX2X1 port map( B => n37_port, A => n38_port, S => cnt8_1_port, Y => 
                           n33_port);
   U46 : MUX2X1 port map( B => txbuff_2_port, A => txbuff_3_port, S => 
                           cnt8_0_port, Y => n38_port);
   U47 : NAND2X1 port map( A => txbuff_1_port, B => cnt8_0_port, Y => n37_port)
                           ;
   U48 : NAND2X1 port map( A => REPLY_EN, B => DATAOUT_port, Y => n31);
   U49 : XOR2X1 port map( A => cnt8_0_port, B => n39_port, Y => n113);
   U50 : XOR2X1 port map( A => n40_port, B => n41_port, Y => n112);
   U51 : XOR2X1 port map( A => cnt8_2_port, B => n42_port, Y => n111);
   U52 : NOR2X1 port map( A => n40_port, B => n41_port, Y => n42_port);
   U53 : INVX1 port map( A => cnt8_1_port, Y => n40_port);
   U54 : INVX1 port map( A => n43_port, Y => n110);
   U55 : MUX2X1 port map( B => run, A => stop, S => n44_port, Y => n43_port);
   U56 : AOI22X1 port map( A => n45_port, B => n46, C => REPLY_EN, D => n47, Y 
                           => n44_port);
   U57 : INVX1 port map( A => n41_port, Y => n46);
   U58 : NAND2X1 port map( A => n39_port, B => cnt8_0_port, Y => n41_port);
   U59 : AND2X1 port map( A => n48, B => run, Y => n39_port);
   U60 : AND2X1 port map( A => cnt8_1_port, B => cnt8_2_port, Y => n45_port);
   U61 : OAI21X1 port map( A => run, B => n28, C => n49, Y => n109);
   U62 : NAND2X1 port map( A => N45, B => n9, Y => n49);
   U63 : INVX1 port map( A => bluewait_12_port, Y => n28);
   U64 : OAI21X1 port map( A => run, B => n50, C => n51, Y => n106);
   U65 : NAND2X1 port map( A => N36, B => n9, Y => n51);
   U66 : INVX1 port map( A => bluewait_3_port, Y => n50);
   U67 : OAI21X1 port map( A => run, B => n27, C => n52, Y => n104);
   U68 : NAND2X1 port map( A => N33, B => n9, Y => n52);
   U69 : INVX1 port map( A => bluewait_0_port, Y => n27);
   U70 : OAI21X1 port map( A => run, B => n53, C => n54, Y => n102);
   U71 : NAND2X1 port map( A => N34, B => n9, Y => n54);
   U72 : INVX1 port map( A => bluewait_1_port, Y => n53);
   U73 : OAI21X1 port map( A => run, B => n29, C => n55, Y => n100);
   U74 : NAND2X1 port map( A => N35, B => n9, Y => n55);
   U75 : NOR2X1 port map( A => n47, B => n48, Y => n9);
   U76 : NOR2X1 port map( A => n56, B => n57, Y => n48);
   U77 : NAND3X1 port map( A => bluewait_8_port, B => bluewait_2_port, C => 
                           bluewait_9_port, Y => n57);
   U78 : NAND3X1 port map( A => bluewait_0_port, B => n26, C => 
                           bluewait_12_port, Y => n56);
   U79 : NOR2X1 port map( A => n58, B => n59, Y => n26);
   U80 : NAND3X1 port map( A => n20, B => n22, C => n60, Y => n59);
   U81 : NOR2X1 port map( A => bluewait_3_port, B => bluewait_1_port, Y => n60)
                           ;
   U82 : INVX1 port map( A => bluewait_11_port, Y => n22);
   U83 : INVX1 port map( A => bluewait_10_port, Y => n20);
   U84 : NAND3X1 port map( A => n7, B => n10, C => n61, Y => n58);
   U85 : NOR2X1 port map( A => bluewait_7_port, B => bluewait_6_port, Y => n61)
                           ;
   U86 : INVX1 port map( A => bluewait_5_port, Y => n10);
   U87 : INVX1 port map( A => bluewait_4_port, Y => n7);
   U88 : INVX1 port map( A => run, Y => n47);
   U89 : INVX1 port map( A => bluewait_2_port, Y => n29);
   U90 : AND2X1 port map( A => n67, B => REPLY_EN, Y => N129);
   U91 : NAND2X1 port map( A => stop, B => n67, Y => N128);
   U92 : NOR2X1 port map( A => RST, B => n62, Y => N127);
   U93 : OAI21X1 port map( A => b, B => n62, C => N126, Y => N125);
   U94 : NOR2X1 port map( A => RST, B => stop, Y => N126);
   U95 : INVX1 port map( A => a, Y => n62);

end SYN_b_next;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity B_Header_WAITREG5264 is

   port( CLK, RST, HEADER_EN : in std_logic;  HEADER : out std_logic_vector (53
         downto 0);  TRANS_EN, ENCODE_EN : out std_logic);

end B_Header_WAITREG5264;

architecture SYN_b_hdr of B_Header_WAITREG5264 is

   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX8
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component B_Header_WAITREG5264_DW01_inc_0
      port( A : in std_logic_vector (16 downto 0);  SUM : out std_logic_vector 
            (16 downto 0));
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal HEADER_53_port, HEADER_52_port, HEADER_51_port, HEADER_50_port, 
      HEADER_49_port, HEADER_48_port, HEADER_47_port, HEADER_46_port, 
      HEADER_45_port, HEADER_44_port, HEADER_43_port, HEADER_42_port, 
      HEADER_41_port, HEADER_40_port, HEADER_39_port, HEADER_38_port, 
      HEADER_37_port, HEADER_36_port, HEADER_35_port, HEADER_34_port, 
      HEADER_33_port, HEADER_32_port, HEADER_31_port, HEADER_30_port, 
      HEADER_29_port, HEADER_28_port, HEADER_27_port, HEADER_26_port, 
      HEADER_25_port, HEADER_24_port, HEADER_23_port, HEADER_22_port, 
      HEADER_21_port, HEADER_20_port, HEADER_19_port, HEADER_18_port, 
      HEADER_17_port, HEADER_16_port, HEADER_15_port, HEADER_14_port, 
      HEADER_13_port, HEADER_12_port, HEADER_11_port, HEADER_10_port, 
      HEADER_9_port, HEADER_8_port, HEADER_7_port, HEADER_6_port, HEADER_5_port
      , HEADER_4_port, HEADER_3_port, HEADER_2_port, HEADER_1_port, 
      HEADER_0_port, ENCODE_EN_port, D_9_port, waitcnt_16_port, waitcnt_15_port
      , waitcnt_14_port, waitcnt_13_port, waitcnt_12_port, waitcnt_11_port, 
      waitcnt_10_port, waitcnt_9_port, waitcnt_8_port, waitcnt_7_port, 
      waitcnt_6_port, waitcnt_5_port, waitcnt_4_port, waitcnt_3_port, 
      waitcnt_2_port, waitcnt_1_port, waitcnt_0_port, waittx, N14, N15, N16, 
      N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, B, 
      A, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, 
      n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98
      , n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, 
      n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, 
      n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, 
      n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, 
      n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, 
      n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, 
      n171, n172, n173, n174, n176, n177, n178, n179, n180, n181, n182, n183, 
      n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, 
      n196, n197, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, 
      n14_port, n15_port, n16_port, n17_port, n18_port, n19_port, n20_port, 
      n21_port, n22_port, n23_port, n24_port, n25_port, n26_port, n27_port, 
      n28_port, n29_port, n30_port, n31, n32, n33, n34, n35, n36, n37, n38, n39
      , n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, 
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68
      , n69, n175, n198 : std_logic;

begin
   HEADER <= ( HEADER_53_port, HEADER_52_port, HEADER_51_port, HEADER_50_port, 
      HEADER_49_port, HEADER_48_port, HEADER_47_port, HEADER_46_port, 
      HEADER_45_port, HEADER_44_port, HEADER_43_port, HEADER_42_port, 
      HEADER_41_port, HEADER_40_port, HEADER_39_port, HEADER_38_port, 
      HEADER_37_port, HEADER_36_port, HEADER_35_port, HEADER_34_port, 
      HEADER_33_port, HEADER_32_port, HEADER_31_port, HEADER_30_port, 
      HEADER_29_port, HEADER_28_port, HEADER_27_port, HEADER_26_port, 
      HEADER_25_port, HEADER_24_port, HEADER_23_port, HEADER_22_port, 
      HEADER_21_port, HEADER_20_port, HEADER_19_port, HEADER_18_port, 
      HEADER_17_port, HEADER_16_port, HEADER_15_port, HEADER_14_port, 
      HEADER_13_port, HEADER_12_port, HEADER_11_port, HEADER_10_port, 
      HEADER_9_port, HEADER_8_port, HEADER_7_port, HEADER_6_port, HEADER_5_port
      , HEADER_4_port, HEADER_3_port, HEADER_2_port, HEADER_1_port, 
      HEADER_0_port );
   ENCODE_EN <= ENCODE_EN_port;
   
   HEADER_reg_53_inst : DFFSR port map( D => n177, CLK => CLK, R => n198, S => 
                           n176, Q => HEADER_53_port);
   HEADER_reg_52_inst : DFFSR port map( D => n174, CLK => CLK, R => n198, S => 
                           n173, Q => HEADER_52_port);
   HEADER_reg_51_inst : DFFSR port map( D => n172, CLK => CLK, R => n198, S => 
                           n171, Q => HEADER_51_port);
   HEADER_reg_41_inst : DFFSR port map( D => n170, CLK => CLK, R => n198, S => 
                           n169, Q => HEADER_41_port);
   HEADER_reg_40_inst : DFFSR port map( D => n168, CLK => CLK, R => n198, S => 
                           n167, Q => HEADER_40_port);
   HEADER_reg_39_inst : DFFSR port map( D => n166, CLK => CLK, R => n198, S => 
                           n165, Q => HEADER_39_port);
   HEADER_reg_32_inst : DFFSR port map( D => n164, CLK => CLK, R => n198, S => 
                           n163, Q => HEADER_32_port);
   HEADER_reg_31_inst : DFFSR port map( D => n162, CLK => CLK, R => n198, S => 
                           n161, Q => HEADER_31_port);
   HEADER_reg_30_inst : DFFSR port map( D => n160, CLK => CLK, R => n198, S => 
                           n159, Q => HEADER_30_port);
   HEADER_reg_26_inst : DFFSR port map( D => n158, CLK => CLK, R => n198, S => 
                           n157, Q => HEADER_26_port);
   HEADER_reg_25_inst : DFFSR port map( D => n156, CLK => CLK, R => n198, S => 
                           n155, Q => HEADER_25_port);
   HEADER_reg_24_inst : DFFSR port map( D => n154, CLK => CLK, R => n198, S => 
                           n153, Q => HEADER_24_port);
   HEADER_reg_23_inst : DFFSR port map( D => n152, CLK => CLK, R => n198, S => 
                           n151, Q => HEADER_23_port);
   HEADER_reg_22_inst : DFFSR port map( D => n150, CLK => CLK, R => n198, S => 
                           n149, Q => HEADER_22_port);
   HEADER_reg_21_inst : DFFSR port map( D => n148, CLK => CLK, R => n198, S => 
                           n147, Q => HEADER_21_port);
   HEADER_reg_20_inst : DFFSR port map( D => n146, CLK => CLK, R => n198, S => 
                           n145, Q => HEADER_20_port);
   HEADER_reg_19_inst : DFFSR port map( D => n144, CLK => CLK, R => n198, S => 
                           n143, Q => HEADER_19_port);
   HEADER_reg_18_inst : DFFSR port map( D => n142, CLK => CLK, R => n198, S => 
                           n141, Q => HEADER_18_port);
   HEADER_reg_17_inst : DFFSR port map( D => n140, CLK => CLK, R => n198, S => 
                           n139, Q => HEADER_17_port);
   HEADER_reg_16_inst : DFFSR port map( D => n138, CLK => CLK, R => n198, S => 
                           n137, Q => HEADER_16_port);
   HEADER_reg_15_inst : DFFSR port map( D => n136, CLK => CLK, R => n198, S => 
                           n135, Q => HEADER_15_port);
   HEADER_reg_14_inst : DFFSR port map( D => n134, CLK => CLK, R => n198, S => 
                           n133, Q => HEADER_14_port);
   HEADER_reg_13_inst : DFFSR port map( D => n132, CLK => CLK, R => n198, S => 
                           n131, Q => HEADER_13_port);
   HEADER_reg_12_inst : DFFSR port map( D => n130, CLK => CLK, R => n198, S => 
                           n129, Q => HEADER_12_port);
   HEADER_reg_11_inst : DFFSR port map( D => n128, CLK => CLK, R => n198, S => 
                           n127, Q => HEADER_11_port);
   HEADER_reg_10_inst : DFFSR port map( D => n126, CLK => CLK, R => n198, S => 
                           n125, Q => HEADER_10_port);
   HEADER_reg_9_inst : DFFSR port map( D => n124, CLK => CLK, R => n198, S => 
                           n123, Q => HEADER_9_port);
   HEADER_reg_2_inst : DFFSR port map( D => n122, CLK => CLK, R => n198, S => 
                           n121, Q => HEADER_2_port);
   HEADER_reg_1_inst : DFFSR port map( D => n120, CLK => CLK, R => n198, S => 
                           n119, Q => HEADER_1_port);
   HEADER_reg_0_inst : DFFSR port map( D => n118, CLK => CLK, R => n198, S => 
                           n117, Q => HEADER_0_port);
   TRANS_EN_reg : DFFSR port map( D => HEADER_EN, CLK => CLK, R => n198, S => 
                           n116, Q => TRANS_EN);
   waitcnt_reg_0_inst : DFFSR port map( D => n197, CLK => CLK, R => n198, S => 
                           n115, Q => waitcnt_0_port);
   waittx_reg : DFFSR port map( D => n195, CLK => CLK, R => n198, S => n114, Q 
                           => waittx);
   waitcnt_reg_16_inst : DFFSR port map( D => n196, CLK => CLK, R => n198, S =>
                           n113, Q => waitcnt_16_port);
   waitcnt_reg_1_inst : DFFSR port map( D => n194, CLK => CLK, R => n198, S => 
                           n112, Q => waitcnt_1_port);
   waitcnt_reg_2_inst : DFFSR port map( D => n193, CLK => CLK, R => n198, S => 
                           n111, Q => waitcnt_2_port);
   waitcnt_reg_3_inst : DFFSR port map( D => n192, CLK => CLK, R => n198, S => 
                           n110, Q => waitcnt_3_port);
   waitcnt_reg_4_inst : DFFSR port map( D => n191, CLK => CLK, R => n198, S => 
                           n109, Q => waitcnt_4_port);
   waitcnt_reg_5_inst : DFFSR port map( D => n190, CLK => CLK, R => n198, S => 
                           n108, Q => waitcnt_5_port);
   waitcnt_reg_6_inst : DFFSR port map( D => n189, CLK => CLK, R => n198, S => 
                           n107, Q => waitcnt_6_port);
   waitcnt_reg_7_inst : DFFSR port map( D => n188, CLK => CLK, R => n198, S => 
                           n106, Q => waitcnt_7_port);
   waitcnt_reg_8_inst : DFFSR port map( D => n187, CLK => CLK, R => n198, S => 
                           n105, Q => waitcnt_8_port);
   waitcnt_reg_9_inst : DFFSR port map( D => n186, CLK => CLK, R => n198, S => 
                           n104, Q => waitcnt_9_port);
   waitcnt_reg_10_inst : DFFSR port map( D => n185, CLK => CLK, R => n198, S =>
                           n103, Q => waitcnt_10_port);
   waitcnt_reg_11_inst : DFFSR port map( D => n184, CLK => CLK, R => n198, S =>
                           n102, Q => waitcnt_11_port);
   waitcnt_reg_12_inst : DFFSR port map( D => n183, CLK => CLK, R => n198, S =>
                           n101, Q => waitcnt_12_port);
   waitcnt_reg_13_inst : DFFSR port map( D => n182, CLK => CLK, R => n198, S =>
                           n100, Q => waitcnt_13_port);
   waitcnt_reg_14_inst : DFFSR port map( D => n181, CLK => CLK, R => n198, S =>
                           n99, Q => waitcnt_14_port);
   waitcnt_reg_15_inst : DFFSR port map( D => n180, CLK => CLK, R => n198, S =>
                           n98, Q => waitcnt_15_port);
   ENCODE_EN_reg : DFFSR port map( D => n179, CLK => CLK, R => n198, S => n97, 
                           Q => ENCODE_EN_port);
   A_reg : DFFSR port map( D => HEADER_EN, CLK => CLK, R => n198, S => n96, Q 
                           => A);
   B_reg : DFFSR port map( D => A, CLK => CLK, R => n198, S => n95, Q => B);
   SEQN_reg : DFFSR port map( D => n178, CLK => CLK, R => n198, S => n94, Q => 
                           D_9_port);
   HEADER_reg_29_inst : DFFSR port map( D => n93, CLK => CLK, R => n198, S => 
                           n92, Q => HEADER_29_port);
   HEADER_reg_28_inst : DFFSR port map( D => n91, CLK => CLK, R => n198, S => 
                           n90, Q => HEADER_28_port);
   HEADER_reg_27_inst : DFFSR port map( D => n89, CLK => CLK, R => n198, S => 
                           n88, Q => HEADER_27_port);
   HEADER_reg_36_inst : DFFSR port map( D => n87, CLK => CLK, R => n198, S => 
                           n86, Q => HEADER_36_port);
   HEADER_reg_37_inst : DFFSR port map( D => n85, CLK => CLK, R => n198, S => 
                           n84, Q => HEADER_37_port);
   HEADER_reg_38_inst : DFFSR port map( D => n83, CLK => CLK, R => n198, S => 
                           n82, Q => HEADER_38_port);
   HEADER_reg_42_inst : DFFSR port map( D => n81, CLK => CLK, R => n198, S => 
                           n80, Q => HEADER_42_port);
   HEADER_reg_43_inst : DFFSR port map( D => n79, CLK => CLK, R => n198, S => 
                           n78, Q => HEADER_43_port);
   HEADER_reg_44_inst : DFFSR port map( D => n77, CLK => CLK, R => n198, S => 
                           n76, Q => HEADER_44_port);
   HEADER_reg_35_inst : DFFSR port map( D => n75, CLK => CLK, R => n198, S => 
                           n74, Q => HEADER_35_port);
   HEADER_reg_34_inst : DFFSR port map( D => n73, CLK => CLK, R => n198, S => 
                           n72, Q => HEADER_34_port);
   HEADER_reg_33_inst : DFFSR port map( D => n71, CLK => CLK, R => n198, S => 
                           n70, Q => HEADER_33_port);
   n70 <= '1';
   n72 <= '1';
   n74 <= '1';
   n76 <= '1';
   n78 <= '1';
   n80 <= '1';
   n82 <= '1';
   n84 <= '1';
   n86 <= '1';
   n88 <= '1';
   n90 <= '1';
   n92 <= '1';
   n94 <= '1';
   n95 <= '1';
   n96 <= '1';
   n97 <= '1';
   n98 <= '1';
   n99 <= '1';
   n100 <= '1';
   n101 <= '1';
   n102 <= '1';
   n103 <= '1';
   n104 <= '1';
   n105 <= '1';
   n106 <= '1';
   n107 <= '1';
   n108 <= '1';
   n109 <= '1';
   n110 <= '1';
   n111 <= '1';
   n112 <= '1';
   n113 <= '1';
   n114 <= '1';
   n115 <= '1';
   n116 <= '1';
   n117 <= '1';
   n119 <= '1';
   n121 <= '1';
   HEADER_3_port <= '0';
   HEADER_4_port <= '0';
   HEADER_5_port <= '0';
   HEADER_6_port <= '0';
   HEADER_7_port <= '0';
   HEADER_8_port <= '0';
   n123 <= '1';
   n125 <= '1';
   n127 <= '1';
   n129 <= '1';
   n131 <= '1';
   n133 <= '1';
   n135 <= '1';
   n137 <= '1';
   n139 <= '1';
   n141 <= '1';
   n143 <= '1';
   n145 <= '1';
   n147 <= '1';
   n149 <= '1';
   n151 <= '1';
   n153 <= '1';
   n155 <= '1';
   n157 <= '1';
   n159 <= '1';
   n161 <= '1';
   n163 <= '1';
   n165 <= '1';
   n167 <= '1';
   n169 <= '1';
   HEADER_45_port <= '0';
   HEADER_46_port <= '0';
   HEADER_47_port <= '0';
   HEADER_48_port <= '0';
   HEADER_49_port <= '0';
   HEADER_50_port <= '0';
   n171 <= '1';
   n173 <= '1';
   n176 <= '1';
   add_80 : B_Header_WAITREG5264_DW01_inc_0 port map( A(16) => waitcnt_16_port,
                           A(15) => waitcnt_15_port, A(14) => waitcnt_14_port, 
                           A(13) => waitcnt_13_port, A(12) => waitcnt_12_port, 
                           A(11) => waitcnt_11_port, A(10) => waitcnt_10_port, 
                           A(9) => waitcnt_9_port, A(8) => waitcnt_8_port, A(7)
                           => waitcnt_7_port, A(6) => waitcnt_6_port, A(5) => 
                           waitcnt_5_port, A(4) => waitcnt_4_port, A(3) => 
                           waitcnt_3_port, A(2) => waitcnt_2_port, A(1) => 
                           waitcnt_1_port, A(0) => waitcnt_0_port, SUM(16) => 
                           N30, SUM(15) => N29, SUM(14) => N28, SUM(13) => N27,
                           SUM(12) => N26, SUM(11) => N25, SUM(10) => N24, 
                           SUM(9) => N23, SUM(8) => N22, SUM(7) => N21, SUM(6) 
                           => N20, SUM(5) => N19, SUM(4) => N18, SUM(3) => N17,
                           SUM(2) => N16, SUM(1) => N15, SUM(0) => N14);
   U3 : INVX8 port map( A => RST, Y => n198);
   U4 : INVX2 port map( A => n55, Y => n1);
   U5 : OAI21X1 port map( A => HEADER_EN, B => n2, C => n3, Y => n93);
   U6 : INVX1 port map( A => HEADER_29_port, Y => n2);
   U7 : OAI21X1 port map( A => HEADER_EN, B => n4, C => n3, Y => n91);
   U8 : INVX1 port map( A => HEADER_28_port, Y => n4);
   U9 : OAI21X1 port map( A => HEADER_EN, B => n5, C => n3, Y => n89);
   U10 : INVX1 port map( A => HEADER_27_port, Y => n5);
   U11 : OAI21X1 port map( A => HEADER_EN, B => n6, C => n3, Y => n87);
   U12 : INVX1 port map( A => HEADER_36_port, Y => n6);
   U13 : OAI21X1 port map( A => HEADER_EN, B => n7, C => n3, Y => n85);
   U14 : INVX1 port map( A => HEADER_37_port, Y => n7);
   U15 : OAI21X1 port map( A => HEADER_EN, B => n8, C => n3, Y => n83);
   U16 : INVX1 port map( A => HEADER_38_port, Y => n8);
   U17 : OAI21X1 port map( A => HEADER_EN, B => n9, C => n3, Y => n81);
   U18 : INVX1 port map( A => HEADER_42_port, Y => n9);
   U19 : OAI21X1 port map( A => HEADER_EN, B => n10, C => n3, Y => n79);
   U20 : INVX1 port map( A => HEADER_43_port, Y => n10);
   U21 : OAI21X1 port map( A => HEADER_EN, B => n11, C => n3, Y => n77);
   U22 : NAND2X1 port map( A => HEADER_EN, B => D_9_port, Y => n3);
   U23 : INVX1 port map( A => HEADER_44_port, Y => n11);
   U24 : OAI21X1 port map( A => HEADER_EN, B => n12, C => n13, Y => n75);
   U25 : INVX1 port map( A => HEADER_35_port, Y => n12);
   U26 : OAI21X1 port map( A => HEADER_EN, B => n14_port, C => n13, Y => n73);
   U27 : INVX1 port map( A => HEADER_34_port, Y => n14_port);
   U28 : OAI21X1 port map( A => HEADER_EN, B => n15_port, C => n13, Y => n71);
   U29 : OR2X1 port map( A => n16_port, B => D_9_port, Y => n13);
   U30 : INVX1 port map( A => HEADER_33_port, Y => n15_port);
   U31 : OAI21X1 port map( A => n1, B => n18_port, C => n19_port, Y => n197);
   U32 : NAND2X1 port map( A => N14, B => n20_port, Y => n19_port);
   U33 : OAI21X1 port map( A => n1, B => n21_port, C => n22_port, Y => n196);
   U34 : NAND2X1 port map( A => N30, B => n20_port, Y => n22_port);
   U35 : INVX1 port map( A => waitcnt_16_port, Y => n21_port);
   U36 : OAI21X1 port map( A => n23_port, B => n24_port, C => n16_port, Y => 
                           n195);
   U37 : INVX1 port map( A => HEADER_EN, Y => n16_port);
   U38 : OAI21X1 port map( A => n1, B => n25_port, C => n26_port, Y => n194);
   U39 : NAND2X1 port map( A => N15, B => n20_port, Y => n26_port);
   U40 : OAI21X1 port map( A => n1, B => n27_port, C => n28_port, Y => n193);
   U41 : NAND2X1 port map( A => N16, B => n20_port, Y => n28_port);
   U42 : INVX1 port map( A => waitcnt_2_port, Y => n27_port);
   U43 : OAI21X1 port map( A => n1, B => n29_port, C => n30_port, Y => n192);
   U44 : NAND2X1 port map( A => N17, B => n20_port, Y => n30_port);
   U45 : INVX1 port map( A => waitcnt_3_port, Y => n29_port);
   U46 : OAI21X1 port map( A => n1, B => n31, C => n32, Y => n191);
   U47 : NAND2X1 port map( A => N18, B => n20_port, Y => n32);
   U48 : INVX1 port map( A => waitcnt_4_port, Y => n31);
   U49 : OAI21X1 port map( A => n17_port, B => n33, C => n34, Y => n190);
   U50 : NAND2X1 port map( A => N19, B => n20_port, Y => n34);
   U51 : INVX1 port map( A => waitcnt_5_port, Y => n33);
   U52 : OAI21X1 port map( A => n17_port, B => n35, C => n36, Y => n189);
   U53 : NAND2X1 port map( A => N20, B => n20_port, Y => n36);
   U54 : OAI21X1 port map( A => n17_port, B => n37, C => n38, Y => n188);
   U55 : NAND2X1 port map( A => N21, B => n20_port, Y => n38);
   U56 : INVX1 port map( A => waitcnt_7_port, Y => n37);
   U57 : OAI21X1 port map( A => n17_port, B => n39, C => n40, Y => n187);
   U58 : NAND2X1 port map( A => N22, B => n20_port, Y => n40);
   U59 : INVX1 port map( A => waitcnt_8_port, Y => n39);
   U60 : OAI21X1 port map( A => n17_port, B => n41, C => n42, Y => n186);
   U61 : NAND2X1 port map( A => N23, B => n20_port, Y => n42);
   U62 : INVX1 port map( A => waitcnt_9_port, Y => n41);
   U63 : OAI21X1 port map( A => n17_port, B => n43, C => n44, Y => n185);
   U64 : NAND2X1 port map( A => N24, B => n20_port, Y => n44);
   U65 : OAI21X1 port map( A => n17_port, B => n45, C => n46, Y => n184);
   U66 : NAND2X1 port map( A => N25, B => n20_port, Y => n46);
   U67 : OAI21X1 port map( A => n17_port, B => n47, C => n48, Y => n183);
   U68 : NAND2X1 port map( A => N26, B => n20_port, Y => n48);
   U69 : INVX1 port map( A => waitcnt_12_port, Y => n47);
   U70 : OAI21X1 port map( A => n17_port, B => n49, C => n50, Y => n182);
   U71 : NAND2X1 port map( A => N27, B => n20_port, Y => n50);
   U72 : INVX1 port map( A => waitcnt_13_port, Y => n49);
   U73 : OAI21X1 port map( A => n17_port, B => n51, C => n52, Y => n181);
   U74 : NAND2X1 port map( A => N28, B => n20_port, Y => n52);
   U75 : OAI21X1 port map( A => n17_port, B => n53, C => n54, Y => n180);
   U76 : NAND2X1 port map( A => N29, B => n20_port, Y => n54);
   U77 : NOR2X1 port map( A => n55, B => n23_port, Y => n20_port);
   U78 : INVX1 port map( A => n56, Y => n23_port);
   U79 : OAI21X1 port map( A => n55, B => n56, C => n57, Y => n179);
   U80 : OAI21X1 port map( A => HEADER_EN, B => waittx, C => ENCODE_EN_port, Y 
                           => n57);
   U81 : NAND2X1 port map( A => n58, B => n59, Y => n56);
   U82 : NOR2X1 port map( A => n60, B => n61, Y => n59);
   U83 : NAND3X1 port map( A => n53, B => n25_port, C => n62, Y => n61);
   U84 : NOR2X1 port map( A => waitcnt_3_port, B => waitcnt_2_port, Y => n62);
   U85 : INVX1 port map( A => waitcnt_1_port, Y => n25_port);
   U86 : INVX1 port map( A => waitcnt_15_port, Y => n53);
   U87 : NAND3X1 port map( A => n63, B => n35, C => n64, Y => n60);
   U88 : NOR2X1 port map( A => waitcnt_5_port, B => waitcnt_4_port, Y => n64);
   U89 : INVX1 port map( A => waitcnt_6_port, Y => n35);
   U90 : NOR2X1 port map( A => waitcnt_9_port, B => waitcnt_7_port, Y => n63);
   U91 : NOR2X1 port map( A => n65, B => n66, Y => n58);
   U92 : NAND3X1 port map( A => waitcnt_8_port, B => waitcnt_16_port, C => n67,
                           Y => n66);
   U93 : NOR2X1 port map( A => n45, B => n51, Y => n67);
   U94 : INVX1 port map( A => waitcnt_14_port, Y => n51);
   U95 : INVX1 port map( A => waitcnt_11_port, Y => n45);
   U96 : NAND3X1 port map( A => n18_port, B => n43, C => n68, Y => n65);
   U97 : NOR2X1 port map( A => waitcnt_13_port, B => waitcnt_12_port, Y => n68)
                           ;
   U98 : INVX1 port map( A => waitcnt_10_port, Y => n43);
   U99 : INVX1 port map( A => waitcnt_0_port, Y => n18_port);
   U100 : INVX1 port map( A => n17_port, Y => n55);
   U101 : NOR2X1 port map( A => n24_port, B => HEADER_EN, Y => n17_port);
   U102 : INVX1 port map( A => waittx, Y => n24_port);
   U103 : XOR2X1 port map( A => D_9_port, B => n69, Y => n178);
   U104 : NOR2X1 port map( A => A, B => n175, Y => n69);
   U105 : INVX1 port map( A => B, Y => n175);
   U106 : OR2X1 port map( A => HEADER_53_port, B => HEADER_EN, Y => n177);
   U107 : OR2X1 port map( A => HEADER_52_port, B => HEADER_EN, Y => n174);
   U108 : OR2X1 port map( A => HEADER_51_port, B => HEADER_EN, Y => n172);
   U109 : OR2X1 port map( A => HEADER_41_port, B => HEADER_EN, Y => n170);
   U110 : OR2X1 port map( A => HEADER_40_port, B => HEADER_EN, Y => n168);
   U111 : OR2X1 port map( A => HEADER_39_port, B => HEADER_EN, Y => n166);
   U112 : OR2X1 port map( A => HEADER_32_port, B => HEADER_EN, Y => n164);
   U113 : OR2X1 port map( A => HEADER_31_port, B => HEADER_EN, Y => n162);
   U114 : OR2X1 port map( A => HEADER_30_port, B => HEADER_EN, Y => n160);
   U115 : OR2X1 port map( A => HEADER_26_port, B => HEADER_EN, Y => n158);
   U116 : OR2X1 port map( A => HEADER_25_port, B => HEADER_EN, Y => n156);
   U117 : OR2X1 port map( A => HEADER_24_port, B => HEADER_EN, Y => n154);
   U118 : OR2X1 port map( A => HEADER_23_port, B => HEADER_EN, Y => n152);
   U119 : OR2X1 port map( A => HEADER_22_port, B => HEADER_EN, Y => n150);
   U120 : OR2X1 port map( A => HEADER_21_port, B => HEADER_EN, Y => n148);
   U121 : OR2X1 port map( A => HEADER_20_port, B => HEADER_EN, Y => n146);
   U122 : OR2X1 port map( A => HEADER_19_port, B => HEADER_EN, Y => n144);
   U123 : OR2X1 port map( A => HEADER_18_port, B => HEADER_EN, Y => n142);
   U124 : OR2X1 port map( A => HEADER_17_port, B => HEADER_EN, Y => n140);
   U125 : OR2X1 port map( A => HEADER_16_port, B => HEADER_EN, Y => n138);
   U126 : OR2X1 port map( A => HEADER_15_port, B => HEADER_EN, Y => n136);
   U127 : OR2X1 port map( A => HEADER_14_port, B => HEADER_EN, Y => n134);
   U128 : OR2X1 port map( A => HEADER_13_port, B => HEADER_EN, Y => n132);
   U129 : OR2X1 port map( A => HEADER_12_port, B => HEADER_EN, Y => n130);
   U130 : OR2X1 port map( A => HEADER_11_port, B => HEADER_EN, Y => n128);
   U131 : OR2X1 port map( A => HEADER_10_port, B => HEADER_EN, Y => n126);
   U132 : OR2X1 port map( A => HEADER_9_port, B => HEADER_EN, Y => n124);
   U133 : OR2X1 port map( A => HEADER_2_port, B => HEADER_EN, Y => n122);
   U134 : OR2X1 port map( A => HEADER_1_port, B => HEADER_EN, Y => n120);
   U212 : OR2X1 port map( A => HEADER_0_port, B => HEADER_EN, Y => n118);

end SYN_b_hdr;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity B_EncodePacket_STROBCYC15_WAITSRAM24_WAITREG5264 is

   port( CLK, RST, ENCODE_EN : in std_logic;  DATA : in std_logic_vector (7 
         downto 0);  PAYLOAD : out std_logic_vector (7 downto 0);  ESTORE_EN, 
         NEXT_EN, READ_EN : out std_logic);

end B_EncodePacket_STROBCYC15_WAITSRAM24_WAITREG5264;

architecture SYN_b_edata of B_EncodePacket_STROBCYC15_WAITSRAM24_WAITREG5264 is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX8
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_2_port, state_1_port, state_0_port, cnt32_5_port, cnt32_4_port,
      cnt32_3_port, cnt32_2_port, cnt32_1_port, cnt32_0_port, swcnt_14_port, 
      swcnt_13_port, swcnt_12_port, swcnt_11_port, swcnt_10_port, swcnt_9_port,
      swcnt_8_port, swcnt_7_port, swcnt_6_port, swcnt_5_port, swcnt_4_port, 
      swcnt_3_port, swcnt_2_port, swcnt_1_port, swcnt_0_port, cnt8_3_port, 
      cnt8_2_port, cnt8_1_port, cnt8_0_port, lfsr_15_port, lfsr_14_port, 
      lfsr_13_port, lfsr_12_port, lfsr_11_port, lfsr_10_port, lfsr_9_port, 
      lfsr_8_port, lfsr_7_port, lfsr_6_port, lfsr_5_port, lfsr_4_port, 
      lfsr_3_port, lfsr_2_port, lfsr_1_port, lfsr_0_port, nstate_2_port, 
      nstate_1_port, nstate_0_port, ncnt32_5_port, ncnt32_4_port, ncnt32_3_port
      , ncnt32_2_port, ncnt32_1_port, ncnt32_0_port, ncnt8_3_port, ncnt8_2_port
      , ncnt8_1_port, ncnt8_0_port, nestore_en, nread_en, nlfsr_15_port, 
      nlfsr_14_port, nlfsr_13_port, nlfsr_12_port, nlfsr_11_port, nlfsr_10_port
      , nlfsr_9_port, nlfsr_8_port, nlfsr_7_port, nlfsr_6_port, nlfsr_5_port, 
      nlfsr_4_port, nlfsr_3_port, nlfsr_2_port, nlfsr_1_port, nlfsr_0_port, 
      nswcnt_14_port, nswcnt_13_port, nswcnt_12_port, nswcnt_11_port, 
      nswcnt_10_port, nswcnt_9_port, nswcnt_8_port, nswcnt_7_port, 
      nswcnt_6_port, nswcnt_5_port, nswcnt_4_port, nswcnt_3_port, nswcnt_2_port
      , nswcnt_1_port, nswcnt_0_port, txwait, N363, N364, N365, N366, N367, 
      N368, N369, N370, N371, N372, N373, N374, N375, N376, N377, N378, N379, 
      N380, N381, N382, N383, N384, N385, N386, N387, N388, N389, N390, N391, 
      N392, N394, N395, N396, N397, N398, N399, N400, N401, N402, N403, N404, 
      N405, N406, N407, N408, N409, N410, N411, N412, N413, N414, N415, N416, 
      N417, N418, N419, N420, N421, N422, n10, n11, n12, n13, n14, n15, n16, 
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31
      , n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, 
      n46, n47, n48, n49, n50, n51, n52, n53, n54, n56, n1, n2, n3, n4, n5, n6,
      n7, n8, n9, n55, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, 
      n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82
      , n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, 
      n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109
      , n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
      n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, 
      n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, 
      n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, 
      n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, 
      n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, 
      n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, 
      n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, 
      n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, 
      n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, 
      n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, 
      n242, n243, n244, n245 : std_logic;

begin
   
   nswcnt_reg_0_inst : LATCH port map( CLK => N406, D => N407, Q => 
                           nswcnt_0_port);
   swcnt_reg_0_inst : DFFSR port map( D => nswcnt_0_port, CLK => CLK, R => n245
                           , S => n56, Q => swcnt_0_port);
   nswcnt_reg_1_inst : LATCH port map( CLK => N406, D => N408, Q => 
                           nswcnt_1_port);
   swcnt_reg_1_inst : DFFSR port map( D => nswcnt_1_port, CLK => CLK, R => n245
                           , S => n54, Q => swcnt_1_port);
   nswcnt_reg_14_inst : LATCH port map( CLK => N406, D => N421, Q => 
                           nswcnt_14_port);
   swcnt_reg_14_inst : DFFSR port map( D => nswcnt_14_port, CLK => CLK, R => 
                           n245, S => n53, Q => swcnt_14_port);
   state_reg_0_inst : DFFSR port map( D => nstate_0_port, CLK => CLK, R => n245
                           , S => n52, Q => state_0_port);
   nswcnt_reg_2_inst : LATCH port map( CLK => N406, D => N409, Q => 
                           nswcnt_2_port);
   swcnt_reg_2_inst : DFFSR port map( D => nswcnt_2_port, CLK => CLK, R => n245
                           , S => n51, Q => swcnt_2_port);
   nswcnt_reg_3_inst : LATCH port map( CLK => N406, D => N410, Q => 
                           nswcnt_3_port);
   swcnt_reg_3_inst : DFFSR port map( D => nswcnt_3_port, CLK => CLK, R => n245
                           , S => n50, Q => swcnt_3_port);
   nswcnt_reg_4_inst : LATCH port map( CLK => N406, D => N411, Q => 
                           nswcnt_4_port);
   swcnt_reg_4_inst : DFFSR port map( D => nswcnt_4_port, CLK => CLK, R => n245
                           , S => n49, Q => swcnt_4_port);
   nswcnt_reg_5_inst : LATCH port map( CLK => N406, D => N412, Q => 
                           nswcnt_5_port);
   swcnt_reg_5_inst : DFFSR port map( D => nswcnt_5_port, CLK => CLK, R => n245
                           , S => n48, Q => swcnt_5_port);
   nswcnt_reg_6_inst : LATCH port map( CLK => N406, D => N413, Q => 
                           nswcnt_6_port);
   swcnt_reg_6_inst : DFFSR port map( D => nswcnt_6_port, CLK => CLK, R => n245
                           , S => n47, Q => swcnt_6_port);
   nswcnt_reg_7_inst : LATCH port map( CLK => N406, D => N414, Q => 
                           nswcnt_7_port);
   swcnt_reg_7_inst : DFFSR port map( D => nswcnt_7_port, CLK => CLK, R => n245
                           , S => n46, Q => swcnt_7_port);
   nswcnt_reg_8_inst : LATCH port map( CLK => N406, D => N415, Q => 
                           nswcnt_8_port);
   swcnt_reg_8_inst : DFFSR port map( D => nswcnt_8_port, CLK => CLK, R => n245
                           , S => n45, Q => swcnt_8_port);
   nswcnt_reg_9_inst : LATCH port map( CLK => N406, D => N416, Q => 
                           nswcnt_9_port);
   swcnt_reg_9_inst : DFFSR port map( D => nswcnt_9_port, CLK => CLK, R => n245
                           , S => n44, Q => swcnt_9_port);
   nswcnt_reg_10_inst : LATCH port map( CLK => N406, D => N417, Q => 
                           nswcnt_10_port);
   swcnt_reg_10_inst : DFFSR port map( D => nswcnt_10_port, CLK => CLK, R => 
                           n245, S => n43, Q => swcnt_10_port);
   nswcnt_reg_11_inst : LATCH port map( CLK => N406, D => N418, Q => 
                           nswcnt_11_port);
   swcnt_reg_11_inst : DFFSR port map( D => nswcnt_11_port, CLK => CLK, R => 
                           n245, S => n42, Q => swcnt_11_port);
   nswcnt_reg_12_inst : LATCH port map( CLK => N406, D => N419, Q => 
                           nswcnt_12_port);
   swcnt_reg_12_inst : DFFSR port map( D => nswcnt_12_port, CLK => CLK, R => 
                           n245, S => n41, Q => swcnt_12_port);
   nswcnt_reg_13_inst : LATCH port map( CLK => N406, D => N420, Q => 
                           nswcnt_13_port);
   swcnt_reg_13_inst : DFFSR port map( D => nswcnt_13_port, CLK => CLK, R => 
                           n245, S => n40, Q => swcnt_13_port);
   ncnt32_reg_0_inst : LATCH port map( CLK => N394, D => N395, Q => 
                           ncnt32_0_port);
   cnt32_reg_0_inst : DFFSR port map( D => ncnt32_0_port, CLK => CLK, R => n245
                           , S => n39, Q => cnt32_0_port);
   ncnt8_reg_3_inst : LATCH port map( CLK => N401, D => N405, Q => ncnt8_3_port
                           );
   cnt8_reg_3_inst : DFFSR port map( D => ncnt8_3_port, CLK => CLK, R => n245, 
                           S => n38, Q => cnt8_3_port);
   state_reg_2_inst : DFFSR port map( D => nstate_2_port, CLK => CLK, R => n245
                           , S => n37, Q => state_2_port);
   state_reg_1_inst : DFFSR port map( D => nstate_1_port, CLK => CLK, R => n245
                           , S => n36, Q => state_1_port);
   ncnt8_reg_0_inst : LATCH port map( CLK => N401, D => N402, Q => ncnt8_0_port
                           );
   cnt8_reg_0_inst : DFFSR port map( D => ncnt8_0_port, CLK => CLK, R => n245, 
                           S => n35, Q => cnt8_0_port);
   ncnt8_reg_1_inst : LATCH port map( CLK => N401, D => N403, Q => ncnt8_1_port
                           );
   cnt8_reg_1_inst : DFFSR port map( D => ncnt8_1_port, CLK => CLK, R => n245, 
                           S => n34, Q => cnt8_1_port);
   ncnt8_reg_2_inst : LATCH port map( CLK => N401, D => N404, Q => ncnt8_2_port
                           );
   cnt8_reg_2_inst : DFFSR port map( D => ncnt8_2_port, CLK => CLK, R => n245, 
                           S => n33, Q => cnt8_2_port);
   NEXT_EN_reg : LATCH port map( CLK => N372, D => n243, Q => NEXT_EN);
   txwait_reg : LATCH port map( CLK => N422, D => n244, Q => txwait);
   ncnt32_reg_5_inst : LATCH port map( CLK => N394, D => N400, Q => 
                           ncnt32_5_port);
   cnt32_reg_5_inst : DFFSR port map( D => ncnt32_5_port, CLK => CLK, R => n245
                           , S => n32, Q => cnt32_5_port);
   ncnt32_reg_1_inst : LATCH port map( CLK => N394, D => N396, Q => 
                           ncnt32_1_port);
   cnt32_reg_1_inst : DFFSR port map( D => ncnt32_1_port, CLK => CLK, R => n245
                           , S => n31, Q => cnt32_1_port);
   ncnt32_reg_2_inst : LATCH port map( CLK => N394, D => N397, Q => 
                           ncnt32_2_port);
   cnt32_reg_2_inst : DFFSR port map( D => ncnt32_2_port, CLK => CLK, R => n245
                           , S => n30, Q => cnt32_2_port);
   ncnt32_reg_3_inst : LATCH port map( CLK => N394, D => N398, Q => 
                           ncnt32_3_port);
   cnt32_reg_3_inst : DFFSR port map( D => ncnt32_3_port, CLK => CLK, R => n245
                           , S => n29, Q => cnt32_3_port);
   ncnt32_reg_4_inst : LATCH port map( CLK => N394, D => N399, Q => 
                           ncnt32_4_port);
   cnt32_reg_4_inst : DFFSR port map( D => ncnt32_4_port, CLK => CLK, R => n245
                           , S => n28, Q => cnt32_4_port);
   nlfsr_reg_0_inst : LATCH port map( CLK => n2, D => N374, Q => nlfsr_0_port);
   lfsr_reg_0_inst : DFFSR port map( D => nlfsr_0_port, CLK => CLK, R => n27, S
                           => n245, Q => lfsr_0_port);
   nlfsr_reg_1_inst : LATCH port map( CLK => N373, D => N375, Q => nlfsr_1_port
                           );
   lfsr_reg_1_inst : DFFSR port map( D => nlfsr_1_port, CLK => CLK, R => n245, 
                           S => n26, Q => lfsr_1_port);
   nlfsr_reg_2_inst : LATCH port map( CLK => n2, D => N376, Q => nlfsr_2_port);
   lfsr_reg_2_inst : DFFSR port map( D => nlfsr_2_port, CLK => CLK, R => n245, 
                           S => n25, Q => lfsr_2_port);
   nlfsr_reg_3_inst : LATCH port map( CLK => N373, D => N377, Q => nlfsr_3_port
                           );
   lfsr_reg_3_inst : DFFSR port map( D => nlfsr_3_port, CLK => CLK, R => n24, S
                           => n245, Q => lfsr_3_port);
   nlfsr_reg_4_inst : LATCH port map( CLK => n2, D => N378, Q => nlfsr_4_port);
   lfsr_reg_4_inst : DFFSR port map( D => nlfsr_4_port, CLK => CLK, R => n23, S
                           => n245, Q => lfsr_4_port);
   nlfsr_reg_5_inst : LATCH port map( CLK => N373, D => N379, Q => nlfsr_5_port
                           );
   lfsr_reg_5_inst : DFFSR port map( D => nlfsr_5_port, CLK => CLK, R => n245, 
                           S => n22, Q => lfsr_5_port);
   nlfsr_reg_6_inst : LATCH port map( CLK => n2, D => N380, Q => nlfsr_6_port);
   lfsr_reg_6_inst : DFFSR port map( D => nlfsr_6_port, CLK => CLK, R => n21, S
                           => n245, Q => lfsr_6_port);
   nlfsr_reg_7_inst : LATCH port map( CLK => N373, D => N381, Q => nlfsr_7_port
                           );
   lfsr_reg_7_inst : DFFSR port map( D => nlfsr_7_port, CLK => CLK, R => n20, S
                           => n245, Q => lfsr_7_port);
   nlfsr_reg_8_inst : LATCH port map( CLK => n2, D => N382, Q => nlfsr_8_port);
   lfsr_reg_8_inst : DFFSR port map( D => nlfsr_8_port, CLK => CLK, R => n245, 
                           S => n19, Q => lfsr_8_port);
   nlfsr_reg_9_inst : LATCH port map( CLK => N373, D => N383, Q => nlfsr_9_port
                           );
   lfsr_reg_9_inst : DFFSR port map( D => nlfsr_9_port, CLK => CLK, R => n245, 
                           S => n18, Q => lfsr_9_port);
   nlfsr_reg_10_inst : LATCH port map( CLK => n2, D => N384, Q => nlfsr_10_port
                           );
   lfsr_reg_10_inst : DFFSR port map( D => nlfsr_10_port, CLK => CLK, R => n245
                           , S => n17, Q => lfsr_10_port);
   nlfsr_reg_11_inst : LATCH port map( CLK => N373, D => N385, Q => 
                           nlfsr_11_port);
   lfsr_reg_11_inst : DFFSR port map( D => nlfsr_11_port, CLK => CLK, R => n245
                           , S => n16, Q => lfsr_11_port);
   nlfsr_reg_12_inst : LATCH port map( CLK => n2, D => N386, Q => nlfsr_12_port
                           );
   lfsr_reg_12_inst : DFFSR port map( D => nlfsr_12_port, CLK => CLK, R => n245
                           , S => n15, Q => lfsr_12_port);
   nlfsr_reg_13_inst : LATCH port map( CLK => N373, D => N387, Q => 
                           nlfsr_13_port);
   lfsr_reg_13_inst : DFFSR port map( D => nlfsr_13_port, CLK => CLK, R => n245
                           , S => n14, Q => lfsr_13_port);
   nlfsr_reg_14_inst : LATCH port map( CLK => n2, D => N388, Q => nlfsr_14_port
                           );
   lfsr_reg_14_inst : DFFSR port map( D => nlfsr_14_port, CLK => CLK, R => n245
                           , S => n13, Q => lfsr_14_port);
   nlfsr_reg_15_inst : LATCH port map( CLK => N373, D => N389, Q => 
                           nlfsr_15_port);
   lfsr_reg_15_inst : DFFSR port map( D => nlfsr_15_port, CLK => CLK, R => n245
                           , S => n12, Q => lfsr_15_port);
   nread_en_reg : LATCH port map( CLK => N392, D => n242, Q => nread_en);
   READ_EN_reg : DFFSR port map( D => nread_en, CLK => CLK, R => n245, S => n11
                           , Q => READ_EN);
   PAYLOAD_reg_0_inst : LATCH port map( CLK => N363, D => N364, Q => PAYLOAD(0)
                           );
   PAYLOAD_reg_1_inst : LATCH port map( CLK => N363, D => N365, Q => PAYLOAD(1)
                           );
   PAYLOAD_reg_2_inst : LATCH port map( CLK => N363, D => N366, Q => PAYLOAD(2)
                           );
   PAYLOAD_reg_3_inst : LATCH port map( CLK => N363, D => N367, Q => PAYLOAD(3)
                           );
   PAYLOAD_reg_4_inst : LATCH port map( CLK => N363, D => N368, Q => PAYLOAD(4)
                           );
   PAYLOAD_reg_5_inst : LATCH port map( CLK => N363, D => N369, Q => PAYLOAD(5)
                           );
   PAYLOAD_reg_6_inst : LATCH port map( CLK => N363, D => N370, Q => PAYLOAD(6)
                           );
   PAYLOAD_reg_7_inst : LATCH port map( CLK => N363, D => N371, Q => PAYLOAD(7)
                           );
   nestore_en_reg : LATCH port map( CLK => N390, D => N391, Q => nestore_en);
   ESTORE_EN_reg : DFFSR port map( D => nestore_en, CLK => CLK, R => n245, S =>
                           n10, Q => ESTORE_EN);
   n10 <= '1';
   n11 <= '1';
   n12 <= '1';
   n13 <= '1';
   n14 <= '1';
   n15 <= '1';
   n16 <= '1';
   n17 <= '1';
   n18 <= '1';
   n19 <= '1';
   n20 <= '1';
   n21 <= '1';
   n22 <= '1';
   n23 <= '1';
   n24 <= '1';
   n25 <= '1';
   n26 <= '1';
   n27 <= '1';
   n28 <= '1';
   n29 <= '1';
   n30 <= '1';
   n31 <= '1';
   n32 <= '1';
   n33 <= '1';
   n34 <= '1';
   n35 <= '1';
   n36 <= '1';
   n37 <= '1';
   n38 <= '1';
   n39 <= '1';
   n40 <= '1';
   n41 <= '1';
   n42 <= '1';
   n43 <= '1';
   n44 <= '1';
   n45 <= '1';
   n46 <= '1';
   n47 <= '1';
   n48 <= '1';
   n49 <= '1';
   n50 <= '1';
   n51 <= '1';
   n52 <= '1';
   n53 <= '1';
   n54 <= '1';
   n56 <= '1';
   U18 : INVX8 port map( A => RST, Y => n245);
   U19 : BUFX2 port map( A => n76, Y => n1);
   U20 : OR2X2 port map( A => n114, B => N372, Y => N406);
   U29 : OAI21X1 port map( A => n65, B => n136, C => n132, Y => n2);
   U30 : INVX2 port map( A => n58, Y => n3);
   U31 : OAI21X1 port map( A => n4, B => n5, C => n6, Y => nstate_2_port);
   U32 : NAND3X1 port map( A => n7, B => n8, C => n9, Y => nstate_1_port);
   U33 : AOI22X1 port map( A => n55, B => n57, C => n58, D => n59, Y => n9);
   U34 : NAND2X1 port map( A => n60, B => n61, Y => nstate_0_port);
   U35 : INVX1 port map( A => n62, Y => n61);
   U36 : AOI22X1 port map( A => n58, B => n63, C => ENCODE_EN, D => n243, Y => 
                           n60);
   U37 : OAI21X1 port map( A => n64, B => n65, C => n66, Y => n63);
   U38 : NOR2X1 port map( A => n8, B => n67, Y => n242);
   U39 : NAND2X1 port map( A => n68, B => n69, Y => n67);
   U40 : INVX1 port map( A => n70, Y => n69);
   U41 : OAI21X1 port map( A => n8, B => n71, C => n72, Y => N422);
   U42 : AOI21X1 port map( A => n73, B => n74, C => n243, Y => n72);
   U43 : INVX1 port map( A => n75, Y => n71);
   U44 : NOR2X1 port map( A => n1, B => n77, Y => N421);
   U67 : XNOR2X1 port map( A => swcnt_14_port, B => n78, Y => n77);
   U69 : NOR2X1 port map( A => n79, B => n80, Y => n78);
   U70 : NOR2X1 port map( A => n1, B => n81, Y => N420);
   U71 : XNOR2X1 port map( A => n80, B => n79, Y => n81);
   U72 : NAND2X1 port map( A => n82, B => swcnt_12_port, Y => n80);
   U73 : NOR2X1 port map( A => n1, B => n83, Y => N419);
   U74 : XNOR2X1 port map( A => swcnt_12_port, B => n82, Y => n83);
   U75 : NOR2X1 port map( A => n84, B => n85, Y => n82);
   U76 : NOR2X1 port map( A => n1, B => n86, Y => N418);
   U77 : XNOR2X1 port map( A => n84, B => n85, Y => n86);
   U78 : NAND2X1 port map( A => n87, B => swcnt_10_port, Y => n84);
   U79 : NOR2X1 port map( A => n1, B => n88, Y => N417);
   U80 : XNOR2X1 port map( A => swcnt_10_port, B => n87, Y => n88);
   U81 : NOR2X1 port map( A => n89, B => n90, Y => n87);
   U82 : NOR2X1 port map( A => n1, B => n91, Y => N416);
   U83 : XNOR2X1 port map( A => n89, B => n90, Y => n91);
   U84 : INVX1 port map( A => swcnt_9_port, Y => n90);
   U85 : NAND2X1 port map( A => n92, B => swcnt_8_port, Y => n89);
   U86 : NOR2X1 port map( A => n1, B => n93, Y => N415);
   U87 : XNOR2X1 port map( A => swcnt_8_port, B => n92, Y => n93);
   U88 : NOR2X1 port map( A => n94, B => n95, Y => n92);
   U89 : NOR2X1 port map( A => n1, B => n96, Y => N414);
   U90 : XNOR2X1 port map( A => n94, B => n95, Y => n96);
   U91 : NAND2X1 port map( A => n97, B => swcnt_6_port, Y => n94);
   U92 : NOR2X1 port map( A => n1, B => n98, Y => N413);
   U93 : XNOR2X1 port map( A => swcnt_6_port, B => n97, Y => n98);
   U94 : NOR2X1 port map( A => n99, B => n100, Y => n97);
   U95 : NOR2X1 port map( A => n1, B => n101, Y => N412);
   U96 : XNOR2X1 port map( A => n99, B => n100, Y => n101);
   U97 : NAND2X1 port map( A => n102, B => swcnt_4_port, Y => n99);
   U98 : NOR2X1 port map( A => n1, B => n103, Y => N411);
   U99 : XNOR2X1 port map( A => swcnt_4_port, B => n102, Y => n103);
   U100 : NOR2X1 port map( A => n104, B => n105, Y => n102);
   U101 : NOR2X1 port map( A => n1, B => n106, Y => N410);
   U102 : XNOR2X1 port map( A => n104, B => n105, Y => n106);
   U103 : NAND2X1 port map( A => swcnt_2_port, B => n107, Y => n104);
   U104 : NOR2X1 port map( A => n1, B => n108, Y => N409);
   U105 : XNOR2X1 port map( A => swcnt_2_port, B => n107, Y => n108);
   U106 : AOI21X1 port map( A => n109, B => n110, C => n111, Y => n107);
   U107 : NOR2X1 port map( A => n1, B => n112, Y => N408);
   U108 : XNOR2X1 port map( A => n113, B => n110, Y => n112);
   U109 : XNOR2X1 port map( A => n109, B => n111, Y => n113);
   U110 : NAND2X1 port map( A => swcnt_0_port, B => n114, Y => n109);
   U111 : NOR2X1 port map( A => n1, B => n115, Y => N407);
   U112 : XNOR2X1 port map( A => swcnt_0_port, B => n114, Y => n115);
   U113 : NOR2X1 port map( A => n116, B => n62, Y => n76);
   U114 : OAI22X1 port map( A => n75, B => n8, C => n55, D => n110, Y => n62);
   U115 : NOR2X1 port map( A => n117, B => n118, Y => n55);
   U116 : NAND3X1 port map( A => swcnt_6_port, B => swcnt_14_port, C => 
                           swcnt_9_port, Y => n118);
   U117 : NAND3X1 port map( A => swcnt_12_port, B => n68, C => n119, Y => n117)
                           ;
   U118 : NOR2X1 port map( A => swcnt_0_port, B => n120, Y => n119);
   U119 : OAI22X1 port map( A => n5, B => n4, C => n121, D => n73, Y => n116);
   U120 : NAND3X1 port map( A => n5, B => n122, C => n8, Y => n114);
   U121 : NOR2X1 port map( A => n123, B => n7, Y => N405);
   U122 : XNOR2X1 port map( A => cnt8_3_port, B => n124, Y => n123);
   U123 : NOR2X1 port map( A => n125, B => n126, Y => n124);
   U124 : NOR2X1 port map( A => n127, B => n7, Y => N404);
   U125 : XNOR2X1 port map( A => n125, B => n126, Y => n127);
   U126 : INVX1 port map( A => n128, Y => N403);
   U127 : AOI22X1 port map( A => cnt8_1_port, B => N402, C => n129, D => n130, 
                           Y => n128);
   U128 : NOR2X1 port map( A => n7, B => cnt8_0_port, Y => N402);
   U129 : INVX1 port map( A => n129, Y => n7);
   U130 : NOR2X1 port map( A => n3, B => n131, Y => n129);
   U131 : NAND2X1 port map( A => n132, B => n133, Y => N401);
   U132 : OAI21X1 port map( A => n73, B => n134, C => n135, Y => n133);
   U133 : INVX1 port map( A => n136, Y => n135);
   U134 : MUX2X1 port map( B => n137, A => n138, S => cnt32_5_port, Y => N400);
   U135 : AOI21X1 port map( A => n139, B => n140, C => n141, Y => n138);
   U136 : OR2X1 port map( A => n140, B => n142, Y => n137);
   U137 : MUX2X1 port map( B => n143, A => n142, S => n140, Y => N399);
   U138 : INVX1 port map( A => cnt32_4_port, Y => n140);
   U139 : NAND3X1 port map( A => n139, B => n144, C => cnt32_3_port, Y => n142)
                           ;
   U140 : INVX1 port map( A => n141, Y => n143);
   U141 : OAI21X1 port map( A => cnt32_3_port, B => n145, C => n146, Y => n141)
                           ;
   U142 : MUX2X1 port map( B => n147, A => n146, S => cnt32_3_port, Y => N398);
   U143 : INVX1 port map( A => n148, Y => n146);
   U144 : OAI21X1 port map( A => n144, B => n145, C => n149, Y => n148);
   U145 : NAND2X1 port map( A => n139, B => n144, Y => n147);
   U146 : INVX1 port map( A => n150, Y => n144);
   U147 : NAND3X1 port map( A => cnt32_1_port, B => cnt32_0_port, C => 
                           cnt32_2_port, Y => n150);
   U148 : MUX2X1 port map( B => n151, A => n152, S => n153, Y => N397);
   U149 : NAND3X1 port map( A => cnt32_1_port, B => cnt32_0_port, C => n139, Y 
                           => n152);
   U150 : INVX1 port map( A => n154, Y => n151);
   U151 : OAI21X1 port map( A => n145, B => cnt32_1_port, C => n155, Y => n154)
                           ;
   U152 : MUX2X1 port map( B => n156, A => n155, S => cnt32_1_port, Y => N396);
   U153 : INVX1 port map( A => n157, Y => n155);
   U154 : OAI21X1 port map( A => cnt32_0_port, B => n145, C => n149, Y => n157)
                           ;
   U155 : NAND2X1 port map( A => n139, B => cnt32_0_port, Y => n156);
   U156 : MUX2X1 port map( B => n145, A => n149, S => cnt32_0_port, Y => N395);
   U157 : NAND2X1 port map( A => n244, B => n158, Y => n149);
   U158 : INVX1 port map( A => n8, Y => n244);
   U159 : INVX1 port map( A => n139, Y => n145);
   U160 : NOR2X1 port map( A => n158, B => n8, Y => n139);
   U161 : NAND3X1 port map( A => n8, B => n6, C => n132, Y => N394);
   U162 : NAND3X1 port map( A => n58, B => n131, C => n64, Y => n6);
   U163 : INVX1 port map( A => n59, Y => n64);
   U164 : NAND2X1 port map( A => cnt32_5_port, B => n159, Y => n59);
   U165 : INVX1 port map( A => n160, Y => n159);
   U166 : INVX1 port map( A => n65, Y => n131);
   U167 : OAI21X1 port map( A => n75, B => n8, C => n132, Y => N392);
   U168 : NAND3X1 port map( A => state_1_port, B => n161, C => state_0_port, Y 
                           => n8);
   U169 : NOR2X1 port map( A => n162, B => n163, Y => n75);
   U170 : NAND3X1 port map( A => swcnt_3_port, B => n164, C => swcnt_4_port, Y 
                           => n163);
   U171 : NAND3X1 port map( A => n165, B => n95, C => n166, Y => n162);
   U172 : INVX1 port map( A => swcnt_7_port, Y => n95);
   U173 : OAI21X1 port map( A => n122, B => n158, C => n167, Y => N391);
   U174 : INVX1 port map( A => n74, Y => n122);
   U175 : NOR2X1 port map( A => n134, B => n136, Y => n74);
   U176 : NAND3X1 port map( A => n5, B => n168, C => n3, Y => N390);
   U177 : AND2X1 port map( A => n58, B => lfsr_14_port, Y => N389);
   U178 : AND2X1 port map( A => n58, B => lfsr_13_port, Y => N388);
   U179 : AND2X1 port map( A => n58, B => lfsr_12_port, Y => N387);
   U180 : MUX2X1 port map( B => n169, A => n170, S => lfsr_11_port, Y => N386);
   U181 : NOR2X1 port map( A => n3, B => n171, Y => N385);
   U182 : NOR2X1 port map( A => n3, B => n172, Y => N384);
   U183 : NOR2X1 port map( A => n3, B => n173, Y => N383);
   U184 : AND2X1 port map( A => n58, B => lfsr_7_port, Y => N382);
   U185 : OAI21X1 port map( A => n121, B => n174, C => n132, Y => N381);
   U186 : INVX1 port map( A => lfsr_6_port, Y => n174);
   U187 : OAI21X1 port map( A => n121, B => n175, C => n132, Y => N380);
   U188 : INVX1 port map( A => lfsr_5_port, Y => n175);
   U189 : MUX2X1 port map( B => n169, A => n170, S => lfsr_4_port, Y => N379);
   U190 : NAND2X1 port map( A => n58, B => n176, Y => n170);
   U191 : OAI21X1 port map( A => n121, B => n177, C => n132, Y => N378);
   U192 : INVX1 port map( A => lfsr_3_port, Y => n177);
   U193 : OAI21X1 port map( A => n121, B => n178, C => n132, Y => N377);
   U194 : NOR2X1 port map( A => n3, B => n179, Y => N376);
   U195 : NOR2X1 port map( A => n3, B => n180, Y => N375);
   U196 : NAND2X1 port map( A => n132, B => n169, Y => N374);
   U197 : OR2X1 port map( A => n176, B => n3, Y => n169);
   U198 : XNOR2X1 port map( A => n181, B => lfsr_15_port, Y => n176);
   U199 : MUX2X1 port map( B => n182, A => n183, S => n184, Y => n181);
   U200 : NOR2X1 port map( A => cnt8_3_port, B => n185, Y => n184);
   U201 : MUX2X1 port map( B => n186, A => n187, S => n126, Y => n182);
   U202 : OAI21X1 port map( A => n125, B => n188, C => n189, Y => n187);
   U203 : AOI22X1 port map( A => n190, B => n191, C => DATA(0), D => n130, Y =>
                           n189);
   U204 : MUX2X1 port map( B => n192, A => n193, S => n194, Y => n190);
   U205 : OAI21X1 port map( A => n125, B => n195, C => n196, Y => n186);
   U206 : AOI22X1 port map( A => n197, B => n191, C => DATA(4), D => n130, Y =>
                           n196);
   U207 : NOR2X1 port map( A => n191, B => cnt8_1_port, Y => n130);
   U208 : INVX1 port map( A => n198, Y => n197);
   U209 : MUX2X1 port map( B => DATA(5), A => DATA(3), S => n194, Y => n198);
   U210 : NAND2X1 port map( A => cnt8_1_port, B => cnt8_0_port, Y => n125);
   U211 : OAI21X1 port map( A => n65, B => n136, C => n132, Y => N373);
   U212 : NAND3X1 port map( A => n199, B => n134, C => cnt8_3_port, Y => n65);
   U213 : INVX1 port map( A => txwait, Y => n134);
   U214 : INVX1 port map( A => n185, Y => n199);
   U215 : NAND3X1 port map( A => n194, B => n126, C => n191, Y => n185);
   U216 : INVX1 port map( A => cnt8_0_port, Y => n191);
   U217 : INVX1 port map( A => cnt8_2_port, Y => n126);
   U218 : INVX1 port map( A => cnt8_1_port, Y => n194);
   U219 : INVX1 port map( A => n168, Y => N372);
   U220 : NOR2X1 port map( A => n243, B => n57, Y => n168);
   U221 : INVX1 port map( A => n132, Y => n243);
   U222 : OAI21X1 port map( A => n121, B => n193, C => n200, Y => N371);
   U223 : AOI22X1 port map( A => n201, B => lfsr_15_port, C => n202, D => 
                           lfsr_7_port, Y => n200);
   U224 : INVX1 port map( A => DATA(7), Y => n193);
   U225 : OAI21X1 port map( A => n121, B => n195, C => n203, Y => N370);
   U226 : AOI22X1 port map( A => n201, B => lfsr_14_port, C => n202, D => 
                           lfsr_6_port, Y => n203);
   U227 : INVX1 port map( A => DATA(6), Y => n195);
   U228 : OAI21X1 port map( A => n121, B => n204, C => n205, Y => N369);
   U229 : AOI22X1 port map( A => n201, B => lfsr_13_port, C => n202, D => 
                           lfsr_5_port, Y => n205);
   U230 : INVX1 port map( A => DATA(5), Y => n204);
   U231 : OAI21X1 port map( A => n121, B => n206, C => n207, Y => N368);
   U232 : AOI22X1 port map( A => n201, B => lfsr_12_port, C => n202, D => 
                           lfsr_4_port, Y => n207);
   U233 : INVX1 port map( A => DATA(4), Y => n206);
   U234 : NAND2X1 port map( A => n208, B => n209, Y => N367);
   U235 : AOI22X1 port map( A => n201, B => lfsr_11_port, C => n202, D => 
                           lfsr_3_port, Y => n209);
   U236 : AOI22X1 port map( A => n57, B => n158, C => DATA(3), D => n58, Y => 
                           n208);
   U237 : OR2X1 port map( A => n210, B => n211, Y => N366);
   U238 : OAI22X1 port map( A => n121, B => n188, C => n178, D => n212, Y => 
                           n211);
   U239 : INVX1 port map( A => lfsr_2_port, Y => n178);
   U240 : INVX1 port map( A => DATA(2), Y => n188);
   U241 : OAI21X1 port map( A => n171, B => n213, C => n214, Y => n210);
   U242 : INVX1 port map( A => lfsr_10_port, Y => n171);
   U243 : OR2X1 port map( A => n215, B => n216, Y => N365);
   U244 : OAI22X1 port map( A => n121, B => n192, C => n179, D => n212, Y => 
                           n216);
   U245 : INVX1 port map( A => lfsr_1_port, Y => n179);
   U246 : INVX1 port map( A => DATA(1), Y => n192);
   U247 : OAI21X1 port map( A => n172, B => n213, C => n214, Y => n215);
   U248 : INVX1 port map( A => lfsr_9_port, Y => n172);
   U249 : OR2X1 port map( A => n217, B => n218, Y => N364);
   U250 : OAI22X1 port map( A => n121, B => n183, C => n180, D => n212, Y => 
                           n218);
   U251 : INVX1 port map( A => lfsr_0_port, Y => n180);
   U252 : INVX1 port map( A => DATA(0), Y => n183);
   U253 : OAI21X1 port map( A => n173, B => n213, C => n214, Y => n217);
   U254 : INVX1 port map( A => n201, Y => n213);
   U255 : NOR2X1 port map( A => n5, B => n219, Y => n201);
   U256 : INVX1 port map( A => lfsr_8_port, Y => n173);
   U257 : NAND3X1 port map( A => n136, B => n132, C => n167, Y => N363);
   U258 : INVX1 port map( A => n220, Y => n167);
   U259 : NAND3X1 port map( A => n214, B => n212, C => n221, Y => n220);
   U260 : AOI22X1 port map( A => n73, B => n222, C => n4, D => n57, Y => n221);
   U261 : NOR2X1 port map( A => n223, B => n224, Y => n4);
   U262 : NAND3X1 port map( A => swcnt_8_port, B => swcnt_5_port, C => n225, Y 
                           => n224);
   U263 : NOR2X1 port map( A => n85, B => n79, Y => n225);
   U264 : NAND3X1 port map( A => n111, B => n226, C => n227, Y => n223);
   U265 : NOR2X1 port map( A => swcnt_0_port, B => n70, Y => n227);
   U266 : NAND3X1 port map( A => n228, B => n165, C => n229, Y => n70);
   U267 : INVX1 port map( A => n5, Y => n222);
   U268 : NOR2X1 port map( A => n230, B => n231, Y => n73);
   U269 : NAND3X1 port map( A => swcnt_10_port, B => swcnt_4_port, C => 
                           swcnt_7_port, Y => n231);
   U270 : NAND3X1 port map( A => swcnt_12_port, B => n105, C => n164, Y => n230
                           );
   U271 : INVX1 port map( A => n202, Y => n212);
   U272 : NOR2X1 port map( A => n158, B => n5, Y => n202);
   U273 : NAND3X1 port map( A => n232, B => n233, C => state_2_port, Y => n5);
   U274 : NAND2X1 port map( A => n219, B => n57, Y => n214);
   U275 : INVX1 port map( A => n110, Y => n57);
   U276 : NAND3X1 port map( A => n233, B => n161, C => state_0_port, Y => n110)
                           ;
   U277 : INVX1 port map( A => n158, Y => n219);
   U278 : NAND3X1 port map( A => n228, B => n165, C => n164, Y => n158);
   U279 : INVX1 port map( A => n234, Y => n164);
   U280 : NAND3X1 port map( A => n229, B => n235, C => n68, Y => n234);
   U281 : NOR2X1 port map( A => n236, B => n237, Y => n68);
   U282 : NAND3X1 port map( A => n79, B => n111, C => n85, Y => n237);
   U283 : INVX1 port map( A => swcnt_11_port, Y => n85);
   U284 : INVX1 port map( A => swcnt_1_port, Y => n111);
   U285 : INVX1 port map( A => swcnt_13_port, Y => n79);
   U286 : NAND3X1 port map( A => n100, B => n238, C => n226, Y => n236);
   U287 : INVX1 port map( A => swcnt_2_port, Y => n226);
   U288 : INVX1 port map( A => swcnt_8_port, Y => n238);
   U289 : INVX1 port map( A => swcnt_5_port, Y => n100);
   U290 : INVX1 port map( A => swcnt_0_port, Y => n235);
   U291 : NOR3X1 port map( A => swcnt_6_port, B => swcnt_9_port, C => 
                           swcnt_14_port, Y => n229);
   U292 : INVX1 port map( A => swcnt_12_port, Y => n165);
   U293 : INVX1 port map( A => n120, Y => n228);
   U294 : NAND3X1 port map( A => n166, B => n105, C => n239, Y => n120);
   U295 : NOR2X1 port map( A => swcnt_7_port, B => swcnt_4_port, Y => n239);
   U296 : INVX1 port map( A => swcnt_3_port, Y => n105);
   U297 : INVX1 port map( A => swcnt_10_port, Y => n166);
   U298 : NAND3X1 port map( A => n233, B => n161, C => n232, Y => n132);
   U299 : INVX1 port map( A => state_1_port, Y => n233);
   U300 : NAND2X1 port map( A => n58, B => n66, Y => n136);
   U301 : OR2X1 port map( A => n160, B => cnt32_5_port, Y => n66);
   U302 : NAND3X1 port map( A => n240, B => n153, C => n241, Y => n160);
   U303 : NOR2X1 port map( A => cnt32_1_port, B => cnt32_0_port, Y => n241);
   U304 : INVX1 port map( A => cnt32_2_port, Y => n153);
   U305 : NOR2X1 port map( A => cnt32_4_port, B => cnt32_3_port, Y => n240);
   U306 : INVX1 port map( A => n121, Y => n58);
   U307 : NAND3X1 port map( A => n232, B => n161, C => state_1_port, Y => n121)
                           ;
   U308 : INVX1 port map( A => state_2_port, Y => n161);
   U309 : INVX1 port map( A => state_0_port, Y => n232);

end SYN_b_edata;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity B_Controller_WAITSRAM24_WAITREG5264_WAITBAK49 is

   port( CLK, RST, NEXT_EN, ANT_LIN, EMPTY : in std_logic;  RESEND_EN, TRANS_EN
         : out std_logic);

end B_Controller_WAITSRAM24_WAITREG5264_WAITBAK49;

architecture SYN_b_cont of B_Controller_WAITSRAM24_WAITREG5264_WAITBAK49 is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal RESEND_EN_port, n133, state_2_port, state_1_port, state_0_port, 
      cnt4_2_port, cnt4_1_port, cnt4_0_port, cnt2_1_port, cnt2_0_port, 
      bluewait_5_port, bluewait_4_port, bluewait_3_port, bluewait_2_port, 
      bluewait_1_port, bluewait_0_port, ncnt4_2_port, ncnt4_1_port, 
      ncnt4_0_port, nbluewait_5_port, nbluewait_4_port, nbluewait_3_port, 
      nbluewait_2_port, nbluewait_1_port, nbluewait_0_port, ncnt2_1_port, 
      ncnt2_0_port, edge, resynstate_2_port, resynstate_1_port, 
      resynstate_0_port, N60, N61, N62, N63, N64, N65, N66, N67, N68, ebit, 
      nnstate_2_port, nnstate_1_port, nnstate_0_port, latch_not_empty, N270, 
      N271, N272, N274, N275, N276, N277, N278, N279, N280, N281, N282, N283, 
      N284, N285, N286, N287, N288, N289, N290, N291, N292, N293, N300, N303, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
      n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30
      , n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, 
      n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59
      , n60_port, n61_port, n62_port, n63_port, n64_port, n65_port, n66_port, 
      n67_port, n68_port, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79
      , n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, 
      n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, 
      n107, n108, n109, n110, n111, n126, n127, n128, n129, n130, n131, n132 : 
      std_logic;

begin
   RESEND_EN <= RESEND_EN_port;
   
   latch_not_empty_reg : LATCH port map( CLK => N300, D => n132, Q => 
                           latch_not_empty);
   bluewait_reg_0_inst : DFFSR port map( D => N60, CLK => CLK, R => n132, S => 
                           n125, Q => bluewait_0_port);
   ncnt4_reg_2_inst : LATCH port map( CLK => N274, D => N277, Q => ncnt4_2_port
                           );
   cnt4_reg_2_inst : DFFSR port map( D => ncnt4_2_port, CLK => CLK, R => n132, 
                           S => n124, Q => cnt4_2_port);
   state_reg_0_inst : DFFSR port map( D => N66, CLK => CLK, R => n132, S => 
                           n123, Q => state_0_port);
   nnstate_reg_2_inst : LATCH port map( CLK => N290, D => N293, Q => 
                           nnstate_2_port);
   resynstate_reg_2_inst : LATCH port map( CLK => N270, D => n131, Q => 
                           resynstate_2_port);
   state_reg_2_inst : DFFSR port map( D => N68, CLK => CLK, R => n132, S => 
                           n122, Q => state_2_port);
   nnstate_reg_1_inst : LATCH port map( CLK => N290, D => N292, Q => 
                           nnstate_1_port);
   resynstate_reg_1_inst : LATCH port map( CLK => N270, D => N272, Q => 
                           resynstate_1_port);
   state_reg_1_inst : DFFSR port map( D => N67, CLK => CLK, R => n132, S => 
                           n121, Q => state_1_port);
   ebit_reg : LATCH port map( CLK => N285, D => N286, Q => ebit);
   ncnt2_reg_0_inst : LATCH port map( CLK => N287, D => N288, Q => ncnt2_0_port
                           );
   cnt2_reg_0_inst : DFFSR port map( D => ncnt2_0_port, CLK => CLK, R => n132, 
                           S => n120, Q => cnt2_0_port);
   ncnt2_reg_1_inst : LATCH port map( CLK => N287, D => N289, Q => ncnt2_1_port
                           );
   cnt2_reg_1_inst : DFFSR port map( D => ncnt2_1_port, CLK => CLK, R => n132, 
                           S => n119, Q => cnt2_1_port);
   nbluewait_reg_1_inst : LATCH port map( CLK => N278, D => N280, Q => 
                           nbluewait_1_port);
   bluewait_reg_1_inst : DFFSR port map( D => N61, CLK => CLK, R => n132, S => 
                           n118, Q => bluewait_1_port);
   nbluewait_reg_2_inst : LATCH port map( CLK => N278, D => N281, Q => 
                           nbluewait_2_port);
   bluewait_reg_2_inst : DFFSR port map( D => N62, CLK => CLK, R => n132, S => 
                           n117, Q => bluewait_2_port);
   nbluewait_reg_3_inst : LATCH port map( CLK => N278, D => N282, Q => 
                           nbluewait_3_port);
   bluewait_reg_3_inst : DFFSR port map( D => N63, CLK => CLK, R => n132, S => 
                           n116, Q => bluewait_3_port);
   nbluewait_reg_4_inst : LATCH port map( CLK => N278, D => N283, Q => 
                           nbluewait_4_port);
   bluewait_reg_4_inst : DFFSR port map( D => N64, CLK => CLK, R => n132, S => 
                           n115, Q => bluewait_4_port);
   nbluewait_reg_5_inst : LATCH port map( CLK => N278, D => N284, Q => 
                           nbluewait_5_port);
   bluewait_reg_5_inst : DFFSR port map( D => N65, CLK => CLK, R => n132, S => 
                           n114, Q => bluewait_5_port);
   nbluewait_reg_0_inst : LATCH port map( CLK => N278, D => N279, Q => 
                           nbluewait_0_port);
   nnstate_reg_0_inst : LATCH port map( CLK => N290, D => N291, Q => 
                           nnstate_0_port);
   resynstate_reg_0_inst : LATCH port map( CLK => N270, D => N271, Q => 
                           resynstate_0_port);
   ncnt4_reg_1_inst : LATCH port map( CLK => N274, D => N276, Q => ncnt4_1_port
                           );
   cnt4_reg_1_inst : DFFSR port map( D => ncnt4_1_port, CLK => CLK, R => n132, 
                           S => n113, Q => cnt4_1_port);
   ncnt4_reg_0_inst : LATCH port map( CLK => N274, D => N275, Q => ncnt4_0_port
                           );
   cnt4_reg_0_inst : DFFSR port map( D => ncnt4_0_port, CLK => CLK, R => n132, 
                           S => n112, Q => cnt4_0_port);
   edge_reg : LATCH port map( CLK => N303, D => n130, Q => edge);
   n112 <= '1';
   n113 <= '1';
   n114 <= '1';
   n115 <= '1';
   n116 <= '1';
   n117 <= '1';
   n118 <= '1';
   n119 <= '1';
   n120 <= '1';
   n121 <= '1';
   n122 <= '1';
   n123 <= '1';
   n124 <= '1';
   n125 <= '1';
   U3 : INVX2 port map( A => RST, Y => n132);
   U4 : BUFX4 port map( A => n133, Y => TRANS_EN);
   U5 : INVX1 port map( A => N303, Y => n130);
   U6 : INVX1 port map( A => n2, Y => n131);
   U7 : AOI22X1 port map( A => n3, B => nnstate_2_port, C => n4, D => n5, Y => 
                           n2);
   U8 : OAI21X1 port map( A => EMPTY, B => n6, C => n7, Y => n133);
   U9 : INVX1 port map( A => RESEND_EN_port, Y => n7);
   U10 : NOR2X1 port map( A => n8, B => n6, Y => RESEND_EN_port);
   U11 : INVX1 port map( A => n9, Y => N68);
   U12 : MUX2X1 port map( B => resynstate_2_port, A => n5, S => n10, Y => n9);
   U13 : OAI21X1 port map( A => n11, B => n12, C => n13, Y => n5);
   U14 : AOI21X1 port map( A => nnstate_2_port, B => n14, C => n15, Y => n13);
   U15 : INVX1 port map( A => n16, Y => n15);
   U16 : OAI21X1 port map( A => n17, B => n18, C => n12, Y => n14);
   U17 : INVX1 port map( A => n19, Y => N67);
   U18 : MUX2X1 port map( B => resynstate_1_port, A => n20, S => n10, Y => n19)
                           ;
   U19 : INVX1 port map( A => n21, Y => N66);
   U20 : MUX2X1 port map( B => resynstate_0_port, A => n22, S => n10, Y => n21)
                           ;
   U21 : AND2X1 port map( A => nbluewait_5_port, B => n10, Y => N65);
   U22 : AND2X1 port map( A => nbluewait_4_port, B => n10, Y => N64);
   U23 : AND2X1 port map( A => nbluewait_3_port, B => n10, Y => N63);
   U24 : AND2X1 port map( A => nbluewait_2_port, B => n10, Y => N62);
   U25 : AND2X1 port map( A => nbluewait_1_port, B => n10, Y => N61);
   U26 : AND2X1 port map( A => nbluewait_0_port, B => n10, Y => N60);
   U27 : INVX1 port map( A => edge, Y => n10);
   U28 : OAI21X1 port map( A => bluewait_5_port, B => n23, C => n132, Y => N303
                           );
   U29 : NAND2X1 port map( A => EMPTY, B => n132, Y => N300);
   U30 : MUX2X1 port map( B => n24, A => n25, S => n26, Y => N293);
   U31 : MUX2X1 port map( B => n27, A => n28, S => n26, Y => N292);
   U32 : OR2X1 port map( A => n8, B => n18, Y => n27);
   U33 : OAI21X1 port map( A => n25, B => n26, C => n24, Y => N291);
   U34 : OAI21X1 port map( A => n29, B => n30, C => n31, Y => N290);
   U35 : MUX2X1 port map( B => n32, A => n33, S => cnt2_1_port, Y => N289);
   U36 : NAND2X1 port map( A => n34, B => cnt2_0_port, Y => n32);
   U37 : NAND2X1 port map( A => n31, B => n6, Y => N287);
   U38 : NOR2X1 port map( A => n35, B => n36, Y => N286);
   U39 : OAI21X1 port map( A => n35, B => n30, C => n31, Y => N285);
   U40 : NOR2X1 port map( A => n37, B => n38, Y => N284);
   U41 : XNOR2X1 port map( A => n39, B => n40, Y => n37);
   U42 : NAND2X1 port map( A => n41, B => bluewait_4_port, Y => n39);
   U43 : NOR2X1 port map( A => n42, B => n38, Y => N283);
   U44 : XNOR2X1 port map( A => bluewait_4_port, B => n41, Y => n42);
   U45 : NOR2X1 port map( A => n43, B => n44, Y => n41);
   U46 : NOR2X1 port map( A => n45, B => n38, Y => N282);
   U47 : XNOR2X1 port map( A => n43, B => n44, Y => n45);
   U48 : NAND3X1 port map( A => bluewait_1_port, B => bluewait_0_port, C => 
                           bluewait_2_port, Y => n43);
   U49 : MUX2X1 port map( B => n46, A => n47, S => n48, Y => N281);
   U50 : NAND3X1 port map( A => bluewait_1_port, B => bluewait_0_port, C => n49
                           , Y => n47);
   U51 : AOI21X1 port map( A => n49, B => n50, C => N279, Y => n46);
   U52 : MUX2X1 port map( B => n51, A => n52, S => n50, Y => N280);
   U53 : NAND2X1 port map( A => n49, B => bluewait_0_port, Y => n52);
   U54 : INVX1 port map( A => n38, Y => n49);
   U55 : INVX1 port map( A => N279, Y => n51);
   U56 : NOR2X1 port map( A => n38, B => bluewait_0_port, Y => N279);
   U57 : OAI21X1 port map( A => n53, B => n54, C => n17, Y => n38);
   U58 : NAND2X1 port map( A => n29, B => n55, Y => n54);
   U59 : NAND2X1 port map( A => n35, B => n56, Y => n53);
   U60 : NAND3X1 port map( A => n29, B => n31, C => n57, Y => N278);
   U61 : NOR2X1 port map( A => n58, B => n59, Y => n57);
   U62 : OAI22X1 port map( A => n11, B => n56, C => n55, D => n60_port, Y => 
                           N277);
   U63 : MUX2X1 port map( B => n61_port, A => n62_port, S => n63_port, Y => 
                           n60_port);
   U64 : NOR2X1 port map( A => n64_port, B => n65_port, Y => n62_port);
   U65 : NAND2X1 port map( A => n66_port, B => n67_port, Y => n65_port);
   U66 : OAI21X1 port map( A => cnt4_1_port, B => n36, C => n68_port, Y => 
                           n61_port);
   U67 : INVX1 port map( A => n69, Y => n68_port);
   U68 : NOR2X1 port map( A => n70, B => n71, Y => N276);
   U69 : MUX2X1 port map( B => n69, A => n72, S => n64_port, Y => n71);
   U70 : AND2X1 port map( A => n67_port, B => n66_port, Y => n72);
   U71 : OAI21X1 port map( A => n66_port, B => n36, C => n67_port, Y => n69);
   U72 : INVX1 port map( A => n30, Y => n67_port);
   U73 : OAI21X1 port map( A => n55, B => n73, C => n74, Y => N275);
   U74 : MUX2X1 port map( B => n75, A => n76, S => n8, Y => n74);
   U75 : MUX2X1 port map( B => n77, A => cnt4_0_port, S => n30, Y => n73);
   U76 : OAI21X1 port map( A => n66_port, B => n64_port, C => ANT_LIN, Y => n77
                           );
   U77 : NOR2X1 port map( A => n78, B => n36, Y => n66_port);
   U78 : INVX1 port map( A => ANT_LIN, Y => n36);
   U79 : OAI21X1 port map( A => n30, B => n79, C => n80, Y => N274);
   U80 : NOR2X1 port map( A => n59, B => n81, Y => n80);
   U81 : MUX2X1 port map( B => n76, A => n75, S => n26, Y => n79);
   U82 : XNOR2X1 port map( A => n8, B => ANT_LIN, Y => n26);
   U83 : INVX1 port map( A => ebit, Y => n8);
   U84 : NAND3X1 port map( A => bluewait_3_port, B => bluewait_4_port, C => n82
                           , Y => n30);
   U85 : NOR2X1 port map( A => bluewait_5_port, B => n83, Y => n82);
   U86 : NAND3X1 port map( A => n35, B => n56, C => n84, Y => N272);
   U87 : AOI22X1 port map( A => n20, B => n4, C => nnstate_1_port, D => n3, Y 
                           => n84);
   U88 : NAND3X1 port map( A => n35, B => n16, C => n85, Y => n20);
   U89 : AOI22X1 port map( A => n86, B => n87, C => n88, D => n11, Y => n85);
   U90 : INVX1 port map( A => n56, Y => n88);
   U91 : OAI21X1 port map( A => n12, B => n17, C => n18, Y => n87);
   U92 : AND2X1 port map( A => n28, B => n24, Y => n12);
   U93 : OR2X1 port map( A => n17, B => nnstate_1_port, Y => n86);
   U94 : OAI21X1 port map( A => n89, B => n90, C => n4, Y => n16);
   U95 : OR2X1 port map( A => n91, B => cnt2_1_port, Y => n90);
   U96 : INVX1 port map( A => cnt2_0_port, Y => n89);
   U97 : NAND3X1 port map( A => n78, B => n64_port, C => n92, Y => n56);
   U98 : NOR2X1 port map( A => n70, B => n63_port, Y => n92);
   U99 : NAND2X1 port map( A => n93, B => n94, Y => N271);
   U100 : AOI21X1 port map( A => n3, B => nnstate_0_port, C => n95, Y => n94);
   U101 : INVX1 port map( A => n29, Y => n3);
   U102 : NOR2X1 port map( A => n76, B => n75, Y => n29);
   U103 : AOI21X1 port map( A => n4, B => n22, C => n58, Y => n93);
   U104 : NAND3X1 port map( A => n96, B => n97, C => n98, Y => n22);
   U105 : AOI21X1 port map( A => NEXT_EN, B => n91, C => n99, Y => n98);
   U106 : OAI21X1 port map( A => n100, B => n101, C => n33, Y => n99);
   U107 : INVX1 port map( A => N288, Y => n33);
   U108 : NOR2X1 port map( A => n6, B => cnt2_0_port, Y => N288);
   U109 : INVX1 port map( A => nnstate_0_port, Y => n101);
   U110 : AOI21X1 port map( A => n75, B => n11, C => n76, Y => n100);
   U111 : INVX1 port map( A => n24, Y => n75);
   U112 : NAND3X1 port map( A => n102, B => n103, C => state_2_port, Y => n24);
   U113 : INVX1 port map( A => n104, Y => n91);
   U114 : MUX2X1 port map( B => n58, A => n105, S => n17, Y => n97);
   U115 : INVX1 port map( A => n11, Y => n17);
   U116 : NOR2X1 port map( A => n106, B => n107, Y => n11);
   U117 : NAND3X1 port map( A => bluewait_4_port, B => bluewait_0_port, C => 
                           bluewait_5_port, Y => n107);
   U118 : NAND3X1 port map( A => n48, B => n44, C => n50, Y => n106);
   U119 : NAND2X1 port map( A => n25, B => n70, Y => n105);
   U120 : INVX1 port map( A => n76, Y => n25);
   U121 : NAND2X1 port map( A => n18, B => n28, Y => n76);
   U122 : NAND3X1 port map( A => state_0_port, B => n103, C => state_2_port, Y 
                           => n28);
   U123 : NAND3X1 port map( A => state_0_port, B => n108, C => state_1_port, Y 
                           => n18);
   U124 : INVX1 port map( A => n35, Y => n58);
   U125 : NAND3X1 port map( A => n102, B => n108, C => state_1_port, Y => n35);
   U126 : AOI21X1 port map( A => cnt2_1_port, B => n34, C => n95, Y => n96);
   U127 : NAND2X1 port map( A => n55, B => n109, Y => n95);
   U128 : OAI21X1 port map( A => latch_not_empty, B => n110, C => n81, Y => 
                           n109);
   U129 : INVX1 port map( A => n31, Y => n81);
   U130 : INVX1 port map( A => EMPTY, Y => n110);
   U131 : OAI21X1 port map( A => n63_port, B => n111, C => n59, Y => n55);
   U132 : INVX1 port map( A => n70, Y => n59);
   U133 : NAND3X1 port map( A => n103, B => n108, C => state_0_port, Y => n70);
   U134 : NAND2X1 port map( A => n78, B => n64_port, Y => n111);
   U135 : INVX1 port map( A => cnt4_1_port, Y => n64_port);
   U136 : INVX1 port map( A => cnt4_0_port, Y => n78);
   U137 : INVX1 port map( A => cnt4_2_port, Y => n63_port);
   U138 : INVX1 port map( A => n6, Y => n34);
   U139 : OR2X1 port map( A => n4, B => n126, Y => N270);
   U140 : OAI21X1 port map( A => n23, B => n40, C => n31, Y => n126);
   U141 : NAND3X1 port map( A => n103, B => n108, C => n102, Y => n31);
   U142 : INVX1 port map( A => state_2_port, Y => n108);
   U143 : INVX1 port map( A => state_1_port, Y => n103);
   U144 : INVX1 port map( A => bluewait_5_port, Y => n40);
   U145 : NAND3X1 port map( A => n44, B => n127, C => n128, Y => n23);
   U146 : INVX1 port map( A => n83, Y => n128);
   U147 : NAND3X1 port map( A => n50, B => n48, C => n129, Y => n83);
   U148 : INVX1 port map( A => bluewait_0_port, Y => n129);
   U149 : INVX1 port map( A => bluewait_2_port, Y => n48);
   U164 : INVX1 port map( A => bluewait_1_port, Y => n50);
   U165 : INVX1 port map( A => bluewait_4_port, Y => n127);
   U166 : INVX1 port map( A => bluewait_3_port, Y => n44);
   U167 : NAND2X1 port map( A => n104, B => n6, Y => n4);
   U168 : NAND3X1 port map( A => state_1_port, B => state_0_port, C => 
                           state_2_port, Y => n6);
   U169 : NAND3X1 port map( A => state_1_port, B => n102, C => state_2_port, Y 
                           => n104);
   U170 : INVX1 port map( A => state_0_port, Y => n102);

end SYN_b_cont;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity B_AppendAccessCode is

   port( CLK, RST, TRANS_EN : in std_logic;  ACESS_CODE : out std_logic_vector 
         (71 downto 0);  HEADER_EN : out std_logic);

end B_AppendAccessCode;

architecture SYN_b_code of B_AppendAccessCode is

   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal ACESS_CODE_71_port, ACESS_CODE_70_port, ACESS_CODE_69_port, 
      ACESS_CODE_68_port, ACESS_CODE_67_port, ACESS_CODE_66_port, 
      ACESS_CODE_65_port, ACESS_CODE_64_port, ACESS_CODE_63_port, 
      ACESS_CODE_62_port, ACESS_CODE_61_port, ACESS_CODE_60_port, 
      ACESS_CODE_59_port, ACESS_CODE_58_port, ACESS_CODE_57_port, 
      ACESS_CODE_56_port, ACESS_CODE_55_port, ACESS_CODE_54_port, 
      ACESS_CODE_53_port, ACESS_CODE_52_port, ACESS_CODE_51_port, 
      ACESS_CODE_50_port, ACESS_CODE_49_port, ACESS_CODE_48_port, 
      ACESS_CODE_47_port, ACESS_CODE_46_port, ACESS_CODE_45_port, 
      ACESS_CODE_44_port, ACESS_CODE_43_port, ACESS_CODE_42_port, 
      ACESS_CODE_41_port, ACESS_CODE_40_port, ACESS_CODE_39_port, 
      ACESS_CODE_38_port, ACESS_CODE_37_port, ACESS_CODE_36_port, 
      ACESS_CODE_35_port, ACESS_CODE_34_port, ACESS_CODE_33_port, 
      ACESS_CODE_32_port, ACESS_CODE_31_port, ACESS_CODE_30_port, 
      ACESS_CODE_29_port, ACESS_CODE_28_port, ACESS_CODE_27_port, 
      ACESS_CODE_26_port, ACESS_CODE_25_port, ACESS_CODE_24_port, 
      ACESS_CODE_23_port, ACESS_CODE_22_port, ACESS_CODE_21_port, 
      ACESS_CODE_20_port, ACESS_CODE_19_port, ACESS_CODE_18_port, 
      ACESS_CODE_17_port, ACESS_CODE_16_port, ACESS_CODE_15_port, 
      ACESS_CODE_14_port, ACESS_CODE_13_port, ACESS_CODE_12_port, 
      ACESS_CODE_11_port, ACESS_CODE_10_port, ACESS_CODE_9_port, 
      ACESS_CODE_8_port, ACESS_CODE_7_port, ACESS_CODE_6_port, 
      ACESS_CODE_5_port, ACESS_CODE_4_port, ACESS_CODE_3_port, 
      ACESS_CODE_2_port, ACESS_CODE_1_port, ACESS_CODE_0_port, n72, n1, n2, n3,
      n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
      n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34
      , n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, 
      n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63
      , n64, n65, n66, n67, n68, n70, n71 : std_logic;

begin
   ACESS_CODE <= ( ACESS_CODE_71_port, ACESS_CODE_70_port, ACESS_CODE_69_port, 
      ACESS_CODE_68_port, ACESS_CODE_67_port, ACESS_CODE_66_port, 
      ACESS_CODE_65_port, ACESS_CODE_64_port, ACESS_CODE_63_port, 
      ACESS_CODE_62_port, ACESS_CODE_61_port, ACESS_CODE_60_port, 
      ACESS_CODE_59_port, ACESS_CODE_58_port, ACESS_CODE_57_port, 
      ACESS_CODE_56_port, ACESS_CODE_55_port, ACESS_CODE_54_port, 
      ACESS_CODE_53_port, ACESS_CODE_52_port, ACESS_CODE_51_port, 
      ACESS_CODE_50_port, ACESS_CODE_49_port, ACESS_CODE_48_port, 
      ACESS_CODE_47_port, ACESS_CODE_46_port, ACESS_CODE_45_port, 
      ACESS_CODE_44_port, ACESS_CODE_43_port, ACESS_CODE_42_port, 
      ACESS_CODE_41_port, ACESS_CODE_40_port, ACESS_CODE_39_port, 
      ACESS_CODE_38_port, ACESS_CODE_37_port, ACESS_CODE_36_port, 
      ACESS_CODE_35_port, ACESS_CODE_34_port, ACESS_CODE_33_port, 
      ACESS_CODE_32_port, ACESS_CODE_31_port, ACESS_CODE_30_port, 
      ACESS_CODE_29_port, ACESS_CODE_28_port, ACESS_CODE_27_port, 
      ACESS_CODE_26_port, ACESS_CODE_25_port, ACESS_CODE_24_port, 
      ACESS_CODE_23_port, ACESS_CODE_22_port, ACESS_CODE_21_port, 
      ACESS_CODE_20_port, ACESS_CODE_19_port, ACESS_CODE_18_port, 
      ACESS_CODE_17_port, ACESS_CODE_16_port, ACESS_CODE_15_port, 
      ACESS_CODE_14_port, ACESS_CODE_13_port, ACESS_CODE_12_port, 
      ACESS_CODE_11_port, ACESS_CODE_10_port, ACESS_CODE_9_port, 
      ACESS_CODE_8_port, ACESS_CODE_7_port, ACESS_CODE_6_port, 
      ACESS_CODE_5_port, ACESS_CODE_4_port, ACESS_CODE_3_port, 
      ACESS_CODE_2_port, ACESS_CODE_1_port, ACESS_CODE_0_port );
   
   HEADER_EN_reg : DFFSR port map( D => TRANS_EN, CLK => CLK, R => n71, S => 
                           n70, Q => n72);
   ACESS_CODE_reg_71_inst : DFFSR port map( D => n68, CLK => CLK, R => n71, S 
                           => n67, Q => ACESS_CODE_71_port);
   ACESS_CODE_reg_69_inst : DFFSR port map( D => n66, CLK => CLK, R => n71, S 
                           => n65, Q => ACESS_CODE_69_port);
   ACESS_CODE_reg_67_inst : DFFSR port map( D => n64, CLK => CLK, R => n71, S 
                           => n63, Q => ACESS_CODE_67_port);
   ACESS_CODE_reg_66_inst : DFFSR port map( D => n62, CLK => CLK, R => n71, S 
                           => n61, Q => ACESS_CODE_66_port);
   ACESS_CODE_reg_65_inst : DFFSR port map( D => n60, CLK => CLK, R => n71, S 
                           => n59, Q => ACESS_CODE_65_port);
   ACESS_CODE_reg_63_inst : DFFSR port map( D => n58, CLK => CLK, R => n71, S 
                           => n57, Q => ACESS_CODE_63_port);
   ACESS_CODE_reg_61_inst : DFFSR port map( D => n56, CLK => CLK, R => n71, S 
                           => n55, Q => ACESS_CODE_61_port);
   ACESS_CODE_reg_60_inst : DFFSR port map( D => n54, CLK => CLK, R => n71, S 
                           => n53, Q => ACESS_CODE_60_port);
   ACESS_CODE_reg_58_inst : DFFSR port map( D => n52, CLK => CLK, R => n71, S 
                           => n51, Q => ACESS_CODE_58_port);
   ACESS_CODE_reg_57_inst : DFFSR port map( D => n50, CLK => CLK, R => n71, S 
                           => n49, Q => ACESS_CODE_57_port);
   ACESS_CODE_reg_54_inst : DFFSR port map( D => n48, CLK => CLK, R => n71, S 
                           => n47, Q => ACESS_CODE_54_port);
   ACESS_CODE_reg_53_inst : DFFSR port map( D => n46, CLK => CLK, R => n71, S 
                           => n45, Q => ACESS_CODE_53_port);
   ACESS_CODE_reg_51_inst : DFFSR port map( D => n44, CLK => CLK, R => n71, S 
                           => n43, Q => ACESS_CODE_51_port);
   ACESS_CODE_reg_50_inst : DFFSR port map( D => n42, CLK => CLK, R => n71, S 
                           => n41, Q => ACESS_CODE_50_port);
   ACESS_CODE_reg_46_inst : DFFSR port map( D => n40, CLK => CLK, R => n71, S 
                           => n39, Q => ACESS_CODE_46_port);
   ACESS_CODE_reg_45_inst : DFFSR port map( D => n38, CLK => CLK, R => n71, S 
                           => n37, Q => ACESS_CODE_45_port);
   ACESS_CODE_reg_44_inst : DFFSR port map( D => n36, CLK => CLK, R => n71, S 
                           => n35, Q => ACESS_CODE_44_port);
   ACESS_CODE_reg_43_inst : DFFSR port map( D => n34, CLK => CLK, R => n71, S 
                           => n33, Q => ACESS_CODE_43_port);
   ACESS_CODE_reg_42_inst : DFFSR port map( D => n32, CLK => CLK, R => n71, S 
                           => n31, Q => ACESS_CODE_42_port);
   ACESS_CODE_reg_41_inst : DFFSR port map( D => n30, CLK => CLK, R => n71, S 
                           => n29, Q => ACESS_CODE_41_port);
   ACESS_CODE_reg_39_inst : DFFSR port map( D => n28, CLK => CLK, R => n71, S 
                           => n27, Q => ACESS_CODE_39_port);
   ACESS_CODE_reg_37_inst : DFFSR port map( D => n26, CLK => CLK, R => n71, S 
                           => n25, Q => ACESS_CODE_37_port);
   ACESS_CODE_reg_36_inst : DFFSR port map( D => n24, CLK => CLK, R => n71, S 
                           => n23, Q => ACESS_CODE_36_port);
   ACESS_CODE_reg_34_inst : DFFSR port map( D => n22, CLK => CLK, R => n71, S 
                           => n21, Q => ACESS_CODE_34_port);
   ACESS_CODE_reg_33_inst : DFFSR port map( D => n20, CLK => CLK, R => n71, S 
                           => n19, Q => ACESS_CODE_33_port);
   ACESS_CODE_reg_30_inst : DFFSR port map( D => n18, CLK => CLK, R => n71, S 
                           => n17, Q => ACESS_CODE_30_port);
   ACESS_CODE_reg_29_inst : DFFSR port map( D => n16, CLK => CLK, R => n71, S 
                           => n15, Q => ACESS_CODE_29_port);
   ACESS_CODE_reg_27_inst : DFFSR port map( D => n14, CLK => CLK, R => n71, S 
                           => n13, Q => ACESS_CODE_27_port);
   ACESS_CODE_reg_26_inst : DFFSR port map( D => n12, CLK => CLK, R => n71, S 
                           => n11, Q => ACESS_CODE_26_port);
   ACESS_CODE_reg_22_inst : DFFSR port map( D => n10, CLK => CLK, R => n71, S 
                           => n9, Q => ACESS_CODE_22_port);
   ACESS_CODE_reg_21_inst : DFFSR port map( D => n8, CLK => CLK, R => n71, S =>
                           n7, Q => ACESS_CODE_21_port);
   ACESS_CODE_reg_20_inst : DFFSR port map( D => n6, CLK => CLK, R => n71, S =>
                           n5, Q => ACESS_CODE_20_port);
   ACESS_CODE_reg_3_inst : DFFSR port map( D => n4, CLK => CLK, R => n71, S => 
                           n3, Q => ACESS_CODE_3_port);
   ACESS_CODE_reg_1_inst : DFFSR port map( D => n2, CLK => CLK, R => n71, S => 
                           n1, Q => ACESS_CODE_1_port);
   ACESS_CODE_0_port <= '0';
   n1 <= '1';
   ACESS_CODE_2_port <= '0';
   n3 <= '1';
   ACESS_CODE_4_port <= '0';
   ACESS_CODE_5_port <= '0';
   ACESS_CODE_6_port <= '0';
   ACESS_CODE_7_port <= '0';
   ACESS_CODE_8_port <= '0';
   ACESS_CODE_9_port <= '0';
   ACESS_CODE_10_port <= '0';
   ACESS_CODE_11_port <= '0';
   ACESS_CODE_12_port <= '0';
   ACESS_CODE_13_port <= '0';
   ACESS_CODE_14_port <= '0';
   ACESS_CODE_15_port <= '0';
   ACESS_CODE_16_port <= '0';
   ACESS_CODE_17_port <= '0';
   ACESS_CODE_18_port <= '0';
   ACESS_CODE_19_port <= '0';
   n5 <= '1';
   n7 <= '1';
   n9 <= '1';
   ACESS_CODE_23_port <= '0';
   ACESS_CODE_24_port <= '0';
   ACESS_CODE_25_port <= '0';
   n11 <= '1';
   n13 <= '1';
   ACESS_CODE_28_port <= '0';
   n15 <= '1';
   n17 <= '1';
   ACESS_CODE_31_port <= '0';
   ACESS_CODE_32_port <= '0';
   n19 <= '1';
   n21 <= '1';
   ACESS_CODE_35_port <= '0';
   n23 <= '1';
   n25 <= '1';
   ACESS_CODE_38_port <= '0';
   n27 <= '1';
   ACESS_CODE_40_port <= '0';
   n29 <= '1';
   n31 <= '1';
   n33 <= '1';
   n35 <= '1';
   n37 <= '1';
   n39 <= '1';
   ACESS_CODE_47_port <= '0';
   ACESS_CODE_48_port <= '0';
   ACESS_CODE_49_port <= '0';
   n41 <= '1';
   n43 <= '1';
   ACESS_CODE_52_port <= '0';
   n45 <= '1';
   n47 <= '1';
   ACESS_CODE_55_port <= '0';
   ACESS_CODE_56_port <= '0';
   n49 <= '1';
   n51 <= '1';
   ACESS_CODE_59_port <= '0';
   n53 <= '1';
   n55 <= '1';
   ACESS_CODE_62_port <= '0';
   n57 <= '1';
   ACESS_CODE_64_port <= '0';
   n59 <= '1';
   n61 <= '1';
   n63 <= '1';
   ACESS_CODE_68_port <= '0';
   n65 <= '1';
   ACESS_CODE_70_port <= '0';
   n67 <= '1';
   n70 <= '1';
   U3 : INVX4 port map( A => RST, Y => n71);
   U4 : BUFX4 port map( A => n72, Y => HEADER_EN);
   U5 : OR2X1 port map( A => ACESS_CODE_21_port, B => TRANS_EN, Y => n8);
   U6 : OR2X1 port map( A => ACESS_CODE_71_port, B => TRANS_EN, Y => n68);
   U7 : OR2X1 port map( A => ACESS_CODE_69_port, B => TRANS_EN, Y => n66);
   U8 : OR2X1 port map( A => ACESS_CODE_67_port, B => TRANS_EN, Y => n64);
   U9 : OR2X1 port map( A => ACESS_CODE_66_port, B => TRANS_EN, Y => n62);
   U10 : OR2X1 port map( A => ACESS_CODE_65_port, B => TRANS_EN, Y => n60);
   U11 : OR2X1 port map( A => ACESS_CODE_20_port, B => TRANS_EN, Y => n6);
   U12 : OR2X1 port map( A => ACESS_CODE_63_port, B => TRANS_EN, Y => n58);
   U13 : OR2X1 port map( A => ACESS_CODE_61_port, B => TRANS_EN, Y => n56);
   U14 : OR2X1 port map( A => ACESS_CODE_60_port, B => TRANS_EN, Y => n54);
   U15 : OR2X1 port map( A => ACESS_CODE_58_port, B => TRANS_EN, Y => n52);
   U16 : OR2X1 port map( A => ACESS_CODE_57_port, B => TRANS_EN, Y => n50);
   U17 : OR2X1 port map( A => ACESS_CODE_54_port, B => TRANS_EN, Y => n48);
   U18 : OR2X1 port map( A => ACESS_CODE_53_port, B => TRANS_EN, Y => n46);
   U19 : OR2X1 port map( A => ACESS_CODE_51_port, B => TRANS_EN, Y => n44);
   U20 : OR2X1 port map( A => ACESS_CODE_50_port, B => TRANS_EN, Y => n42);
   U21 : OR2X1 port map( A => ACESS_CODE_46_port, B => TRANS_EN, Y => n40);
   U22 : OR2X1 port map( A => ACESS_CODE_3_port, B => TRANS_EN, Y => n4);
   U23 : OR2X1 port map( A => ACESS_CODE_45_port, B => TRANS_EN, Y => n38);
   U24 : OR2X1 port map( A => ACESS_CODE_44_port, B => TRANS_EN, Y => n36);
   U25 : OR2X1 port map( A => ACESS_CODE_43_port, B => TRANS_EN, Y => n34);
   U26 : OR2X1 port map( A => ACESS_CODE_42_port, B => TRANS_EN, Y => n32);
   U27 : OR2X1 port map( A => ACESS_CODE_41_port, B => TRANS_EN, Y => n30);
   U28 : OR2X1 port map( A => ACESS_CODE_39_port, B => TRANS_EN, Y => n28);
   U29 : OR2X1 port map( A => ACESS_CODE_37_port, B => TRANS_EN, Y => n26);
   U30 : OR2X1 port map( A => ACESS_CODE_36_port, B => TRANS_EN, Y => n24);
   U31 : OR2X1 port map( A => ACESS_CODE_34_port, B => TRANS_EN, Y => n22);
   U32 : OR2X1 port map( A => ACESS_CODE_33_port, B => TRANS_EN, Y => n20);
   U33 : OR2X1 port map( A => ACESS_CODE_1_port, B => TRANS_EN, Y => n2);
   U34 : OR2X1 port map( A => ACESS_CODE_30_port, B => TRANS_EN, Y => n18);
   U35 : OR2X1 port map( A => ACESS_CODE_29_port, B => TRANS_EN, Y => n16);
   U36 : OR2X1 port map( A => ACESS_CODE_27_port, B => TRANS_EN, Y => n14);
   U37 : OR2X1 port map( A => ACESS_CODE_26_port, B => TRANS_EN, Y => n12);
   U111 : OR2X1 port map( A => ACESS_CODE_22_port, B => TRANS_EN, Y => n10);

end SYN_b_code;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

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
      , n3, n4, n5, n6, n7, n8, n9, n10, n12, n35, n62, n63, n64, n65, n66, n67
      , n68, n69, n11, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, 
      n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n36, n37, n38, n39
      , n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, 
      n54 : std_logic;

begin
   
   state_reg_2_inst : DFFSR port map( D => nextstate_2_port, CLK => D_CLK, R =>
                           n54, S => n12, Q => state_2_port);
   ctr8_reg_0_inst : DFFSR port map( D => n69, CLK => D_CLK, R => n11, S => n10
                           , Q => ctr8_0_port);
   ctr8_reg_3_inst : DFFSR port map( D => n68, CLK => D_CLK, R => n11, S => n9,
                           Q => ctr8_3_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n54, S => n8, Q => state_1_port);
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n54, S => n7, Q => state_0_port);
   ctr2_reg_0_inst : DFFSR port map( D => n66, CLK => D_CLK, R => n11, S => n6,
                           Q => ctr2_0_port);
   ctr8_reg_1_inst : DFFSR port map( D => n63, CLK => D_CLK, R => n11, S => n5,
                           Q => ctr8_1_port);
   ctr8_reg_2_inst : DFFSR port map( D => n62, CLK => D_CLK, R => n11, S => n4,
                           Q => ctr8_2_port);
   ctr2_reg_1_inst : DFFSR port map( D => n65, CLK => D_CLK, R => n3, S => n11,
                           Q => ctr2_1_port);
   ctr2_reg_2_inst : DFFSR port map( D => n64, CLK => D_CLK, R => n11, S => n2,
                           Q => ctr2_2_port);
   ctr2_reg_3_inst : DFFSR port map( D => n67, CLK => D_CLK, R => n11, S => n1,
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
   U13 : BUFX2 port map( A => n35, Y => n11);
   U15 : NOR2X1 port map( A => n13, B => n14, Y => nextstate_2_port);
   U16 : OAI21X1 port map( A => n15, B => n16, C => n11, Y => nextstate_1_port)
                           ;
   U17 : MUX2X1 port map( B => n17, A => n18, S => state_0_port, Y => n16);
   U18 : OR2X1 port map( A => n19, B => ctr8_0_port, Y => n18);
   U19 : NOR2X1 port map( A => n15, B => n20, Y => nextstate_0_port);
   U20 : INVX1 port map( A => n21, Y => n20);
   U21 : OAI21X1 port map( A => n17, B => n22, C => n23, Y => n21);
   U22 : NAND3X1 port map( A => ctr2_1_port, B => n24, C => n25, Y => n17);
   U23 : NOR2X1 port map( A => ctr2_3_port, B => ctr2_2_port, Y => n25);
   U24 : NAND3X1 port map( A => n13, B => n26, C => RCVING, Y => n15);
   U25 : INVX1 port map( A => RST_N, Y => n54);
   U26 : MUX2X1 port map( B => ctr8_0_port, A => n27, S => n28, Y => n69);
   U27 : NAND2X1 port map( A => ctr8_0_port, B => n11, Y => n27);
   U28 : OAI21X1 port map( A => n19, B => n29, C => n30, Y => n68);
   U29 : OAI21X1 port map( A => n31, B => n32, C => ctr8_3_port, Y => n30);
   U30 : NOR2X1 port map( A => ctr8_2_port, B => n28, Y => n31);
   U31 : NAND3X1 port map( A => ctr8_1_port, B => n33, C => ctr8_2_port, Y => 
                           n19);
   U32 : INVX1 port map( A => ctr8_3_port, Y => n33);
   U33 : MUX2X1 port map( B => n34, A => n36, S => ctr2_3_port, Y => n67);
   U34 : INVX1 port map( A => n37, Y => n36);
   U35 : OAI21X1 port map( A => n38, B => ctr2_2_port, C => n39, Y => n37);
   U36 : NAND2X1 port map( A => ctr2_2_port, B => n40, Y => n34);
   U37 : INVX1 port map( A => n41, Y => n40);
   U38 : MUX2X1 port map( B => n42, A => ctr2_0_port, S => n43, Y => n66);
   U39 : NAND2X1 port map( A => ctr2_0_port, B => n11, Y => n42);
   U40 : NAND2X1 port map( A => n44, B => n11, Y => n65);
   U41 : XNOR2X1 port map( A => ctr2_1_port, B => n45, Y => n44);
   U42 : NOR2X1 port map( A => n38, B => n24, Y => n45);
   U43 : INVX1 port map( A => ctr2_0_port, Y => n24);
   U44 : MUX2X1 port map( B => n41, A => n39, S => ctr2_2_port, Y => n64);
   U45 : MUX2X1 port map( B => n11, A => n46, S => n43, Y => n39);
   U46 : NAND2X1 port map( A => ctr2_0_port, B => ctr2_1_port, Y => n46);
   U47 : NAND3X1 port map( A => n43, B => ctr2_1_port, C => ctr2_0_port, Y => 
                           n41);
   U48 : INVX1 port map( A => n38, Y => n43);
   U49 : MUX2X1 port map( B => n29, A => n47, S => ctr8_1_port, Y => n63);
   U50 : INVX1 port map( A => n48, Y => n29);
   U51 : MUX2X1 port map( B => n49, A => n50, S => ctr8_2_port, Y => n62);
   U52 : INVX1 port map( A => n32, Y => n50);
   U53 : OAI21X1 port map( A => ctr8_1_port, B => n28, C => n47, Y => n32);
   U54 : MUX2X1 port map( B => n51, A => n11, S => n28, Y => n47);
   U55 : NAND2X1 port map( A => n48, B => ctr8_1_port, Y => n49);
   U56 : NOR2X1 port map( A => n51, B => n28, Y => n48);
   U57 : NAND3X1 port map( A => n38, B => n26, C => state_1_port, Y => n28);
   U58 : NAND3X1 port map( A => n23, B => n26, C => state_1_port, Y => n38);
   U59 : INVX1 port map( A => ctr8_0_port, Y => n51);
   U60 : NAND3X1 port map( A => n13, B => n22, C => n52, Y => n35);
   U61 : AOI21X1 port map( A => state_2_port, B => state_0_port, C => n14, Y =>
                           n52);
   U62 : INVX1 port map( A => RCVING, Y => n14);
   U63 : INVX1 port map( A => D_EDGE, Y => n13);
   U64 : NOR2X1 port map( A => n23, B => n53, Y => SHIFT_ENABLE);
   U65 : NAND2X1 port map( A => n22, B => n26, Y => n53);
   U66 : INVX1 port map( A => state_2_port, Y => n26);
   U67 : INVX1 port map( A => state_1_port, Y => n22);
   U68 : INVX1 port map( A => state_0_port, Y => n23);

end SYN_behavioral;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity U_RCU is

   port( D_CLK, rst_n, d_edge, eop, CRC_ERROR, STUFF_ERROR, shift_enable : in 
         std_logic;  rcv_data : in std_logic_vector (7 downto 0);  rcving, 
         w_enable, r_error, CRC_EN : out std_logic);

end U_RCU;

architecture SYN_behavioral of U_RCU is

   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_3_port, state_2_port, state_1_port, state_0_port, 
      nextstate_3_port, nextstate_2_port, nextstate_1_port, nextstate_0_port, 
      shift_ctr_3_port, shift_ctr_2_port, shift_ctr_1_port, shift_ctr_0_port, 
      N153, N154, N155, N156, N157, N159, n3, n4, n5, n6, n8, n9, n10, n12, 
      n106, n107, n108, n109, n1, n2, n7, n11, n13, n14, n15, n16, n17, n18, 
      n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33
      , n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, 
      n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62
      , n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, 
      n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91
      , n92, n93, n94, n95, n96, n97, n98 : std_logic;

begin
   
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n98, S => n12, Q => state_0_port);
   state_reg_3_inst : DFFSR port map( D => nextstate_3_port, CLK => D_CLK, R =>
                           n98, S => n10, Q => state_3_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n98, S => n9, Q => state_1_port);
   shift_ctr_reg_0_inst : DFFSR port map( D => n108, CLK => D_CLK, R => n97, S 
                           => n8, Q => shift_ctr_0_port);
   shift_ctr_reg_1_inst : DFFSR port map( D => n107, CLK => D_CLK, R => n97, S 
                           => n6, Q => shift_ctr_1_port);
   shift_ctr_reg_2_inst : DFFSR port map( D => n106, CLK => D_CLK, R => n97, S 
                           => n5, Q => shift_ctr_2_port);
   shift_ctr_reg_3_inst : DFFSR port map( D => n109, CLK => D_CLK, R => n97, S 
                           => n4, Q => shift_ctr_3_port);
   state_reg_2_inst : DFFSR port map( D => nextstate_2_port, CLK => D_CLK, R =>
                           n98, S => n3, Q => state_2_port);
   CRC_EN_reg : LATCH port map( CLK => n96, D => N159, Q => CRC_EN);
   rcving_reg : LATCH port map( CLK => N153, D => N154, Q => rcving);
   w_enable_reg : LATCH port map( CLK => N155, D => n95, Q => w_enable);
   r_error_reg : LATCH port map( CLK => N156, D => N157, Q => r_error);
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   n8 <= '1';
   n9 <= '1';
   n10 <= '1';
   n12 <= '1';
   U7 : OR2X1 port map( A => n1, B => n2, Y => nextstate_3_port);
   U11 : OAI21X1 port map( A => n7, B => n11, C => n13, Y => n2);
   U13 : MUX2X1 port map( B => n14, A => n15, S => d_edge, Y => n13);
   U14 : NOR2X1 port map( A => n16, B => n17, Y => n14);
   U15 : OAI21X1 port map( A => n18, B => n19, C => n20, Y => n1);
   U16 : OAI21X1 port map( A => n21, B => n19, C => n22, Y => n20);
   U17 : NAND3X1 port map( A => n23, B => n24, C => n25, Y => nextstate_2_port)
                           ;
   U18 : AOI21X1 port map( A => eop, B => n26, C => n27, Y => n25);
   U19 : OAI21X1 port map( A => n28, B => n29, C => n30, Y => n27);
   U20 : NAND2X1 port map( A => n31, B => n32, Y => n29);
   U21 : OAI22X1 port map( A => n33, B => n34, C => n35, D => n21, Y => n26);
   U22 : INVX1 port map( A => n36, Y => n24);
   U23 : AOI22X1 port map( A => n21, B => n37, C => n38, D => n11, Y => n23);
   U24 : INVX1 port map( A => n39, Y => n11);
   U25 : NAND3X1 port map( A => n40, B => n18, C => n41, Y => nextstate_1_port)
                           ;
   U26 : AOI21X1 port map( A => n21, B => n42, C => n43, Y => n41);
   U27 : OAI21X1 port map( A => n44, B => n28, C => n45, Y => n43);
   U28 : OAI21X1 port map( A => n46, B => n47, C => n19, Y => n45);
   U29 : INVX1 port map( A => eop, Y => n19);
   U30 : AOI21X1 port map( A => n48, B => n49, C => n31, Y => n44);
   U31 : INVX1 port map( A => CRC_ERROR, Y => n48);
   U32 : AOI21X1 port map( A => n33, B => n46, C => n95, Y => n18);
   U33 : INVX1 port map( A => n50, Y => n40);
   U34 : OAI22X1 port map( A => n7, B => n39, C => n51, D => d_edge, Y => n50);
   U35 : NAND3X1 port map( A => n52, B => n53, C => n54, Y => nextstate_0_port)
                           ;
   U36 : NOR2X1 port map( A => n55, B => n56, Y => n54);
   U37 : OAI21X1 port map( A => n32, B => n57, C => n58, Y => n56);
   U38 : OAI21X1 port map( A => n38, B => n47, C => eop, Y => n58);
   U39 : NAND2X1 port map( A => n59, B => n31, Y => n57);
   U40 : NAND3X1 port map( A => n60, B => rcv_data(0), C => n61, Y => n32);
   U41 : NOR2X1 port map( A => n62, B => n63, Y => n61);
   U42 : NOR2X1 port map( A => n64, B => n65, Y => n60);
   U43 : INVX1 port map( A => n66, Y => n65);
   U44 : XNOR2X1 port map( A => rcv_data(3), B => rcv_data(7), Y => n64);
   U45 : OR2X1 port map( A => n95, B => n46, Y => n55);
   U46 : NOR2X1 port map( A => n34, B => n21, Y => n46);
   U47 : INVX1 port map( A => n67, Y => n21);
   U48 : AOI22X1 port map( A => n68, B => d_edge, C => n67, D => n42, Y => n53)
                           ;
   U49 : NAND2X1 port map( A => shift_ctr_3_port, B => n33, Y => n67);
   U50 : NOR3X1 port map( A => shift_ctr_1_port, B => shift_ctr_2_port, C => 
                           shift_ctr_0_port, Y => n33);
   U51 : INVX1 port map( A => n17, Y => n68);
   U52 : AOI21X1 port map( A => n39, B => n38, C => n36, Y => n52);
   U53 : OAI21X1 port map( A => d_edge, B => n69, C => n70, Y => n36);
   U54 : INVX1 port map( A => n7, Y => n38);
   U55 : NAND2X1 port map( A => n31, B => n71, Y => n7);
   U56 : NOR2X1 port map( A => n72, B => n73, Y => n39);
   U57 : NAND3X1 port map( A => n66, B => n74, C => rcv_data(7), Y => n73);
   U58 : INVX1 port map( A => rcv_data(0), Y => n74);
   U59 : NOR2X1 port map( A => rcv_data(2), B => n75, Y => n66);
   U60 : OR2X1 port map( A => rcv_data(5), B => rcv_data(4), Y => n75);
   U61 : NAND3X1 port map( A => n76, B => n63, C => n62, Y => n72);
   U62 : INVX1 port map( A => rcv_data(1), Y => n62);
   U63 : INVX1 port map( A => rcv_data(6), Y => n63);
   U64 : INVX1 port map( A => rcv_data(3), Y => n76);
   U65 : XOR2X1 port map( A => shift_ctr_3_port, B => n77, Y => n109);
   U66 : NOR2X1 port map( A => n78, B => n79, Y => n77);
   U67 : INVX1 port map( A => shift_ctr_2_port, Y => n79);
   U68 : XNOR2X1 port map( A => shift_ctr_0_port, B => n80, Y => n108);
   U69 : XOR2X1 port map( A => shift_ctr_1_port, B => n81, Y => n107);
   U70 : XNOR2X1 port map( A => shift_ctr_2_port, B => n78, Y => n106);
   U71 : NAND2X1 port map( A => shift_ctr_1_port, B => n81, Y => n78);
   U72 : NOR2X1 port map( A => n82, B => n80, Y => n81);
   U73 : NAND3X1 port map( A => n97, B => n98, C => shift_enable, Y => n80);
   U74 : INVX1 port map( A => rst_n, Y => n98);
   U75 : AND2X1 port map( A => n49, B => n28, Y => n97);
   U76 : INVX1 port map( A => n59, Y => n28);
   U77 : INVX1 port map( A => shift_ctr_0_port, Y => n82);
   U78 : INVX1 port map( A => n83, Y => N159);
   U79 : OAI21X1 port map( A => n16, B => n17, C => n84, Y => N157);
   U80 : NOR2X1 port map( A => n15, B => n47, Y => n84);
   U81 : INVX1 port map( A => n30, Y => n47);
   U82 : INVX1 port map( A => n85, Y => n15);
   U83 : OR2X1 port map( A => n42, B => N155, Y => N156);
   U84 : NAND2X1 port map( A => n86, B => n70, Y => N155);
   U85 : NAND2X1 port map( A => n59, B => n49, Y => n70);
   U86 : NOR2X1 port map( A => n87, B => n16, Y => n59);
   U87 : INVX1 port map( A => state_3_port, Y => n16);
   U88 : NAND3X1 port map( A => n30, B => n83, C => n88, Y => N154);
   U89 : AOI21X1 port map( A => n31, B => state_1_port, C => n42, Y => n88);
   U90 : INVX1 port map( A => n35, Y => n42);
   U91 : OR2X1 port map( A => n31, B => n96, Y => N153);
   U92 : NAND2X1 port map( A => n35, B => n86, Y => n96);
   U93 : INVX1 port map( A => n89, Y => n86);
   U94 : NAND3X1 port map( A => n17, B => n83, C => n90, Y => n89);
   U95 : AND2X1 port map( A => n30, B => n69, Y => n90);
   U96 : AND2X1 port map( A => n85, B => n51, Y => n69);
   U97 : NAND3X1 port map( A => n71, B => state_0_port, C => state_2_port, Y =>
                           n51);
   U98 : NAND3X1 port map( A => n91, B => state_0_port, C => state_2_port, Y =>
                           n85);
   U99 : NAND3X1 port map( A => n71, B => n92, C => state_2_port, Y => n30);
   U100 : NOR2X1 port map( A => n37, B => n95, Y => n83);
   U101 : INVX1 port map( A => n93, Y => n95);
   U102 : NAND3X1 port map( A => n91, B => n92, C => state_2_port, Y => n93);
   U103 : INVX1 port map( A => n34, Y => n37);
   U104 : NAND2X1 port map( A => n71, B => n49, Y => n34);
   U105 : NOR2X1 port map( A => n87, B => state_3_port, Y => n71);
   U106 : NAND2X1 port map( A => n31, B => n87, Y => n17);
   U107 : AOI21X1 port map( A => n49, B => n91, C => n22, Y => n35);
   U108 : INVX1 port map( A => n94, Y => n22);
   U109 : NAND3X1 port map( A => n49, B => n87, C => state_3_port, Y => n94);
   U110 : INVX1 port map( A => state_1_port, Y => n87);
   U111 : NOR2X1 port map( A => state_3_port, B => state_1_port, Y => n91);
   U112 : NOR2X1 port map( A => n92, B => state_2_port, Y => n49);
   U113 : INVX1 port map( A => state_0_port, Y => n92);
   U114 : NOR2X1 port map( A => state_0_port, B => state_2_port, Y => n31);

end SYN_behavioral;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity U_FCU is

   port( D_CLK, RST, EOP, CRC_ERROR, R_ERROR : in std_logic;  W_ENABLE1, 
         R_ENABLE0 : out std_logic;  EMPTY0, FULL0, FULL1 : in std_logic);

end U_FCU;

architecture SYN_behavioral of U_FCU is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFPOSX1
      port( D, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_2_port, state_1_port, state_0_port, nextstate_2_port, 
      nextstate_1_port, nextstate_0_port, ctr_1_port, ctr_0_port, n3, n4, n6, 
      n40, W_ENABLE1_port, n1, n2, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15
      , n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, 
      n30, n31, n32, n33, n34, n35, n36, R_ENABLE0_port, n38 : std_logic;

begin
   W_ENABLE1 <= W_ENABLE1_port;
   R_ENABLE0 <= R_ENABLE0_port;
   
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n6, S => n38, Q => state_0_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n4, S => n38, Q => state_1_port);
   state_reg_2_inst : DFFSR port map( D => nextstate_2_port, CLK => D_CLK, R =>
                           n38, S => n3, Q => state_2_port);
   ctr_reg_1_inst : DFFPOSX1 port map( D => n40, CLK => D_CLK, Q => ctr_1_port)
                           ;
   ctr_reg_0_inst : DFFPOSX1 port map( D => n36, CLK => D_CLK, Q => ctr_0_port)
                           ;
   n3 <= '1';
   n4 <= '1';
   n6 <= '1';
   U5 : NAND3X1 port map( A => n1, B => n2, C => n5, Y => nextstate_2_port);
   U7 : AOI22X1 port map( A => W_ENABLE1_port, B => FULL1, C => EMPTY0, D => 
                           R_ENABLE0_port, Y => n5);
   U8 : NAND3X1 port map( A => ctr_0_port, B => n7, C => n8, Y => n2);
   U9 : NOR2X1 port map( A => CRC_ERROR, B => n9, Y => n8);
   U10 : NAND2X1 port map( A => n10, B => n11, Y => n9);
   U11 : NAND3X1 port map( A => n12, B => n13, C => state_2_port, Y => n1);
   U12 : INVX1 port map( A => n14, Y => n12);
   U13 : OAI21X1 port map( A => n15, B => n16, C => n17, Y => nextstate_1_port)
                           ;
   U14 : AOI21X1 port map( A => n18, B => n14, C => n19, Y => n17);
   U15 : INVX1 port map( A => n20, Y => n19);
   U16 : MUX2X1 port map( B => EOP, A => FULL1, S => n21, Y => n14);
   U17 : NOR2X1 port map( A => state_1_port, B => n22, Y => n18);
   U18 : OR2X1 port map( A => n21, B => EMPTY0, Y => n16);
   U19 : INVX1 port map( A => R_ENABLE0_port, Y => n15);
   U20 : OR2X1 port map( A => n23, B => n24, Y => nextstate_0_port);
   U21 : OAI21X1 port map( A => FULL1, B => n25, C => n20, Y => n24);
   U22 : NAND3X1 port map( A => n26, B => state_1_port, C => n27, Y => n20);
   U23 : NOR2X1 port map( A => n21, B => n28, Y => n27);
   U24 : NAND2X1 port map( A => n10, B => n22, Y => n28);
   U25 : INVX1 port map( A => R_ERROR, Y => n10);
   U26 : MUX2X1 port map( B => FULL0, A => n29, S => EOP, Y => n26);
   U27 : NOR2X1 port map( A => ctr_1_port, B => n30, Y => n29);
   U28 : MUX2X1 port map( B => n31, A => n32, S => n21, Y => n23);
   U29 : NAND2X1 port map( A => EMPTY0, B => n22, Y => n32);
   U30 : OAI21X1 port map( A => EMPTY0, B => state_2_port, C => n13, Y => n31);
   U31 : INVX1 port map( A => state_1_port, Y => n13);
   U32 : MUX2X1 port map( B => n30, A => n33, S => n34, Y => n36);
   U33 : INVX1 port map( A => ctr_0_port, Y => n30);
   U34 : NOR2X1 port map( A => state_1_port, B => state_2_port, Y => 
                           R_ENABLE0_port);
   U35 : INVX1 port map( A => RST, Y => n38);
   U36 : NOR2X1 port map( A => n34, B => n11, Y => n40);
   U37 : INVX1 port map( A => ctr_1_port, Y => n11);
   U38 : AOI21X1 port map( A => n7, B => ctr_1_port, C => RST, Y => n34);
   U39 : INVX1 port map( A => n33, Y => n7);
   U40 : NAND3X1 port map( A => state_1_port, B => state_0_port, C => n35, Y =>
                           n33);
   U41 : AND2X1 port map( A => n22, B => EOP, Y => n35);
   U42 : INVX1 port map( A => n25, Y => W_ENABLE1_port);
   U43 : NAND3X1 port map( A => n21, B => n22, C => state_1_port, Y => n25);
   U44 : INVX1 port map( A => state_2_port, Y => n22);
   U45 : INVX1 port map( A => state_0_port, Y => n21);

end SYN_behavioral;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity U_EOP_DETECT is

   port( D_PLUS, D_MINUS : in std_logic;  EOP : out std_logic);

end U_EOP_DETECT;

architecture SYN_dataflow of U_EOP_DETECT is

   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;

begin
   
   U1 : NOR2X1 port map( A => D_PLUS, B => D_MINUS, Y => EOP);

end SYN_dataflow;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

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
   
   signal current, previous, N0, n1, n2, n4, n3 : std_logic;

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
   U5 : INVX1 port map( A => rst_n, Y => n3);
   U7 : XOR2X1 port map( A => previous, B => current, Y => N0);

end SYN_behavioral;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

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
      prevbit, currentbit, N32, N34, N35, n1, n3, n2, n4, n5, n6, n7, n8, n9, 
      n10, n11 : std_logic;

begin
   
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n3, S => n11, Q => state_0_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n11, S => n1, Q => state_1_port);
   prevbit_reg : LATCH port map( CLK => N34, D => N35, Q => prevbit);
   currentbit_reg : LATCH port map( CLK => n10, D => d_plus, Q => currentbit);
   d_orig_reg : LATCH port map( CLK => n10, D => N32, Q => d_orig);
   n1 <= '1';
   n3 <= '1';
   U4 : NOR2X1 port map( A => n2, B => n4, Y => nextstate_1_port);
   U6 : NAND2X1 port map( A => shift_enable, B => n5, Y => n4);
   U7 : NAND2X1 port map( A => n6, B => n10, Y => n2);
   U8 : NOR2X1 port map( A => state_1_port, B => n5, Y => nextstate_0_port);
   U9 : INVX1 port map( A => eop, Y => n5);
   U10 : INVX1 port map( A => rst_n, Y => n11);
   U11 : MUX2X1 port map( B => state_1_port, A => n7, S => n6, Y => N35);
   U12 : NAND2X1 port map( A => d_plus, B => state_1_port, Y => n7);
   U13 : MUX2X1 port map( B => state_1_port, A => n8, S => n6, Y => N34);
   U14 : OR2X1 port map( A => n10, B => shift_enable, Y => n8);
   U15 : INVX1 port map( A => state_1_port, Y => n10);
   U16 : AOI21X1 port map( A => n9, B => n6, C => state_1_port, Y => N32);
   U17 : INVX1 port map( A => state_0_port, Y => n6);
   U18 : XOR2X1 port map( A => prevbit, B => currentbit, Y => n9);

end SYN_behavioral;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

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
      n13, n14, n15, n17, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75
      , n76, n77, n78, n79, n80, n16, n18, n19, n20, n21, n22, n23, n24, n25, 
      n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40
      , n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, 
      n55, n56, n57, n58, n59, n60 : std_logic;

begin
   
   present_val_reg_0_inst : DFFSR port map( D => n80, CLK => D_CLK, R => n17, S
                           => n60, Q => present_val_0_port);
   present_val_reg_1_inst : DFFSR port map( D => n79, CLK => D_CLK, R => n15, S
                           => n60, Q => present_val_1_port);
   present_val_reg_2_inst : DFFSR port map( D => n78, CLK => D_CLK, R => n14, S
                           => n60, Q => present_val_2_port);
   present_val_reg_3_inst : DFFSR port map( D => n77, CLK => D_CLK, R => n13, S
                           => n60, Q => present_val_3_port);
   present_val_reg_4_inst : DFFSR port map( D => n76, CLK => D_CLK, R => n12, S
                           => n60, Q => present_val_4_port);
   present_val_reg_5_inst : DFFSR port map( D => n75, CLK => D_CLK, R => n11, S
                           => n60, Q => present_val_5_port);
   present_val_reg_6_inst : DFFSR port map( D => n74, CLK => D_CLK, R => n10, S
                           => n60, Q => present_val_6_port);
   present_val_reg_7_inst : DFFSR port map( D => n73, CLK => D_CLK, R => n9, S 
                           => n60, Q => present_val_7_port);
   present_val_reg_8_inst : DFFSR port map( D => n72, CLK => D_CLK, R => n8, S 
                           => n60, Q => present_val_8_port);
   present_val_reg_9_inst : DFFSR port map( D => n71, CLK => D_CLK, R => n7, S 
                           => n60, Q => present_val_9_port);
   present_val_reg_10_inst : DFFSR port map( D => n70, CLK => D_CLK, R => n6, S
                           => n60, Q => present_val_10_port);
   present_val_reg_11_inst : DFFSR port map( D => n69, CLK => D_CLK, R => n5, S
                           => n60, Q => present_val_11_port);
   present_val_reg_12_inst : DFFSR port map( D => n68, CLK => D_CLK, R => n4, S
                           => n60, Q => present_val_12_port);
   present_val_reg_13_inst : DFFSR port map( D => n67, CLK => D_CLK, R => n3, S
                           => n60, Q => present_val_13_port);
   present_val_reg_14_inst : DFFSR port map( D => n66, CLK => D_CLK, R => n2, S
                           => n60, Q => present_val_14_port);
   present_val_reg_15_inst : DFFSR port map( D => n65, CLK => D_CLK, R => n1, S
                           => n60, Q => present_val_15_port);
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
   U18 : INVX2 port map( A => RST_N, Y => n60);
   U20 : NAND2X1 port map( A => CRC_EN, B => n16, Y => n80);
   U21 : INVX1 port map( A => n18, Y => n16);
   U22 : OAI21X1 port map( A => CRC_SHIFT, B => n19, C => n20, Y => n18);
   U23 : NAND2X1 port map( A => n21, B => CRC_EN, Y => n79);
   U24 : MUX2X1 port map( B => present_val_1_port, A => present_val_0_port, S 
                           => CRC_SHIFT, Y => n21);
   U25 : OR2X1 port map( A => n22, B => n23, Y => n78);
   U26 : OAI21X1 port map( A => present_val_1_port, B => n20, C => CRC_EN, Y =>
                           n23);
   U27 : MUX2X1 port map( B => n24, A => n25, S => CRC_SHIFT, Y => n22);
   U28 : NAND2X1 port map( A => present_val_1_port, B => n26, Y => n25);
   U29 : INVX1 port map( A => present_val_2_port, Y => n24);
   U30 : NAND2X1 port map( A => n27, B => CRC_EN, Y => n77);
   U31 : MUX2X1 port map( B => present_val_3_port, A => present_val_2_port, S 
                           => CRC_SHIFT, Y => n27);
   U32 : NAND2X1 port map( A => n28, B => CRC_EN, Y => n76);
   U33 : MUX2X1 port map( B => present_val_4_port, A => present_val_3_port, S 
                           => CRC_SHIFT, Y => n28);
   U34 : NAND2X1 port map( A => n29, B => CRC_EN, Y => n75);
   U35 : MUX2X1 port map( B => present_val_5_port, A => present_val_4_port, S 
                           => CRC_SHIFT, Y => n29);
   U36 : NAND2X1 port map( A => n30, B => CRC_EN, Y => n74);
   U37 : MUX2X1 port map( B => present_val_6_port, A => present_val_5_port, S 
                           => CRC_SHIFT, Y => n30);
   U38 : NAND2X1 port map( A => n31, B => CRC_EN, Y => n73);
   U39 : MUX2X1 port map( B => present_val_7_port, A => present_val_6_port, S 
                           => CRC_SHIFT, Y => n31);
   U40 : NAND2X1 port map( A => n32, B => CRC_EN, Y => n72);
   U41 : MUX2X1 port map( B => present_val_8_port, A => present_val_7_port, S 
                           => CRC_SHIFT, Y => n32);
   U42 : NAND2X1 port map( A => n33, B => CRC_EN, Y => n71);
   U43 : MUX2X1 port map( B => present_val_9_port, A => present_val_8_port, S 
                           => CRC_SHIFT, Y => n33);
   U44 : NAND2X1 port map( A => n34, B => CRC_EN, Y => n70);
   U45 : MUX2X1 port map( B => present_val_10_port, A => present_val_9_port, S 
                           => CRC_SHIFT, Y => n34);
   U46 : NAND2X1 port map( A => n35, B => CRC_EN, Y => n69);
   U47 : MUX2X1 port map( B => present_val_11_port, A => present_val_10_port, S
                           => CRC_SHIFT, Y => n35);
   U48 : NAND2X1 port map( A => n36, B => CRC_EN, Y => n68);
   U49 : MUX2X1 port map( B => present_val_12_port, A => present_val_11_port, S
                           => CRC_SHIFT, Y => n36);
   U50 : NAND2X1 port map( A => n37, B => CRC_EN, Y => n67);
   U51 : MUX2X1 port map( B => present_val_13_port, A => present_val_12_port, S
                           => CRC_SHIFT, Y => n37);
   U52 : NAND2X1 port map( A => n38, B => CRC_EN, Y => n66);
   U53 : MUX2X1 port map( B => present_val_14_port, A => present_val_13_port, S
                           => CRC_SHIFT, Y => n38);
   U54 : OR2X1 port map( A => n39, B => n40, Y => n65);
   U55 : OAI21X1 port map( A => present_val_14_port, B => n20, C => CRC_EN, Y 
                           => n40);
   U56 : NAND2X1 port map( A => CRC_SHIFT, B => n41, Y => n20);
   U57 : MUX2X1 port map( B => n42, A => n43, S => CRC_SHIFT, Y => n39);
   U58 : NAND2X1 port map( A => present_val_14_port, B => n26, Y => n43);
   U59 : INVX1 port map( A => n41, Y => n26);
   U60 : XOR2X1 port map( A => present_val_15_port, B => D_ORIG, Y => n41);
   U61 : NAND2X1 port map( A => n44, B => n45, Y => CRC_ERROR);
   U62 : NOR2X1 port map( A => n46, B => n47, Y => n45);
   U63 : NAND3X1 port map( A => n48, B => n49, C => n50, Y => n47);
   U64 : NOR2X1 port map( A => present_val_1_port, B => present_val_14_port, Y 
                           => n50);
   U65 : INVX1 port map( A => present_val_5_port, Y => n49);
   U66 : INVX1 port map( A => present_val_4_port, Y => n48);
   U67 : NAND3X1 port map( A => n51, B => n52, C => n53, Y => n46);
   U68 : NOR2X1 port map( A => present_val_9_port, B => present_val_8_port, Y 
                           => n53);
   U69 : INVX1 port map( A => present_val_7_port, Y => n52);
   U70 : INVX1 port map( A => present_val_6_port, Y => n51);
   U71 : NOR2X1 port map( A => n54, B => n55, Y => n44);
   U72 : NAND3X1 port map( A => present_val_3_port, B => present_val_2_port, C 
                           => n56, Y => n55);
   U73 : NOR2X1 port map( A => n42, B => n19, Y => n56);
   U74 : INVX1 port map( A => present_val_0_port, Y => n19);
   U75 : INVX1 port map( A => present_val_15_port, Y => n42);
   U76 : NAND3X1 port map( A => n57, B => n58, C => n59, Y => n54);
   U77 : NOR2X1 port map( A => present_val_13_port, B => present_val_12_port, Y
                           => n59);
   U78 : INVX1 port map( A => present_val_11_port, Y => n58);
   U79 : INVX1 port map( A => present_val_10_port, Y => n57);

end SYN_simple_shift_reg;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity U_CLKDIV is

   port( CLK, RST : in std_logic;  D_CLK : out std_logic);

end U_CLKDIV;

architecture SYN_clockdivider of U_CLKDIV is

   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
      generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
      port(
         clear, preset, enable, data_in, synch_clear, synch_preset, 
            synch_toggle, synch_enable, next_state, clocked_on : in std_logic;
         Q, QN : buffer std_logic
      );
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RST_port, ctr1_1_port, ctr1_0_port, N8,
      N9, ctr0_1_port, ctr0_0_port, N13, N14, n1, n3, n2, n4, n5, n6, n_1003, 
      n_1004 : std_logic;

begin
   RST_port <= RST;
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   ctr1_reg_0_inst : DFFSR port map( D => N8, CLK => CLK, R => n6, S => n3, Q 
                           => ctr1_0_port);
   ctr1_reg_1_inst : DFFSR port map( D => N9, CLK => CLK, R => n6, S => n1, Q 
                           => ctr1_1_port);
   n1 <= '1';
   n3 <= '1';
   ctr0_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => RST_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N13,
               clocked_on => n5, Q => ctr0_0_port, QN => n_1003);
   ctr0_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => RST_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N14,
               clocked_on => n5, Q => ctr0_1_port, QN => n_1004);
   U4 : INVX1 port map( A => CLK, Y => n5);
   U6 : INVX1 port map( A => RST_port, Y => n6);
   U7 : NOR2X1 port map( A => ctr1_1_port, B => n2, Y => N9);
   U8 : NOR2X1 port map( A => ctr1_1_port, B => ctr1_0_port, Y => N8);
   U9 : AOI22X1 port map( A => ctr0_1_port, B => n4, C => ctr1_1_port, D => n2,
                           Y => D_CLK);
   U10 : INVX1 port map( A => ctr1_0_port, Y => n2);
   U11 : NOR2X1 port map( A => ctr0_1_port, B => n4, Y => N14);
   U12 : INVX1 port map( A => ctr0_0_port, Y => n4);
   U13 : NOR2X1 port map( A => ctr0_1_port, B => ctr0_0_port, Y => N13);

end SYN_clockdivider;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

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
      n80, n81, n82, n83, n84, n85, n86, n88, n89, n1, n2, n3, n4, n5, n6, n7, 
      n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, 
      n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33 : std_logic;

begin
   W_ENABLE_OUT <= W_ENABLE_OUT_port;
   W_DATA <= ( W_DATA_7_port, W_DATA_6_port, W_DATA_5_port, W_DATA_4_port, 
      W_DATA_3_port, W_DATA_2_port, W_DATA_1_port, W_DATA_0_port );
   
   Byte0_reg_7_inst : DFFSR port map( D => n78, CLK => D_CLK, R => n33, S => 
                           n77, Q => Byte0_7_port);
   Byte0_reg_6_inst : DFFSR port map( D => n76, CLK => D_CLK, R => n33, S => 
                           n75, Q => Byte0_6_port);
   Byte0_reg_5_inst : DFFSR port map( D => n74, CLK => D_CLK, R => n33, S => 
                           n73, Q => Byte0_5_port);
   Byte0_reg_4_inst : DFFSR port map( D => n72, CLK => D_CLK, R => n33, S => 
                           n71, Q => Byte0_4_port);
   Byte0_reg_3_inst : DFFSR port map( D => n70, CLK => D_CLK, R => n33, S => 
                           n69, Q => Byte0_3_port);
   Byte0_reg_2_inst : DFFSR port map( D => n68, CLK => D_CLK, R => n33, S => 
                           n67, Q => Byte0_2_port);
   Byte0_reg_1_inst : DFFSR port map( D => n66, CLK => D_CLK, R => n33, S => 
                           n65, Q => Byte0_1_port);
   Byte0_reg_0_inst : DFFSR port map( D => n64, CLK => D_CLK, R => n33, S => 
                           n63, Q => Byte0_0_port);
   Byte1_reg_7_inst : DFFSR port map( D => n62, CLK => D_CLK, R => n33, S => 
                           n61, Q => Byte1_7_port);
   Byte1_reg_6_inst : DFFSR port map( D => n60, CLK => D_CLK, R => n33, S => 
                           n59, Q => Byte1_6_port);
   Byte1_reg_5_inst : DFFSR port map( D => n58, CLK => D_CLK, R => n33, S => 
                           n57, Q => Byte1_5_port);
   Byte1_reg_4_inst : DFFSR port map( D => n56, CLK => D_CLK, R => n33, S => 
                           n55, Q => Byte1_4_port);
   Byte1_reg_3_inst : DFFSR port map( D => n54, CLK => D_CLK, R => n33, S => 
                           n53, Q => Byte1_3_port);
   Byte1_reg_2_inst : DFFSR port map( D => n52, CLK => D_CLK, R => n33, S => 
                           n51, Q => Byte1_2_port);
   Byte1_reg_1_inst : DFFSR port map( D => n50, CLK => D_CLK, R => n33, S => 
                           n49, Q => Byte1_1_port);
   Byte1_reg_0_inst : DFFSR port map( D => n48, CLK => D_CLK, R => n33, S => 
                           n47, Q => Byte1_0_port);
   ctr_reg_0_inst : DFFSR port map( D => n89, CLK => D_CLK, R => n33, S => n46,
                           Q => ctr_0_port);
   ctr_reg_1_inst : DFFSR port map( D => n88, CLK => D_CLK, R => n33, S => n45,
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
   U3 : INVX2 port map( A => W_ENABLE, Y => n6);
   U4 : INVX2 port map( A => RST, Y => n33);
   U5 : MUX2X1 port map( B => n1, A => n2, S => ctr_0_port, Y => n89);
   U6 : NAND2X1 port map( A => n2, B => n3, Y => n1);
   U7 : MUX2X1 port map( B => n4, A => n5, S => n2, Y => n88);
   U8 : OAI21X1 port map( A => ctr_1_port, B => n6, C => n3, Y => n2);
   U9 : NAND2X1 port map( A => ctr_0_port, B => n3, Y => n5);
   U10 : INVX1 port map( A => EOP, Y => n3);
   U11 : INVX1 port map( A => ctr_1_port, Y => n4);
   U12 : INVX1 port map( A => n7, Y => n86);
   U13 : MUX2X1 port map( B => Byte1_0_port, A => W_DATA_0_port, S => n8, Y => 
                           n7);
   U14 : INVX1 port map( A => n9, Y => n85);
   U15 : MUX2X1 port map( B => Byte1_1_port, A => W_DATA_1_port, S => n8, Y => 
                           n9);
   U16 : INVX1 port map( A => n10, Y => n84);
   U17 : MUX2X1 port map( B => Byte1_2_port, A => W_DATA_2_port, S => n8, Y => 
                           n10);
   U18 : INVX1 port map( A => n11, Y => n83);
   U19 : MUX2X1 port map( B => Byte1_3_port, A => W_DATA_3_port, S => n8, Y => 
                           n11);
   U20 : INVX1 port map( A => n12, Y => n82);
   U21 : MUX2X1 port map( B => Byte1_4_port, A => W_DATA_4_port, S => n8, Y => 
                           n12);
   U22 : INVX1 port map( A => n13, Y => n81);
   U23 : MUX2X1 port map( B => Byte1_5_port, A => W_DATA_5_port, S => n8, Y => 
                           n13);
   U24 : INVX1 port map( A => n14, Y => n80);
   U25 : MUX2X1 port map( B => Byte1_6_port, A => W_DATA_6_port, S => n8, Y => 
                           n14);
   U26 : INVX1 port map( A => n15, Y => n79);
   U27 : MUX2X1 port map( B => Byte1_7_port, A => W_DATA_7_port, S => n8, Y => 
                           n15);
   U28 : INVX1 port map( A => n16, Y => n78);
   U29 : MUX2X1 port map( B => RCV_DATA(7), A => Byte0_7_port, S => n6, Y => 
                           n16);
   U30 : INVX1 port map( A => n17, Y => n76);
   U31 : MUX2X1 port map( B => RCV_DATA(6), A => Byte0_6_port, S => n6, Y => 
                           n17);
   U32 : INVX1 port map( A => n18, Y => n74);
   U33 : MUX2X1 port map( B => RCV_DATA(5), A => Byte0_5_port, S => n6, Y => 
                           n18);
   U34 : INVX1 port map( A => n19, Y => n72);
   U35 : MUX2X1 port map( B => RCV_DATA(4), A => Byte0_4_port, S => n6, Y => 
                           n19);
   U36 : INVX1 port map( A => n20, Y => n70);
   U37 : MUX2X1 port map( B => RCV_DATA(3), A => Byte0_3_port, S => n6, Y => 
                           n20);
   U38 : INVX1 port map( A => n21, Y => n68);
   U39 : MUX2X1 port map( B => RCV_DATA(2), A => Byte0_2_port, S => n6, Y => 
                           n21);
   U40 : INVX1 port map( A => n22, Y => n66);
   U41 : MUX2X1 port map( B => RCV_DATA(1), A => Byte0_1_port, S => n6, Y => 
                           n22);
   U42 : INVX1 port map( A => n23, Y => n64);
   U43 : MUX2X1 port map( B => RCV_DATA(0), A => Byte0_0_port, S => n6, Y => 
                           n23);
   U44 : INVX1 port map( A => n24, Y => n62);
   U45 : MUX2X1 port map( B => Byte0_7_port, A => Byte1_7_port, S => n6, Y => 
                           n24);
   U46 : INVX1 port map( A => n25, Y => n60);
   U47 : MUX2X1 port map( B => Byte0_6_port, A => Byte1_6_port, S => n6, Y => 
                           n25);
   U48 : INVX1 port map( A => n26, Y => n58);
   U49 : MUX2X1 port map( B => Byte0_5_port, A => Byte1_5_port, S => n6, Y => 
                           n26);
   U50 : INVX1 port map( A => n27, Y => n56);
   U51 : MUX2X1 port map( B => Byte0_4_port, A => Byte1_4_port, S => n6, Y => 
                           n27);
   U52 : INVX1 port map( A => n28, Y => n54);
   U53 : MUX2X1 port map( B => Byte0_3_port, A => Byte1_3_port, S => n6, Y => 
                           n28);
   U54 : INVX1 port map( A => n29, Y => n52);
   U55 : MUX2X1 port map( B => Byte0_2_port, A => Byte1_2_port, S => n6, Y => 
                           n29);
   U56 : INVX1 port map( A => n30, Y => n50);
   U57 : MUX2X1 port map( B => Byte0_1_port, A => Byte1_1_port, S => n6, Y => 
                           n30);
   U58 : INVX1 port map( A => n31, Y => n48);
   U59 : MUX2X1 port map( B => Byte0_0_port, A => Byte1_0_port, S => n6, Y => 
                           n31);
   U60 : OAI21X1 port map( A => ctr_0_port, B => n8, C => n32, Y => n44);
   U61 : NAND2X1 port map( A => W_ENABLE_OUT_port, B => RST, Y => n32);
   U62 : NAND3X1 port map( A => W_ENABLE, B => n33, C => ctr_1_port, Y => n8);

end SYN_buffer16;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity USB_SHIFT is

   port( D_CLK, RST, EOP, SHIFT_ENABLE, D_ORIG : in std_logic;  RCV_DATA : out 
         std_logic_vector (7 downto 0);  CRC_SHIFT, STUFF_ERROR : out std_logic
         );

end USB_SHIFT;

architecture SYN_behavioral of USB_SHIFT is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFPOSX1
      port( D, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   signal RCV_DATA_7_port, RCV_DATA_6_port, RCV_DATA_5_port, RCV_DATA_4_port, 
      RCV_DATA_3_port, RCV_DATA_2_port, RCV_DATA_1_port, RCV_DATA_0_port, 
      state_1_port, state_0_port, ctr_2_port, ctr_1_port, ctr_0_port, 
      nextstate_1_port, nextstate_0_port, N43, N44, N45, N52, n39, n40, n41, 
      n42, n43_port, n44_port, n45_port, n46, n47, n50, n52_port, n54, n55, n56
      , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31
      , n32, n33, n34, n35, n36 : std_logic;

begin
   RCV_DATA <= ( RCV_DATA_7_port, RCV_DATA_6_port, RCV_DATA_5_port, 
      RCV_DATA_4_port, RCV_DATA_3_port, RCV_DATA_2_port, RCV_DATA_1_port, 
      RCV_DATA_0_port );
   
   nextstate_reg_0_inst : LATCH port map( CLK => N43, D => N44, Q => 
                           nextstate_0_port);
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n52_port, S => n36, Q => state_0_port);
   nextstate_reg_1_inst : LATCH port map( CLK => N43, D => N45, Q => 
                           nextstate_1_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n50, S => n36, Q => state_1_port);
   current_reg_7_inst : DFFPOSX1 port map( D => n33, CLK => D_CLK, Q => 
                           RCV_DATA_7_port);
   current_reg_6_inst : DFFPOSX1 port map( D => n34, CLK => D_CLK, Q => 
                           RCV_DATA_6_port);
   current_reg_5_inst : DFFPOSX1 port map( D => n47, CLK => D_CLK, Q => 
                           RCV_DATA_5_port);
   current_reg_4_inst : DFFPOSX1 port map( D => n46, CLK => D_CLK, Q => 
                           RCV_DATA_4_port);
   current_reg_3_inst : DFFPOSX1 port map( D => n45_port, CLK => D_CLK, Q => 
                           RCV_DATA_3_port);
   current_reg_2_inst : DFFPOSX1 port map( D => n44_port, CLK => D_CLK, Q => 
                           RCV_DATA_2_port);
   current_reg_1_inst : DFFPOSX1 port map( D => n43_port, CLK => D_CLK, Q => 
                           RCV_DATA_1_port);
   current_reg_0_inst : DFFPOSX1 port map( D => n42, CLK => D_CLK, Q => 
                           RCV_DATA_0_port);
   ctr_reg_0_inst : DFFSR port map( D => n56, CLK => D_CLK, R => n36, S => n41,
                           Q => ctr_0_port);
   ctr_reg_1_inst : DFFSR port map( D => n55, CLK => D_CLK, R => n36, S => n40,
                           Q => ctr_1_port);
   ctr_reg_2_inst : DFFSR port map( D => n54, CLK => D_CLK, R => n36, S => n39,
                           Q => ctr_2_port);
   STUFF_ERROR_reg : LATCH port map( CLK => N52, D => n35, Q => STUFF_ERROR);
   n39 <= '1';
   n40 <= '1';
   n41 <= '1';
   n50 <= '1';
   n52_port <= '1';
   U3 : AND2X2 port map( A => SHIFT_ENABLE, B => n32, Y => CRC_SHIFT);
   U4 : MUX2X1 port map( B => n1, A => n2, S => n3, Y => n33);
   U5 : MUX2X1 port map( B => n2, A => n4, S => n3, Y => n34);
   U6 : INVX1 port map( A => RCV_DATA_7_port, Y => n2);
   U7 : INVX1 port map( A => n5, Y => n35);
   U8 : MUX2X1 port map( B => n6, A => n7, S => ctr_0_port, Y => n56);
   U9 : NAND2X1 port map( A => n8, B => n7, Y => n6);
   U10 : MUX2X1 port map( B => n9, A => n10, S => ctr_1_port, Y => n55);
   U11 : INVX1 port map( A => n11, Y => n10);
   U12 : NAND3X1 port map( A => ctr_0_port, B => n7, C => n8, Y => n9);
   U13 : MUX2X1 port map( B => n12, A => n13, S => ctr_2_port, Y => n54);
   U14 : AOI21X1 port map( A => n8, B => n14, C => n11, Y => n13);
   U15 : OAI21X1 port map( A => ctr_0_port, B => n15, C => n7, Y => n11);
   U16 : NAND2X1 port map( A => n16, B => n17, Y => n7);
   U17 : INVX1 port map( A => n15, Y => n8);
   U18 : NAND3X1 port map( A => ctr_0_port, B => SHIFT_ENABLE, C => n18, Y => 
                           n12);
   U19 : NOR2X1 port map( A => n15, B => n14, Y => n18);
   U20 : INVX1 port map( A => ctr_1_port, Y => n14);
   U21 : NAND2X1 port map( A => D_ORIG, B => n16, Y => n15);
   U22 : MUX2X1 port map( B => n4, A => n19, S => n3, Y => n47);
   U23 : INVX1 port map( A => RCV_DATA_6_port, Y => n4);
   U24 : MUX2X1 port map( B => n19, A => n20, S => n3, Y => n46);
   U25 : INVX1 port map( A => RCV_DATA_4_port, Y => n20);
   U26 : INVX1 port map( A => RCV_DATA_5_port, Y => n19);
   U27 : INVX1 port map( A => n21, Y => n45_port);
   U28 : MUX2X1 port map( B => RCV_DATA_4_port, A => RCV_DATA_3_port, S => n3, 
                           Y => n21);
   U29 : INVX1 port map( A => n22, Y => n44_port);
   U30 : MUX2X1 port map( B => RCV_DATA_3_port, A => RCV_DATA_2_port, S => n3, 
                           Y => n22);
   U31 : INVX1 port map( A => n23, Y => n43_port);
   U32 : MUX2X1 port map( B => RCV_DATA_2_port, A => RCV_DATA_1_port, S => n3, 
                           Y => n23);
   U33 : INVX1 port map( A => n24, Y => n42);
   U34 : MUX2X1 port map( B => RCV_DATA_1_port, A => RCV_DATA_0_port, S => n3, 
                           Y => n24);
   U35 : NAND3X1 port map( A => n16, B => n36, C => SHIFT_ENABLE, Y => n3);
   U36 : INVX1 port map( A => RST, Y => n36);
   U37 : INVX1 port map( A => N52, Y => n16);
   U38 : OAI21X1 port map( A => EOP, B => n5, C => n25, Y => N45);
   U39 : AOI21X1 port map( A => n26, B => state_0_port, C => n27, Y => n25);
   U40 : INVX1 port map( A => N43, Y => n27);
   U41 : NOR2X1 port map( A => state_1_port, B => n1, Y => n26);
   U42 : INVX1 port map( A => D_ORIG, Y => n1);
   U43 : NAND2X1 port map( A => state_1_port, B => n28, Y => n5);
   U44 : NOR2X1 port map( A => n29, B => n30, Y => N44);
   U45 : NAND2X1 port map( A => ctr_2_port, B => ctr_1_port, Y => n30);
   U46 : OR2X1 port map( A => N52, B => ctr_0_port, Y => n29);
   U47 : NAND3X1 port map( A => n17, B => n31, C => state_0_port, Y => N43);
   U48 : INVX1 port map( A => SHIFT_ENABLE, Y => n17);
   U49 : OAI21X1 port map( A => n31, B => n28, C => N52, Y => n32);
   U50 : NAND2X1 port map( A => n31, B => n28, Y => N52);
   U51 : INVX1 port map( A => state_0_port, Y => n28);
   U52 : INVX1 port map( A => state_1_port, Y => n31);

end SYN_behavioral;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity e_rndCount is

   port( CLK, RST, START : in std_logic;  IN_SELECT, FIESTELCLK : out std_logic
         ;  RND_CNT : out std_logic_vector (3 downto 0));

end e_rndCount;

architecture SYN_behav of e_rndCount is

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
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal RND_CNT_3_port, RND_CNT_2_port, RND_CNT_1_port, RND_CNT_0_port, n1, 
      n2, n3, n5, n16, n17, n18, n19, n4, n7, n9, n10, n11, n12, n13, n14, n15,
      n20, n21, n22, n23, n24, n25, n26 : std_logic;

begin
   RND_CNT <= ( RND_CNT_3_port, RND_CNT_2_port, RND_CNT_1_port, RND_CNT_0_port 
      );
   
   CUR_CNT_reg_0_inst : DFFSR port map( D => n19, CLK => CLK, R => n26, S => n5
                           , Q => RND_CNT_0_port);
   CUR_CNT_reg_1_inst : DFFSR port map( D => n18, CLK => CLK, R => n26, S => n3
                           , Q => RND_CNT_1_port);
   CUR_CNT_reg_2_inst : DFFSR port map( D => n17, CLK => CLK, R => n26, S => n2
                           , Q => RND_CNT_2_port);
   CUR_CNT_reg_3_inst : DFFSR port map( D => n16, CLK => CLK, R => n26, S => n1
                           , Q => RND_CNT_3_port);
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n5 <= '1';
   U6 : NOR2X1 port map( A => n24, B => START, Y => n4);
   U8 : INVX4 port map( A => n4, Y => IN_SELECT);
   U9 : NAND2X1 port map( A => CLK, B => n24, Y => n7);
   U10 : INVX4 port map( A => n7, Y => FIESTELCLK);
   U11 : NOR2X1 port map( A => RST, B => n9, Y => n26);
   U12 : INVX1 port map( A => START, Y => n9);
   U13 : XNOR2X1 port map( A => RND_CNT_0_port, B => n10, Y => n19);
   U14 : XNOR2X1 port map( A => n11, B => n12, Y => n18);
   U15 : XNOR2X1 port map( A => RND_CNT_2_port, B => n13, Y => n17);
   U16 : NAND2X1 port map( A => n12, B => RND_CNT_1_port, Y => n13);
   U17 : OAI21X1 port map( A => n14, B => n15, C => n20, Y => n16);
   U18 : INVX1 port map( A => RND_CNT_3_port, Y => n20);
   U19 : NAND2X1 port map( A => RND_CNT_2_port, B => RND_CNT_1_port, Y => n15);
   U20 : INVX1 port map( A => n12, Y => n14);
   U21 : NOR2X1 port map( A => n10, B => n21, Y => n12);
   U22 : OAI21X1 port map( A => n22, B => n23, C => START, Y => n10);
   U23 : NAND2X1 port map( A => RND_CNT_3_port, B => RND_CNT_2_port, Y => n23);
   U24 : NAND2X1 port map( A => RND_CNT_1_port, B => RND_CNT_0_port, Y => n22);
   U25 : NAND3X1 port map( A => n21, B => n11, C => n25, Y => n24);
   U26 : NOR2X1 port map( A => RND_CNT_3_port, B => RND_CNT_2_port, Y => n25);
   U27 : INVX1 port map( A => RND_CNT_1_port, Y => n11);
   U28 : INVX1 port map( A => RND_CNT_0_port, Y => n21);

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity e_rkeyGen is

   port( RNDNUM : in std_logic_vector (3 downto 0);  START_RST, IN_SELECT, CLK 
         : in std_logic;  RKEY : out std_logic_vector (47 downto 0));

end e_rkeyGen;

architecture SYN_behav of e_rkeyGen is

   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal RKEY_47_port, RKEY_46_port, RKEY_45_port, RKEY_44_port, RKEY_43_port,
      RKEY_42_port, RKEY_41_port, RKEY_40_port, RKEY_39_port, RKEY_38_port, 
      RKEY_37_port, RKEY_36_port, RKEY_35_port, RKEY_34_port, RKEY_33_port, 
      RKEY_32_port, RKEY_31_port, RKEY_30_port, RKEY_29_port, RKEY_28_port, 
      RKEY_27_port, RKEY_26_port, RKEY_25_port, RKEY_24_port, RKEY_23_port, 
      RKEY_22_port, RKEY_21_port, RKEY_20_port, RKEY_19_port, RKEY_18_port, 
      RKEY_17_port, RKEY_16_port, RKEY_15_port, RKEY_14_port, RKEY_13_port, 
      RKEY_12_port, RKEY_11_port, RKEY_10_port, RKEY_9_port, RKEY_8_port, 
      RKEY_7_port, RKEY_6_port, RKEY_5_port, RKEY_4_port, RKEY_3_port, 
      RKEY_2_port, RKEY_1_port, RKEY_0_port, ENC_LEFT_23_port, ENC_LEFT_12, 
      ENC_LEFT_7, ENC_LEFT_4, ENC_RIGHT_22_port, ENC_RIGHT_19, ENC_RIGHT_15, 
      ENC_RIGHT_6, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
      n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29
      , n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, 
      n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56 : 
      std_logic;

begin
   RKEY <= ( RKEY_47_port, RKEY_46_port, RKEY_45_port, RKEY_44_port, 
      RKEY_43_port, RKEY_42_port, RKEY_41_port, RKEY_40_port, RKEY_39_port, 
      RKEY_38_port, RKEY_37_port, RKEY_36_port, RKEY_35_port, RKEY_34_port, 
      RKEY_33_port, RKEY_32_port, RKEY_31_port, RKEY_30_port, RKEY_29_port, 
      RKEY_28_port, RKEY_27_port, RKEY_26_port, RKEY_25_port, RKEY_24_port, 
      RKEY_23_port, RKEY_22_port, RKEY_21_port, RKEY_20_port, RKEY_19_port, 
      RKEY_18_port, RKEY_17_port, RKEY_16_port, RKEY_15_port, RKEY_14_port, 
      RKEY_13_port, RKEY_12_port, RKEY_11_port, RKEY_10_port, RKEY_9_port, 
      RKEY_8_port, RKEY_7_port, RKEY_6_port, RKEY_5_port, RKEY_4_port, 
      RKEY_3_port, RKEY_2_port, RKEY_1_port, RKEY_0_port );
   
   ENC_RIGHT_reg_1_inst : DFFSR port map( D => RKEY_24_port, CLK => CLK, R => 
                           START_RST, S => n56, Q => RKEY_32_port);
   ENC_RIGHT_reg_3_inst : DFFSR port map( D => RKEY_32_port, CLK => CLK, R => 
                           START_RST, S => n55, Q => RKEY_38_port);
   ENC_RIGHT_reg_5_inst : DFFSR port map( D => RKEY_38_port, CLK => CLK, R => 
                           START_RST, S => n54, Q => RKEY_30_port);
   ENC_RIGHT_reg_7_inst : DFFSR port map( D => RKEY_30_port, CLK => CLK, R => 
                           n53, S => START_RST, Q => RKEY_36_port);
   ENC_RIGHT_reg_9_inst : DFFSR port map( D => RKEY_36_port, CLK => CLK, R => 
                           n52, S => START_RST, Q => RKEY_33_port);
   ENC_RIGHT_reg_11_inst : DFFSR port map( D => RKEY_33_port, CLK => CLK, R => 
                           START_RST, S => n51, Q => RKEY_47_port);
   ENC_RIGHT_reg_13_inst : DFFSR port map( D => RKEY_47_port, CLK => CLK, R => 
                           n50, S => START_RST, Q => RKEY_29_port);
   ENC_RIGHT_reg_15_inst : DFFSR port map( D => RKEY_29_port, CLK => CLK, R => 
                           n49, S => START_RST, Q => ENC_RIGHT_15);
   ENC_RIGHT_reg_17_inst : DFFSR port map( D => ENC_RIGHT_15, CLK => CLK, R => 
                           n48, S => START_RST, Q => RKEY_26_port);
   ENC_RIGHT_reg_19_inst : DFFSR port map( D => RKEY_26_port, CLK => CLK, R => 
                           n47, S => START_RST, Q => ENC_RIGHT_19);
   ENC_RIGHT_reg_21_inst : DFFSR port map( D => ENC_RIGHT_19, CLK => CLK, R => 
                           n46, S => START_RST, Q => RKEY_44_port);
   ENC_RIGHT_reg_23_inst : DFFSR port map( D => RKEY_44_port, CLK => CLK, R => 
                           n45, S => START_RST, Q => RKEY_31_port);
   ENC_RIGHT_reg_25_inst : DFFSR port map( D => RKEY_31_port, CLK => CLK, R => 
                           n44, S => START_RST, Q => RKEY_40_port);
   ENC_RIGHT_reg_27_inst : DFFSR port map( D => RKEY_40_port, CLK => CLK, R => 
                           n43, S => START_RST, Q => RKEY_24_port);
   ENC_RIGHT_reg_0_inst : DFFSR port map( D => RKEY_43_port, CLK => CLK, R => 
                           n42, S => START_RST, Q => RKEY_41_port);
   ENC_RIGHT_reg_2_inst : DFFSR port map( D => RKEY_41_port, CLK => CLK, R => 
                           START_RST, S => n41, Q => RKEY_42_port);
   ENC_RIGHT_reg_4_inst : DFFSR port map( D => RKEY_42_port, CLK => CLK, R => 
                           START_RST, S => n40, Q => RKEY_28_port);
   ENC_RIGHT_reg_6_inst : DFFSR port map( D => RKEY_28_port, CLK => CLK, R => 
                           START_RST, S => n39, Q => ENC_RIGHT_6);
   ENC_RIGHT_reg_8_inst : DFFSR port map( D => ENC_RIGHT_6, CLK => CLK, R => 
                           START_RST, S => n38, Q => RKEY_45_port);
   ENC_RIGHT_reg_10_inst : DFFSR port map( D => RKEY_45_port, CLK => CLK, R => 
                           START_RST, S => n37, Q => RKEY_25_port);
   ENC_RIGHT_reg_12_inst : DFFSR port map( D => RKEY_25_port, CLK => CLK, R => 
                           n36, S => START_RST, Q => RKEY_39_port);
   ENC_RIGHT_reg_14_inst : DFFSR port map( D => RKEY_39_port, CLK => CLK, R => 
                           n35, S => START_RST, Q => RKEY_46_port);
   ENC_RIGHT_reg_16_inst : DFFSR port map( D => RKEY_46_port, CLK => CLK, R => 
                           n34, S => START_RST, Q => RKEY_34_port);
   ENC_RIGHT_reg_18_inst : DFFSR port map( D => RKEY_34_port, CLK => CLK, R => 
                           n33, S => START_RST, Q => RKEY_37_port);
   ENC_RIGHT_reg_20_inst : DFFSR port map( D => RKEY_37_port, CLK => CLK, R => 
                           n32, S => START_RST, Q => RKEY_35_port);
   ENC_RIGHT_reg_22_inst : DFFSR port map( D => RKEY_35_port, CLK => CLK, R => 
                           n31, S => START_RST, Q => ENC_RIGHT_22_port);
   ENC_RIGHT_reg_24_inst : DFFSR port map( D => ENC_RIGHT_22_port, CLK => CLK, 
                           R => n30, S => START_RST, Q => RKEY_27_port);
   ENC_RIGHT_reg_26_inst : DFFSR port map( D => RKEY_27_port, CLK => CLK, R => 
                           START_RST, S => n29, Q => RKEY_43_port);
   ENC_LEFT_reg_1_inst : DFFSR port map( D => RKEY_17_port, CLK => CLK, R => 
                           START_RST, S => n28, Q => RKEY_0_port);
   ENC_LEFT_reg_3_inst : DFFSR port map( D => RKEY_0_port, CLK => CLK, R => n27
                           , S => START_RST, Q => RKEY_7_port);
   ENC_LEFT_reg_5_inst : DFFSR port map( D => RKEY_7_port, CLK => CLK, R => 
                           START_RST, S => n26, Q => RKEY_2_port);
   ENC_LEFT_reg_7_inst : DFFSR port map( D => RKEY_2_port, CLK => CLK, R => 
                           START_RST, S => n25, Q => ENC_LEFT_7);
   ENC_LEFT_reg_9_inst : DFFSR port map( D => ENC_LEFT_7, CLK => CLK, R => 
                           START_RST, S => n24, Q => RKEY_16_port);
   ENC_LEFT_reg_11_inst : DFFSR port map( D => RKEY_16_port, CLK => CLK, R => 
                           START_RST, S => n23, Q => RKEY_4_port);
   ENC_LEFT_reg_13_inst : DFFSR port map( D => RKEY_4_port, CLK => CLK, R => 
                           START_RST, S => n22, Q => RKEY_11_port);
   ENC_LEFT_reg_15_inst : DFFSR port map( D => RKEY_11_port, CLK => CLK, R => 
                           n21, S => START_RST, Q => RKEY_5_port);
   ENC_LEFT_reg_17_inst : DFFSR port map( D => RKEY_5_port, CLK => CLK, R => 
                           n20, S => START_RST, Q => RKEY_12_port);
   ENC_LEFT_reg_19_inst : DFFSR port map( D => RKEY_12_port, CLK => CLK, R => 
                           START_RST, S => n19, Q => RKEY_3_port);
   ENC_LEFT_reg_21_inst : DFFSR port map( D => RKEY_3_port, CLK => CLK, R => 
                           n18, S => START_RST, Q => RKEY_22_port);
   ENC_LEFT_reg_23_inst : DFFSR port map( D => RKEY_22_port, CLK => CLK, R => 
                           START_RST, S => n17, Q => ENC_LEFT_23_port);
   ENC_LEFT_reg_25_inst : DFFSR port map( D => ENC_LEFT_23_port, CLK => CLK, R 
                           => n16, S => START_RST, Q => RKEY_8_port);
   ENC_LEFT_reg_27_inst : DFFSR port map( D => RKEY_8_port, CLK => CLK, R => 
                           n15, S => START_RST, Q => RKEY_17_port);
   ENC_LEFT_reg_0_inst : DFFSR port map( D => RKEY_1_port, CLK => CLK, R => 
                           START_RST, S => n14, Q => RKEY_21_port);
   ENC_LEFT_reg_2_inst : DFFSR port map( D => RKEY_21_port, CLK => CLK, R => 
                           n13, S => START_RST, Q => RKEY_13_port);
   ENC_LEFT_reg_4_inst : DFFSR port map( D => RKEY_13_port, CLK => CLK, R => 
                           n12, S => START_RST, Q => ENC_LEFT_4);
   ENC_LEFT_reg_6_inst : DFFSR port map( D => ENC_LEFT_4, CLK => CLK, R => n11,
                           S => START_RST, Q => RKEY_20_port);
   ENC_LEFT_reg_8_inst : DFFSR port map( D => RKEY_20_port, CLK => CLK, R => 
                           START_RST, S => n10, Q => RKEY_9_port);
   ENC_LEFT_reg_10_inst : DFFSR port map( D => RKEY_9_port, CLK => CLK, R => n9
                           , S => START_RST, Q => RKEY_23_port);
   ENC_LEFT_reg_12_inst : DFFSR port map( D => RKEY_23_port, CLK => CLK, R => 
                           START_RST, S => n8, Q => ENC_LEFT_12);
   ENC_LEFT_reg_14_inst : DFFSR port map( D => ENC_LEFT_12, CLK => CLK, R => 
                           START_RST, S => n7, Q => RKEY_14_port);
   ENC_LEFT_reg_16_inst : DFFSR port map( D => RKEY_14_port, CLK => CLK, R => 
                           n6, S => START_RST, Q => RKEY_19_port);
   ENC_LEFT_reg_18_inst : DFFSR port map( D => RKEY_19_port, CLK => CLK, R => 
                           START_RST, S => n5, Q => RKEY_10_port);
   ENC_LEFT_reg_20_inst : DFFSR port map( D => RKEY_10_port, CLK => CLK, R => 
                           n4, S => START_RST, Q => RKEY_15_port);
   ENC_LEFT_reg_22_inst : DFFSR port map( D => RKEY_15_port, CLK => CLK, R => 
                           n3, S => START_RST, Q => RKEY_6_port);
   ENC_LEFT_reg_24_inst : DFFSR port map( D => RKEY_6_port, CLK => CLK, R => n2
                           , S => START_RST, Q => RKEY_18_port);
   ENC_LEFT_reg_26_inst : DFFSR port map( D => RKEY_18_port, CLK => CLK, R => 
                           n1, S => START_RST, Q => RKEY_1_port);
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
   n16 <= '1';
   n17 <= '1';
   n18 <= '1';
   n19 <= '1';
   n20 <= '1';
   n21 <= '1';
   n22 <= '1';
   n23 <= '1';
   n24 <= '1';
   n25 <= '1';
   n26 <= '1';
   n27 <= '1';
   n28 <= '1';
   n29 <= '1';
   n30 <= '1';
   n31 <= '1';
   n32 <= '1';
   n33 <= '1';
   n34 <= '1';
   n35 <= '1';
   n36 <= '1';
   n37 <= '1';
   n38 <= '1';
   n39 <= '1';
   n40 <= '1';
   n41 <= '1';
   n42 <= '1';
   n43 <= '1';
   n44 <= '1';
   n45 <= '1';
   n46 <= '1';
   n47 <= '1';
   n48 <= '1';
   n49 <= '1';
   n50 <= '1';
   n51 <= '1';
   n52 <= '1';
   n53 <= '1';
   n54 <= '1';
   n55 <= '1';
   n56 <= '1';

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity e_fiestel is

   port( FIESTELCLK, START : in std_logic;  ENC_LEFT, ENC_RIGHT : in 
         std_logic_vector (31 downto 0);  RKEY : in std_logic_vector (47 downto
         0);  IN_SELECT : in std_logic;  OUTDATA : out std_logic_vector (63 
         downto 0));

end e_fiestel;

architecture SYN_behav of e_fiestel is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
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
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal CUR_ENC_LEFT_31_port, CUR_ENC_LEFT_30_port, CUR_ENC_LEFT_29_port, 
      CUR_ENC_LEFT_28_port, CUR_ENC_LEFT_27_port, CUR_ENC_LEFT_26_port, 
      CUR_ENC_LEFT_25_port, CUR_ENC_LEFT_24_port, CUR_ENC_LEFT_23_port, 
      CUR_ENC_LEFT_22_port, CUR_ENC_LEFT_21_port, CUR_ENC_LEFT_20_port, 
      CUR_ENC_LEFT_19_port, CUR_ENC_LEFT_18_port, CUR_ENC_LEFT_17_port, 
      CUR_ENC_LEFT_16_port, CUR_ENC_LEFT_15_port, CUR_ENC_LEFT_14_port, 
      CUR_ENC_LEFT_13_port, CUR_ENC_LEFT_12_port, CUR_ENC_LEFT_11_port, 
      CUR_ENC_LEFT_10_port, CUR_ENC_LEFT_9_port, CUR_ENC_LEFT_8_port, 
      CUR_ENC_LEFT_7_port, CUR_ENC_LEFT_6_port, CUR_ENC_LEFT_5_port, 
      CUR_ENC_LEFT_4_port, CUR_ENC_LEFT_3_port, CUR_ENC_LEFT_2_port, 
      CUR_ENC_LEFT_1_port, CUR_ENC_LEFT_0_port, CUR_ENC_RIGHT_31_port, 
      CUR_ENC_RIGHT_30_port, CUR_ENC_RIGHT_29_port, CUR_ENC_RIGHT_28_port, 
      CUR_ENC_RIGHT_27_port, CUR_ENC_RIGHT_26_port, CUR_ENC_RIGHT_25_port, 
      CUR_ENC_RIGHT_24_port, CUR_ENC_RIGHT_23_port, CUR_ENC_RIGHT_22_port, 
      CUR_ENC_RIGHT_21_port, CUR_ENC_RIGHT_20_port, CUR_ENC_RIGHT_19_port, 
      CUR_ENC_RIGHT_18_port, CUR_ENC_RIGHT_17_port, CUR_ENC_RIGHT_16_port, 
      CUR_ENC_RIGHT_15_port, CUR_ENC_RIGHT_14_port, CUR_ENC_RIGHT_13_port, 
      CUR_ENC_RIGHT_12_port, CUR_ENC_RIGHT_11_port, CUR_ENC_RIGHT_10_port, 
      CUR_ENC_RIGHT_9_port, CUR_ENC_RIGHT_8_port, CUR_ENC_RIGHT_7_port, 
      CUR_ENC_RIGHT_6_port, CUR_ENC_RIGHT_5_port, CUR_ENC_RIGHT_4_port, 
      CUR_ENC_RIGHT_3_port, CUR_ENC_RIGHT_2_port, CUR_ENC_RIGHT_1_port, 
      CUR_ENC_RIGHT_0_port, NXT_ENC_RIGHT1_31_port, NXT_ENC_RIGHT1_30_port, 
      NXT_ENC_RIGHT1_29_port, NXT_ENC_RIGHT1_28_port, NXT_ENC_RIGHT1_27_port, 
      NXT_ENC_RIGHT1_26_port, NXT_ENC_RIGHT1_25_port, NXT_ENC_RIGHT1_24_port, 
      NXT_ENC_RIGHT1_23_port, NXT_ENC_RIGHT1_22_port, NXT_ENC_RIGHT1_21_port, 
      NXT_ENC_RIGHT1_20_port, NXT_ENC_RIGHT1_19_port, NXT_ENC_RIGHT1_18_port, 
      NXT_ENC_RIGHT1_17_port, NXT_ENC_RIGHT1_16_port, NXT_ENC_RIGHT1_15_port, 
      NXT_ENC_RIGHT1_14_port, NXT_ENC_RIGHT1_13_port, NXT_ENC_RIGHT1_12_port, 
      NXT_ENC_RIGHT1_11_port, NXT_ENC_RIGHT1_10_port, NXT_ENC_RIGHT1_9_port, 
      NXT_ENC_RIGHT1_8_port, NXT_ENC_RIGHT1_7_port, NXT_ENC_RIGHT1_6_port, 
      NXT_ENC_RIGHT1_5_port, NXT_ENC_RIGHT1_4_port, NXT_ENC_RIGHT1_3_port, 
      NXT_ENC_RIGHT1_2_port, NXT_ENC_RIGHT1_1_port, NXT_ENC_RIGHT1_0_port, n1, 
      n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, 
      n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32
      , n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, 
      n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61
      , n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, 
      n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90
      , n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, 
      n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, 
      n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, 
      n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, 
      n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, 
      n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, 
      n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, 
      n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, 
      n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, 
      n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, 
      n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, 
      n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, 
      n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, 
      n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, 
      n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, 
      n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, 
      n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, 
      n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, 
      n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, 
      n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, 
      n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, 
      n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, 
      n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, 
      n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, 
      n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, 
      n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, 
      n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, 
      n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, 
      n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, 
      n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, 
      n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, 
      n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, 
      n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, 
      n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, 
      n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, 
      n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, 
      n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, 
      n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, 
      n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, 
      n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, 
      n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, 
      n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, 
      n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, 
      n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, 
      n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, 
      n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, 
      n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, 
      n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, 
      n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, 
      n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, 
      n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, 
      n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, 
      n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, 
      n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, 
      n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, 
      n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, 
      n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775, 
      n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, 
      n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799, 
      n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810, n811, 
      n812, n813, n814, n815, n816, n817, n818, n819, n820, n821, n822, n823, 
      n824, n825, n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, 
      n836, n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, 
      n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, 
      n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, 
      n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882, n883, 
      n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n894, n895, 
      n896, n897, n898, n899, n900, n901, n902, n903, n904, n905, n906, n907, 
      n908, n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919, 
      n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930, n931, 
      n932, n933, n934, n935, n936, n937, n938, n939, n940, n941, n942, n943, 
      n944, n945, n946, n947, n948, n949, n950, n951, n952, n953, n954, n955, 
      n956, n957, n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, 
      n968, n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, 
      n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, 
      n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, 
      n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, 
      n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, 
      n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, 
      n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, 
      n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, 
      n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, 
      n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, 
      n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, 
      n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090 : std_logic;

begin
   
   CUR_ENC_LEFT_reg_0_inst : DFFSR port map( D => CUR_ENC_RIGHT_0_port, CLK => 
                           FIESTELCLK, R => n1090, S => n1089, Q => 
                           CUR_ENC_LEFT_0_port);
   CUR_ENC_RIGHT_reg_0_inst : DFFSR port map( D => NXT_ENC_RIGHT1_0_port, CLK 
                           => FIESTELCLK, R => n1088, S => n1087, Q => 
                           CUR_ENC_RIGHT_0_port);
   CUR_ENC_RIGHT_reg_15_inst : DFFSR port map( D => NXT_ENC_RIGHT1_15_port, CLK
                           => FIESTELCLK, R => n1082, S => n1081, Q => 
                           CUR_ENC_RIGHT_15_port);
   CUR_ENC_LEFT_reg_15_inst : DFFSR port map( D => CUR_ENC_RIGHT_15_port, CLK 
                           => FIESTELCLK, R => n1080, S => n1079, Q => 
                           CUR_ENC_LEFT_15_port);
   CUR_ENC_RIGHT_reg_29_inst : DFFSR port map( D => NXT_ENC_RIGHT1_29_port, CLK
                           => FIESTELCLK, R => n966, S => n965, Q => 
                           CUR_ENC_RIGHT_29_port);
   CUR_ENC_LEFT_reg_29_inst : DFFSR port map( D => CUR_ENC_RIGHT_29_port, CLK 
                           => FIESTELCLK, R => n964, S => n963, Q => 
                           CUR_ENC_LEFT_29_port);
   CUR_ENC_RIGHT_reg_9_inst : DFFSR port map( D => NXT_ENC_RIGHT1_9_port, CLK 
                           => FIESTELCLK, R => n1078, S => n1077, Q => 
                           CUR_ENC_RIGHT_9_port);
   CUR_ENC_LEFT_reg_9_inst : DFFSR port map( D => CUR_ENC_RIGHT_9_port, CLK => 
                           FIESTELCLK, R => n1076, S => n1075, Q => 
                           CUR_ENC_LEFT_9_port);
   CUR_ENC_RIGHT_reg_28_inst : DFFSR port map( D => NXT_ENC_RIGHT1_28_port, CLK
                           => FIESTELCLK, R => n1042, S => n1041, Q => 
                           CUR_ENC_RIGHT_28_port);
   CUR_ENC_LEFT_reg_28_inst : DFFSR port map( D => CUR_ENC_RIGHT_28_port, CLK 
                           => FIESTELCLK, R => n1040, S => n1039, Q => 
                           CUR_ENC_LEFT_28_port);
   CUR_ENC_RIGHT_reg_23_inst : DFFSR port map( D => NXT_ENC_RIGHT1_23_port, CLK
                           => FIESTELCLK, R => n1086, S => n1085, Q => 
                           CUR_ENC_RIGHT_23_port);
   CUR_ENC_LEFT_reg_23_inst : DFFSR port map( D => CUR_ENC_RIGHT_23_port, CLK 
                           => FIESTELCLK, R => n1084, S => n1083, Q => 
                           CUR_ENC_LEFT_23_port);
   CUR_ENC_RIGHT_reg_2_inst : DFFSR port map( D => NXT_ENC_RIGHT1_2_port, CLK 
                           => FIESTELCLK, R => n1022, S => n1021, Q => 
                           CUR_ENC_RIGHT_2_port);
   CUR_ENC_LEFT_reg_2_inst : DFFSR port map( D => CUR_ENC_RIGHT_2_port, CLK => 
                           FIESTELCLK, R => n1020, S => n1019, Q => 
                           CUR_ENC_LEFT_2_port);
   CUR_ENC_RIGHT_reg_17_inst : DFFSR port map( D => NXT_ENC_RIGHT1_17_port, CLK
                           => FIESTELCLK, R => n1062, S => n1061, Q => 
                           CUR_ENC_RIGHT_17_port);
   CUR_ENC_LEFT_reg_17_inst : DFFSR port map( D => CUR_ENC_RIGHT_17_port, CLK 
                           => FIESTELCLK, R => n1060, S => n1059, Q => 
                           CUR_ENC_LEFT_17_port);
   CUR_ENC_RIGHT_reg_6_inst : DFFSR port map( D => NXT_ENC_RIGHT1_6_port, CLK 
                           => FIESTELCLK, R => n1002, S => n1001, Q => 
                           CUR_ENC_RIGHT_6_port);
   CUR_ENC_LEFT_reg_6_inst : DFFSR port map( D => CUR_ENC_RIGHT_6_port, CLK => 
                           FIESTELCLK, R => n1000, S => n999, Q => 
                           CUR_ENC_LEFT_6_port);
   CUR_ENC_RIGHT_reg_25_inst : DFFSR port map( D => NXT_ENC_RIGHT1_25_port, CLK
                           => FIESTELCLK, R => n982, S => n981, Q => 
                           CUR_ENC_RIGHT_25_port);
   CUR_ENC_LEFT_reg_25_inst : DFFSR port map( D => CUR_ENC_RIGHT_25_port, CLK 
                           => FIESTELCLK, R => n980, S => n979, Q => 
                           CUR_ENC_LEFT_25_port);
   CUR_ENC_RIGHT_reg_4_inst : DFFSR port map( D => NXT_ENC_RIGHT1_4_port, CLK 
                           => FIESTELCLK, R => n1010, S => n1009, Q => 
                           CUR_ENC_RIGHT_4_port);
   CUR_ENC_LEFT_reg_4_inst : DFFSR port map( D => CUR_ENC_RIGHT_4_port, CLK => 
                           FIESTELCLK, R => n1008, S => n1007, Q => 
                           CUR_ENC_LEFT_4_port);
   CUR_ENC_RIGHT_reg_11_inst : DFFSR port map( D => NXT_ENC_RIGHT1_11_port, CLK
                           => FIESTELCLK, R => n1058, S => n1057, Q => 
                           CUR_ENC_RIGHT_11_port);
   CUR_ENC_LEFT_reg_11_inst : DFFSR port map( D => CUR_ENC_RIGHT_11_port, CLK 
                           => FIESTELCLK, R => n1056, S => n1055, Q => 
                           CUR_ENC_LEFT_11_port);
   CUR_ENC_RIGHT_reg_18_inst : DFFSR port map( D => NXT_ENC_RIGHT1_18_port, CLK
                           => FIESTELCLK, R => n1050, S => n1049, Q => 
                           CUR_ENC_RIGHT_18_port);
   CUR_ENC_LEFT_reg_18_inst : DFFSR port map( D => CUR_ENC_RIGHT_18_port, CLK 
                           => FIESTELCLK, R => n1048, S => n1047, Q => 
                           CUR_ENC_LEFT_18_port);
   CUR_ENC_RIGHT_reg_31_inst : DFFSR port map( D => NXT_ENC_RIGHT1_31_port, CLK
                           => FIESTELCLK, R => n990, S => n989, Q => 
                           CUR_ENC_RIGHT_31_port);
   CUR_ENC_LEFT_reg_31_inst : DFFSR port map( D => CUR_ENC_RIGHT_31_port, CLK 
                           => FIESTELCLK, R => n988, S => n987, Q => 
                           CUR_ENC_LEFT_31_port);
   CUR_ENC_RIGHT_reg_1_inst : DFFSR port map( D => NXT_ENC_RIGHT1_1_port, CLK 
                           => FIESTELCLK, R => n1074, S => n1073, Q => 
                           CUR_ENC_RIGHT_1_port);
   CUR_ENC_LEFT_reg_1_inst : DFFSR port map( D => CUR_ENC_RIGHT_1_port, CLK => 
                           FIESTELCLK, R => n1072, S => n1071, Q => 
                           CUR_ENC_LEFT_1_port);
   CUR_ENC_RIGHT_reg_27_inst : DFFSR port map( D => NXT_ENC_RIGHT1_27_port, CLK
                           => FIESTELCLK, R => n1070, S => n1069, Q => 
                           CUR_ENC_RIGHT_27_port);
   CUR_ENC_LEFT_reg_27_inst : DFFSR port map( D => CUR_ENC_RIGHT_27_port, CLK 
                           => FIESTELCLK, R => n1068, S => n1067, Q => 
                           CUR_ENC_LEFT_27_port);
   CUR_ENC_RIGHT_reg_19_inst : DFFSR port map( D => NXT_ENC_RIGHT1_19_port, CLK
                           => FIESTELCLK, R => n1014, S => n1013, Q => 
                           CUR_ENC_RIGHT_19_port);
   CUR_ENC_LEFT_reg_19_inst : DFFSR port map( D => CUR_ENC_RIGHT_19_port, CLK 
                           => FIESTELCLK, R => n1012, S => n1011, Q => 
                           CUR_ENC_LEFT_19_port);
   CUR_ENC_RIGHT_reg_16_inst : DFFSR port map( D => NXT_ENC_RIGHT1_16_port, CLK
                           => FIESTELCLK, R => n1026, S => n1025, Q => 
                           CUR_ENC_RIGHT_16_port);
   CUR_ENC_LEFT_reg_16_inst : DFFSR port map( D => CUR_ENC_RIGHT_16_port, CLK 
                           => FIESTELCLK, R => n1024, S => n1023, Q => 
                           CUR_ENC_LEFT_16_port);
   CUR_ENC_RIGHT_reg_24_inst : DFFSR port map( D => NXT_ENC_RIGHT1_24_port, CLK
                           => FIESTELCLK, R => n1054, S => n1053, Q => 
                           CUR_ENC_RIGHT_24_port);
   CUR_ENC_LEFT_reg_24_inst : DFFSR port map( D => CUR_ENC_RIGHT_24_port, CLK 
                           => FIESTELCLK, R => n1052, S => n1051, Q => 
                           CUR_ENC_LEFT_24_port);
   CUR_ENC_RIGHT_reg_26_inst : DFFSR port map( D => NXT_ENC_RIGHT1_26_port, CLK
                           => FIESTELCLK, R => n1018, S => n1017, Q => 
                           CUR_ENC_RIGHT_26_port);
   CUR_ENC_LEFT_reg_26_inst : DFFSR port map( D => CUR_ENC_RIGHT_26_port, CLK 
                           => FIESTELCLK, R => n1016, S => n1015, Q => 
                           CUR_ENC_LEFT_26_port);
   CUR_ENC_RIGHT_reg_14_inst : DFFSR port map( D => NXT_ENC_RIGHT1_14_port, CLK
                           => FIESTELCLK, R => n974, S => n973, Q => 
                           CUR_ENC_RIGHT_14_port);
   CUR_ENC_LEFT_reg_14_inst : DFFSR port map( D => CUR_ENC_RIGHT_14_port, CLK 
                           => FIESTELCLK, R => n972, S => n971, Q => 
                           CUR_ENC_LEFT_14_port);
   CUR_ENC_RIGHT_reg_7_inst : DFFSR port map( D => NXT_ENC_RIGHT1_7_port, CLK 
                           => FIESTELCLK, R => n1046, S => n1045, Q => 
                           CUR_ENC_RIGHT_7_port);
   CUR_ENC_LEFT_reg_7_inst : DFFSR port map( D => CUR_ENC_RIGHT_7_port, CLK => 
                           FIESTELCLK, R => n1044, S => n1043, Q => 
                           CUR_ENC_LEFT_7_port);
   CUR_ENC_RIGHT_reg_21_inst : DFFSR port map( D => NXT_ENC_RIGHT1_21_port, CLK
                           => FIESTELCLK, R => n1034, S => n1033, Q => 
                           CUR_ENC_RIGHT_21_port);
   CUR_ENC_LEFT_reg_21_inst : DFFSR port map( D => CUR_ENC_RIGHT_21_port, CLK 
                           => FIESTELCLK, R => n1032, S => n1031, Q => 
                           CUR_ENC_LEFT_21_port);
   CUR_ENC_RIGHT_reg_8_inst : DFFSR port map( D => NXT_ENC_RIGHT1_8_port, CLK 
                           => FIESTELCLK, R => n1030, S => n1029, Q => 
                           CUR_ENC_RIGHT_8_port);
   CUR_ENC_LEFT_reg_8_inst : DFFSR port map( D => CUR_ENC_RIGHT_8_port, CLK => 
                           FIESTELCLK, R => n1028, S => n1027, Q => 
                           CUR_ENC_LEFT_8_port);
   CUR_ENC_RIGHT_reg_3_inst : DFFSR port map( D => NXT_ENC_RIGHT1_3_port, CLK 
                           => FIESTELCLK, R => n1038, S => n1037, Q => 
                           CUR_ENC_RIGHT_3_port);
   CUR_ENC_LEFT_reg_3_inst : DFFSR port map( D => CUR_ENC_RIGHT_3_port, CLK => 
                           FIESTELCLK, R => n1036, S => n1035, Q => 
                           CUR_ENC_LEFT_3_port);
   CUR_ENC_RIGHT_reg_5_inst : DFFSR port map( D => NXT_ENC_RIGHT1_5_port, CLK 
                           => FIESTELCLK, R => n1066, S => n1065, Q => 
                           CUR_ENC_RIGHT_5_port);
   CUR_ENC_LEFT_reg_5_inst : DFFSR port map( D => CUR_ENC_RIGHT_5_port, CLK => 
                           FIESTELCLK, R => n1064, S => n1063, Q => 
                           CUR_ENC_LEFT_5_port);
   CUR_ENC_RIGHT_reg_20_inst : DFFSR port map( D => NXT_ENC_RIGHT1_20_port, CLK
                           => FIESTELCLK, R => n1006, S => n1005, Q => 
                           CUR_ENC_RIGHT_20_port);
   CUR_ENC_LEFT_reg_20_inst : DFFSR port map( D => CUR_ENC_RIGHT_20_port, CLK 
                           => FIESTELCLK, R => n1004, S => n1003, Q => 
                           CUR_ENC_LEFT_20_port);
   CUR_ENC_RIGHT_reg_22_inst : DFFSR port map( D => NXT_ENC_RIGHT1_22_port, CLK
                           => FIESTELCLK, R => n994, S => n993, Q => 
                           CUR_ENC_RIGHT_22_port);
   CUR_ENC_LEFT_reg_22_inst : DFFSR port map( D => CUR_ENC_RIGHT_22_port, CLK 
                           => FIESTELCLK, R => n992, S => n991, Q => 
                           CUR_ENC_LEFT_22_port);
   CUR_ENC_RIGHT_reg_12_inst : DFFSR port map( D => NXT_ENC_RIGHT1_12_port, CLK
                           => FIESTELCLK, R => n998, S => n997, Q => 
                           CUR_ENC_RIGHT_12_port);
   CUR_ENC_LEFT_reg_12_inst : DFFSR port map( D => CUR_ENC_RIGHT_12_port, CLK 
                           => FIESTELCLK, R => n996, S => n995, Q => 
                           CUR_ENC_LEFT_12_port);
   CUR_ENC_RIGHT_reg_10_inst : DFFSR port map( D => NXT_ENC_RIGHT1_10_port, CLK
                           => FIESTELCLK, R => n986, S => n985, Q => 
                           CUR_ENC_RIGHT_10_port);
   CUR_ENC_LEFT_reg_10_inst : DFFSR port map( D => CUR_ENC_RIGHT_10_port, CLK 
                           => FIESTELCLK, R => n984, S => n983, Q => 
                           CUR_ENC_LEFT_10_port);
   CUR_ENC_RIGHT_reg_13_inst : DFFSR port map( D => NXT_ENC_RIGHT1_13_port, CLK
                           => FIESTELCLK, R => n970, S => n969, Q => 
                           CUR_ENC_RIGHT_13_port);
   CUR_ENC_LEFT_reg_13_inst : DFFSR port map( D => CUR_ENC_RIGHT_13_port, CLK 
                           => FIESTELCLK, R => n968, S => n967, Q => 
                           CUR_ENC_LEFT_13_port);
   CUR_ENC_RIGHT_reg_30_inst : DFFSR port map( D => NXT_ENC_RIGHT1_30_port, CLK
                           => FIESTELCLK, R => n978, S => n977, Q => 
                           CUR_ENC_RIGHT_30_port);
   CUR_ENC_LEFT_reg_30_inst : DFFSR port map( D => CUR_ENC_RIGHT_30_port, CLK 
                           => FIESTELCLK, R => n976, S => n975, Q => 
                           CUR_ENC_LEFT_30_port);
   OUTDATA_reg_63_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_31_port, Q => OUTDATA(63));
   OUTDATA_reg_62_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_30_port, Q => OUTDATA(62));
   OUTDATA_reg_61_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_29_port, Q => OUTDATA(61));
   OUTDATA_reg_60_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_28_port, Q => OUTDATA(60));
   OUTDATA_reg_59_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_27_port, Q => OUTDATA(59));
   OUTDATA_reg_58_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_26_port, Q => OUTDATA(58));
   OUTDATA_reg_57_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_25_port, Q => OUTDATA(57));
   OUTDATA_reg_56_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_24_port, Q => OUTDATA(56));
   OUTDATA_reg_55_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_23_port, Q => OUTDATA(55));
   OUTDATA_reg_54_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_22_port, Q => OUTDATA(54));
   OUTDATA_reg_53_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_21_port, Q => OUTDATA(53));
   OUTDATA_reg_52_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_20_port, Q => OUTDATA(52));
   OUTDATA_reg_51_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_19_port, Q => OUTDATA(51));
   OUTDATA_reg_50_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_18_port, Q => OUTDATA(50));
   OUTDATA_reg_49_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_17_port, Q => OUTDATA(49));
   OUTDATA_reg_48_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_16_port, Q => OUTDATA(48));
   OUTDATA_reg_47_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_15_port, Q => OUTDATA(47));
   OUTDATA_reg_46_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_14_port, Q => OUTDATA(46));
   OUTDATA_reg_45_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_13_port, Q => OUTDATA(45));
   OUTDATA_reg_44_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_12_port, Q => OUTDATA(44));
   OUTDATA_reg_43_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_11_port, Q => OUTDATA(43));
   OUTDATA_reg_42_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_10_port, Q => OUTDATA(42));
   OUTDATA_reg_41_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_9_port, Q => OUTDATA(41));
   OUTDATA_reg_40_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_8_port, Q => OUTDATA(40));
   OUTDATA_reg_39_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_7_port, Q => OUTDATA(39));
   OUTDATA_reg_38_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_6_port, Q => OUTDATA(38));
   OUTDATA_reg_37_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_5_port, Q => OUTDATA(37));
   OUTDATA_reg_36_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_4_port, Q => OUTDATA(36));
   OUTDATA_reg_35_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_3_port, Q => OUTDATA(35));
   OUTDATA_reg_34_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_2_port, Q => OUTDATA(34));
   OUTDATA_reg_33_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_1_port, Q => OUTDATA(33));
   OUTDATA_reg_32_inst : LATCH port map( CLK => n1, D => CUR_ENC_RIGHT_0_port, 
                           Q => OUTDATA(32));
   OUTDATA_reg_31_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_31_port, 
                           Q => OUTDATA(31));
   OUTDATA_reg_30_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_30_port, 
                           Q => OUTDATA(30));
   OUTDATA_reg_29_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_29_port, 
                           Q => OUTDATA(29));
   OUTDATA_reg_28_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_28_port, 
                           Q => OUTDATA(28));
   OUTDATA_reg_27_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_27_port, 
                           Q => OUTDATA(27));
   OUTDATA_reg_26_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_26_port, 
                           Q => OUTDATA(26));
   OUTDATA_reg_25_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_25_port, 
                           Q => OUTDATA(25));
   OUTDATA_reg_24_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_24_port, 
                           Q => OUTDATA(24));
   OUTDATA_reg_23_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_23_port, 
                           Q => OUTDATA(23));
   OUTDATA_reg_22_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_22_port, 
                           Q => OUTDATA(22));
   OUTDATA_reg_21_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_21_port, 
                           Q => OUTDATA(21));
   OUTDATA_reg_20_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_20_port, 
                           Q => OUTDATA(20));
   OUTDATA_reg_19_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_19_port, 
                           Q => OUTDATA(19));
   OUTDATA_reg_18_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_18_port, 
                           Q => OUTDATA(18));
   OUTDATA_reg_17_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_17_port, 
                           Q => OUTDATA(17));
   OUTDATA_reg_16_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_16_port, 
                           Q => OUTDATA(16));
   OUTDATA_reg_15_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_15_port, 
                           Q => OUTDATA(15));
   OUTDATA_reg_14_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_14_port, 
                           Q => OUTDATA(14));
   OUTDATA_reg_13_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_13_port, 
                           Q => OUTDATA(13));
   OUTDATA_reg_12_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_12_port, 
                           Q => OUTDATA(12));
   OUTDATA_reg_11_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_11_port, 
                           Q => OUTDATA(11));
   OUTDATA_reg_10_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_10_port, 
                           Q => OUTDATA(10));
   OUTDATA_reg_9_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_9_port, Q 
                           => OUTDATA(9));
   OUTDATA_reg_8_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_8_port, Q 
                           => OUTDATA(8));
   OUTDATA_reg_7_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_7_port, Q 
                           => OUTDATA(7));
   OUTDATA_reg_6_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_6_port, Q 
                           => OUTDATA(6));
   OUTDATA_reg_5_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_5_port, Q 
                           => OUTDATA(5));
   OUTDATA_reg_4_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_4_port, Q 
                           => OUTDATA(4));
   OUTDATA_reg_3_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_3_port, Q 
                           => OUTDATA(3));
   OUTDATA_reg_2_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_2_port, Q 
                           => OUTDATA(2));
   OUTDATA_reg_1_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_1_port, Q 
                           => OUTDATA(1));
   OUTDATA_reg_0_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_0_port, Q 
                           => OUTDATA(0));
   U3 : BUFX4 port map( A => START, Y => n1);
   U4 : INVX4 port map( A => IN_SELECT, Y => n2);
   U5 : NAND2X1 port map( A => ENC_LEFT(29), B => n2, Y => n963);
   U6 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(29), Y => n964);
   U7 : NAND2X1 port map( A => ENC_RIGHT(29), B => n2, Y => n965);
   U8 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(29), Y => n966);
   U9 : NAND2X1 port map( A => ENC_LEFT(13), B => n2, Y => n967);
   U10 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(13), Y => n968);
   U11 : NAND2X1 port map( A => ENC_RIGHT(13), B => n2, Y => n969);
   U12 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(13), Y => n970);
   U13 : NAND2X1 port map( A => ENC_LEFT(14), B => n2, Y => n971);
   U14 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(14), Y => n972);
   U15 : NAND2X1 port map( A => ENC_RIGHT(14), B => n2, Y => n973);
   U16 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(14), Y => n974);
   U17 : NAND2X1 port map( A => ENC_LEFT(30), B => n2, Y => n975);
   U18 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(30), Y => n976);
   U19 : NAND2X1 port map( A => ENC_RIGHT(30), B => n2, Y => n977);
   U20 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(30), Y => n978);
   U21 : NAND2X1 port map( A => ENC_LEFT(25), B => n2, Y => n979);
   U22 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(25), Y => n980);
   U23 : NAND2X1 port map( A => ENC_RIGHT(25), B => n2, Y => n981);
   U24 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(25), Y => n982);
   U25 : NAND2X1 port map( A => ENC_LEFT(10), B => n2, Y => n983);
   U26 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(10), Y => n984);
   U27 : NAND2X1 port map( A => ENC_RIGHT(10), B => n2, Y => n985);
   U28 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(10), Y => n986);
   U29 : NAND2X1 port map( A => ENC_LEFT(31), B => n2, Y => n987);
   U30 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(31), Y => n988);
   U31 : NAND2X1 port map( A => ENC_RIGHT(31), B => n2, Y => n989);
   U32 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(31), Y => n990);
   U33 : NAND2X1 port map( A => ENC_LEFT(22), B => n2, Y => n991);
   U34 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(22), Y => n992);
   U35 : NAND2X1 port map( A => ENC_RIGHT(22), B => n2, Y => n993);
   U36 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(22), Y => n994);
   U37 : NAND2X1 port map( A => ENC_LEFT(12), B => n2, Y => n995);
   U38 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(12), Y => n996);
   U39 : NAND2X1 port map( A => ENC_RIGHT(12), B => n2, Y => n997);
   U40 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(12), Y => n998);
   U41 : NAND2X1 port map( A => ENC_LEFT(6), B => n2, Y => n999);
   U42 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(6), Y => n1000);
   U43 : NAND2X1 port map( A => ENC_RIGHT(6), B => n2, Y => n1001);
   U44 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(6), Y => n1002);
   U45 : NAND2X1 port map( A => ENC_LEFT(20), B => n2, Y => n1003);
   U46 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(20), Y => n1004);
   U47 : NAND2X1 port map( A => ENC_RIGHT(20), B => n2, Y => n1005);
   U48 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(20), Y => n1006);
   U49 : NAND2X1 port map( A => ENC_LEFT(4), B => n2, Y => n1007);
   U50 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(4), Y => n1008);
   U51 : NAND2X1 port map( A => ENC_RIGHT(4), B => n2, Y => n1009);
   U52 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(4), Y => n1010);
   U53 : NAND2X1 port map( A => ENC_LEFT(19), B => n2, Y => n1011);
   U54 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(19), Y => n1012);
   U55 : NAND2X1 port map( A => ENC_RIGHT(19), B => n2, Y => n1013);
   U56 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(19), Y => n1014);
   U57 : NAND2X1 port map( A => ENC_LEFT(26), B => n2, Y => n1015);
   U58 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(26), Y => n1016);
   U59 : NAND2X1 port map( A => ENC_RIGHT(26), B => n2, Y => n1017);
   U60 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(26), Y => n1018);
   U61 : NAND2X1 port map( A => ENC_LEFT(2), B => n2, Y => n1019);
   U62 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(2), Y => n1020);
   U63 : NAND2X1 port map( A => ENC_RIGHT(2), B => n2, Y => n1021);
   U64 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(2), Y => n1022);
   U65 : NAND2X1 port map( A => ENC_LEFT(16), B => n2, Y => n1023);
   U66 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(16), Y => n1024);
   U67 : NAND2X1 port map( A => ENC_RIGHT(16), B => n2, Y => n1025);
   U68 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(16), Y => n1026);
   U69 : NAND2X1 port map( A => ENC_LEFT(8), B => n2, Y => n1027);
   U70 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(8), Y => n1028);
   U71 : NAND2X1 port map( A => ENC_RIGHT(8), B => n2, Y => n1029);
   U72 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(8), Y => n1030);
   U73 : NAND2X1 port map( A => ENC_LEFT(21), B => n2, Y => n1031);
   U74 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(21), Y => n1032);
   U75 : NAND2X1 port map( A => ENC_RIGHT(21), B => n2, Y => n1033);
   U76 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(21), Y => n1034);
   U77 : NAND2X1 port map( A => ENC_LEFT(3), B => n2, Y => n1035);
   U78 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(3), Y => n1036);
   U79 : NAND2X1 port map( A => ENC_RIGHT(3), B => n2, Y => n1037);
   U80 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(3), Y => n1038);
   U81 : NAND2X1 port map( A => ENC_LEFT(28), B => n2, Y => n1039);
   U82 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(28), Y => n1040);
   U83 : NAND2X1 port map( A => ENC_RIGHT(28), B => n2, Y => n1041);
   U84 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(28), Y => n1042);
   U85 : NAND2X1 port map( A => ENC_LEFT(7), B => n2, Y => n1043);
   U86 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(7), Y => n1044);
   U87 : NAND2X1 port map( A => ENC_RIGHT(7), B => n2, Y => n1045);
   U88 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(7), Y => n1046);
   U89 : NAND2X1 port map( A => ENC_LEFT(18), B => n2, Y => n1047);
   U90 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(18), Y => n1048);
   U91 : NAND2X1 port map( A => ENC_RIGHT(18), B => n2, Y => n1049);
   U92 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(18), Y => n1050);
   U93 : NAND2X1 port map( A => ENC_LEFT(24), B => n2, Y => n1051);
   U94 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(24), Y => n1052);
   U95 : NAND2X1 port map( A => ENC_RIGHT(24), B => n2, Y => n1053);
   U96 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(24), Y => n1054);
   U97 : NAND2X1 port map( A => ENC_LEFT(11), B => n2, Y => n1055);
   U98 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(11), Y => n1056);
   U99 : NAND2X1 port map( A => ENC_RIGHT(11), B => n2, Y => n1057);
   U100 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(11), Y => n1058);
   U101 : NAND2X1 port map( A => ENC_LEFT(17), B => n2, Y => n1059);
   U102 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(17), Y => n1060);
   U103 : NAND2X1 port map( A => ENC_RIGHT(17), B => n2, Y => n1061);
   U104 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(17), Y => n1062);
   U105 : NAND2X1 port map( A => ENC_LEFT(5), B => n2, Y => n1063);
   U106 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(5), Y => n1064);
   U107 : NAND2X1 port map( A => ENC_RIGHT(5), B => n2, Y => n1065);
   U108 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(5), Y => n1066);
   U109 : NAND2X1 port map( A => ENC_LEFT(27), B => n2, Y => n1067);
   U110 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(27), Y => n1068);
   U111 : NAND2X1 port map( A => ENC_RIGHT(27), B => n2, Y => n1069);
   U112 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(27), Y => n1070);
   U113 : NAND2X1 port map( A => ENC_LEFT(1), B => n2, Y => n1071);
   U114 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(1), Y => n1072);
   U115 : NAND2X1 port map( A => ENC_RIGHT(1), B => n2, Y => n1073);
   U116 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(1), Y => n1074);
   U117 : NAND2X1 port map( A => ENC_LEFT(9), B => n2, Y => n1075);
   U118 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(9), Y => n1076);
   U119 : NAND2X1 port map( A => ENC_RIGHT(9), B => n2, Y => n1077);
   U120 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(9), Y => n1078);
   U121 : NAND2X1 port map( A => ENC_LEFT(15), B => n2, Y => n1079);
   U122 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(15), Y => n1080);
   U123 : NAND2X1 port map( A => ENC_RIGHT(15), B => n2, Y => n1081);
   U124 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(15), Y => n1082);
   U125 : NAND2X1 port map( A => ENC_LEFT(23), B => n2, Y => n1083);
   U126 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(23), Y => n1084);
   U127 : NAND2X1 port map( A => ENC_RIGHT(23), B => n2, Y => n1085);
   U128 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(23), Y => n1086);
   U129 : NAND2X1 port map( A => ENC_RIGHT(0), B => n2, Y => n1087);
   U130 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(0), Y => n1088);
   U131 : NAND2X1 port map( A => ENC_LEFT(0), B => n2, Y => n1089);
   U132 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(0), Y => n1090);
   U133 : XNOR2X1 port map( A => CUR_ENC_LEFT_9_port, B => n3, Y => 
                           NXT_ENC_RIGHT1_9_port);
   U134 : NOR2X1 port map( A => n4, B => n5, Y => n3);
   U135 : OAI21X1 port map( A => n6, B => n7, C => n8, Y => n5);
   U136 : NAND3X1 port map( A => n9, B => n10, C => n11, Y => n4);
   U137 : OAI21X1 port map( A => n12, B => n13, C => n14, Y => n11);
   U138 : OR2X1 port map( A => n15, B => n16, Y => n13);
   U139 : NAND2X1 port map( A => n17, B => n18, Y => n12);
   U140 : OAI21X1 port map( A => n19, B => n20, C => n21, Y => n10);
   U141 : NOR2X1 port map( A => n22, B => n23, Y => n19);
   U142 : OAI21X1 port map( A => n24, B => n25, C => n26, Y => n9);
   U143 : XOR2X1 port map( A => n27, B => CUR_ENC_LEFT_8_port, Y => 
                           NXT_ENC_RIGHT1_8_port);
   U144 : NAND3X1 port map( A => n28, B => n29, C => n30, Y => n27);
   U145 : AOI21X1 port map( A => n31, B => n32, C => n33, Y => n30);
   U146 : NAND3X1 port map( A => n34, B => n35, C => n36, Y => n32);
   U147 : INVX1 port map( A => n37, Y => n36);
   U148 : OAI21X1 port map( A => n38, B => n39, C => n40, Y => n37);
   U149 : OAI21X1 port map( A => n41, B => n42, C => n43, Y => n29);
   U150 : OAI21X1 port map( A => n44, B => n45, C => n46, Y => n42);
   U151 : INVX1 port map( A => n47, Y => n46);
   U152 : NAND2X1 port map( A => n48, B => n49, Y => n45);
   U153 : AOI22X1 port map( A => n50, B => n51, C => n52, D => n53, Y => n28);
   U154 : OAI21X1 port map( A => n54, B => n55, C => n56, Y => n53);
   U155 : AND2X1 port map( A => n57, B => n58, Y => n56);
   U156 : OR2X1 port map( A => n59, B => n60, Y => n55);
   U157 : NOR2X1 port map( A => n61, B => n62, Y => n50);
   U158 : XNOR2X1 port map( A => CUR_ENC_LEFT_7_port, B => n63, Y => 
                           NXT_ENC_RIGHT1_7_port);
   U159 : NOR2X1 port map( A => n64, B => n65, Y => n63);
   U160 : OAI21X1 port map( A => n66, B => n67, C => n68, Y => n65);
   U161 : INVX1 port map( A => n69, Y => n66);
   U162 : NAND3X1 port map( A => n70, B => n71, C => n72, Y => n64);
   U163 : OAI21X1 port map( A => n73, B => n74, C => n75, Y => n72);
   U164 : OAI21X1 port map( A => n76, B => n77, C => n78, Y => n74);
   U165 : OAI21X1 port map( A => n79, B => n80, C => n81, Y => n71);
   U166 : OR2X1 port map( A => n82, B => n83, Y => n70);
   U167 : XNOR2X1 port map( A => CUR_ENC_LEFT_6_port, B => n84, Y => 
                           NXT_ENC_RIGHT1_6_port);
   U168 : NOR2X1 port map( A => n85, B => n86, Y => n84);
   U169 : NAND3X1 port map( A => n87, B => n88, C => n89, Y => n86);
   U170 : INVX1 port map( A => n90, Y => n89);
   U171 : OAI22X1 port map( A => n91, B => n92, C => n93, D => n94, Y => n90);
   U172 : INVX1 port map( A => n95, Y => n92);
   U173 : INVX1 port map( A => n96, Y => n87);
   U174 : NAND3X1 port map( A => n97, B => n98, C => n99, Y => n85);
   U175 : AOI22X1 port map( A => n100, B => n101, C => n102, D => n103, Y => 
                           n99);
   U176 : OAI21X1 port map( A => n94, B => n104, C => n105, Y => n101);
   U177 : MUX2X1 port map( B => n106, A => n107, S => n108, Y => n105);
   U178 : NOR2X1 port map( A => n109, B => n110, Y => n107);
   U179 : NOR2X1 port map( A => n111, B => n112, Y => n106);
   U180 : OR2X1 port map( A => n113, B => n114, Y => n104);
   U181 : INVX1 port map( A => n115, Y => n98);
   U182 : AOI21X1 port map( A => n116, B => n117, C => n110, Y => n115);
   U183 : OAI21X1 port map( A => n118, B => n119, C => n120, Y => n97);
   U184 : NAND2X1 port map( A => n121, B => n122, Y => n119);
   U185 : XOR2X1 port map( A => n123, B => CUR_ENC_LEFT_5_port, Y => 
                           NXT_ENC_RIGHT1_5_port);
   U186 : NAND3X1 port map( A => n124, B => n125, C => n126, Y => n123);
   U187 : NOR2X1 port map( A => n127, B => n128, Y => n126);
   U188 : OAI21X1 port map( A => n129, B => n130, C => n131, Y => n128);
   U189 : OAI21X1 port map( A => n132, B => n133, C => n134, Y => n131);
   U190 : AOI21X1 port map( A => n135, B => n136, C => n137, Y => n129);
   U191 : OAI21X1 port map( A => n138, B => n139, C => n140, Y => n127);
   U192 : OAI21X1 port map( A => n141, B => n142, C => n143, Y => n140);
   U193 : OAI21X1 port map( A => n144, B => n145, C => n146, Y => n142);
   U194 : NAND2X1 port map( A => n147, B => n148, Y => n141);
   U195 : OR2X1 port map( A => n149, B => n150, Y => n139);
   U196 : AOI21X1 port map( A => n151, B => n152, C => n153, Y => n124);
   U197 : INVX1 port map( A => n154, Y => n152);
   U198 : XOR2X1 port map( A => n155, B => CUR_ENC_LEFT_4_port, Y => 
                           NXT_ENC_RIGHT1_4_port);
   U199 : NAND3X1 port map( A => n156, B => n157, C => n158, Y => n155);
   U200 : AOI21X1 port map( A => n159, B => n160, C => n161, Y => n158);
   U201 : OAI21X1 port map( A => n162, B => n163, C => n164, Y => n161);
   U202 : OAI21X1 port map( A => n165, B => n166, C => n167, Y => n164);
   U203 : OAI21X1 port map( A => n168, B => n169, C => n170, Y => n166);
   U204 : OAI21X1 port map( A => n171, B => n172, C => n173, Y => n165);
   U205 : AND2X1 port map( A => n174, B => n175, Y => n173);
   U206 : OAI21X1 port map( A => n176, B => n177, C => n178, Y => n157);
   U207 : OAI22X1 port map( A => n179, B => n169, C => n171, D => n168, Y => 
                           n177);
   U208 : NAND2X1 port map( A => n180, B => n181, Y => n176);
   U209 : AOI22X1 port map( A => n182, B => n183, C => n184, D => n185, Y => 
                           n156);
   U210 : NAND3X1 port map( A => n186, B => n187, C => n170, Y => n185);
   U211 : NAND3X1 port map( A => n188, B => n189, C => n190, Y => n183);
   U212 : XNOR2X1 port map( A => CUR_ENC_LEFT_3_port, B => n191, Y => 
                           NXT_ENC_RIGHT1_3_port);
   U213 : NOR2X1 port map( A => n192, B => n193, Y => n191);
   U214 : OAI21X1 port map( A => n194, B => n195, C => n196, Y => n193);
   U215 : OAI21X1 port map( A => n197, B => n198, C => n199, Y => n196);
   U216 : NAND3X1 port map( A => n200, B => n201, C => n202, Y => n198);
   U217 : NAND3X1 port map( A => n203, B => n204, C => n205, Y => n197);
   U218 : NAND3X1 port map( A => n206, B => n207, C => n208, Y => n192);
   U219 : OAI21X1 port map( A => n209, B => n210, C => n211, Y => n208);
   U220 : NAND2X1 port map( A => n212, B => n200, Y => n210);
   U221 : AOI22X1 port map( A => n213, B => n214, C => n215, D => n216, Y => 
                           n212);
   U222 : NAND3X1 port map( A => n201, B => n217, C => n218, Y => n209);
   U223 : OAI21X1 port map( A => n219, B => n220, C => n221, Y => n207);
   U224 : NOR2X1 port map( A => n222, B => n223, Y => n219);
   U225 : OAI21X1 port map( A => n224, B => n225, C => n226, Y => n206);
   U226 : XNOR2X1 port map( A => CUR_ENC_LEFT_31_port, B => n227, Y => 
                           NXT_ENC_RIGHT1_31_port);
   U227 : NOR2X1 port map( A => n228, B => n229, Y => n227);
   U228 : NAND2X1 port map( A => n88, B => n230, Y => n229);
   U229 : OAI21X1 port map( A => n231, B => n232, C => n120, Y => n230);
   U230 : OAI21X1 port map( A => n233, B => n234, C => n235, Y => n232);
   U231 : AOI21X1 port map( A => n236, B => n237, C => n238, Y => n88);
   U232 : OAI22X1 port map( A => n239, B => n110, C => n112, D => n240, Y => 
                           n238);
   U233 : NAND3X1 port map( A => n241, B => n242, C => n243, Y => n228);
   U234 : OAI21X1 port map( A => n244, B => n245, C => n246, Y => n243);
   U235 : OAI21X1 port map( A => n108, B => n247, C => n248, Y => n245);
   U236 : OAI21X1 port map( A => n249, B => n250, C => n237, Y => n242);
   U237 : NAND2X1 port map( A => n240, B => n251, Y => n250);
   U238 : INVX1 port map( A => n252, Y => n240);
   U239 : NAND2X1 port map( A => n121, B => n253, Y => n249);
   U240 : OAI21X1 port map( A => n254, B => n255, C => n102, Y => n241);
   U241 : INVX1 port map( A => n256, Y => n254);
   U242 : XNOR2X1 port map( A => CUR_ENC_LEFT_30_port, B => n257, Y => 
                           NXT_ENC_RIGHT1_30_port);
   U243 : NOR2X1 port map( A => n258, B => n259, Y => n257);
   U244 : OAI21X1 port map( A => n260, B => n180, C => n261, Y => n259);
   U245 : OAI21X1 port map( A => n262, B => n263, C => n182, Y => n261);
   U246 : OAI21X1 port map( A => n169, B => n172, C => n175, Y => n263);
   U247 : NAND3X1 port map( A => n264, B => n265, C => n266, Y => n258);
   U248 : OAI21X1 port map( A => n267, B => n268, C => n178, Y => n266);
   U249 : NAND2X1 port map( A => n190, B => n163, Y => n268);
   U250 : OAI21X1 port map( A => n269, B => n270, C => n167, Y => n265);
   U251 : OAI21X1 port map( A => n271, B => n272, C => n170, Y => n270);
   U252 : INVX1 port map( A => n273, Y => n170);
   U253 : OAI21X1 port map( A => n274, B => n169, C => n275, Y => n273);
   U254 : NAND2X1 port map( A => n180, B => n276, Y => n269);
   U255 : OAI21X1 port map( A => n277, B => n278, C => n184, Y => n264);
   U256 : NOR2X1 port map( A => n279, B => n168, Y => n277);
   U257 : XOR2X1 port map( A => n280, B => CUR_ENC_LEFT_2_port, Y => 
                           NXT_ENC_RIGHT1_2_port);
   U258 : NAND3X1 port map( A => n281, B => n282, C => n283, Y => n280);
   U259 : AOI21X1 port map( A => n31, B => n284, C => n285, Y => n283);
   U260 : OAI21X1 port map( A => n286, B => n287, C => n288, Y => n285);
   U261 : OAI21X1 port map( A => n289, B => n290, C => n291, Y => n288);
   U262 : NOR2X1 port map( A => n292, B => n293, Y => n286);
   U263 : OAI21X1 port map( A => n49, B => n294, C => n295, Y => n284);
   U264 : OAI21X1 port map( A => n296, B => n297, C => n298, Y => n282);
   U265 : OAI21X1 port map( A => n39, B => n44, C => n299, Y => n297);
   U266 : NAND3X1 port map( A => n300, B => n35, C => n301, Y => n296);
   U267 : AOI22X1 port map( A => n43, B => n302, C => n303, D => n304, Y => 
                           n281);
   U268 : NAND2X1 port map( A => n58, B => n305, Y => n302);
   U269 : OAI21X1 port map( A => n306, B => n307, C => n48, Y => n305);
   U270 : XNOR2X1 port map( A => CUR_ENC_LEFT_29_port, B => n308, Y => 
                           NXT_ENC_RIGHT1_29_port);
   U271 : NOR2X1 port map( A => n309, B => n310, Y => n308);
   U272 : OAI21X1 port map( A => n311, B => n312, C => n313, Y => n310);
   U273 : INVX1 port map( A => n314, Y => n313);
   U274 : AOI21X1 port map( A => n315, B => n316, C => n317, Y => n311);
   U275 : OAI21X1 port map( A => n318, B => n82, C => n319, Y => n309);
   U276 : AOI22X1 port map( A => n320, B => n321, C => n81, D => n322, Y => 
                           n319);
   U277 : OAI21X1 port map( A => n323, B => n324, C => n83, Y => n322);
   U278 : NOR2X1 port map( A => n325, B => n326, Y => n83);
   U279 : OAI21X1 port map( A => n327, B => n77, C => n328, Y => n326);
   U280 : OAI21X1 port map( A => n329, B => n330, C => n331, Y => n321);
   U281 : INVX1 port map( A => n73, Y => n331);
   U282 : NAND3X1 port map( A => n332, B => n333, C => n334, Y => n73);
   U283 : AND2X1 port map( A => n335, B => n336, Y => n334);
   U284 : INVX1 port map( A => n337, Y => n82);
   U285 : AOI21X1 port map( A => n338, B => n339, C => n340, Y => n318);
   U286 : XNOR2X1 port map( A => CUR_ENC_LEFT_28_port, B => n341, Y => 
                           NXT_ENC_RIGHT1_28_port);
   U287 : NOR2X1 port map( A => n342, B => n343, Y => n341);
   U288 : NAND3X1 port map( A => n344, B => n345, C => n346, Y => n343);
   U289 : OAI21X1 port map( A => n347, B => n348, C => n211, Y => n346);
   U290 : OR2X1 port map( A => n349, B => n350, Y => n348);
   U291 : NAND2X1 port map( A => n201, B => n205, Y => n347);
   U292 : INVX1 port map( A => n224, Y => n201);
   U293 : OAI21X1 port map( A => n351, B => n352, C => n226, Y => n345);
   U294 : INVX1 port map( A => n353, Y => n351);
   U295 : NAND2X1 port map( A => n354, B => n355, Y => n344);
   U296 : OAI21X1 port map( A => n356, B => n357, C => n358, Y => n355);
   U297 : OAI21X1 port map( A => n215, B => n359, C => n226, Y => n358);
   U298 : INVX1 port map( A => n221, Y => n357);
   U299 : NAND3X1 port map( A => n360, B => n361, C => n362, Y => n342);
   U300 : OAI21X1 port map( A => n363, B => n364, C => n199, Y => n362);
   U301 : NAND2X1 port map( A => n365, B => n366, Y => n364);
   U302 : NAND2X1 port map( A => n202, B => n353, Y => n363);
   U303 : OAI21X1 port map( A => n367, B => n368, C => n221, Y => n361);
   U304 : INVX1 port map( A => n366, Y => n368);
   U305 : INVX1 port map( A => n369, Y => n360);
   U306 : AOI21X1 port map( A => n370, B => n217, C => n195, Y => n369);
   U307 : XOR2X1 port map( A => n371, B => CUR_ENC_LEFT_27_port, Y => 
                           NXT_ENC_RIGHT1_27_port);
   U308 : NAND3X1 port map( A => n372, B => n373, C => n374, Y => n371);
   U309 : NOR2X1 port map( A => n375, B => n376, Y => n374);
   U310 : INVX1 port map( A => n377, Y => n376);
   U311 : AOI22X1 port map( A => n378, B => n137, C => n379, D => n380, Y => 
                           n377);
   U312 : OAI21X1 port map( A => n149, B => n381, C => n382, Y => n137);
   U313 : AND2X1 port map( A => n383, B => n384, Y => n382);
   U314 : OAI21X1 port map( A => n385, B => n145, C => n386, Y => n375);
   U315 : OAI21X1 port map( A => n387, B => n388, C => n134, Y => n386);
   U316 : NAND2X1 port map( A => n389, B => n148, Y => n388);
   U317 : INVX1 port map( A => n390, Y => n148);
   U318 : AOI21X1 port map( A => n151, B => n391, C => n392, Y => n385);
   U319 : OAI21X1 port map( A => n393, B => n394, C => n130, Y => n392);
   U320 : AOI22X1 port map( A => n143, B => n133, C => n395, D => n151, Y => 
                           n373);
   U321 : NAND3X1 port map( A => n384, B => n396, C => n397, Y => n133);
   U322 : AOI21X1 port map( A => n398, B => n399, C => n400, Y => n397);
   U323 : NOR2X1 port map( A => n153, B => n401, Y => n372);
   U324 : XNOR2X1 port map( A => CUR_ENC_LEFT_26_port, B => n402, Y => 
                           NXT_ENC_RIGHT1_26_port);
   U325 : NOR2X1 port map( A => n403, B => n404, Y => n402);
   U326 : NAND3X1 port map( A => n405, B => n406, C => n407, Y => n404);
   U327 : INVX1 port map( A => n33, Y => n407);
   U328 : NAND2X1 port map( A => n408, B => n409, Y => n33);
   U329 : AOI22X1 port map( A => n410, B => n289, C => n52, D => n411, Y => 
                           n409);
   U330 : OAI21X1 port map( A => n44, B => n49, C => n412, Y => n411);
   U331 : AND2X1 port map( A => n40, B => n295, Y => n412);
   U332 : INVX1 port map( A => n57, Y => n289);
   U333 : NAND3X1 port map( A => n54, B => n59, C => n60, Y => n57);
   U334 : AOI22X1 port map( A => n298, B => n304, C => n31, D => n413, Y => 
                           n408);
   U335 : OAI21X1 port map( A => n41, B => n293, C => n291, Y => n406);
   U336 : OR2X1 port map( A => n414, B => n415, Y => n293);
   U337 : OAI21X1 port map( A => n54, B => n416, C => n300, Y => n415);
   U338 : NAND3X1 port map( A => n417, B => n418, C => n419, Y => n300);
   U339 : OAI21X1 port map( A => n47, B => n420, C => n52, Y => n405);
   U340 : NAND2X1 port map( A => n421, B => n34, Y => n420);
   U341 : OR2X1 port map( A => n422, B => n418, Y => n34);
   U342 : NAND2X1 port map( A => n423, B => n299, Y => n47);
   U343 : OAI21X1 port map( A => n424, B => n62, C => n425, Y => n403);
   U344 : AOI22X1 port map( A => n426, B => n427, C => n428, D => n51, Y => 
                           n425);
   U345 : NOR2X1 port map( A => n38, B => n429, Y => n428);
   U346 : NOR2X1 port map( A => n430, B => n44, Y => n426);
   U347 : INVX1 port map( A => n298, Y => n62);
   U348 : AOI21X1 port map( A => n431, B => n417, C => n432, Y => n424);
   U349 : NOR2X1 port map( A => n433, B => n59, Y => n431);
   U350 : XNOR2X1 port map( A => CUR_ENC_LEFT_25_port, B => n434, Y => 
                           NXT_ENC_RIGHT1_25_port);
   U351 : NOR2X1 port map( A => n435, B => n436, Y => n434);
   U352 : NAND2X1 port map( A => n437, B => n438, Y => n436);
   U353 : AOI22X1 port map( A => n439, B => n440, C => n441, D => n442, Y => 
                           n437);
   U354 : NAND3X1 port map( A => n443, B => n444, C => n445, Y => n440);
   U355 : INVX1 port map( A => n446, Y => n445);
   U356 : NAND3X1 port map( A => n447, B => n448, C => n449, Y => n435);
   U357 : AOI22X1 port map( A => n450, B => n451, C => n452, D => n453, Y => 
                           n449);
   U358 : OAI21X1 port map( A => n454, B => n455, C => n456, Y => n453);
   U359 : INVX1 port map( A => n457, Y => n455);
   U360 : NOR2X1 port map( A => n458, B => n459, Y => n450);
   U361 : OAI21X1 port map( A => n460, B => n461, C => n462, Y => n448);
   U362 : OAI21X1 port map( A => n463, B => n464, C => n465, Y => n447);
   U363 : OAI21X1 port map( A => n466, B => n459, C => n443, Y => n464);
   U364 : XOR2X1 port map( A => n467, B => CUR_ENC_LEFT_24_port, Y => 
                           NXT_ENC_RIGHT1_24_port);
   U365 : NAND3X1 port map( A => n468, B => n469, C => n470, Y => n467);
   U366 : NOR2X1 port map( A => n314, B => n471, Y => n470);
   U367 : OAI21X1 port map( A => n472, B => n473, C => n474, Y => n471);
   U368 : OAI21X1 port map( A => n475, B => n69, C => n75, Y => n474);
   U369 : OAI21X1 port map( A => n316, B => n476, C => n477, Y => n69);
   U370 : AND2X1 port map( A => n333, B => n478, Y => n477);
   U371 : INVX1 port map( A => n479, Y => n475);
   U372 : AOI21X1 port map( A => n480, B => n76, C => n481, Y => n472);
   U373 : NAND2X1 port map( A => n335, B => n482, Y => n481);
   U374 : NOR2X1 port map( A => n315, B => n316, Y => n480);
   U375 : NAND2X1 port map( A => n483, B => n484, Y => n314);
   U376 : AOI22X1 port map( A => n75, B => n485, C => n81, D => n486, Y => n484
                           );
   U377 : OAI21X1 port map( A => n324, B => n77, C => n487, Y => n485);
   U378 : INVX1 port map( A => n325, Y => n487);
   U379 : AOI22X1 port map( A => n488, B => n320, C => n337, D => n489, Y => 
                           n483);
   U380 : NAND3X1 port map( A => n328, B => n478, C => n482, Y => n489);
   U381 : INVX1 port map( A => n490, Y => n478);
   U382 : INVX1 port map( A => n482, Y => n488);
   U383 : OAI21X1 port map( A => n491, B => n79, C => n337, Y => n469);
   U384 : NAND2X1 port map( A => n492, B => n479, Y => n79);
   U385 : AOI21X1 port map( A => n320, B => n493, C => n494, Y => n468);
   U386 : INVX1 port map( A => n495, Y => n494);
   U387 : OAI21X1 port map( A => n496, B => n476, C => n497, Y => n493);
   U388 : INVX1 port map( A => n498, Y => n476);
   U389 : XNOR2X1 port map( A => CUR_ENC_LEFT_23_port, B => n499, Y => 
                           NXT_ENC_RIGHT1_23_port);
   U390 : NOR2X1 port map( A => n500, B => n501, Y => n499);
   U391 : INVX1 port map( A => n502, Y => n501);
   U392 : AOI22X1 port map( A => n503, B => n504, C => n505, D => n21, Y => 
                           n502);
   U393 : NAND3X1 port map( A => n506, B => n507, C => n508, Y => n500);
   U394 : OAI21X1 port map( A => n509, B => n510, C => n26, Y => n508);
   U395 : NAND3X1 port map( A => n511, B => n512, C => n513, Y => n510);
   U396 : OAI21X1 port map( A => n514, B => n515, C => n516, Y => n513);
   U397 : NAND3X1 port map( A => n517, B => n518, C => n519, Y => n509);
   U398 : OAI22X1 port map( A => n520, B => n521, C => n21, D => n504, Y => 
                           n507);
   U399 : INVX1 port map( A => n522, Y => n521);
   U400 : OAI21X1 port map( A => n523, B => n524, C => n14, Y => n506);
   U401 : INVX1 port map( A => n6, Y => n524);
   U402 : NOR2X1 port map( A => n525, B => n526, Y => n6);
   U403 : OAI21X1 port map( A => n516, B => n17, C => n527, Y => n526);
   U404 : XOR2X1 port map( A => n528, B => CUR_ENC_LEFT_22_port, Y => 
                           NXT_ENC_RIGHT1_22_port);
   U405 : NAND3X1 port map( A => n529, B => n530, C => n531, Y => n528);
   U406 : AOI21X1 port map( A => n237, B => n532, C => n533, Y => n531);
   U407 : NAND2X1 port map( A => n534, B => n535, Y => n533);
   U408 : OAI21X1 port map( A => n536, B => n231, C => n95, Y => n535);
   U409 : NAND2X1 port map( A => n94, B => n110, Y => n95);
   U410 : INVX1 port map( A => n246, Y => n110);
   U411 : OAI21X1 port map( A => n537, B => n103, C => n246, Y => n534);
   U412 : NAND2X1 port map( A => n538, B => n251, Y => n103);
   U413 : OAI21X1 port map( A => n539, B => n540, C => n122, Y => n532);
   U414 : NAND2X1 port map( A => n100, B => n233, Y => n540);
   U415 : OAI21X1 port map( A => n541, B => n542, C => n120, Y => n530);
   U416 : OAI21X1 port map( A => n247, B => n233, C => n235, Y => n542);
   U417 : INVX1 port map( A => n543, Y => n235);
   U418 : NAND3X1 port map( A => n544, B => n122, C => n256, Y => n543);
   U419 : INVX1 port map( A => n109, Y => n247);
   U420 : NAND3X1 port map( A => n93, B => n116, C => n251, Y => n541);
   U421 : OAI21X1 port map( A => n545, B => n546, C => n102, Y => n529);
   U422 : OR2X1 port map( A => n236, B => n252, Y => n546);
   U423 : NAND2X1 port map( A => n547, B => n116, Y => n252);
   U424 : NAND2X1 port map( A => n114, B => n548, Y => n116);
   U425 : NAND3X1 port map( A => n117, B => n549, C => n538, Y => n236);
   U426 : NAND3X1 port map( A => n248, B => n544, C => n93, Y => n545);
   U427 : NAND2X1 port map( A => n550, B => n551, Y => n248);
   U428 : XNOR2X1 port map( A => CUR_ENC_LEFT_21_port, B => n552, Y => 
                           NXT_ENC_RIGHT1_21_port);
   U429 : NOR2X1 port map( A => n553, B => n554, Y => n552);
   U430 : OAI21X1 port map( A => n195, B => n555, C => n556, Y => n554);
   U431 : OAI21X1 port map( A => n557, B => n558, C => n199, Y => n556);
   U432 : NAND2X1 port map( A => n370, B => n204, Y => n558);
   U433 : INVX1 port map( A => n225, Y => n555);
   U434 : NAND3X1 port map( A => n559, B => n560, C => n561, Y => n225);
   U435 : AOI21X1 port map( A => n354, B => n215, C => n562, Y => n561);
   U436 : INVX1 port map( A => n205, Y => n562);
   U437 : OAI21X1 port map( A => n563, B => n564, C => n565, Y => n553);
   U438 : AOI22X1 port map( A => n211, B => n566, C => n221, D => n567, Y => 
                           n565);
   U439 : NAND3X1 port map( A => n217, B => n568, C => n569, Y => n567);
   U440 : INVX1 port map( A => n220, Y => n569);
   U441 : OAI21X1 port map( A => n570, B => n571, C => n203, Y => n220);
   U442 : NAND3X1 port map( A => n205, B => n203, C => n572, Y => n566);
   U443 : INVX1 port map( A => n557, Y => n572);
   U444 : NAND3X1 port map( A => n194, B => n353, C => n573, Y => n557);
   U445 : NOR2X1 port map( A => n224, B => n574, Y => n573);
   U446 : NOR2X1 port map( A => n223, B => n571, Y => n224);
   U447 : INVX1 port map( A => n226, Y => n564);
   U448 : AOI21X1 port map( A => n354, B => n356, C => n575, Y => n563);
   U449 : NAND2X1 port map( A => n370, B => n218, Y => n575);
   U450 : XOR2X1 port map( A => n576, B => CUR_ENC_LEFT_20_port, Y => 
                           NXT_ENC_RIGHT1_20_port);
   U451 : NAND3X1 port map( A => n577, B => n578, C => n579, Y => n576);
   U452 : NOR2X1 port map( A => n580, B => n581, Y => n579);
   U453 : OAI21X1 port map( A => n582, B => n458, C => n583, Y => n581);
   U454 : OAI21X1 port map( A => n584, B => n585, C => n452, Y => n583);
   U455 : OAI21X1 port map( A => n586, B => n587, C => n588, Y => n585);
   U456 : NAND2X1 port map( A => n589, B => n456, Y => n584);
   U457 : INVX1 port map( A => n590, Y => n582);
   U458 : OAI21X1 port map( A => n591, B => n592, C => n439, Y => n578);
   U459 : OAI21X1 port map( A => n459, B => n593, C => n594, Y => n592);
   U460 : INVX1 port map( A => n460, Y => n594);
   U461 : AOI22X1 port map( A => n465, B => n595, C => n462, D => n596, Y => 
                           n577);
   U462 : OAI21X1 port map( A => n597, B => n598, C => n599, Y => n596);
   U463 : INVX1 port map( A => n463, Y => n599);
   U464 : NAND3X1 port map( A => n600, B => n601, C => n602, Y => n463);
   U465 : AOI21X1 port map( A => n451, B => n603, C => n604, Y => n602);
   U466 : NAND2X1 port map( A => n605, B => n606, Y => n598);
   U467 : NAND3X1 port map( A => n607, B => n608, C => n609, Y => n595);
   U468 : NOR2X1 port map( A => n446, B => n591, Y => n609);
   U469 : OAI21X1 port map( A => n610, B => n593, C => n589, Y => n446);
   U470 : INVX1 port map( A => n603, Y => n610);
   U471 : AND2X1 port map( A => n611, B => n612, Y => n607);
   U472 : XNOR2X1 port map( A => CUR_ENC_LEFT_1_port, B => n613, Y => 
                           NXT_ENC_RIGHT1_1_port);
   U473 : NOR2X1 port map( A => n614, B => n615, Y => n613);
   U474 : OAI21X1 port map( A => n616, B => n7, C => n617, Y => n615);
   U475 : INVX1 port map( A => n504, Y => n7);
   U476 : OAI21X1 port map( A => n618, B => n619, C => n620, Y => n614);
   U477 : AOI21X1 port map( A => n21, B => n621, C => n622, Y => n620);
   U478 : INVX1 port map( A => n623, Y => n622);
   U479 : OAI21X1 port map( A => n624, B => n503, C => n14, Y => n623);
   U480 : NAND3X1 port map( A => n512, B => n625, C => n626, Y => n503);
   U481 : AOI21X1 port map( A => n627, B => n628, C => n25, Y => n626);
   U482 : NAND3X1 port map( A => n629, B => n630, C => n511, Y => n25);
   U483 : INVX1 port map( A => n631, Y => n630);
   U484 : NAND3X1 port map( A => n527, B => n17, C => n632, Y => n621);
   U485 : INVX1 port map( A => n525, Y => n632);
   U486 : NAND3X1 port map( A => n625, B => n629, C => n522, Y => n525);
   U487 : NAND3X1 port map( A => n633, B => n634, C => n635, Y => n629);
   U488 : INVX1 port map( A => n636, Y => n527);
   U489 : OAI21X1 port map( A => n637, B => n638, C => n639, Y => n636);
   U490 : AND2X1 port map( A => n18, B => n640, Y => n639);
   U491 : INVX1 port map( A => n26, Y => n619);
   U492 : INVX1 port map( A => n505, Y => n618);
   U493 : NAND3X1 port map( A => n641, B => n642, C => n643, Y => n505);
   U494 : AOI21X1 port map( A => n515, B => n628, C => n16, Y => n643);
   U495 : INVX1 port map( A => n519, Y => n16);
   U496 : INVX1 port map( A => n17, Y => n515);
   U497 : XOR2X1 port map( A => n644, B => CUR_ENC_LEFT_19_port, Y => 
                           NXT_ENC_RIGHT1_19_port);
   U498 : NAND3X1 port map( A => n645, B => n646, C => n647, Y => n644);
   U499 : AOI21X1 port map( A => n648, B => n649, C => n650, Y => n647);
   U500 : OAI21X1 port map( A => n188, B => n651, C => n652, Y => n650);
   U501 : OAI21X1 port map( A => n653, B => n654, C => n167, Y => n652);
   U502 : NAND2X1 port map( A => n655, B => n190, Y => n654);
   U503 : AOI21X1 port map( A => n656, B => n657, C => n658, Y => n190);
   U504 : NAND2X1 port map( A => n174, B => n175, Y => n658);
   U505 : OAI21X1 port map( A => n169, B => n172, C => n180, Y => n653);
   U506 : AOI22X1 port map( A => n659, B => n660, C => n657, D => n661, Y => 
                           n188);
   U507 : OAI21X1 port map( A => n662, B => n663, C => n182, Y => n646);
   U508 : OAI21X1 port map( A => n664, B => n172, C => n665, Y => n663);
   U509 : NAND2X1 port map( A => n180, B => n175, Y => n662);
   U510 : AOI22X1 port map( A => n666, B => n160, C => n667, D => n668, Y => 
                           n645);
   U511 : OAI22X1 port map( A => n669, B => n651, C => n670, D => n671, Y => 
                           n668);
   U512 : INVX1 port map( A => n184, Y => n651);
   U513 : INVX1 port map( A => n260, Y => n160);
   U514 : NOR2X1 port map( A => n184, B => n178, Y => n260);
   U515 : NAND2X1 port map( A => n672, B => n673, Y => n666);
   U516 : XOR2X1 port map( A => n674, B => CUR_ENC_LEFT_18_port, Y => 
                           NXT_ENC_RIGHT1_18_port);
   U517 : NAND2X1 port map( A => n675, B => n676, Y => n674);
   U518 : AOI21X1 port map( A => n75, B => n677, C => n678, Y => n676);
   U519 : OAI21X1 port map( A => n679, B => n67, C => n495, Y => n678);
   U520 : NAND3X1 port map( A => n680, B => n81, C => n681, Y => n495);
   U521 : INVX1 port map( A => n320, Y => n67);
   U522 : NOR2X1 port map( A => n682, B => n317, Y => n679);
   U523 : NAND2X1 port map( A => n683, B => n336, Y => n317);
   U524 : INVX1 port map( A => n328, Y => n682);
   U525 : NAND3X1 port map( A => n316, B => n327, C => n315, Y => n328);
   U526 : OAI21X1 port map( A => n684, B => n685, C => n497, Y => n677);
   U527 : INVX1 port map( A => n686, Y => n497);
   U528 : NAND3X1 port map( A => n336, B => n333, C => n492, Y => n686);
   U529 : AOI22X1 port map( A => n329, B => n681, C => n687, D => n680, Y => 
                           n492);
   U530 : NAND2X1 port map( A => n338, B => n329, Y => n333);
   U531 : NAND3X1 port map( A => n339, B => n315, C => n76, Y => n336);
   U532 : NAND2X1 port map( A => n327, B => n688, Y => n685);
   U533 : NOR2X1 port map( A => n689, B => n690, Y => n675);
   U534 : OAI21X1 port map( A => n691, B => n473, C => n692, Y => n690);
   U535 : OAI21X1 port map( A => n80, B => n693, C => n337, Y => n692);
   U536 : OAI21X1 port map( A => n684, B => n688, C => n482, Y => n693);
   U537 : INVX1 port map( A => n683, Y => n80);
   U538 : AOI22X1 port map( A => n684, B => n491, C => n680, D => n681, Y => 
                           n683);
   U539 : INVX1 port map( A => n694, Y => n491);
   U540 : NAND3X1 port map( A => n339, B => n323, C => n76, Y => n694);
   U541 : INVX1 port map( A => n340, Y => n691);
   U542 : OAI21X1 port map( A => n323, B => n695, C => n696, Y => n340);
   U543 : AND2X1 port map( A => n332, B => n78, Y => n696);
   U544 : INVX1 port map( A => n68, Y => n689);
   U545 : NOR2X1 port map( A => n697, B => n698, Y => n68);
   U546 : OAI21X1 port map( A => n699, B => n312, C => n700, Y => n698);
   U547 : OAI21X1 port map( A => n701, B => n702, C => n320, Y => n700);
   U548 : NOR2X1 port map( A => n703, B => n704, Y => n320);
   U549 : OAI22X1 port map( A => n688, B => n330, C => n77, D => n695, Y => 
                           n702);
   U550 : INVX1 port map( A => n338, Y => n695);
   U551 : NOR2X1 port map( A => n327, B => n684, Y => n338);
   U552 : INVX1 port map( A => n680, Y => n77);
   U553 : INVX1 port map( A => n681, Y => n330);
   U554 : NOR2X1 port map( A => n705, B => n76, Y => n681);
   U555 : NAND2X1 port map( A => n482, B => n332, Y => n701);
   U556 : NAND3X1 port map( A => n316, B => n323, C => n687, Y => n332);
   U557 : NAND3X1 port map( A => n705, B => n327, C => n680, Y => n482);
   U558 : NOR2X1 port map( A => n323, B => n339, Y => n680);
   U559 : INVX1 port map( A => n316, Y => n339);
   U560 : INVX1 port map( A => n75, Y => n312);
   U561 : NOR2X1 port map( A => n703, B => n706, Y => n75);
   U562 : OAI21X1 port map( A => n707, B => n473, C => n708, Y => n697);
   U563 : OAI21X1 port map( A => n490, B => n486, C => n337, Y => n708);
   U564 : NOR2X1 port map( A => n706, B => n709, Y => n337);
   U565 : NAND2X1 port map( A => n479, B => n78, Y => n486);
   U566 : NAND2X1 port map( A => n496, B => n498, Y => n78);
   U567 : NOR2X1 port map( A => n316, B => n705, Y => n496);
   U568 : NAND3X1 port map( A => n315, B => n316, C => n76, Y => n479);
   U569 : NOR2X1 port map( A => n324, B => n688, Y => n490);
   U570 : INVX1 port map( A => n329, Y => n688);
   U571 : INVX1 port map( A => n687, Y => n324);
   U572 : NOR2X1 port map( A => n327, B => n705, Y => n687);
   U573 : INVX1 port map( A => n81, Y => n473);
   U574 : NOR2X1 port map( A => n704, B => n709, Y => n81);
   U575 : INVX1 port map( A => n703, Y => n709);
   U576 : XOR2X1 port map( A => CUR_ENC_RIGHT_11_port, B => RKEY(29), Y => n703
                           );
   U577 : INVX1 port map( A => n706, Y => n704);
   U578 : XOR2X1 port map( A => CUR_ENC_RIGHT_16_port, B => RKEY(24), Y => n706
                           );
   U579 : AOI21X1 port map( A => n710, B => n315, C => n325, Y => n707);
   U580 : NAND2X1 port map( A => n699, B => n335, Y => n325);
   U581 : NAND3X1 port map( A => n705, B => n327, C => n329, Y => n335);
   U582 : NOR2X1 port map( A => n323, B => n316, Y => n329);
   U583 : INVX1 port map( A => n684, Y => n705);
   U584 : NAND3X1 port map( A => n316, B => n684, C => n498, Y => n699);
   U585 : NOR2X1 port map( A => n711, B => n76, Y => n498);
   U586 : NOR2X1 port map( A => n684, B => n711, Y => n315);
   U587 : INVX1 port map( A => n323, Y => n711);
   U588 : XOR2X1 port map( A => RKEY(26), B => CUR_ENC_RIGHT_14_port, Y => n323
                           );
   U589 : XOR2X1 port map( A => CUR_ENC_RIGHT_12_port, B => RKEY(28), Y => n684
                           );
   U590 : NOR2X1 port map( A => n76, B => n316, Y => n710);
   U591 : XOR2X1 port map( A => RKEY(27), B => CUR_ENC_RIGHT_13_port, Y => n316
                           );
   U592 : INVX1 port map( A => n327, Y => n76);
   U593 : XOR2X1 port map( A => CUR_ENC_RIGHT_15_port, B => RKEY(25), Y => n327
                           );
   U594 : XOR2X1 port map( A => n712, B => CUR_ENC_LEFT_17_port, Y => 
                           NXT_ENC_RIGHT1_17_port);
   U595 : NAND3X1 port map( A => n713, B => n714, C => n715, Y => n712);
   U596 : NOR2X1 port map( A => n716, B => n717, Y => n715);
   U597 : OAI21X1 port map( A => n150, B => n718, C => n719, Y => n717);
   U598 : OAI21X1 port map( A => n400, B => n720, C => n134, Y => n719);
   U599 : OAI21X1 port map( A => n149, B => n721, C => n722, Y => n720);
   U600 : INVX1 port map( A => n378, Y => n150);
   U601 : NAND2X1 port map( A => n723, B => n394, Y => n378);
   U602 : INVX1 port map( A => n134, Y => n394);
   U603 : NAND2X1 port map( A => n724, B => n725, Y => n716);
   U604 : OAI21X1 port map( A => n726, B => n727, C => n380, Y => n725);
   U605 : NAND2X1 port map( A => n154, B => n146, Y => n727);
   U606 : NOR2X1 port map( A => n728, B => n729, Y => n154);
   U607 : OAI21X1 port map( A => n145, B => n730, C => n731, Y => n729);
   U608 : NAND2X1 port map( A => n732, B => n733, Y => n726);
   U609 : OAI21X1 port map( A => n379, B => n734, C => n143, Y => n724);
   U610 : OAI21X1 port map( A => n145, B => n730, C => n732, Y => n734);
   U611 : INVX1 port map( A => n735, Y => n732);
   U612 : NAND2X1 port map( A => n731, B => n718, Y => n379);
   U613 : INVX1 port map( A => n736, Y => n718);
   U614 : INVX1 port map( A => n737, Y => n714);
   U615 : AOI21X1 port map( A => n151, B => n738, C => n153, Y => n713);
   U616 : OAI22X1 port map( A => n130, B => n147, C => n739, D => n740, Y => 
                           n153);
   U617 : INVX1 port map( A => n741, Y => n147);
   U618 : XOR2X1 port map( A => n742, B => CUR_ENC_LEFT_16_port, Y => 
                           NXT_ENC_RIGHT1_16_port);
   U619 : NAND3X1 port map( A => n743, B => n744, C => n745, Y => n742);
   U620 : AOI21X1 port map( A => n52, B => n746, C => n747, Y => n745);
   U621 : OAI21X1 port map( A => n748, B => n749, C => n750, Y => n747);
   U622 : OAI21X1 port map( A => n413, B => n307, C => n291, Y => n750);
   U623 : NAND2X1 port map( A => n429, B => n430, Y => n291);
   U624 : INVX1 port map( A => n410, Y => n430);
   U625 : INVX1 port map( A => n423, Y => n307);
   U626 : NAND3X1 port map( A => n417, B => n61, C => n751, Y => n423);
   U627 : INVX1 port map( A => n421, Y => n413);
   U628 : NAND3X1 port map( A => n417, B => n59, C => n433, Y => n421);
   U629 : NAND2X1 port map( A => n31, B => n54, Y => n749);
   U630 : NAND2X1 port map( A => n39, B => n38, Y => n748);
   U631 : OR2X1 port map( A => n432, B => n414, Y => n746);
   U632 : NAND2X1 port map( A => n58, B => n295, Y => n414);
   U633 : NAND3X1 port map( A => n417, B => n61, C => n433, Y => n295);
   U634 : OAI21X1 port map( A => n44, B => n422, C => n752, Y => n432);
   U635 : INVX1 port map( A => n292, Y => n752);
   U636 : OAI21X1 port map( A => n753, B => n754, C => n299, Y => n292);
   U637 : NAND3X1 port map( A => n755, B => n418, C => n427, Y => n299);
   U638 : NAND2X1 port map( A => n417, B => n418, Y => n754);
   U639 : INVX1 port map( A => n756, Y => n753);
   U640 : OAI21X1 port map( A => n757, B => n758, C => n298, Y => n744);
   U641 : NOR2X1 port map( A => n48, B => n759, Y => n298);
   U642 : OAI21X1 port map( A => n54, B => n416, C => n760, Y => n758);
   U643 : INVX1 port map( A => n304, Y => n760);
   U644 : OAI21X1 port map( A => n44, B => n49, C => n301, Y => n304);
   U645 : INVX1 port map( A => n433, Y => n44);
   U646 : NOR2X1 port map( A => n755, B => n418, Y => n433);
   U647 : INVX1 port map( A => n306, Y => n416);
   U648 : NOR2X1 port map( A => n422, B => n755, Y => n306);
   U649 : NAND2X1 port map( A => n39, B => n61, Y => n422);
   U650 : OAI21X1 port map( A => n756, B => n761, C => n35, Y => n757);
   U651 : NAND2X1 port map( A => n751, B => n59, Y => n35);
   U652 : NOR2X1 port map( A => n755, B => n61, Y => n756);
   U653 : AOI22X1 port map( A => n410, B => n762, C => n290, D => n303, Y => 
                           n743);
   U654 : NAND2X1 port map( A => n429, B => n287, Y => n303);
   U655 : INVX1 port map( A => n52, Y => n287);
   U656 : NOR2X1 port map( A => n763, B => n43, Y => n52);
   U657 : INVX1 port map( A => n31, Y => n429);
   U658 : NOR2X1 port map( A => n48, B => n43, Y => n31);
   U659 : INVX1 port map( A => n759, Y => n43);
   U660 : OAI21X1 port map( A => n38, B => n761, C => n764, Y => n290);
   U661 : AND2X1 port map( A => n765, B => n40, Y => n764);
   U662 : NAND3X1 port map( A => n60, B => n59, C => n418, Y => n40);
   U663 : INVX1 port map( A => n51, Y => n761);
   U664 : NOR2X1 port map( A => n39, B => n418, Y => n51);
   U665 : INVX1 port map( A => n419, Y => n38);
   U666 : NAND3X1 port map( A => n58, B => n301, C => n766, Y => n762);
   U667 : AOI21X1 port map( A => n418, B => n60, C => n41, Y => n766);
   U668 : OAI21X1 port map( A => n49, B => n294, C => n765, Y => n41);
   U669 : NAND3X1 port map( A => n418, B => n39, C => n419, Y => n765);
   U670 : INVX1 port map( A => n751, Y => n294);
   U671 : NOR2X1 port map( A => n54, B => n755, Y => n751);
   U672 : INVX1 port map( A => n427, Y => n49);
   U673 : NOR2X1 port map( A => n39, B => n767, Y => n60);
   U674 : INVX1 port map( A => n54, Y => n418);
   U675 : NAND3X1 port map( A => n54, B => n39, C => n419, Y => n301);
   U676 : NOR2X1 port map( A => n767, B => n59, Y => n419);
   U677 : NAND3X1 port map( A => n755, B => n54, C => n427, Y => n58);
   U678 : NOR2X1 port map( A => n417, B => n61, Y => n427);
   U679 : INVX1 port map( A => n59, Y => n61);
   U680 : XOR2X1 port map( A => CUR_ENC_RIGHT_20_port, B => RKEY(16), Y => n59)
                           ;
   U681 : INVX1 port map( A => n39, Y => n417);
   U682 : XOR2X1 port map( A => CUR_ENC_RIGHT_23_port, B => RKEY(13), Y => n39)
                           ;
   U683 : XOR2X1 port map( A => RKEY(14), B => CUR_ENC_RIGHT_22_port, Y => n54)
                           ;
   U684 : INVX1 port map( A => n767, Y => n755);
   U685 : XOR2X1 port map( A => RKEY(15), B => CUR_ENC_RIGHT_21_port, Y => n767
                           );
   U686 : NOR2X1 port map( A => n759, B => n763, Y => n410);
   U687 : INVX1 port map( A => n48, Y => n763);
   U688 : XOR2X1 port map( A => CUR_ENC_RIGHT_24_port, B => RKEY(12), Y => n48)
                           ;
   U689 : XOR2X1 port map( A => CUR_ENC_RIGHT_19_port, B => RKEY(17), Y => n759
                           );
   U690 : XNOR2X1 port map( A => CUR_ENC_LEFT_15_port, B => n768, Y => 
                           NXT_ENC_RIGHT1_15_port);
   U691 : NOR2X1 port map( A => n769, B => n770, Y => n768);
   U692 : OAI21X1 port map( A => n616, B => n771, C => n8, Y => n770);
   U693 : INVX1 port map( A => n772, Y => n8);
   U694 : NAND3X1 port map( A => n773, B => n774, C => n617, Y => n772);
   U695 : AOI22X1 port map( A => n624, B => n26, C => n520, D => n504, Y => 
                           n617);
   U696 : NOR2X1 port map( A => n518, B => n628, Y => n520);
   U697 : OAI21X1 port map( A => n628, B => n17, C => n18, Y => n624);
   U698 : NAND3X1 port map( A => n516, B => n637, C => n22, Y => n18);
   U699 : NAND3X1 port map( A => n775, B => n634, C => n637, Y => n17);
   U700 : NAND3X1 port map( A => n627, B => n628, C => n14, Y => n774);
   U701 : INVX1 port map( A => n518, Y => n627);
   U702 : NAND3X1 port map( A => n776, B => n634, C => n775, Y => n518);
   U703 : OAI21X1 port map( A => n777, B => n778, C => n21, Y => n773);
   U704 : INVX1 port map( A => n14, Y => n771);
   U705 : NOR2X1 port map( A => n779, B => n780, Y => n14);
   U706 : NOR2X1 port map( A => n781, B => n782, Y => n616);
   U707 : OAI21X1 port map( A => n637, B => n783, C => n641, Y => n782);
   U708 : NAND3X1 port map( A => n625, B => n517, C => n512, Y => n781);
   U709 : INVX1 port map( A => n777, Y => n625);
   U710 : NOR2X1 port map( A => n784, B => n516, Y => n777);
   U711 : NAND3X1 port map( A => n785, B => n786, C => n787, Y => n769);
   U712 : OAI21X1 port map( A => n20, B => n788, C => n26, Y => n787);
   U713 : NOR2X1 port map( A => n789, B => n780, Y => n26);
   U714 : INVX1 port map( A => n790, Y => n780);
   U715 : OAI21X1 port map( A => n791, B => n23, C => n642, Y => n788);
   U716 : INVX1 port map( A => n778, Y => n642);
   U717 : OAI21X1 port map( A => n637, B => n638, C => n517, Y => n778);
   U718 : NAND3X1 port map( A => n776, B => n628, C => n792, Y => n517);
   U719 : NOR2X1 port map( A => n791, B => n775, Y => n792);
   U720 : INVX1 port map( A => n634, Y => n791);
   U721 : NAND2X1 port map( A => n511, B => n522, Y => n20);
   U722 : NAND3X1 port map( A => n637, B => n628, C => n22, Y => n511);
   U723 : OAI21X1 port map( A => n631, B => n15, C => n21, Y => n786);
   U724 : NOR2X1 port map( A => n779, B => n790, Y => n21);
   U725 : OAI21X1 port map( A => n776, B => n793, C => n794, Y => n15);
   U726 : NOR2X1 port map( A => n795, B => n523, Y => n794);
   U727 : NAND2X1 port map( A => n516, B => n634, Y => n793);
   U728 : NOR2X1 port map( A => n23, B => n783, Y => n631);
   U729 : INVX1 port map( A => n796, Y => n783);
   U730 : INVX1 port map( A => n635, Y => n23);
   U731 : OAI21X1 port map( A => n797, B => n798, C => n504, Y => n785);
   U732 : NOR2X1 port map( A => n790, B => n789, Y => n504);
   U733 : INVX1 port map( A => n779, Y => n789);
   U734 : XOR2X1 port map( A => CUR_ENC_RIGHT_27_port, B => RKEY(5), Y => n779)
                           ;
   U735 : XOR2X1 port map( A => CUR_ENC_RIGHT_0_port, B => RKEY(0), Y => n790);
   U736 : NAND2X1 port map( A => n641, B => n799, Y => n798);
   U737 : INVX1 port map( A => n24, Y => n799);
   U738 : OAI21X1 port map( A => n633, B => n800, C => n519, Y => n24);
   U739 : NAND3X1 port map( A => n776, B => n628, C => n22, Y => n519);
   U740 : NAND2X1 port map( A => n628, B => n634, Y => n800);
   U741 : AOI21X1 port map( A => n516, B => n514, C => n795, Y => n641);
   U742 : INVX1 port map( A => n640, Y => n795);
   U743 : NAND2X1 port map( A => n635, B => n22, Y => n640);
   U744 : NOR2X1 port map( A => n634, B => n775, Y => n22);
   U745 : INVX1 port map( A => n633, Y => n775);
   U746 : NOR2X1 port map( A => n628, B => n637, Y => n635);
   U747 : INVX1 port map( A => n784, Y => n514);
   U748 : NAND3X1 port map( A => n633, B => n634, C => n637, Y => n784);
   U749 : NAND2X1 port map( A => n512, B => n522, Y => n797);
   U750 : NAND3X1 port map( A => n516, B => n637, C => n796, Y => n522);
   U751 : INVX1 port map( A => n776, Y => n637);
   U752 : INVX1 port map( A => n628, Y => n516);
   U753 : INVX1 port map( A => n523, Y => n512);
   U754 : NOR2X1 port map( A => n638, B => n776, Y => n523);
   U755 : XOR2X1 port map( A => RKEY(3), B => CUR_ENC_RIGHT_29_port, Y => n776)
                           ;
   U756 : NAND2X1 port map( A => n796, B => n628, Y => n638);
   U757 : XOR2X1 port map( A => CUR_ENC_RIGHT_31_port, B => RKEY(1), Y => n628)
                           ;
   U758 : NOR2X1 port map( A => n634, B => n633, Y => n796);
   U759 : XOR2X1 port map( A => RKEY(2), B => CUR_ENC_RIGHT_30_port, Y => n633)
                           ;
   U760 : XOR2X1 port map( A => CUR_ENC_RIGHT_28_port, B => RKEY(4), Y => n634)
                           ;
   U761 : XOR2X1 port map( A => n801, B => CUR_ENC_LEFT_14_port, Y => 
                           NXT_ENC_RIGHT1_14_port);
   U762 : NAND3X1 port map( A => n802, B => n803, C => n804, Y => n801);
   U763 : AOI21X1 port map( A => n178, B => n805, C => n806, Y => n804);
   U764 : OAI21X1 port map( A => n169, B => n807, C => n808, Y => n806);
   U765 : OAI21X1 port map( A => n648, B => n278, C => n182, Y => n808);
   U766 : NAND3X1 port map( A => n809, B => n673, C => n810, Y => n278);
   U767 : AND2X1 port map( A => n175, B => n275, Y => n810);
   U768 : NAND2X1 port map( A => n667, B => n811, Y => n175);
   U769 : AND2X1 port map( A => n276, B => n163, Y => n809);
   U770 : NAND2X1 port map( A => n660, B => n649, Y => n807);
   U771 : INVX1 port map( A => n162, Y => n649);
   U772 : NOR2X1 port map( A => n178, B => n182, Y => n162);
   U773 : NOR2X1 port map( A => n812, B => n813, Y => n182);
   U774 : NAND3X1 port map( A => n665, B => n814, C => n815, Y => n805);
   U775 : AND2X1 port map( A => n174, B => n181, Y => n815);
   U776 : INVX1 port map( A => n267, Y => n814);
   U777 : OAI21X1 port map( A => n168, B => n169, C => n816, Y => n267);
   U778 : AOI21X1 port map( A => n661, B => n657, C => n159, Y => n816);
   U779 : INVX1 port map( A => n673, Y => n159);
   U780 : INVX1 port map( A => n817, Y => n665);
   U781 : INVX1 port map( A => n671, Y => n178);
   U782 : NAND2X1 port map( A => n818, B => n812, Y => n671);
   U783 : OAI21X1 port map( A => n819, B => n262, C => n184, Y => n803);
   U784 : NOR2X1 port map( A => n818, B => n812, Y => n184);
   U785 : NAND2X1 port map( A => n672, B => n655, Y => n262);
   U786 : AOI21X1 port map( A => n660, B => n661, C => n817, Y => n655);
   U787 : NAND2X1 port map( A => n275, B => n189, Y => n817);
   U788 : NAND2X1 port map( A => n271, B => n820, Y => n189);
   U789 : NAND2X1 port map( A => n811, B => n820, Y => n275);
   U790 : AND2X1 port map( A => n186, B => n163, Y => n672);
   U791 : NAND2X1 port map( A => n657, B => n820, Y => n163);
   U792 : AND2X1 port map( A => n181, B => n276, Y => n186);
   U793 : NAND2X1 port map( A => n656, B => n271, Y => n276);
   U794 : NAND2X1 port map( A => n656, B => n811, Y => n181);
   U795 : NOR2X1 port map( A => n821, B => n169, Y => n819);
   U796 : OAI21X1 port map( A => n822, B => n823, C => n167, Y => n802);
   U797 : AND2X1 port map( A => n813, B => n812, Y => n167);
   U798 : XOR2X1 port map( A => CUR_ENC_RIGHT_28_port, B => RKEY(6), Y => n812)
                           ;
   U799 : INVX1 port map( A => n818, Y => n813);
   U800 : XOR2X1 port map( A => CUR_ENC_RIGHT_23_port, B => RKEY(11), Y => n818
                           );
   U801 : OAI21X1 port map( A => n659, B => n172, C => n187, Y => n823);
   U802 : INVX1 port map( A => n648, Y => n187);
   U803 : OAI21X1 port map( A => n168, B => n272, C => n174, Y => n648);
   U804 : NAND2X1 port map( A => n660, B => n820, Y => n174);
   U805 : NOR2X1 port map( A => n659, B => n171, Y => n820);
   U806 : INVX1 port map( A => n661, Y => n272);
   U807 : INVX1 port map( A => n271, Y => n168);
   U808 : NOR2X1 port map( A => n669, B => n179, Y => n271);
   U809 : INVX1 port map( A => n657, Y => n172);
   U810 : OAI21X1 port map( A => n274, B => n169, C => n824, Y => n822);
   U811 : AND2X1 port map( A => n673, B => n180, Y => n824);
   U812 : NAND2X1 port map( A => n656, B => n660, Y => n180);
   U813 : NOR2X1 port map( A => n664, B => n659, Y => n656);
   U814 : NAND2X1 port map( A => n661, B => n811, Y => n673);
   U815 : NOR2X1 port map( A => n670, B => n821, Y => n811);
   U816 : NOR2X1 port map( A => n279, B => n171, Y => n661);
   U817 : INVX1 port map( A => n664, Y => n171);
   U818 : INVX1 port map( A => n667, Y => n169);
   U819 : NOR2X1 port map( A => n664, B => n279, Y => n667);
   U820 : INVX1 port map( A => n659, Y => n279);
   U821 : XOR2X1 port map( A => CUR_ENC_RIGHT_24_port, B => RKEY(10), Y => n659
                           );
   U822 : XOR2X1 port map( A => RKEY(8), B => CUR_ENC_RIGHT_26_port, Y => n664)
                           ;
   U823 : NOR2X1 port map( A => n657, B => n660, Y => n274);
   U824 : NOR2X1 port map( A => n670, B => n669, Y => n660);
   U825 : NOR2X1 port map( A => n179, B => n821, Y => n657);
   U826 : INVX1 port map( A => n669, Y => n821);
   U827 : XOR2X1 port map( A => CUR_ENC_RIGHT_27_port, B => RKEY(7), Y => n669)
                           ;
   U828 : INVX1 port map( A => n670, Y => n179);
   U829 : XOR2X1 port map( A => RKEY(9), B => CUR_ENC_RIGHT_25_port, Y => n670)
                           ;
   U830 : XNOR2X1 port map( A => CUR_ENC_LEFT_13_port, B => n825, Y => 
                           NXT_ENC_RIGHT1_13_port);
   U831 : NOR2X1 port map( A => n826, B => n827, Y => n825);
   U832 : OAI21X1 port map( A => n195, B => n366, C => n828, Y => n827);
   U833 : OAI21X1 port map( A => n829, B => n830, C => n211, Y => n828);
   U834 : NOR2X1 port map( A => n831, B => n832, Y => n211);
   U835 : OAI21X1 port map( A => n833, B => n570, C => n194, Y => n830);
   U836 : INVX1 port map( A => n834, Y => n194);
   U837 : OAI21X1 port map( A => n835, B => n836, C => n837, Y => n834);
   U838 : AND2X1 port map( A => n217, B => n838, Y => n837);
   U839 : NAND2X1 port map( A => n839, B => n222, Y => n217);
   U840 : NAND3X1 port map( A => n559, B => n568, C => n353, Y => n829);
   U841 : NOR2X1 port map( A => n352, B => n840, Y => n366);
   U842 : INVX1 port map( A => n203, Y => n840);
   U843 : NAND2X1 port map( A => n213, B => n215, Y => n203);
   U844 : OAI21X1 port map( A => n835, B => n836, C => n559, Y => n352);
   U845 : NAND2X1 port map( A => n841, B => n222, Y => n559);
   U846 : INVX1 port map( A => n213, Y => n835);
   U847 : NOR2X1 port map( A => n226, B => n221, Y => n195);
   U848 : NAND3X1 port map( A => n842, B => n843, C => n844, Y => n826);
   U849 : OAI21X1 port map( A => n845, B => n846, C => n226, Y => n844);
   U850 : NOR2X1 port map( A => n832, B => n847, Y => n226);
   U851 : INVX1 port map( A => n848, Y => n832);
   U852 : OAI21X1 port map( A => n833, B => n223, C => n370, Y => n846);
   U853 : NAND2X1 port map( A => n849, B => n215, Y => n370);
   U854 : NAND2X1 port map( A => n205, B => n204, Y => n845);
   U855 : NAND2X1 port map( A => n849, B => n839, Y => n205);
   U856 : NAND2X1 port map( A => n221, B => n850, Y => n843);
   U857 : OAI21X1 port map( A => n841, B => n851, C => n365, Y => n850);
   U858 : INVX1 port map( A => n350, Y => n365);
   U859 : OAI21X1 port map( A => n570, B => n571, C => n204, Y => n350);
   U860 : NAND2X1 port map( A => n354, B => n839, Y => n204);
   U861 : INVX1 port map( A => n215, Y => n570);
   U862 : NOR2X1 port map( A => n356, B => n359, Y => n215);
   U863 : NOR2X1 port map( A => n831, B => n848, Y => n221);
   U864 : OAI21X1 port map( A => n349, B => n852, C => n199, Y => n842);
   U865 : NOR2X1 port map( A => n848, B => n847, Y => n199);
   U866 : INVX1 port map( A => n831, Y => n847);
   U867 : XOR2X1 port map( A => CUR_ENC_RIGHT_7_port, B => RKEY(35), Y => n831)
                           ;
   U868 : XOR2X1 port map( A => CUR_ENC_RIGHT_12_port, B => RKEY(30), Y => n848
                           );
   U869 : OAI21X1 port map( A => n359, B => n571, C => n202, Y => n852);
   U870 : NOR2X1 port map( A => n574, B => n367, Y => n202);
   U871 : INVX1 port map( A => n218, Y => n367);
   U872 : NAND2X1 port map( A => n849, B => n841, Y => n218);
   U873 : AND2X1 port map( A => n354, B => n853, Y => n574);
   U874 : INVX1 port map( A => n222, Y => n571);
   U875 : NOR2X1 port map( A => n216, B => n833, Y => n222);
   U876 : NAND3X1 port map( A => n353, B => n560, C => n200, Y => n349);
   U877 : AND2X1 port map( A => n838, B => n568, Y => n200);
   U878 : NAND2X1 port map( A => n354, B => n841, Y => n568);
   U879 : INVX1 port map( A => n836, Y => n841);
   U880 : NAND2X1 port map( A => n359, B => n356, Y => n836);
   U881 : NOR2X1 port map( A => n833, B => n854, Y => n354);
   U882 : NAND2X1 port map( A => n839, B => n213, Y => n838);
   U883 : NOR2X1 port map( A => n359, B => n214, Y => n839);
   U884 : NAND2X1 port map( A => n853, B => n213, Y => n560);
   U885 : NOR2X1 port map( A => n855, B => n854, Y => n213);
   U886 : NAND2X1 port map( A => n849, B => n853, Y => n353);
   U887 : INVX1 port map( A => n223, Y => n853);
   U888 : NAND2X1 port map( A => n359, B => n214, Y => n223);
   U889 : INVX1 port map( A => n356, Y => n214);
   U890 : XOR2X1 port map( A => CUR_ENC_RIGHT_8_port, B => RKEY(34), Y => n356)
                           ;
   U891 : XNOR2X1 port map( A => RKEY(32), B => CUR_ENC_RIGHT_10_port, Y => 
                           n359);
   U892 : INVX1 port map( A => n851, Y => n849);
   U893 : NAND2X1 port map( A => n833, B => n854, Y => n851);
   U894 : INVX1 port map( A => n216, Y => n854);
   U895 : XOR2X1 port map( A => RKEY(33), B => CUR_ENC_RIGHT_9_port, Y => n216)
                           ;
   U896 : INVX1 port map( A => n855, Y => n833);
   U897 : XOR2X1 port map( A => CUR_ENC_RIGHT_11_port, B => RKEY(31), Y => n855
                           );
   U898 : XOR2X1 port map( A => n856, B => CUR_ENC_LEFT_12_port, Y => 
                           NXT_ENC_RIGHT1_12_port);
   U899 : NAND3X1 port map( A => n857, B => n858, C => n859, Y => n856);
   U900 : AOI21X1 port map( A => n237, B => n860, C => n96, Y => n859);
   U901 : OAI21X1 port map( A => n861, B => n112, C => n862, Y => n96);
   U902 : AOI22X1 port map( A => n120, B => n863, C => n246, D => n537, Y => 
                           n862);
   U903 : INVX1 port map( A => n121, Y => n537);
   U904 : NAND2X1 port map( A => n251, B => n256, Y => n863);
   U905 : NAND3X1 port map( A => n100, B => n233, C => n109, Y => n256);
   U906 : NAND3X1 port map( A => n864, B => n113, C => n551, Y => n251);
   U907 : NAND3X1 port map( A => n538, B => n239, C => n865, Y => n860);
   U908 : AOI21X1 port map( A => n551, B => n234, C => n231, Y => n865);
   U909 : NAND3X1 port map( A => n549, B => n253, C => n91, Y => n231);
   U910 : NAND3X1 port map( A => n108, B => n100, C => n111, Y => n549);
   U911 : INVX1 port map( A => n94, Y => n237);
   U912 : NAND2X1 port map( A => n866, B => n867, Y => n94);
   U913 : OAI21X1 port map( A => n118, B => n868, C => n102, Y => n858);
   U914 : INVX1 port map( A => n112, Y => n102);
   U915 : NAND2X1 port map( A => n869, B => n867, Y => n112);
   U916 : OAI21X1 port map( A => n233, B => n870, C => n117, Y => n868);
   U917 : INVX1 port map( A => n871, Y => n870);
   U918 : NAND3X1 port map( A => n538, B => n91, C => n872, Y => n118);
   U919 : AND2X1 port map( A => n253, B => n547, Y => n872);
   U920 : NAND3X1 port map( A => n109, B => n100, C => n108, Y => n547);
   U921 : NOR2X1 port map( A => n539, B => n113, Y => n109);
   U922 : NAND2X1 port map( A => n550, B => n114, Y => n253);
   U923 : NAND3X1 port map( A => n873, B => n233, C => n548, Y => n538);
   U924 : AOI22X1 port map( A => n120, B => n874, C => n246, D => n875, Y => 
                           n857);
   U925 : INVX1 port map( A => n876, Y => n875);
   U926 : AOI21X1 port map( A => n233, B => n550, C => n255, Y => n876);
   U927 : NAND3X1 port map( A => n877, B => n93, C => n878, Y => n255);
   U928 : AND2X1 port map( A => n122, B => n239, Y => n878);
   U929 : NAND3X1 port map( A => n108, B => n873, C => n548, Y => n239);
   U930 : NAND2X1 port map( A => n871, B => n551, Y => n122);
   U931 : NAND3X1 port map( A => n864, B => n233, C => n111, Y => n93);
   U932 : INVX1 port map( A => n536, Y => n877);
   U933 : NAND2X1 port map( A => n861, B => n117, Y => n536);
   U934 : NAND2X1 port map( A => n548, B => n551, Y => n117);
   U935 : NOR2X1 port map( A => n233, B => n873, Y => n551);
   U936 : NOR2X1 port map( A => n113, B => n864, Y => n550);
   U937 : NOR2X1 port map( A => n867, B => n866, Y => n246);
   U938 : INVX1 port map( A => n869, Y => n866);
   U939 : OAI21X1 port map( A => n873, B => n234, C => n879, Y => n874);
   U940 : INVX1 port map( A => n244, Y => n879);
   U941 : NAND3X1 port map( A => n91, B => n544, C => n880, Y => n244);
   U942 : AND2X1 port map( A => n861, B => n121, Y => n880);
   U943 : NAND3X1 port map( A => n100, B => n233, C => n111, Y => n121);
   U944 : NAND3X1 port map( A => n108, B => n864, C => n111, Y => n861);
   U945 : NOR2X1 port map( A => n881, B => n539, Y => n111);
   U946 : NAND2X1 port map( A => n871, B => n114, Y => n544);
   U947 : NOR2X1 port map( A => n881, B => n864, Y => n871);
   U948 : NAND3X1 port map( A => n864, B => n113, C => n114, Y => n91);
   U949 : NOR2X1 port map( A => n108, B => n873, Y => n114);
   U950 : INVX1 port map( A => n233, Y => n108);
   U951 : XOR2X1 port map( A => RKEY(20), B => CUR_ENC_RIGHT_18_port, Y => n233
                           );
   U952 : INVX1 port map( A => n100, Y => n864);
   U953 : INVX1 port map( A => n548, Y => n234);
   U954 : NOR2X1 port map( A => n100, B => n113, Y => n548);
   U955 : INVX1 port map( A => n881, Y => n113);
   U956 : XOR2X1 port map( A => CUR_ENC_RIGHT_19_port, B => RKEY(19), Y => n881
                           );
   U957 : XOR2X1 port map( A => CUR_ENC_RIGHT_16_port, B => RKEY(22), Y => n100
                           );
   U958 : INVX1 port map( A => n539, Y => n873);
   U959 : XOR2X1 port map( A => RKEY(21), B => CUR_ENC_RIGHT_17_port, Y => n539
                           );
   U960 : NOR2X1 port map( A => n867, B => n869, Y => n120);
   U961 : XOR2X1 port map( A => CUR_ENC_RIGHT_20_port, B => RKEY(18), Y => n869
                           );
   U962 : XOR2X1 port map( A => CUR_ENC_RIGHT_15_port, B => RKEY(23), Y => n867
                           );
   U963 : XOR2X1 port map( A => n882, B => CUR_ENC_LEFT_11_port, Y => 
                           NXT_ENC_RIGHT1_11_port);
   U964 : NAND3X1 port map( A => n883, B => n884, C => n885, Y => n882);
   U965 : NOR2X1 port map( A => n737, B => n886, Y => n885);
   U966 : OAI21X1 port map( A => n887, B => n130, C => n125, Y => n886);
   U967 : INVX1 port map( A => n401, Y => n125);
   U968 : OAI21X1 port map( A => n733, B => n739, C => n888, Y => n401);
   U969 : AND2X1 port map( A => n889, B => n890, Y => n888);
   U970 : OAI21X1 port map( A => n735, B => n395, C => n380, Y => n890);
   U971 : NOR2X1 port map( A => n145, B => n138, Y => n735);
   U972 : OAI21X1 port map( A => n741, B => n736, C => n151, Y => n889);
   U973 : NOR2X1 port map( A => n891, B => n138, Y => n736);
   U974 : INVX1 port map( A => n144, Y => n138);
   U975 : INVX1 port map( A => n143, Y => n739);
   U976 : NAND2X1 port map( A => n892, B => n144, Y => n733);
   U977 : INVX1 port map( A => n380, Y => n130);
   U978 : NOR2X1 port map( A => n893, B => n894, Y => n380);
   U979 : INVX1 port map( A => n738, Y => n887);
   U980 : NAND3X1 port map( A => n895, B => n383, C => n896, Y => n738);
   U981 : AOI22X1 port map( A => n897, B => n398, C => n892, D => n898, Y => 
                           n896);
   U982 : NOR2X1 port map( A => n390, B => n132, Y => n895);
   U983 : INVX1 port map( A => n731, Y => n132);
   U984 : NOR2X1 port map( A => n721, B => n891, Y => n390);
   U985 : OAI21X1 port map( A => n723, B => n384, C => n899, Y => n737);
   U986 : AOI22X1 port map( A => n143, B => n900, C => n134, D => n728, Y => 
                           n899);
   U987 : NAND2X1 port map( A => n396, B => n383, Y => n728);
   U988 : INVX1 port map( A => n387, Y => n396);
   U989 : NOR2X1 port map( A => n381, B => n891, Y => n387);
   U990 : INVX1 port map( A => n135, Y => n381);
   U991 : OR2X1 port map( A => n400, B => n741, Y => n900);
   U992 : NOR2X1 port map( A => n901, B => n721, Y => n741);
   U993 : INVX1 port map( A => n897, Y => n721);
   U994 : NAND2X1 port map( A => n146, B => n389, Y => n400);
   U995 : INVX1 port map( A => n151, Y => n723);
   U996 : OAI21X1 port map( A => n902, B => n903, C => n134, Y => n884);
   U997 : NOR2X1 port map( A => n904, B => n893, Y => n134);
   U998 : OAI21X1 port map( A => n905, B => n901, C => n146, Y => n903);
   U999 : NAND2X1 port map( A => n906, B => n144, Y => n146);
   U1000 : NOR2X1 port map( A => n393, B => n391, Y => n144);
   U1001 : INVX1 port map( A => n892, Y => n901);
   U1002 : NAND2X1 port map( A => n384, B => n740, Y => n902);
   U1003 : INVX1 port map( A => n395, Y => n740);
   U1004 : NOR2X1 port map( A => n730, B => n891, Y => n395);
   U1005 : INVX1 port map( A => n905, Y => n730);
   U1006 : NAND2X1 port map( A => n906, B => n905, Y => n384);
   U1007 : AOI22X1 port map( A => n143, B => n907, C => n151, D => n908, Y => 
                           n883);
   U1008 : OAI21X1 port map( A => n905, B => n145, C => n909, Y => n908);
   U1009 : AND2X1 port map( A => n389, B => n731, Y => n909);
   U1010 : NAND2X1 port map( A => n135, B => n906, Y => n731);
   U1011 : NAND2X1 port map( A => n892, B => n905, Y => n389);
   U1012 : NOR2X1 port map( A => n910, B => n149, Y => n892);
   U1013 : INVX1 port map( A => n398, Y => n145);
   U1014 : NOR2X1 port map( A => n399, B => n898, Y => n905);
   U1015 : NOR2X1 port map( A => n904, B => n911, Y => n151);
   U1016 : OAI21X1 port map( A => n393, B => n891, C => n912, Y => n907);
   U1017 : AND2X1 port map( A => n722, B => n383, Y => n912);
   U1018 : NAND2X1 port map( A => n906, B => n897, Y => n383);
   U1019 : NOR2X1 port map( A => n391, B => n898, Y => n897);
   U1020 : INVX1 port map( A => n393, Y => n898);
   U1021 : AND2X1 port map( A => n149, B => n910, Y => n906);
   U1022 : INVX1 port map( A => n136, Y => n910);
   U1023 : NAND2X1 port map( A => n135, B => n398, Y => n722);
   U1024 : NOR2X1 port map( A => n136, B => n149, Y => n398);
   U1025 : NOR2X1 port map( A => n393, B => n399, Y => n135);
   U1026 : INVX1 port map( A => n391, Y => n399);
   U1027 : XOR2X1 port map( A => RKEY(45), B => CUR_ENC_RIGHT_1_port, Y => n391
                           );
   U1028 : NAND2X1 port map( A => n149, B => n136, Y => n891);
   U1029 : XOR2X1 port map( A => CUR_ENC_RIGHT_3_port, B => RKEY(43), Y => n136
                           );
   U1030 : XNOR2X1 port map( A => CUR_ENC_RIGHT_0_port, B => RKEY(46), Y => 
                           n149);
   U1031 : XOR2X1 port map( A => RKEY(44), B => CUR_ENC_RIGHT_2_port, Y => n393
                           );
   U1032 : NOR2X1 port map( A => n911, B => n894, Y => n143);
   U1033 : INVX1 port map( A => n904, Y => n894);
   U1034 : XOR2X1 port map( A => CUR_ENC_RIGHT_31_port, B => RKEY(47), Y => 
                           n904);
   U1035 : INVX1 port map( A => n893, Y => n911);
   U1036 : XOR2X1 port map( A => CUR_ENC_RIGHT_4_port, B => RKEY(42), Y => n893
                           );
   U1037 : XOR2X1 port map( A => n913, B => CUR_ENC_LEFT_10_port, Y => 
                           NXT_ENC_RIGHT1_10_port);
   U1038 : NAND3X1 port map( A => n914, B => n438, C => n915, Y => n913);
   U1039 : AOI21X1 port map( A => n462, B => n916, C => n917, Y => n915);
   U1040 : OAI21X1 port map( A => n918, B => n919, C => n920, Y => n917);
   U1041 : OAI21X1 port map( A => n921, B => n922, C => n465, Y => n920);
   U1042 : OAI21X1 port map( A => n603, B => n587, C => n608, Y => n922);
   U1043 : NAND2X1 port map( A => n923, B => n611, Y => n921);
   U1044 : AOI21X1 port map( A => n457, B => n924, C => n604, Y => n918);
   U1045 : INVX1 port map( A => n588, Y => n604);
   U1046 : NAND3X1 port map( A => n925, B => n926, C => n927, Y => n916);
   U1047 : AOI22X1 port map( A => n928, B => n605, C => n451, D => n603, Y => 
                           n927);
   U1048 : NOR2X1 port map( A => n929, B => n466, Y => n928);
   U1049 : AOI21X1 port map( A => n591, B => n462, C => n930, Y => n438);
   U1050 : NAND2X1 port map( A => n931, B => n932, Y => n930);
   U1051 : OAI21X1 port map( A => n933, B => n460, C => n452, Y => n932);
   U1052 : INVX1 port map( A => n589, Y => n933);
   U1053 : OAI21X1 port map( A => n441, B => n590, C => n439, Y => n931);
   U1054 : NAND2X1 port map( A => n612, B => n925, Y => n590);
   U1055 : INVX1 port map( A => n611, Y => n441);
   U1056 : NAND2X1 port map( A => n600, B => n444, Y => n591);
   U1057 : INVX1 port map( A => n934, Y => n914);
   U1058 : OAI22X1 port map( A => n935, B => n936, C => n443, D => n937, Y => 
                           n934);
   U1059 : XOR2X1 port map( A => n938, B => CUR_ENC_LEFT_0_port, Y => 
                           NXT_ENC_RIGHT1_0_port);
   U1060 : NAND2X1 port map( A => n939, B => n940, Y => n938);
   U1061 : AOI21X1 port map( A => n462, B => n941, C => n942, Y => n940);
   U1062 : OAI21X1 port map( A => n943, B => n587, C => n944, Y => n942);
   U1063 : OAI21X1 port map( A => n945, B => n946, C => n465, Y => n944);
   U1064 : NOR2X1 port map( A => n947, B => n937, Y => n465);
   U1065 : OAI21X1 port map( A => n948, B => n593, C => n936, Y => n946);
   U1066 : NOR2X1 port map( A => n461, B => n949, Y => n936);
   U1067 : INVX1 port map( A => n600, Y => n949);
   U1068 : OAI21X1 port map( A => n950, B => n459, C => n608, Y => n461);
   U1069 : AND2X1 port map( A => n456, B => n601, Y => n608);
   U1070 : NAND2X1 port map( A => n457, B => n951, Y => n601);
   U1071 : NOR2X1 port map( A => n950, B => n605, Y => n457);
   U1072 : NAND3X1 port map( A => n466, B => n605, C => n929, Y => n456);
   U1073 : INVX1 port map( A => n952, Y => n459);
   U1074 : NAND2X1 port map( A => n443, B => n925, Y => n945);
   U1075 : NAND3X1 port map( A => n606, B => n953, C => n929, Y => n925);
   U1076 : NAND3X1 port map( A => n605, B => n606, C => n929, Y => n443);
   U1077 : INVX1 port map( A => n451, Y => n587);
   U1078 : AOI22X1 port map( A => n462, B => n954, C => n452, D => n952, Y => 
                           n943);
   U1079 : INVX1 port map( A => n586, Y => n954);
   U1080 : NOR2X1 port map( A => n952, B => n603, Y => n586);
   U1081 : OAI21X1 port map( A => n953, B => n924, C => n955, Y => n941);
   U1082 : AND2X1 port map( A => n611, B => n444, Y => n955);
   U1083 : NAND3X1 port map( A => n948, B => n953, C => n451, Y => n444);
   U1084 : INVX1 port map( A => n951, Y => n924);
   U1085 : NOR2X1 port map( A => n580, B => n956, Y => n939);
   U1086 : OAI21X1 port map( A => n935, B => n611, C => n957, Y => n956);
   U1087 : OAI21X1 port map( A => n958, B => n959, C => n960, Y => n957);
   U1088 : INVX1 port map( A => n458, Y => n960);
   U1089 : NOR2X1 port map( A => n439, B => n452, Y => n458);
   U1090 : INVX1 port map( A => n919, Y => n452);
   U1091 : INVX1 port map( A => n935, Y => n439);
   U1092 : OAI21X1 port map( A => n605, B => n593, C => n588, Y => n959);
   U1093 : NAND3X1 port map( A => n605, B => n948, C => n451, Y => n588);
   U1094 : NOR2X1 port map( A => n606, B => n950, Y => n451);
   U1095 : NAND2X1 port map( A => n597, B => n606, Y => n593);
   U1096 : NAND3X1 port map( A => n600, B => n926, C => n612, Y => n958);
   U1097 : NAND3X1 port map( A => n950, B => n606, C => n952, Y => n612);
   U1098 : NAND3X1 port map( A => n466, B => n953, C => n929, Y => n600);
   U1099 : NOR2X1 port map( A => n597, B => n454, Y => n929);
   U1100 : NAND3X1 port map( A => n466, B => n950, C => n603, Y => n611);
   U1101 : INVX1 port map( A => n961, Y => n580);
   U1102 : AOI21X1 port map( A => n460, B => n462, C => n962, Y => n961);
   U1103 : OAI22X1 port map( A => n923, B => n919, C => n589, D => n935, Y => 
                           n962);
   U1104 : NAND2X1 port map( A => n937, B => n947, Y => n935);
   U1105 : INVX1 port map( A => n442, Y => n937);
   U1106 : NAND3X1 port map( A => n605, B => n597, C => n951, Y => n589);
   U1107 : NOR2X1 port map( A => n466, B => n454, Y => n951);
   U1108 : INVX1 port map( A => n948, Y => n454);
   U1109 : NAND2X1 port map( A => n947, B => n442, Y => n919);
   U1110 : NOR2X1 port map( A => n947, B => n442, Y => n462);
   U1111 : XOR2X1 port map( A => CUR_ENC_RIGHT_3_port, B => RKEY(41), Y => n442
                           );
   U1112 : XOR2X1 port map( A => CUR_ENC_RIGHT_8_port, B => RKEY(36), Y => n947
                           );
   U1113 : NAND2X1 port map( A => n923, B => n926, Y => n460);
   U1114 : NAND3X1 port map( A => n466, B => n950, C => n952, Y => n926);
   U1115 : NOR2X1 port map( A => n953, B => n948, Y => n952);
   U1116 : INVX1 port map( A => n606, Y => n466);
   U1117 : NAND3X1 port map( A => n950, B => n606, C => n603, Y => n923);
   U1118 : NOR2X1 port map( A => n948, B => n605, Y => n603);
   U1119 : INVX1 port map( A => n953, Y => n605);
   U1120 : XOR2X1 port map( A => CUR_ENC_RIGHT_7_port, B => RKEY(37), Y => n953
                           );
   U1121 : XOR2X1 port map( A => RKEY(38), B => CUR_ENC_RIGHT_6_port, Y => n948
                           );
   U1122 : XOR2X1 port map( A => RKEY(39), B => CUR_ENC_RIGHT_5_port, Y => n606
                           );
   U1123 : INVX1 port map( A => n597, Y => n950);
   U1124 : XOR2X1 port map( A => CUR_ENC_RIGHT_4_port, B => RKEY(40), Y => n597
                           );

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity e_encController is

   port( DATA : in std_logic_vector (7 downto 0);  FULL, EMPTY, CLK, RST : in 
         std_logic;  START, R_ENABLE, W_ENABLE : out std_logic;  ENC_LEFT, 
         ENC_RIGHT : out std_logic_vector (31 downto 0));

end e_encController;

architecture SYN_behav of e_encController is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX8
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFPOSX1
      port( D, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal W_ENABLE_port, ENC_LEFT_31_port, ENC_LEFT_30_port, ENC_LEFT_29_port, 
      ENC_LEFT_28_port, ENC_LEFT_27_port, ENC_LEFT_26_port, ENC_LEFT_25_port, 
      ENC_LEFT_24_port, ENC_LEFT_23_port, ENC_LEFT_22_port, ENC_LEFT_21_port, 
      ENC_LEFT_20_port, ENC_LEFT_19_port, ENC_LEFT_18_port, ENC_LEFT_17_port, 
      ENC_LEFT_16_port, ENC_LEFT_15_port, ENC_LEFT_14_port, ENC_LEFT_13_port, 
      ENC_LEFT_12_port, ENC_LEFT_11_port, ENC_LEFT_10_port, ENC_LEFT_9_port, 
      ENC_LEFT_8_port, ENC_LEFT_7_port, ENC_LEFT_6_port, ENC_LEFT_5_port, 
      ENC_LEFT_4_port, ENC_LEFT_3_port, ENC_LEFT_2_port, ENC_LEFT_1_port, 
      ENC_LEFT_0_port, ENC_RIGHT_31_port, ENC_RIGHT_30_port, ENC_RIGHT_29_port,
      ENC_RIGHT_28_port, ENC_RIGHT_27_port, ENC_RIGHT_26_port, 
      ENC_RIGHT_25_port, ENC_RIGHT_24_port, ENC_RIGHT_23_port, 
      ENC_RIGHT_22_port, ENC_RIGHT_21_port, ENC_RIGHT_20_port, 
      ENC_RIGHT_19_port, ENC_RIGHT_18_port, ENC_RIGHT_17_port, 
      ENC_RIGHT_16_port, ENC_RIGHT_15_port, ENC_RIGHT_14_port, 
      ENC_RIGHT_13_port, ENC_RIGHT_12_port, ENC_RIGHT_11_port, 
      ENC_RIGHT_10_port, ENC_RIGHT_9_port, ENC_RIGHT_8_port, ENC_RIGHT_7_port, 
      ENC_RIGHT_6_port, ENC_RIGHT_5_port, ENC_RIGHT_4_port, ENC_RIGHT_3_port, 
      ENC_RIGHT_2_port, ENC_RIGHT_1_port, ENC_RIGHT_0_port, compileCT_3_port, 
      compileCT_2_port, compileCT_1_port, compileCT_0_port, nxtCompCT_3_port, 
      nxtCompCT_2_port, rndCT_3_port, rndCT_2_port, rndCT_1_port, rndCT_0_port,
      N23, cData1_7_port, cData1_6_port, cData1_5_port, cData1_4_port, 
      cData1_3_port, cData1_2_port, cData1_1_port, cData1_0_port, cData2_7_port
      , cData2_6_port, cData2_5_port, cData2_4_port, cData2_3_port, 
      cData2_2_port, cData2_1_port, cData2_0_port, cData3_7_port, cData3_6_port
      , cData3_5_port, cData3_4_port, cData3_3_port, cData3_2_port, 
      cData3_1_port, cData3_0_port, cData4_7_port, cData4_6_port, cData4_5_port
      , cData4_4_port, cData4_3_port, cData4_2_port, cData4_1_port, 
      cData4_0_port, cData5_7_port, cData5_6_port, cData5_5_port, cData5_4_port
      , cData5_3_port, cData5_2_port, cData5_1_port, cData5_0_port, 
      cData6_7_port, cData6_6_port, cData6_5_port, cData6_4_port, cData6_3_port
      , cData6_2_port, cData6_1_port, cData6_0_port, cData7_7_port, 
      cData7_6_port, cData7_5_port, cData7_4_port, cData7_3_port, cData7_2_port
      , cData7_1_port, cData7_0_port, cData8_7_port, cData8_6_port, 
      cData8_5_port, cData8_4_port, cData8_3_port, cData8_2_port, cData8_1_port
      , cData8_0_port, N273, n215, n216, n217, n218, n219, n220, n221, n222, 
      n223, n224, n225, n226, n227, n228, n229, n230, n233, n234, n235, n236, 
      n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, 
      n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, 
      n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, 
      n273_port, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, 
      n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, 
      n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, 
      n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, 
      n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, 
      n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, 
      n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, 
      n356, n357, n358, n359, n360, n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, 
      n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23_port, n24, n25
      , n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, 
      n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54
      , n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, 
      n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83
      , n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, 
      n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, 
      n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, 
      n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, 
      n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, 
      n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, 
      n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, 
      n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, 
      n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, 
      n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, 
      n206, n207, n208, n209, n210, n211, n212, n213, n214 : std_logic;

begin
   W_ENABLE <= W_ENABLE_port;
   ENC_LEFT <= ( ENC_LEFT_31_port, ENC_LEFT_30_port, ENC_LEFT_29_port, 
      ENC_LEFT_28_port, ENC_LEFT_27_port, ENC_LEFT_26_port, ENC_LEFT_25_port, 
      ENC_LEFT_24_port, ENC_LEFT_23_port, ENC_LEFT_22_port, ENC_LEFT_21_port, 
      ENC_LEFT_20_port, ENC_LEFT_19_port, ENC_LEFT_18_port, ENC_LEFT_17_port, 
      ENC_LEFT_16_port, ENC_LEFT_15_port, ENC_LEFT_14_port, ENC_LEFT_13_port, 
      ENC_LEFT_12_port, ENC_LEFT_11_port, ENC_LEFT_10_port, ENC_LEFT_9_port, 
      ENC_LEFT_8_port, ENC_LEFT_7_port, ENC_LEFT_6_port, ENC_LEFT_5_port, 
      ENC_LEFT_4_port, ENC_LEFT_3_port, ENC_LEFT_2_port, ENC_LEFT_1_port, 
      ENC_LEFT_0_port );
   ENC_RIGHT <= ( ENC_RIGHT_31_port, ENC_RIGHT_30_port, ENC_RIGHT_29_port, 
      ENC_RIGHT_28_port, ENC_RIGHT_27_port, ENC_RIGHT_26_port, 
      ENC_RIGHT_25_port, ENC_RIGHT_24_port, ENC_RIGHT_23_port, 
      ENC_RIGHT_22_port, ENC_RIGHT_21_port, ENC_RIGHT_20_port, 
      ENC_RIGHT_19_port, ENC_RIGHT_18_port, ENC_RIGHT_17_port, 
      ENC_RIGHT_16_port, ENC_RIGHT_15_port, ENC_RIGHT_14_port, 
      ENC_RIGHT_13_port, ENC_RIGHT_12_port, ENC_RIGHT_11_port, 
      ENC_RIGHT_10_port, ENC_RIGHT_9_port, ENC_RIGHT_8_port, ENC_RIGHT_7_port, 
      ENC_RIGHT_6_port, ENC_RIGHT_5_port, ENC_RIGHT_4_port, ENC_RIGHT_3_port, 
      ENC_RIGHT_2_port, ENC_RIGHT_1_port, ENC_RIGHT_0_port );
   
   rndCT_reg_0_inst : DFFSR port map( D => n229, CLK => CLK, R => n214, S => 
                           n228, Q => rndCT_0_port);
   rndCT_reg_1_inst : DFFSR port map( D => n227, CLK => CLK, R => n214, S => 
                           n226, Q => rndCT_1_port);
   compileCT_reg_3_inst : DFFSR port map( D => nxtCompCT_3_port, CLK => CLK, R 
                           => n214, S => n225, Q => compileCT_3_port);
   compileCT_reg_1_inst : DFFSR port map( D => n230, CLK => CLK, R => n214, S 
                           => n224, Q => compileCT_1_port);
   compileCT_reg_2_inst : DFFSR port map( D => nxtCompCT_2_port, CLK => CLK, R 
                           => n214, S => n223, Q => compileCT_2_port);
   compileCT_reg_0_inst : DFFSR port map( D => n213, CLK => CLK, R => n214, S 
                           => n222, Q => compileCT_0_port);
   rndCT_reg_2_inst : DFFSR port map( D => n221, CLK => CLK, R => n214, S => 
                           n220, Q => rndCT_2_port);
   rndCT_reg_3_inst : DFFSR port map( D => n219, CLK => CLK, R => n214, S => 
                           n218, Q => rndCT_3_port);
   rndCT_reg_4_inst : DFFSR port map( D => n217, CLK => CLK, R => n214, S => 
                           n216, Q => N23);
   cD_ENABLE_reg : DFFPOSX1 port map( D => n215, CLK => CLK, Q => W_ENABLE_port
                           );
   cData2_reg_7_inst : DFFPOSX1 port map( D => n353, CLK => CLK, Q => 
                           cData2_7_port);
   cData2_reg_6_inst : DFFPOSX1 port map( D => n354, CLK => CLK, Q => 
                           cData2_6_port);
   cData2_reg_5_inst : DFFPOSX1 port map( D => n355, CLK => CLK, Q => 
                           cData2_5_port);
   cData2_reg_4_inst : DFFPOSX1 port map( D => n356, CLK => CLK, Q => 
                           cData2_4_port);
   cData2_reg_3_inst : DFFPOSX1 port map( D => n357, CLK => CLK, Q => 
                           cData2_3_port);
   cData2_reg_2_inst : DFFPOSX1 port map( D => n358, CLK => CLK, Q => 
                           cData2_2_port);
   cData2_reg_1_inst : DFFPOSX1 port map( D => n359, CLK => CLK, Q => 
                           cData2_1_port);
   cData2_reg_0_inst : DFFPOSX1 port map( D => n360, CLK => CLK, Q => 
                           cData2_0_port);
   cData8_reg_7_inst : DFFPOSX1 port map( D => n297, CLK => CLK, Q => 
                           cData8_7_port);
   cData8_reg_6_inst : DFFPOSX1 port map( D => n298, CLK => CLK, Q => 
                           cData8_6_port);
   cData8_reg_5_inst : DFFPOSX1 port map( D => n299, CLK => CLK, Q => 
                           cData8_5_port);
   cData8_reg_4_inst : DFFPOSX1 port map( D => n300, CLK => CLK, Q => 
                           cData8_4_port);
   cData8_reg_3_inst : DFFPOSX1 port map( D => n301, CLK => CLK, Q => 
                           cData8_3_port);
   cData8_reg_2_inst : DFFPOSX1 port map( D => n302, CLK => CLK, Q => 
                           cData8_2_port);
   cData8_reg_1_inst : DFFPOSX1 port map( D => n303, CLK => CLK, Q => 
                           cData8_1_port);
   cData8_reg_0_inst : DFFPOSX1 port map( D => n304, CLK => CLK, Q => 
                           cData8_0_port);
   cData7_reg_7_inst : DFFPOSX1 port map( D => n305, CLK => CLK, Q => 
                           cData7_7_port);
   cData7_reg_6_inst : DFFPOSX1 port map( D => n306, CLK => CLK, Q => 
                           cData7_6_port);
   cData7_reg_5_inst : DFFPOSX1 port map( D => n307, CLK => CLK, Q => 
                           cData7_5_port);
   cData7_reg_4_inst : DFFPOSX1 port map( D => n308, CLK => CLK, Q => 
                           cData7_4_port);
   cData7_reg_3_inst : DFFPOSX1 port map( D => n309, CLK => CLK, Q => 
                           cData7_3_port);
   cData7_reg_2_inst : DFFPOSX1 port map( D => n310, CLK => CLK, Q => 
                           cData7_2_port);
   cData7_reg_1_inst : DFFPOSX1 port map( D => n311, CLK => CLK, Q => 
                           cData7_1_port);
   cData7_reg_0_inst : DFFPOSX1 port map( D => n312, CLK => CLK, Q => 
                           cData7_0_port);
   cData6_reg_7_inst : DFFPOSX1 port map( D => n313, CLK => CLK, Q => 
                           cData6_7_port);
   cData6_reg_6_inst : DFFPOSX1 port map( D => n314, CLK => CLK, Q => 
                           cData6_6_port);
   cData6_reg_5_inst : DFFPOSX1 port map( D => n315, CLK => CLK, Q => 
                           cData6_5_port);
   cData6_reg_4_inst : DFFPOSX1 port map( D => n316, CLK => CLK, Q => 
                           cData6_4_port);
   cData6_reg_3_inst : DFFPOSX1 port map( D => n317, CLK => CLK, Q => 
                           cData6_3_port);
   cData6_reg_2_inst : DFFPOSX1 port map( D => n318, CLK => CLK, Q => 
                           cData6_2_port);
   cData6_reg_1_inst : DFFPOSX1 port map( D => n319, CLK => CLK, Q => 
                           cData6_1_port);
   cData6_reg_0_inst : DFFPOSX1 port map( D => n320, CLK => CLK, Q => 
                           cData6_0_port);
   cData5_reg_7_inst : DFFPOSX1 port map( D => n321, CLK => CLK, Q => 
                           cData5_7_port);
   cData5_reg_6_inst : DFFPOSX1 port map( D => n322, CLK => CLK, Q => 
                           cData5_6_port);
   cData5_reg_5_inst : DFFPOSX1 port map( D => n323, CLK => CLK, Q => 
                           cData5_5_port);
   cData5_reg_4_inst : DFFPOSX1 port map( D => n324, CLK => CLK, Q => 
                           cData5_4_port);
   cData5_reg_3_inst : DFFPOSX1 port map( D => n325, CLK => CLK, Q => 
                           cData5_3_port);
   cData5_reg_2_inst : DFFPOSX1 port map( D => n326, CLK => CLK, Q => 
                           cData5_2_port);
   cData5_reg_1_inst : DFFPOSX1 port map( D => n327, CLK => CLK, Q => 
                           cData5_1_port);
   cData5_reg_0_inst : DFFPOSX1 port map( D => n328, CLK => CLK, Q => 
                           cData5_0_port);
   cData4_reg_7_inst : DFFPOSX1 port map( D => n329, CLK => CLK, Q => 
                           cData4_7_port);
   cData4_reg_6_inst : DFFPOSX1 port map( D => n330, CLK => CLK, Q => 
                           cData4_6_port);
   cData4_reg_5_inst : DFFPOSX1 port map( D => n331, CLK => CLK, Q => 
                           cData4_5_port);
   cData4_reg_4_inst : DFFPOSX1 port map( D => n332, CLK => CLK, Q => 
                           cData4_4_port);
   cData4_reg_3_inst : DFFPOSX1 port map( D => n333, CLK => CLK, Q => 
                           cData4_3_port);
   cData4_reg_2_inst : DFFPOSX1 port map( D => n334, CLK => CLK, Q => 
                           cData4_2_port);
   cData4_reg_1_inst : DFFPOSX1 port map( D => n335, CLK => CLK, Q => 
                           cData4_1_port);
   cData4_reg_0_inst : DFFPOSX1 port map( D => n336, CLK => CLK, Q => 
                           cData4_0_port);
   cData3_reg_7_inst : DFFPOSX1 port map( D => n337, CLK => CLK, Q => 
                           cData3_7_port);
   cData3_reg_6_inst : DFFPOSX1 port map( D => n338, CLK => CLK, Q => 
                           cData3_6_port);
   cData3_reg_5_inst : DFFPOSX1 port map( D => n339, CLK => CLK, Q => 
                           cData3_5_port);
   cData3_reg_4_inst : DFFPOSX1 port map( D => n340, CLK => CLK, Q => 
                           cData3_4_port);
   cData3_reg_3_inst : DFFPOSX1 port map( D => n341, CLK => CLK, Q => 
                           cData3_3_port);
   cData3_reg_2_inst : DFFPOSX1 port map( D => n342, CLK => CLK, Q => 
                           cData3_2_port);
   cData3_reg_1_inst : DFFPOSX1 port map( D => n343, CLK => CLK, Q => 
                           cData3_1_port);
   cData3_reg_0_inst : DFFPOSX1 port map( D => n344, CLK => CLK, Q => 
                           cData3_0_port);
   cData1_reg_7_inst : DFFPOSX1 port map( D => n345, CLK => CLK, Q => 
                           cData1_7_port);
   cData1_reg_6_inst : DFFPOSX1 port map( D => n346, CLK => CLK, Q => 
                           cData1_6_port);
   cData1_reg_5_inst : DFFPOSX1 port map( D => n347, CLK => CLK, Q => 
                           cData1_5_port);
   cData1_reg_4_inst : DFFPOSX1 port map( D => n348, CLK => CLK, Q => 
                           cData1_4_port);
   cData1_reg_3_inst : DFFPOSX1 port map( D => n349, CLK => CLK, Q => 
                           cData1_3_port);
   cData1_reg_2_inst : DFFPOSX1 port map( D => n350, CLK => CLK, Q => 
                           cData1_2_port);
   cData1_reg_1_inst : DFFPOSX1 port map( D => n351, CLK => CLK, Q => 
                           cData1_1_port);
   cData1_reg_0_inst : DFFPOSX1 port map( D => n352, CLK => CLK, Q => 
                           cData1_0_port);
   CompData2_reg_63_inst : DFFPOSX1 port map( D => n233, CLK => CLK, Q => 
                           ENC_LEFT_31_port);
   CompData2_reg_62_inst : DFFPOSX1 port map( D => n234, CLK => CLK, Q => 
                           ENC_LEFT_30_port);
   CompData2_reg_61_inst : DFFPOSX1 port map( D => n235, CLK => CLK, Q => 
                           ENC_LEFT_29_port);
   CompData2_reg_60_inst : DFFPOSX1 port map( D => n236, CLK => CLK, Q => 
                           ENC_LEFT_28_port);
   CompData2_reg_59_inst : DFFPOSX1 port map( D => n237, CLK => CLK, Q => 
                           ENC_LEFT_27_port);
   CompData2_reg_58_inst : DFFPOSX1 port map( D => n238, CLK => CLK, Q => 
                           ENC_LEFT_26_port);
   CompData2_reg_57_inst : DFFPOSX1 port map( D => n239, CLK => CLK, Q => 
                           ENC_LEFT_25_port);
   CompData2_reg_56_inst : DFFPOSX1 port map( D => n240, CLK => CLK, Q => 
                           ENC_LEFT_24_port);
   CompData2_reg_55_inst : DFFPOSX1 port map( D => n241, CLK => CLK, Q => 
                           ENC_LEFT_23_port);
   CompData2_reg_54_inst : DFFPOSX1 port map( D => n242, CLK => CLK, Q => 
                           ENC_LEFT_22_port);
   CompData2_reg_53_inst : DFFPOSX1 port map( D => n243, CLK => CLK, Q => 
                           ENC_LEFT_21_port);
   CompData2_reg_52_inst : DFFPOSX1 port map( D => n244, CLK => CLK, Q => 
                           ENC_LEFT_20_port);
   CompData2_reg_51_inst : DFFPOSX1 port map( D => n245, CLK => CLK, Q => 
                           ENC_LEFT_19_port);
   CompData2_reg_50_inst : DFFPOSX1 port map( D => n246, CLK => CLK, Q => 
                           ENC_LEFT_18_port);
   CompData2_reg_49_inst : DFFPOSX1 port map( D => n247, CLK => CLK, Q => 
                           ENC_LEFT_17_port);
   CompData2_reg_48_inst : DFFPOSX1 port map( D => n248, CLK => CLK, Q => 
                           ENC_LEFT_16_port);
   CompData2_reg_47_inst : DFFPOSX1 port map( D => n249, CLK => CLK, Q => 
                           ENC_LEFT_15_port);
   CompData2_reg_46_inst : DFFPOSX1 port map( D => n250, CLK => CLK, Q => 
                           ENC_LEFT_14_port);
   CompData2_reg_45_inst : DFFPOSX1 port map( D => n251, CLK => CLK, Q => 
                           ENC_LEFT_13_port);
   CompData2_reg_44_inst : DFFPOSX1 port map( D => n252, CLK => CLK, Q => 
                           ENC_LEFT_12_port);
   CompData2_reg_43_inst : DFFPOSX1 port map( D => n253, CLK => CLK, Q => 
                           ENC_LEFT_11_port);
   CompData2_reg_42_inst : DFFPOSX1 port map( D => n254, CLK => CLK, Q => 
                           ENC_LEFT_10_port);
   CompData2_reg_41_inst : DFFPOSX1 port map( D => n255, CLK => CLK, Q => 
                           ENC_LEFT_9_port);
   CompData2_reg_40_inst : DFFPOSX1 port map( D => n256, CLK => CLK, Q => 
                           ENC_LEFT_8_port);
   CompData2_reg_39_inst : DFFPOSX1 port map( D => n257, CLK => CLK, Q => 
                           ENC_LEFT_7_port);
   CompData2_reg_38_inst : DFFPOSX1 port map( D => n258, CLK => CLK, Q => 
                           ENC_LEFT_6_port);
   CompData2_reg_37_inst : DFFPOSX1 port map( D => n259, CLK => CLK, Q => 
                           ENC_LEFT_5_port);
   CompData2_reg_36_inst : DFFPOSX1 port map( D => n260, CLK => CLK, Q => 
                           ENC_LEFT_4_port);
   CompData2_reg_35_inst : DFFPOSX1 port map( D => n261, CLK => CLK, Q => 
                           ENC_LEFT_3_port);
   CompData2_reg_34_inst : DFFPOSX1 port map( D => n262, CLK => CLK, Q => 
                           ENC_LEFT_2_port);
   CompData2_reg_33_inst : DFFPOSX1 port map( D => n263, CLK => CLK, Q => 
                           ENC_LEFT_1_port);
   CompData2_reg_32_inst : DFFPOSX1 port map( D => n264, CLK => CLK, Q => 
                           ENC_LEFT_0_port);
   CompData2_reg_31_inst : DFFPOSX1 port map( D => n265, CLK => CLK, Q => 
                           ENC_RIGHT_31_port);
   CompData2_reg_30_inst : DFFPOSX1 port map( D => n266, CLK => CLK, Q => 
                           ENC_RIGHT_30_port);
   CompData2_reg_29_inst : DFFPOSX1 port map( D => n267, CLK => CLK, Q => 
                           ENC_RIGHT_29_port);
   CompData2_reg_28_inst : DFFPOSX1 port map( D => n268, CLK => CLK, Q => 
                           ENC_RIGHT_28_port);
   CompData2_reg_27_inst : DFFPOSX1 port map( D => n269, CLK => CLK, Q => 
                           ENC_RIGHT_27_port);
   CompData2_reg_26_inst : DFFPOSX1 port map( D => n270, CLK => CLK, Q => 
                           ENC_RIGHT_26_port);
   CompData2_reg_25_inst : DFFPOSX1 port map( D => n271, CLK => CLK, Q => 
                           ENC_RIGHT_25_port);
   CompData2_reg_24_inst : DFFPOSX1 port map( D => n272, CLK => CLK, Q => 
                           ENC_RIGHT_24_port);
   CompData2_reg_23_inst : DFFPOSX1 port map( D => n273_port, CLK => CLK, Q => 
                           ENC_RIGHT_23_port);
   CompData2_reg_22_inst : DFFPOSX1 port map( D => n274, CLK => CLK, Q => 
                           ENC_RIGHT_22_port);
   CompData2_reg_21_inst : DFFPOSX1 port map( D => n275, CLK => CLK, Q => 
                           ENC_RIGHT_21_port);
   CompData2_reg_20_inst : DFFPOSX1 port map( D => n276, CLK => CLK, Q => 
                           ENC_RIGHT_20_port);
   CompData2_reg_19_inst : DFFPOSX1 port map( D => n277, CLK => CLK, Q => 
                           ENC_RIGHT_19_port);
   CompData2_reg_18_inst : DFFPOSX1 port map( D => n278, CLK => CLK, Q => 
                           ENC_RIGHT_18_port);
   CompData2_reg_17_inst : DFFPOSX1 port map( D => n279, CLK => CLK, Q => 
                           ENC_RIGHT_17_port);
   CompData2_reg_16_inst : DFFPOSX1 port map( D => n280, CLK => CLK, Q => 
                           ENC_RIGHT_16_port);
   CompData2_reg_15_inst : DFFPOSX1 port map( D => n281, CLK => CLK, Q => 
                           ENC_RIGHT_15_port);
   CompData2_reg_14_inst : DFFPOSX1 port map( D => n282, CLK => CLK, Q => 
                           ENC_RIGHT_14_port);
   CompData2_reg_13_inst : DFFPOSX1 port map( D => n283, CLK => CLK, Q => 
                           ENC_RIGHT_13_port);
   CompData2_reg_12_inst : DFFPOSX1 port map( D => n284, CLK => CLK, Q => 
                           ENC_RIGHT_12_port);
   CompData2_reg_11_inst : DFFPOSX1 port map( D => n285, CLK => CLK, Q => 
                           ENC_RIGHT_11_port);
   CompData2_reg_10_inst : DFFPOSX1 port map( D => n286, CLK => CLK, Q => 
                           ENC_RIGHT_10_port);
   CompData2_reg_9_inst : DFFPOSX1 port map( D => n287, CLK => CLK, Q => 
                           ENC_RIGHT_9_port);
   CompData2_reg_8_inst : DFFPOSX1 port map( D => n288, CLK => CLK, Q => 
                           ENC_RIGHT_8_port);
   CompData2_reg_7_inst : DFFPOSX1 port map( D => n289, CLK => CLK, Q => 
                           ENC_RIGHT_7_port);
   CompData2_reg_6_inst : DFFPOSX1 port map( D => n290, CLK => CLK, Q => 
                           ENC_RIGHT_6_port);
   CompData2_reg_5_inst : DFFPOSX1 port map( D => n291, CLK => CLK, Q => 
                           ENC_RIGHT_5_port);
   CompData2_reg_4_inst : DFFPOSX1 port map( D => n292, CLK => CLK, Q => 
                           ENC_RIGHT_4_port);
   CompData2_reg_3_inst : DFFPOSX1 port map( D => n293, CLK => CLK, Q => 
                           ENC_RIGHT_3_port);
   CompData2_reg_2_inst : DFFPOSX1 port map( D => n294, CLK => CLK, Q => 
                           ENC_RIGHT_2_port);
   CompData2_reg_1_inst : DFFPOSX1 port map( D => n295, CLK => CLK, Q => 
                           ENC_RIGHT_1_port);
   CompData2_reg_0_inst : DFFPOSX1 port map( D => n296, CLK => CLK, Q => 
                           ENC_RIGHT_0_port);
   n216 <= '1';
   n218 <= '1';
   n220 <= '1';
   n222 <= '1';
   n223 <= '1';
   n224 <= '1';
   n225 <= '1';
   n226 <= '1';
   n228 <= '1';
   U3 : NAND2X1 port map( A => n4, B => n39, Y => n1);
   U4 : AND2X2 port map( A => nxtCompCT_3_port, B => n230, Y => n2);
   U5 : INVX4 port map( A => n1, Y => n3);
   U6 : INVX8 port map( A => n2, Y => n4);
   U7 : INVX2 port map( A => RST, Y => n214);
   U8 : INVX2 port map( A => N273, Y => n5);
   U9 : INVX8 port map( A => n5, Y => START);
   U10 : OAI22X1 port map( A => n7, B => n8, C => n9, D => n10, Y => n360);
   U11 : OAI22X1 port map( A => n7, B => n11, C => n9, D => n12, Y => n359);
   U12 : OAI22X1 port map( A => n7, B => n13, C => n9, D => n14, Y => n358);
   U13 : OAI22X1 port map( A => n7, B => n15, C => n9, D => n16, Y => n357);
   U14 : OAI22X1 port map( A => n7, B => n17, C => n9, D => n18, Y => n356);
   U15 : OAI22X1 port map( A => n7, B => n19, C => n9, D => n20, Y => n355);
   U16 : OAI22X1 port map( A => n7, B => n21, C => n9, D => n22, Y => n354);
   U17 : OAI22X1 port map( A => n7, B => n23_port, C => n9, D => n24, Y => n353
                           );
   U18 : OAI21X1 port map( A => nxtCompCT_3_port, B => n25, C => n7, Y => n9);
   U19 : NAND2X1 port map( A => n26, B => n27, Y => n25);
   U20 : NAND3X1 port map( A => n26, B => n230, C => n28, Y => n7);
   U21 : OAI22X1 port map( A => n8, B => n29, C => n30, D => n31, Y => n352);
   U22 : OAI22X1 port map( A => n11, B => n29, C => n30, D => n32, Y => n351);
   U23 : OAI22X1 port map( A => n13, B => n29, C => n30, D => n33, Y => n350);
   U24 : OAI22X1 port map( A => n15, B => n29, C => n30, D => n34, Y => n349);
   U25 : OAI22X1 port map( A => n17, B => n29, C => n30, D => n35, Y => n348);
   U26 : OAI22X1 port map( A => n19, B => n29, C => n30, D => n36, Y => n347);
   U27 : OAI22X1 port map( A => n21, B => n29, C => n30, D => n37, Y => n346);
   U28 : OAI22X1 port map( A => n23_port, B => n29, C => n30, D => n38, Y => 
                           n345);
   U29 : NAND2X1 port map( A => n39, B => n29, Y => n30);
   U30 : NAND2X1 port map( A => n40, B => n28, Y => n29);
   U31 : OAI22X1 port map( A => n8, B => n41, C => n42, D => n43, Y => n344);
   U32 : OAI22X1 port map( A => n11, B => n41, C => n42, D => n44, Y => n343);
   U33 : OAI22X1 port map( A => n13, B => n41, C => n42, D => n45, Y => n342);
   U34 : OAI22X1 port map( A => n15, B => n41, C => n42, D => n46, Y => n341);
   U35 : OAI22X1 port map( A => n17, B => n41, C => n42, D => n47, Y => n340);
   U36 : OAI22X1 port map( A => n19, B => n41, C => n42, D => n48, Y => n339);
   U37 : OAI22X1 port map( A => n21, B => n41, C => n42, D => n49, Y => n338);
   U38 : OAI22X1 port map( A => n23_port, B => n41, C => n42, D => n50, Y => 
                           n337);
   U39 : NAND2X1 port map( A => n39, B => n41, Y => n42);
   U40 : NAND3X1 port map( A => n51, B => n27, C => nxtCompCT_2_port, Y => n41)
                           ;
   U41 : OAI22X1 port map( A => n8, B => n52, C => n53, D => n54, Y => n336);
   U42 : OAI22X1 port map( A => n11, B => n52, C => n53, D => n55, Y => n335);
   U43 : OAI22X1 port map( A => n13, B => n52, C => n53, D => n56, Y => n334);
   U44 : OAI22X1 port map( A => n15, B => n52, C => n53, D => n57, Y => n333);
   U45 : OAI22X1 port map( A => n17, B => n52, C => n53, D => n58, Y => n332);
   U46 : OAI22X1 port map( A => n19, B => n52, C => n53, D => n59, Y => n331);
   U47 : OAI22X1 port map( A => n21, B => n52, C => n53, D => n60, Y => n330);
   U48 : OAI22X1 port map( A => n23_port, B => n52, C => n53, D => n61, Y => 
                           n329);
   U49 : NAND2X1 port map( A => n39, B => n52, Y => n53);
   U50 : NAND3X1 port map( A => n51, B => nxtCompCT_2_port, C => n28, Y => n52)
                           ;
   U51 : OAI22X1 port map( A => n8, B => n62, C => n63, D => n64, Y => n328);
   U52 : OAI22X1 port map( A => n11, B => n62, C => n63, D => n65, Y => n327);
   U53 : OAI22X1 port map( A => n13, B => n62, C => n63, D => n66, Y => n326);
   U54 : OAI22X1 port map( A => n15, B => n62, C => n63, D => n67, Y => n325);
   U55 : OAI22X1 port map( A => n17, B => n62, C => n63, D => n68, Y => n324);
   U56 : OAI22X1 port map( A => n19, B => n62, C => n63, D => n69, Y => n323);
   U57 : OAI22X1 port map( A => n21, B => n62, C => n63, D => n70, Y => n322);
   U58 : OAI22X1 port map( A => n23_port, B => n62, C => n63, D => n71, Y => 
                           n321);
   U59 : NAND2X1 port map( A => n39, B => n62, Y => n63);
   U60 : NAND3X1 port map( A => nxtCompCT_2_port, B => n27, C => n230, Y => n62
                           );
   U61 : OAI22X1 port map( A => n8, B => n72, C => n73, D => n74, Y => n320);
   U62 : OAI22X1 port map( A => n11, B => n72, C => n73, D => n75, Y => n319);
   U63 : OAI22X1 port map( A => n13, B => n72, C => n73, D => n76, Y => n318);
   U64 : OAI22X1 port map( A => n15, B => n72, C => n73, D => n77, Y => n317);
   U65 : OAI22X1 port map( A => n17, B => n72, C => n73, D => n78, Y => n316);
   U66 : OAI22X1 port map( A => n19, B => n72, C => n73, D => n79, Y => n315);
   U67 : OAI22X1 port map( A => n21, B => n72, C => n73, D => n80, Y => n314);
   U68 : OAI22X1 port map( A => n23_port, B => n72, C => n73, D => n81, Y => 
                           n313);
   U69 : NAND2X1 port map( A => n39, B => n72, Y => n73);
   U70 : NAND3X1 port map( A => n230, B => nxtCompCT_2_port, C => n28, Y => n72
                           );
   U71 : NOR2X1 port map( A => n27, B => nxtCompCT_3_port, Y => n28);
   U72 : OAI22X1 port map( A => n8, B => n82, C => n83, D => n84, Y => n312);
   U73 : OAI22X1 port map( A => n11, B => n82, C => n83, D => n85, Y => n311);
   U74 : OAI22X1 port map( A => n13, B => n82, C => n83, D => n86, Y => n310);
   U75 : OAI22X1 port map( A => n15, B => n82, C => n83, D => n87, Y => n309);
   U76 : OAI22X1 port map( A => n17, B => n82, C => n83, D => n88, Y => n308);
   U77 : OAI22X1 port map( A => n19, B => n82, C => n83, D => n89, Y => n307);
   U78 : OAI22X1 port map( A => n21, B => n82, C => n83, D => n90, Y => n306);
   U79 : OAI22X1 port map( A => n23_port, B => n82, C => n83, D => n91, Y => 
                           n305);
   U80 : NAND2X1 port map( A => n39, B => n82, Y => n83);
   U81 : NAND3X1 port map( A => n40, B => n27, C => nxtCompCT_3_port, Y => n82)
                           ;
   U82 : OAI22X1 port map( A => n8, B => n92, C => n93, D => n94, Y => n304);
   U83 : INVX1 port map( A => DATA(0), Y => n8);
   U84 : OAI22X1 port map( A => n11, B => n92, C => n93, D => n95, Y => n303);
   U85 : INVX1 port map( A => DATA(1), Y => n11);
   U86 : OAI22X1 port map( A => n13, B => n92, C => n93, D => n96, Y => n302);
   U87 : INVX1 port map( A => DATA(2), Y => n13);
   U88 : OAI22X1 port map( A => n15, B => n92, C => n93, D => n97, Y => n301);
   U89 : INVX1 port map( A => DATA(3), Y => n15);
   U90 : OAI22X1 port map( A => n17, B => n92, C => n93, D => n98, Y => n300);
   U91 : INVX1 port map( A => DATA(4), Y => n17);
   U92 : OAI22X1 port map( A => n19, B => n92, C => n93, D => n99, Y => n299);
   U93 : INVX1 port map( A => DATA(5), Y => n19);
   U94 : OAI22X1 port map( A => n21, B => n92, C => n93, D => n100, Y => n298);
   U95 : INVX1 port map( A => DATA(6), Y => n21);
   U96 : OAI22X1 port map( A => n23_port, B => n92, C => n93, D => n101, Y => 
                           n297);
   U97 : NAND2X1 port map( A => n39, B => n92, Y => n93);
   U98 : NAND2X1 port map( A => nxtCompCT_3_port, B => n213, Y => n92);
   U99 : INVX1 port map( A => n27, Y => n213);
   U100 : INVX1 port map( A => DATA(7), Y => n23_port);
   U101 : OAI21X1 port map( A => n94, B => n4, C => n102, Y => n296);
   U102 : NAND2X1 port map( A => ENC_RIGHT_0_port, B => n3, Y => n102);
   U103 : INVX1 port map( A => cData8_0_port, Y => n94);
   U104 : OAI21X1 port map( A => n95, B => n4, C => n103, Y => n295);
   U105 : NAND2X1 port map( A => ENC_RIGHT_1_port, B => n3, Y => n103);
   U106 : INVX1 port map( A => cData8_1_port, Y => n95);
   U107 : OAI21X1 port map( A => n96, B => n4, C => n104, Y => n294);
   U108 : NAND2X1 port map( A => ENC_RIGHT_2_port, B => n3, Y => n104);
   U109 : INVX1 port map( A => cData8_2_port, Y => n96);
   U110 : OAI21X1 port map( A => n97, B => n4, C => n105, Y => n293);
   U111 : NAND2X1 port map( A => ENC_RIGHT_3_port, B => n3, Y => n105);
   U112 : INVX1 port map( A => cData8_3_port, Y => n97);
   U113 : OAI21X1 port map( A => n98, B => n4, C => n106, Y => n292);
   U114 : NAND2X1 port map( A => ENC_RIGHT_4_port, B => n3, Y => n106);
   U115 : INVX1 port map( A => cData8_4_port, Y => n98);
   U116 : OAI21X1 port map( A => n99, B => n4, C => n107, Y => n291);
   U117 : NAND2X1 port map( A => ENC_RIGHT_5_port, B => n3, Y => n107);
   U118 : INVX1 port map( A => cData8_5_port, Y => n99);
   U119 : OAI21X1 port map( A => n100, B => n4, C => n108, Y => n290);
   U120 : NAND2X1 port map( A => ENC_RIGHT_6_port, B => n3, Y => n108);
   U121 : INVX1 port map( A => cData8_6_port, Y => n100);
   U122 : OAI21X1 port map( A => n101, B => n4, C => n109, Y => n289);
   U123 : NAND2X1 port map( A => ENC_RIGHT_7_port, B => n3, Y => n109);
   U124 : INVX1 port map( A => cData8_7_port, Y => n101);
   U125 : OAI21X1 port map( A => n84, B => n4, C => n110, Y => n288);
   U126 : NAND2X1 port map( A => ENC_RIGHT_8_port, B => n3, Y => n110);
   U127 : INVX1 port map( A => cData7_0_port, Y => n84);
   U128 : OAI21X1 port map( A => n85, B => n4, C => n111, Y => n287);
   U129 : NAND2X1 port map( A => ENC_RIGHT_9_port, B => n3, Y => n111);
   U130 : INVX1 port map( A => cData7_1_port, Y => n85);
   U131 : OAI21X1 port map( A => n86, B => n4, C => n112, Y => n286);
   U132 : NAND2X1 port map( A => ENC_RIGHT_10_port, B => n3, Y => n112);
   U133 : INVX1 port map( A => cData7_2_port, Y => n86);
   U134 : OAI21X1 port map( A => n87, B => n4, C => n113, Y => n285);
   U135 : NAND2X1 port map( A => ENC_RIGHT_11_port, B => n3, Y => n113);
   U136 : INVX1 port map( A => cData7_3_port, Y => n87);
   U137 : OAI21X1 port map( A => n88, B => n4, C => n114, Y => n284);
   U138 : NAND2X1 port map( A => ENC_RIGHT_12_port, B => n3, Y => n114);
   U139 : INVX1 port map( A => cData7_4_port, Y => n88);
   U140 : OAI21X1 port map( A => n89, B => n4, C => n115, Y => n283);
   U141 : NAND2X1 port map( A => ENC_RIGHT_13_port, B => n3, Y => n115);
   U142 : INVX1 port map( A => cData7_5_port, Y => n89);
   U143 : OAI21X1 port map( A => n90, B => n4, C => n116, Y => n282);
   U144 : NAND2X1 port map( A => ENC_RIGHT_14_port, B => n3, Y => n116);
   U145 : INVX1 port map( A => cData7_6_port, Y => n90);
   U146 : OAI21X1 port map( A => n91, B => n4, C => n117, Y => n281);
   U147 : NAND2X1 port map( A => ENC_RIGHT_15_port, B => n3, Y => n117);
   U148 : INVX1 port map( A => cData7_7_port, Y => n91);
   U149 : OAI21X1 port map( A => n74, B => n4, C => n118, Y => n280);
   U150 : NAND2X1 port map( A => ENC_RIGHT_16_port, B => n3, Y => n118);
   U151 : INVX1 port map( A => cData6_0_port, Y => n74);
   U152 : OAI21X1 port map( A => n75, B => n4, C => n119, Y => n279);
   U153 : NAND2X1 port map( A => ENC_RIGHT_17_port, B => n3, Y => n119);
   U154 : INVX1 port map( A => cData6_1_port, Y => n75);
   U155 : OAI21X1 port map( A => n76, B => n4, C => n120, Y => n278);
   U156 : NAND2X1 port map( A => ENC_RIGHT_18_port, B => n3, Y => n120);
   U157 : INVX1 port map( A => cData6_2_port, Y => n76);
   U158 : OAI21X1 port map( A => n77, B => n4, C => n121, Y => n277);
   U159 : NAND2X1 port map( A => ENC_RIGHT_19_port, B => n3, Y => n121);
   U160 : INVX1 port map( A => cData6_3_port, Y => n77);
   U161 : OAI21X1 port map( A => n78, B => n4, C => n122, Y => n276);
   U162 : NAND2X1 port map( A => ENC_RIGHT_20_port, B => n3, Y => n122);
   U163 : INVX1 port map( A => cData6_4_port, Y => n78);
   U164 : OAI21X1 port map( A => n79, B => n4, C => n123, Y => n275);
   U165 : NAND2X1 port map( A => ENC_RIGHT_21_port, B => n3, Y => n123);
   U166 : INVX1 port map( A => cData6_5_port, Y => n79);
   U167 : OAI21X1 port map( A => n80, B => n4, C => n124, Y => n274);
   U168 : NAND2X1 port map( A => ENC_RIGHT_22_port, B => n3, Y => n124);
   U169 : INVX1 port map( A => cData6_6_port, Y => n80);
   U170 : OAI21X1 port map( A => n81, B => n4, C => n125, Y => n273_port);
   U171 : NAND2X1 port map( A => ENC_RIGHT_23_port, B => n3, Y => n125);
   U172 : INVX1 port map( A => cData6_7_port, Y => n81);
   U173 : OAI21X1 port map( A => n64, B => n4, C => n126, Y => n272);
   U174 : NAND2X1 port map( A => ENC_RIGHT_24_port, B => n3, Y => n126);
   U175 : INVX1 port map( A => cData5_0_port, Y => n64);
   U176 : OAI21X1 port map( A => n65, B => n4, C => n127, Y => n271);
   U177 : NAND2X1 port map( A => ENC_RIGHT_25_port, B => n3, Y => n127);
   U178 : INVX1 port map( A => cData5_1_port, Y => n65);
   U179 : OAI21X1 port map( A => n66, B => n4, C => n128, Y => n270);
   U180 : NAND2X1 port map( A => ENC_RIGHT_26_port, B => n3, Y => n128);
   U181 : INVX1 port map( A => cData5_2_port, Y => n66);
   U182 : OAI21X1 port map( A => n67, B => n4, C => n129, Y => n269);
   U183 : NAND2X1 port map( A => ENC_RIGHT_27_port, B => n3, Y => n129);
   U184 : INVX1 port map( A => cData5_3_port, Y => n67);
   U185 : OAI21X1 port map( A => n68, B => n4, C => n130, Y => n268);
   U186 : NAND2X1 port map( A => ENC_RIGHT_28_port, B => n3, Y => n130);
   U187 : INVX1 port map( A => cData5_4_port, Y => n68);
   U188 : OAI21X1 port map( A => n69, B => n4, C => n131, Y => n267);
   U189 : NAND2X1 port map( A => ENC_RIGHT_29_port, B => n3, Y => n131);
   U190 : INVX1 port map( A => cData5_5_port, Y => n69);
   U191 : OAI21X1 port map( A => n70, B => n4, C => n132, Y => n266);
   U192 : NAND2X1 port map( A => ENC_RIGHT_30_port, B => n3, Y => n132);
   U193 : INVX1 port map( A => cData5_6_port, Y => n70);
   U194 : OAI21X1 port map( A => n71, B => n4, C => n133, Y => n265);
   U195 : NAND2X1 port map( A => ENC_RIGHT_31_port, B => n3, Y => n133);
   U196 : INVX1 port map( A => cData5_7_port, Y => n71);
   U197 : OAI21X1 port map( A => n54, B => n4, C => n134, Y => n264);
   U198 : NAND2X1 port map( A => ENC_LEFT_0_port, B => n3, Y => n134);
   U199 : INVX1 port map( A => cData4_0_port, Y => n54);
   U200 : OAI21X1 port map( A => n55, B => n4, C => n135, Y => n263);
   U201 : NAND2X1 port map( A => ENC_LEFT_1_port, B => n3, Y => n135);
   U202 : INVX1 port map( A => cData4_1_port, Y => n55);
   U203 : OAI21X1 port map( A => n56, B => n4, C => n136, Y => n262);
   U204 : NAND2X1 port map( A => ENC_LEFT_2_port, B => n3, Y => n136);
   U205 : INVX1 port map( A => cData4_2_port, Y => n56);
   U206 : OAI21X1 port map( A => n57, B => n4, C => n137, Y => n261);
   U207 : NAND2X1 port map( A => ENC_LEFT_3_port, B => n3, Y => n137);
   U208 : INVX1 port map( A => cData4_3_port, Y => n57);
   U209 : OAI21X1 port map( A => n58, B => n4, C => n138, Y => n260);
   U210 : NAND2X1 port map( A => ENC_LEFT_4_port, B => n3, Y => n138);
   U211 : INVX1 port map( A => cData4_4_port, Y => n58);
   U212 : OAI21X1 port map( A => n59, B => n4, C => n139, Y => n259);
   U213 : NAND2X1 port map( A => ENC_LEFT_5_port, B => n3, Y => n139);
   U214 : INVX1 port map( A => cData4_5_port, Y => n59);
   U215 : OAI21X1 port map( A => n60, B => n4, C => n140, Y => n258);
   U216 : NAND2X1 port map( A => ENC_LEFT_6_port, B => n3, Y => n140);
   U217 : INVX1 port map( A => cData4_6_port, Y => n60);
   U218 : OAI21X1 port map( A => n61, B => n4, C => n141, Y => n257);
   U219 : NAND2X1 port map( A => ENC_LEFT_7_port, B => n3, Y => n141);
   U220 : INVX1 port map( A => cData4_7_port, Y => n61);
   U221 : OAI21X1 port map( A => n43, B => n4, C => n142, Y => n256);
   U222 : NAND2X1 port map( A => ENC_LEFT_8_port, B => n3, Y => n142);
   U223 : INVX1 port map( A => cData3_0_port, Y => n43);
   U224 : OAI21X1 port map( A => n44, B => n4, C => n143, Y => n255);
   U225 : NAND2X1 port map( A => ENC_LEFT_9_port, B => n3, Y => n143);
   U226 : INVX1 port map( A => cData3_1_port, Y => n44);
   U227 : OAI21X1 port map( A => n45, B => n4, C => n144, Y => n254);
   U228 : NAND2X1 port map( A => ENC_LEFT_10_port, B => n3, Y => n144);
   U229 : INVX1 port map( A => cData3_2_port, Y => n45);
   U230 : OAI21X1 port map( A => n46, B => n4, C => n145, Y => n253);
   U231 : NAND2X1 port map( A => ENC_LEFT_11_port, B => n3, Y => n145);
   U232 : INVX1 port map( A => cData3_3_port, Y => n46);
   U233 : OAI21X1 port map( A => n47, B => n4, C => n146, Y => n252);
   U234 : NAND2X1 port map( A => ENC_LEFT_12_port, B => n3, Y => n146);
   U235 : INVX1 port map( A => cData3_4_port, Y => n47);
   U236 : OAI21X1 port map( A => n48, B => n4, C => n147, Y => n251);
   U237 : NAND2X1 port map( A => ENC_LEFT_13_port, B => n3, Y => n147);
   U238 : INVX1 port map( A => cData3_5_port, Y => n48);
   U239 : OAI21X1 port map( A => n49, B => n4, C => n148, Y => n250);
   U240 : NAND2X1 port map( A => ENC_LEFT_14_port, B => n3, Y => n148);
   U241 : INVX1 port map( A => cData3_6_port, Y => n49);
   U242 : OAI21X1 port map( A => n50, B => n4, C => n149, Y => n249);
   U243 : NAND2X1 port map( A => ENC_LEFT_15_port, B => n3, Y => n149);
   U244 : INVX1 port map( A => cData3_7_port, Y => n50);
   U245 : OAI21X1 port map( A => n10, B => n4, C => n150, Y => n248);
   U246 : NAND2X1 port map( A => ENC_LEFT_16_port, B => n3, Y => n150);
   U247 : INVX1 port map( A => cData2_0_port, Y => n10);
   U248 : OAI21X1 port map( A => n12, B => n4, C => n151, Y => n247);
   U249 : NAND2X1 port map( A => ENC_LEFT_17_port, B => n3, Y => n151);
   U250 : INVX1 port map( A => cData2_1_port, Y => n12);
   U251 : OAI21X1 port map( A => n14, B => n4, C => n152, Y => n246);
   U252 : NAND2X1 port map( A => ENC_LEFT_18_port, B => n3, Y => n152);
   U253 : INVX1 port map( A => cData2_2_port, Y => n14);
   U254 : OAI21X1 port map( A => n16, B => n4, C => n153, Y => n245);
   U255 : NAND2X1 port map( A => ENC_LEFT_19_port, B => n3, Y => n153);
   U256 : INVX1 port map( A => cData2_3_port, Y => n16);
   U257 : OAI21X1 port map( A => n18, B => n4, C => n154, Y => n244);
   U258 : NAND2X1 port map( A => ENC_LEFT_20_port, B => n3, Y => n154);
   U259 : INVX1 port map( A => cData2_4_port, Y => n18);
   U260 : OAI21X1 port map( A => n20, B => n4, C => n155, Y => n243);
   U261 : NAND2X1 port map( A => ENC_LEFT_21_port, B => n3, Y => n155);
   U262 : INVX1 port map( A => cData2_5_port, Y => n20);
   U263 : OAI21X1 port map( A => n22, B => n4, C => n156, Y => n242);
   U264 : NAND2X1 port map( A => ENC_LEFT_22_port, B => n3, Y => n156);
   U265 : INVX1 port map( A => cData2_6_port, Y => n22);
   U266 : OAI21X1 port map( A => n24, B => n4, C => n157, Y => n241);
   U267 : NAND2X1 port map( A => ENC_LEFT_23_port, B => n3, Y => n157);
   U268 : INVX1 port map( A => cData2_7_port, Y => n24);
   U269 : OAI21X1 port map( A => n31, B => n4, C => n158, Y => n240);
   U270 : NAND2X1 port map( A => ENC_LEFT_24_port, B => n3, Y => n158);
   U271 : INVX1 port map( A => cData1_0_port, Y => n31);
   U272 : OAI21X1 port map( A => n32, B => n4, C => n159, Y => n239);
   U273 : NAND2X1 port map( A => ENC_LEFT_25_port, B => n3, Y => n159);
   U274 : INVX1 port map( A => cData1_1_port, Y => n32);
   U275 : OAI21X1 port map( A => n33, B => n4, C => n160, Y => n238);
   U276 : NAND2X1 port map( A => ENC_LEFT_26_port, B => n3, Y => n160);
   U277 : INVX1 port map( A => cData1_2_port, Y => n33);
   U278 : OAI21X1 port map( A => n34, B => n4, C => n161, Y => n237);
   U279 : NAND2X1 port map( A => ENC_LEFT_27_port, B => n3, Y => n161);
   U280 : INVX1 port map( A => cData1_3_port, Y => n34);
   U281 : OAI21X1 port map( A => n35, B => n4, C => n162, Y => n236);
   U282 : NAND2X1 port map( A => ENC_LEFT_28_port, B => n3, Y => n162);
   U283 : INVX1 port map( A => cData1_4_port, Y => n35);
   U284 : OAI21X1 port map( A => n36, B => n4, C => n163, Y => n235);
   U285 : NAND2X1 port map( A => ENC_LEFT_29_port, B => n3, Y => n163);
   U286 : INVX1 port map( A => cData1_5_port, Y => n36);
   U287 : OAI21X1 port map( A => n37, B => n4, C => n164, Y => n234);
   U288 : NAND2X1 port map( A => ENC_LEFT_30_port, B => n3, Y => n164);
   U289 : INVX1 port map( A => cData1_6_port, Y => n37);
   U290 : OAI21X1 port map( A => n38, B => n4, C => n165, Y => n233);
   U291 : NAND2X1 port map( A => ENC_LEFT_31_port, B => n3, Y => n165);
   U292 : NAND3X1 port map( A => n166, B => n27, C => n40, Y => n39);
   U293 : NOR2X1 port map( A => n230, B => nxtCompCT_2_port, Y => n40);
   U294 : INVX1 port map( A => n26, Y => nxtCompCT_2_port);
   U295 : MUX2X1 port map( B => n167, A => n168, S => n169, Y => n26);
   U296 : NOR2X1 port map( A => n170, B => n171, Y => n168);
   U297 : OAI22X1 port map( A => compileCT_3_port, B => compileCT_1_port, C => 
                           compileCT_0_port, D => n170, Y => n167);
   U298 : NAND3X1 port map( A => n172, B => n171, C => n173, Y => n27);
   U299 : NAND2X1 port map( A => n174, B => n170, Y => n173);
   U300 : OAI21X1 port map( A => FULL, B => n175, C => n176, Y => n174);
   U301 : OR2X1 port map( A => compileCT_2_port, B => compileCT_3_port, Y => 
                           n175);
   U302 : INVX1 port map( A => nxtCompCT_3_port, Y => n166);
   U303 : MUX2X1 port map( B => n177, A => n178, S => n169, Y => 
                           nxtCompCT_3_port);
   U304 : OAI21X1 port map( A => n179, B => n176, C => compileCT_3_port, Y => 
                           n178);
   U305 : AND2X1 port map( A => n180, B => n171, Y => n179);
   U306 : NAND2X1 port map( A => compileCT_0_port, B => n181, Y => n177);
   U307 : INVX1 port map( A => cData1_7_port, Y => n38);
   U308 : INVX1 port map( A => n51, Y => n230);
   U309 : MUX2X1 port map( B => n182, A => n183, S => n171, Y => n51);
   U310 : OAI21X1 port map( A => n176, B => n184, C => n170, Y => n183);
   U311 : INVX1 port map( A => n181, Y => n170);
   U312 : NAND2X1 port map( A => n180, B => n169, Y => n184);
   U313 : NAND3X1 port map( A => N23, B => n185, C => n186, Y => n180);
   U314 : NOR2X1 port map( A => rndCT_0_port, B => n187, Y => n186);
   U315 : AND2X1 port map( A => n176, B => n172, Y => n182);
   U316 : NAND2X1 port map( A => compileCT_3_port, B => compileCT_2_port, Y => 
                           n172);
   U317 : MUX2X1 port map( B => n188, A => n189, S => n190, Y => n229);
   U318 : MUX2X1 port map( B => n191, A => n192, S => rndCT_1_port, Y => n227);
   U319 : NAND2X1 port map( A => n193, B => rndCT_0_port, Y => n191);
   U320 : MUX2X1 port map( B => n194, A => n195, S => rndCT_2_port, Y => n221);
   U321 : AND2X1 port map( A => rndCT_1_port, B => n192, Y => n195);
   U322 : NOR2X1 port map( A => n196, B => n190, Y => n192);
   U323 : NAND3X1 port map( A => rndCT_1_port, B => rndCT_0_port, C => n193, Y 
                           => n194);
   U324 : MUX2X1 port map( B => n197, A => n198, S => n187, Y => n219);
   U325 : NAND2X1 port map( A => n199, B => n193, Y => n198);
   U326 : INVX1 port map( A => n200, Y => n197);
   U327 : MUX2X1 port map( B => n201, A => n202, S => N23, Y => n217);
   U328 : NOR2X1 port map( A => n187, B => n200, Y => n202);
   U329 : OAI21X1 port map( A => n199, B => n189, C => n188, Y => n200);
   U330 : NAND3X1 port map( A => n193, B => rndCT_3_port, C => n199, Y => n201)
                           ;
   U331 : INVX1 port map( A => n203, Y => n199);
   U332 : NAND3X1 port map( A => rndCT_1_port, B => rndCT_0_port, C => 
                           rndCT_2_port, Y => n203);
   U333 : INVX1 port map( A => n189, Y => n193);
   U334 : OAI21X1 port map( A => n204, B => n205, C => n188, Y => n189);
   U335 : INVX1 port map( A => n196, Y => n188);
   U336 : NAND2X1 port map( A => N23, B => n185, Y => n205);
   U337 : NAND2X1 port map( A => rndCT_3_port, B => rndCT_0_port, Y => n204);
   U338 : MUX2X1 port map( B => n206, A => n207, S => n214, Y => n215);
   U339 : NAND2X1 port map( A => N23, B => n208, Y => n207);
   U340 : OAI21X1 port map( A => rndCT_0_port, B => n209, C => rndCT_3_port, Y 
                           => n208);
   U341 : INVX1 port map( A => n185, Y => n209);
   U342 : INVX1 port map( A => W_ENABLE_port, Y => n206);
   U343 : NAND3X1 port map( A => n171, B => n169, C => n210, Y => R_ENABLE);
   U344 : AOI21X1 port map( A => compileCT_3_port, B => n176, C => n181, Y => 
                           n210);
   U345 : NOR2X1 port map( A => n176, B => compileCT_3_port, Y => n181);
   U346 : INVX1 port map( A => compileCT_1_port, Y => n176);
   U347 : INVX1 port map( A => compileCT_2_port, Y => n169);
   U348 : INVX1 port map( A => compileCT_0_port, Y => n171);
   U349 : AOI21X1 port map( A => N23, B => n211, C => n196, Y => N273);
   U350 : NAND3X1 port map( A => compileCT_3_port, B => compileCT_1_port, C => 
                           n212, Y => n196);
   U351 : NOR2X1 port map( A => compileCT_2_port, B => compileCT_0_port, Y => 
                           n212);
   U352 : NAND3X1 port map( A => n190, B => n187, C => n185, Y => n211);
   U353 : NOR2X1 port map( A => rndCT_1_port, B => rndCT_2_port, Y => n185);
   U354 : INVX1 port map( A => rndCT_3_port, Y => n187);
   U364 : INVX1 port map( A => rndCT_0_port, Y => n190);

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity e_DeCompile is

   port( OUTDATA : in std_logic_vector (63 downto 0);  D_ENABLE, CLK : in 
         std_logic;  DATA : out std_logic_vector (7 downto 0);  W_ENABLE : out 
         std_logic);

end e_DeCompile;

architecture SYN_behav of e_DeCompile is

   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_3_port, state_2_port, state_1_port, state_0_port, 
      nextstate_3_port, nextstate_2_port, nextstate_1_port, nextstate_0_port, 
      n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31
      , n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, 
      n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60
      , n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, 
      n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86 : std_logic;

begin
   
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => CLK, R => 
                           D_ENABLE, S => n4, Q => state_0_port);
   state_reg_3_inst : DFFSR port map( D => nextstate_3_port, CLK => CLK, R => 
                           D_ENABLE, S => n3, Q => state_3_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => CLK, R => 
                           D_ENABLE, S => n2, Q => state_1_port);
   state_reg_2_inst : DFFSR port map( D => nextstate_2_port, CLK => CLK, R => 
                           D_ENABLE, S => n1, Q => state_2_port);
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n4 <= '1';
   U4 : AND2X2 port map( A => n80, B => n72, Y => n5);
   U8 : INVX2 port map( A => n72, Y => n6);
   U9 : INVX1 port map( A => state_1_port, Y => n72);
   U10 : INVX2 port map( A => n80, Y => n7);
   U11 : MUX2X1 port map( B => n9, A => n10, S => state_1_port, Y => n8);
   U12 : MUX2X1 port map( B => n12, A => n13, S => state_1_port, Y => n11);
   U13 : MUX2X1 port map( B => n14, A => n15, S => state_3_port, Y => DATA(0));
   U14 : MUX2X1 port map( B => n17, A => n18, S => state_1_port, Y => n16);
   U15 : MUX2X1 port map( B => n20, A => n21, S => state_1_port, Y => n19);
   U16 : MUX2X1 port map( B => n22, A => n23, S => state_3_port, Y => DATA(1));
   U17 : MUX2X1 port map( B => n25, A => n26, S => state_1_port, Y => n24);
   U18 : MUX2X1 port map( B => n28, A => n29, S => state_1_port, Y => n27);
   U19 : MUX2X1 port map( B => n30, A => n31, S => state_3_port, Y => DATA(2));
   U20 : MUX2X1 port map( B => n33, A => n34, S => state_1_port, Y => n32);
   U21 : MUX2X1 port map( B => n36, A => n37, S => state_1_port, Y => n35);
   U22 : MUX2X1 port map( B => n38, A => n39, S => state_3_port, Y => DATA(3));
   U23 : MUX2X1 port map( B => n41, A => n42, S => state_1_port, Y => n40);
   U24 : MUX2X1 port map( B => n44, A => n45, S => n6, Y => n43);
   U25 : MUX2X1 port map( B => n46, A => n47, S => state_3_port, Y => DATA(4));
   U26 : MUX2X1 port map( B => n49, A => n50, S => n6, Y => n48);
   U27 : MUX2X1 port map( B => n52, A => n53, S => n6, Y => n51);
   U28 : MUX2X1 port map( B => n54, A => n55, S => state_3_port, Y => DATA(5));
   U29 : MUX2X1 port map( B => n57, A => n58, S => n6, Y => n56);
   U30 : MUX2X1 port map( B => n60, A => n61, S => n6, Y => n59);
   U31 : MUX2X1 port map( B => n62, A => n63, S => state_3_port, Y => DATA(6));
   U32 : MUX2X1 port map( B => n65, A => n66, S => n6, Y => n64);
   U33 : MUX2X1 port map( B => n68, A => n69, S => n6, Y => n67);
   U34 : MUX2X1 port map( B => n70, A => n71, S => state_3_port, Y => DATA(7));
   U35 : MUX2X1 port map( B => OUTDATA(40), A => OUTDATA(8), S => state_2_port,
                           Y => n10);
   U36 : MUX2X1 port map( B => OUTDATA(56), A => OUTDATA(24), S => state_2_port
                           , Y => n9);
   U37 : MUX2X1 port map( B => OUTDATA(48), A => OUTDATA(16), S => state_2_port
                           , Y => n13);
   U38 : NAND2X1 port map( A => n7, B => OUTDATA(32), Y => n12);
   U39 : MUX2X1 port map( B => n11, A => n8, S => state_0_port, Y => n14);
   U40 : NAND2X1 port map( A => OUTDATA(0), B => n5, Y => n15);
   U41 : MUX2X1 port map( B => OUTDATA(41), A => OUTDATA(9), S => state_2_port,
                           Y => n18);
   U42 : MUX2X1 port map( B => OUTDATA(57), A => OUTDATA(25), S => state_2_port
                           , Y => n17);
   U43 : MUX2X1 port map( B => OUTDATA(49), A => OUTDATA(17), S => state_2_port
                           , Y => n21);
   U44 : NAND2X1 port map( A => OUTDATA(33), B => n7, Y => n20);
   U45 : MUX2X1 port map( B => n19, A => n16, S => state_0_port, Y => n22);
   U46 : NAND2X1 port map( A => OUTDATA(1), B => n5, Y => n23);
   U47 : MUX2X1 port map( B => OUTDATA(42), A => OUTDATA(10), S => state_2_port
                           , Y => n26);
   U48 : MUX2X1 port map( B => OUTDATA(58), A => OUTDATA(26), S => state_2_port
                           , Y => n25);
   U49 : MUX2X1 port map( B => OUTDATA(50), A => OUTDATA(18), S => state_2_port
                           , Y => n29);
   U50 : NAND2X1 port map( A => OUTDATA(34), B => n7, Y => n28);
   U51 : MUX2X1 port map( B => n27, A => n24, S => state_0_port, Y => n30);
   U52 : NAND2X1 port map( A => OUTDATA(2), B => n5, Y => n31);
   U53 : MUX2X1 port map( B => OUTDATA(43), A => OUTDATA(11), S => n7, Y => n34
                           );
   U54 : MUX2X1 port map( B => OUTDATA(59), A => OUTDATA(27), S => n7, Y => n33
                           );
   U55 : MUX2X1 port map( B => OUTDATA(51), A => OUTDATA(19), S => n7, Y => n37
                           );
   U56 : NAND2X1 port map( A => OUTDATA(35), B => n7, Y => n36);
   U57 : MUX2X1 port map( B => n35, A => n32, S => state_0_port, Y => n38);
   U58 : NAND2X1 port map( A => OUTDATA(3), B => n5, Y => n39);
   U59 : MUX2X1 port map( B => OUTDATA(44), A => OUTDATA(12), S => n7, Y => n42
                           );
   U60 : MUX2X1 port map( B => OUTDATA(60), A => OUTDATA(28), S => n7, Y => n41
                           );
   U61 : MUX2X1 port map( B => OUTDATA(52), A => OUTDATA(20), S => n7, Y => n45
                           );
   U62 : NAND2X1 port map( A => OUTDATA(36), B => n7, Y => n44);
   U63 : MUX2X1 port map( B => n43, A => n40, S => state_0_port, Y => n46);
   U64 : NAND2X1 port map( A => OUTDATA(4), B => n5, Y => n47);
   U65 : MUX2X1 port map( B => OUTDATA(45), A => OUTDATA(13), S => n7, Y => n50
                           );
   U66 : MUX2X1 port map( B => OUTDATA(61), A => OUTDATA(29), S => n7, Y => n49
                           );
   U67 : MUX2X1 port map( B => OUTDATA(53), A => OUTDATA(21), S => n7, Y => n53
                           );
   U68 : NAND2X1 port map( A => OUTDATA(37), B => n7, Y => n52);
   U69 : MUX2X1 port map( B => n51, A => n48, S => state_0_port, Y => n54);
   U70 : NAND2X1 port map( A => OUTDATA(5), B => n5, Y => n55);
   U71 : MUX2X1 port map( B => OUTDATA(46), A => OUTDATA(14), S => n7, Y => n58
                           );
   U72 : MUX2X1 port map( B => OUTDATA(62), A => OUTDATA(30), S => n7, Y => n57
                           );
   U73 : MUX2X1 port map( B => OUTDATA(54), A => OUTDATA(22), S => n7, Y => n61
                           );
   U74 : NAND2X1 port map( A => OUTDATA(38), B => n7, Y => n60);
   U75 : MUX2X1 port map( B => n59, A => n56, S => state_0_port, Y => n62);
   U76 : NAND2X1 port map( A => OUTDATA(6), B => n5, Y => n63);
   U77 : MUX2X1 port map( B => OUTDATA(47), A => OUTDATA(15), S => n7, Y => n66
                           );
   U78 : MUX2X1 port map( B => OUTDATA(63), A => OUTDATA(31), S => n7, Y => n65
                           );
   U79 : MUX2X1 port map( B => OUTDATA(55), A => OUTDATA(23), S => n7, Y => n69
                           );
   U80 : NAND2X1 port map( A => OUTDATA(39), B => n7, Y => n68);
   U81 : MUX2X1 port map( B => n67, A => n64, S => state_0_port, Y => n70);
   U82 : NAND2X1 port map( A => OUTDATA(7), B => n5, Y => n71);
   U83 : MUX2X1 port map( B => n73, A => n74, S => n75, Y => nextstate_3_port);
   U84 : OR2X1 port map( A => n76, B => n77, Y => n74);
   U85 : NAND2X1 port map( A => n77, B => n76, Y => n73);
   U86 : NOR2X1 port map( A => state_3_port, B => n78, Y => nextstate_2_port);
   U87 : XNOR2X1 port map( A => n79, B => n80, Y => n78);
   U88 : NOR2X1 port map( A => state_3_port, B => n81, Y => nextstate_1_port);
   U89 : NOR2X1 port map( A => state_0_port, B => n82, Y => nextstate_0_port);
   U90 : MUX2X1 port map( B => n83, A => n84, S => n75, Y => n82);
   U91 : NAND3X1 port map( A => n72, B => n80, C => n85, Y => n84);
   U92 : INVX1 port map( A => D_ENABLE, Y => n85);
   U93 : NOR2X1 port map( A => n7, B => n6, Y => n83);
   U94 : NAND3X1 port map( A => n76, B => n75, C => n77, Y => W_ENABLE);
   U95 : INVX1 port map( A => n86, Y => n77);
   U96 : OAI21X1 port map( A => n81, B => n80, C => n79, Y => n86);
   U97 : INVX1 port map( A => state_3_port, Y => n75);
   U98 : XNOR2X1 port map( A => n81, B => n80, Y => n76);
   U99 : INVX1 port map( A => state_2_port, Y => n80);
   U100 : OAI21X1 port map( A => n6, B => state_0_port, C => n79, Y => n81);
   U101 : NAND2X1 port map( A => n6, B => state_0_port, Y => n79);

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity RCV_FIFO_2 is

   port( CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE : in std_logic;  WDATA : in 
         std_logic_vector (7 downto 0);  R_DATA : out std_logic_vector (7 
         downto 0);  EMPTY, FULL : out std_logic);

end RCV_FIFO_2;

architecture SYN_wrapper of RCV_FIFO_2 is

   component fifo_2
      port( rclk, wclk, rst_n, renable, wenable : in std_logic;  wdata : in 
            std_logic_vector (7 downto 0);  rdata : out std_logic_vector (7 
            downto 0);  empty, full : out std_logic);
   end component;

begin
   
   MAPPING : fifo_2 port map( rclk => CLK, wclk => D_CLK, rst_n => RST_N, 
                           renable => R_ENABLE, wenable => W_ENABLE, wdata(7) 
                           => WDATA(7), wdata(6) => WDATA(6), wdata(5) => 
                           WDATA(5), wdata(4) => WDATA(4), wdata(3) => WDATA(3)
                           , wdata(2) => WDATA(2), wdata(1) => WDATA(1), 
                           wdata(0) => WDATA(0), rdata(7) => R_DATA(7), 
                           rdata(6) => R_DATA(6), rdata(5) => R_DATA(5), 
                           rdata(4) => R_DATA(4), rdata(3) => R_DATA(3), 
                           rdata(2) => R_DATA(2), rdata(1) => R_DATA(1), 
                           rdata(0) => R_DATA(0), empty => EMPTY, full => FULL)
                           ;

end SYN_wrapper;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity s_Control is

   port( clk, rst, full, resend, r_enable_in : in std_logic;  IDATA : in 
         std_logic_vector (7 downto 0);  empty, r_enable_out, r_enable_s : out 
         std_logic;  ADDR : out std_logic_vector (11 downto 0);  ODATA : out 
         std_logic_vector (7 downto 0);  SDATA : inout std_logic_vector (7 
         downto 0);  w_enable_out : out std_logic);

end s_Control;

architecture SYN_behav of s_Control is

   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX8
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component TBUFX1
      port( A, EN : in std_logic;  Y : out std_logic);
   end component;
   
   component s_Control_DW01_sub_0
      port( A, B : in std_logic_vector (11 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (11 downto 0);  CO : out std_logic);
   end component;
   
   component s_Control_DW01_inc_0
      port( A : in std_logic_vector (11 downto 0);  SUM : out std_logic_vector 
            (11 downto 0));
   end component;
   
   component s_Control_DW01_dec_0
      port( A : in std_logic_vector (11 downto 0);  SUM : out std_logic_vector 
            (11 downto 0));
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_1_port, state_0_port, cnt8_2_port, cnt8_1_port, cnt8_0_port, 
      icnt8_2_port, icnt8_1_port, icnt8_0_port, RADDR_11_port, RADDR_10_port, 
      RADDR_9_port, RADDR_8_port, RADDR_7_port, RADDR_6_port, RADDR_5_port, 
      RADDR_4_port, RADDR_3_port, RADDR_2_port, RADDR_1_port, RADDR_0_port, 
      PRADDR_11_port, PRADDR_10_port, PRADDR_9_port, PRADDR_8_port, 
      PRADDR_7_port, PRADDR_6_port, PRADDR_5_port, PRADDR_4_port, PRADDR_3_port
      , PRADDR_2_port, PRADDR_1_port, PRADDR_0_port, WADDR_11_port, 
      WADDR_10_port, WADDR_9_port, WADDR_8_port, WADDR_7_port, WADDR_6_port, 
      WADDR_5_port, WADDR_4_port, WADDR_3_port, WADDR_2_port, WADDR_1_port, 
      WADDR_0_port, incnt8_2_port, incnt8_1_port, incnt8_0_port, nRADDR_11_port
      , nRADDR_10_port, nRADDR_9_port, nRADDR_8_port, nRADDR_7_port, 
      nRADDR_6_port, nRADDR_5_port, nRADDR_4_port, nRADDR_3_port, nRADDR_2_port
      , nRADDR_1_port, nRADDR_0_port, nPRADDR_11_port, nPRADDR_10_port, 
      nPRADDR_9_port, nPRADDR_8_port, nPRADDR_7_port, nPRADDR_6_port, 
      nPRADDR_5_port, nPRADDR_4_port, nPRADDR_3_port, nPRADDR_2_port, 
      nPRADDR_1_port, nPRADDR_0_port, nWADDR_11_port, nWADDR_10_port, 
      nWADDR_9_port, nWADDR_8_port, nWADDR_7_port, nWADDR_6_port, nWADDR_5_port
      , nWADDR_4_port, nWADDR_3_port, nWADDR_2_port, nWADDR_1_port, 
      nWADDR_0_port, sWrite, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, 
      N77, N78, N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, 
      N173, N174, N180, N181, N182, N183, N184, N185, N186, N187, N188, N189, 
      N190, N231, N233, N234, N235, N236, N237, N238, N239, N240, N241, N242, 
      N243, N244, N245, N246, N247, N248, N249, N250, N251, N252, N253, N254, 
      N255, N256, N257, N258, N259, N260, N261, N262, N263, N264, N265, N266, 
      N267, N268, N269, N270, N292, N293, N295, N296, N298, N299, N301, N302, 
      N304, N305, N307, N308, N310, N311, N313, N314, N316, N317, N319, N320, 
      N322, N323, N325, N326, N328, N329, N331, N332, N334, N335, N337, N338, 
      n2, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, 
      n118, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, 
      n162, n163_port, n164_port, n165_port, n166_port, n167_port, n168_port, 
      n169_port, n170_port, n171_port, n172_port, n173_port, n174_port, n175, 
      n176, n177, n178, n179, n180_port, n181_port, n182_port, n183_port, 
      n184_port, n185_port, n186_port, n187_port, n188_port, n189_port, 
      n190_port, n191, n192, n193, n194, n197, n198, n199, n200, n201, n1, n3, 
      n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
      n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34
      , n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, 
      n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63
      , n64, n65, n66, n67_port, n68_port, n69_port, n70_port, n71_port, 
      n72_port, n73_port, n74_port, n75_port, n76_port, n77_port, n78_port, n79
      , n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, 
      n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, 
      n119, r_enable_out_port, r_enable_s_port, n122, n123, n124, n125, n126, 
      n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, 
      n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, 
      n195, n196, n202, n203, n_1005, n_1006 : std_logic;

begin
   r_enable_out <= r_enable_out_port;
   r_enable_s <= r_enable_s_port;
   
   n2 <= '0';
   icnt8_reg_0_inst : DFFSR port map( D => incnt8_0_port, CLK => clk, R => n203
                           , S => n194, Q => icnt8_0_port);
   icnt8_reg_2_inst : DFFSR port map( D => incnt8_2_port, CLK => clk, R => n203
                           , S => n193, Q => icnt8_2_port);
   state_reg_1_inst : DFFSR port map( D => n200, CLK => clk, R => n203, S => 
                           n192, Q => state_1_port);
   state_reg_0_inst : DFFSR port map( D => n201, CLK => clk, R => n203, S => 
                           n191, Q => state_0_port);
   cnt8_reg_0_inst : DFFSR port map( D => n199, CLK => clk, R => n203, S => 
                           n190_port, Q => cnt8_0_port);
   cnt8_reg_1_inst : DFFSR port map( D => n198, CLK => clk, R => n203, S => 
                           n189_port, Q => cnt8_1_port);
   cnt8_reg_2_inst : DFFSR port map( D => n197, CLK => clk, R => n203, S => 
                           n188_port, Q => cnt8_2_port);
   icnt8_reg_1_inst : DFFSR port map( D => incnt8_1_port, CLK => clk, R => n203
                           , S => n187_port, Q => icnt8_1_port);
   sWrite_reg : LATCH port map( CLK => N231, D => n203, Q => sWrite);
   nWADDR_reg_0_inst : LATCH port map( CLK => n5, D => N233, Q => nWADDR_0_port
                           );
   WADDR_reg_0_inst : DFFSR port map( D => nWADDR_0_port, CLK => clk, R => n203
                           , S => n186_port, Q => WADDR_0_port);
   nWADDR_reg_1_inst : LATCH port map( CLK => n5, D => N234, Q => nWADDR_1_port
                           );
   WADDR_reg_1_inst : DFFSR port map( D => nWADDR_1_port, CLK => clk, R => n203
                           , S => n185_port, Q => WADDR_1_port);
   nWADDR_reg_2_inst : LATCH port map( CLK => n5, D => N235, Q => nWADDR_2_port
                           );
   WADDR_reg_2_inst : DFFSR port map( D => nWADDR_2_port, CLK => clk, R => n203
                           , S => n184_port, Q => WADDR_2_port);
   nWADDR_reg_3_inst : LATCH port map( CLK => n5, D => N236, Q => nWADDR_3_port
                           );
   WADDR_reg_3_inst : DFFSR port map( D => nWADDR_3_port, CLK => clk, R => n203
                           , S => n183_port, Q => WADDR_3_port);
   nWADDR_reg_4_inst : LATCH port map( CLK => n5, D => N237, Q => nWADDR_4_port
                           );
   WADDR_reg_4_inst : DFFSR port map( D => nWADDR_4_port, CLK => clk, R => n203
                           , S => n182_port, Q => WADDR_4_port);
   nWADDR_reg_5_inst : LATCH port map( CLK => n5, D => N238, Q => nWADDR_5_port
                           );
   WADDR_reg_5_inst : DFFSR port map( D => nWADDR_5_port, CLK => clk, R => n203
                           , S => n181_port, Q => WADDR_5_port);
   nWADDR_reg_6_inst : LATCH port map( CLK => n5, D => N239, Q => nWADDR_6_port
                           );
   WADDR_reg_6_inst : DFFSR port map( D => nWADDR_6_port, CLK => clk, R => n203
                           , S => n180_port, Q => WADDR_6_port);
   nWADDR_reg_7_inst : LATCH port map( CLK => n5, D => N240, Q => nWADDR_7_port
                           );
   WADDR_reg_7_inst : DFFSR port map( D => nWADDR_7_port, CLK => clk, R => n203
                           , S => n179, Q => WADDR_7_port);
   nWADDR_reg_8_inst : LATCH port map( CLK => n5, D => N241, Q => nWADDR_8_port
                           );
   WADDR_reg_8_inst : DFFSR port map( D => nWADDR_8_port, CLK => clk, R => n203
                           , S => n178, Q => WADDR_8_port);
   nWADDR_reg_9_inst : LATCH port map( CLK => n5, D => N242, Q => nWADDR_9_port
                           );
   WADDR_reg_9_inst : DFFSR port map( D => nWADDR_9_port, CLK => clk, R => n203
                           , S => n177, Q => WADDR_9_port);
   nWADDR_reg_10_inst : LATCH port map( CLK => n5, D => N243, Q => 
                           nWADDR_10_port);
   WADDR_reg_10_inst : DFFSR port map( D => nWADDR_10_port, CLK => clk, R => 
                           n203, S => n176, Q => WADDR_10_port);
   nWADDR_reg_11_inst : LATCH port map( CLK => n5, D => N244, Q => 
                           nWADDR_11_port);
   WADDR_reg_11_inst : DFFSR port map( D => nWADDR_11_port, CLK => clk, R => 
                           n203, S => n175, Q => WADDR_11_port);
   nRADDR_reg_0_inst : LATCH port map( CLK => n6, D => N246, Q => nRADDR_0_port
                           );
   RADDR_reg_0_inst : DFFSR port map( D => nRADDR_0_port, CLK => clk, R => n203
                           , S => n174_port, Q => RADDR_0_port);
   nPRADDR_reg_0_inst : LATCH port map( CLK => N258, D => N259, Q => 
                           nPRADDR_0_port);
   PRADDR_reg_0_inst : DFFSR port map( D => nPRADDR_0_port, CLK => clk, R => 
                           n203, S => n173_port, Q => PRADDR_0_port);
   nPRADDR_reg_1_inst : LATCH port map( CLK => N258, D => N260, Q => 
                           nPRADDR_1_port);
   PRADDR_reg_1_inst : DFFSR port map( D => nPRADDR_1_port, CLK => clk, R => 
                           n203, S => n172_port, Q => PRADDR_1_port);
   nPRADDR_reg_2_inst : LATCH port map( CLK => N258, D => N261, Q => 
                           nPRADDR_2_port);
   PRADDR_reg_2_inst : DFFSR port map( D => nPRADDR_2_port, CLK => clk, R => 
                           n203, S => n171_port, Q => PRADDR_2_port);
   nPRADDR_reg_3_inst : LATCH port map( CLK => N258, D => N262, Q => 
                           nPRADDR_3_port);
   PRADDR_reg_3_inst : DFFSR port map( D => nPRADDR_3_port, CLK => clk, R => 
                           n203, S => n170_port, Q => PRADDR_3_port);
   nPRADDR_reg_4_inst : LATCH port map( CLK => N258, D => N263, Q => 
                           nPRADDR_4_port);
   PRADDR_reg_4_inst : DFFSR port map( D => nPRADDR_4_port, CLK => clk, R => 
                           n203, S => n169_port, Q => PRADDR_4_port);
   nPRADDR_reg_5_inst : LATCH port map( CLK => N258, D => N264, Q => 
                           nPRADDR_5_port);
   PRADDR_reg_5_inst : DFFSR port map( D => nPRADDR_5_port, CLK => clk, R => 
                           n203, S => n168_port, Q => PRADDR_5_port);
   nPRADDR_reg_6_inst : LATCH port map( CLK => N258, D => N265, Q => 
                           nPRADDR_6_port);
   PRADDR_reg_6_inst : DFFSR port map( D => nPRADDR_6_port, CLK => clk, R => 
                           n203, S => n167_port, Q => PRADDR_6_port);
   nPRADDR_reg_7_inst : LATCH port map( CLK => N258, D => N266, Q => 
                           nPRADDR_7_port);
   PRADDR_reg_7_inst : DFFSR port map( D => nPRADDR_7_port, CLK => clk, R => 
                           n203, S => n166_port, Q => PRADDR_7_port);
   nPRADDR_reg_8_inst : LATCH port map( CLK => N258, D => N267, Q => 
                           nPRADDR_8_port);
   PRADDR_reg_8_inst : DFFSR port map( D => nPRADDR_8_port, CLK => clk, R => 
                           n203, S => n165_port, Q => PRADDR_8_port);
   nPRADDR_reg_9_inst : LATCH port map( CLK => N258, D => N268, Q => 
                           nPRADDR_9_port);
   PRADDR_reg_9_inst : DFFSR port map( D => nPRADDR_9_port, CLK => clk, R => 
                           n203, S => n164_port, Q => PRADDR_9_port);
   nPRADDR_reg_10_inst : LATCH port map( CLK => N258, D => N269, Q => 
                           nPRADDR_10_port);
   PRADDR_reg_10_inst : DFFSR port map( D => nPRADDR_10_port, CLK => clk, R => 
                           n203, S => n163_port, Q => PRADDR_10_port);
   nPRADDR_reg_11_inst : LATCH port map( CLK => N258, D => N270, Q => 
                           nPRADDR_11_port);
   PRADDR_reg_11_inst : DFFSR port map( D => nPRADDR_11_port, CLK => clk, R => 
                           n203, S => n162, Q => PRADDR_11_port);
   nRADDR_reg_11_inst : LATCH port map( CLK => n6, D => N257, Q => 
                           nRADDR_11_port);
   RADDR_reg_11_inst : DFFSR port map( D => nRADDR_11_port, CLK => clk, R => 
                           n203, S => n161, Q => RADDR_11_port);
   nRADDR_reg_10_inst : LATCH port map( CLK => n6, D => N256, Q => 
                           nRADDR_10_port);
   RADDR_reg_10_inst : DFFSR port map( D => nRADDR_10_port, CLK => clk, R => 
                           n203, S => n160, Q => RADDR_10_port);
   nRADDR_reg_1_inst : LATCH port map( CLK => n6, D => N247, Q => nRADDR_1_port
                           );
   RADDR_reg_1_inst : DFFSR port map( D => nRADDR_1_port, CLK => clk, R => n203
                           , S => n159, Q => RADDR_1_port);
   nRADDR_reg_2_inst : LATCH port map( CLK => n6, D => N248, Q => nRADDR_2_port
                           );
   RADDR_reg_2_inst : DFFSR port map( D => nRADDR_2_port, CLK => clk, R => n203
                           , S => n158, Q => RADDR_2_port);
   nRADDR_reg_3_inst : LATCH port map( CLK => n6, D => N249, Q => nRADDR_3_port
                           );
   RADDR_reg_3_inst : DFFSR port map( D => nRADDR_3_port, CLK => clk, R => n203
                           , S => n157, Q => RADDR_3_port);
   nRADDR_reg_4_inst : LATCH port map( CLK => n6, D => N250, Q => nRADDR_4_port
                           );
   RADDR_reg_4_inst : DFFSR port map( D => nRADDR_4_port, CLK => clk, R => n203
                           , S => n156, Q => RADDR_4_port);
   nRADDR_reg_5_inst : LATCH port map( CLK => n6, D => N251, Q => nRADDR_5_port
                           );
   RADDR_reg_5_inst : DFFSR port map( D => nRADDR_5_port, CLK => clk, R => n203
                           , S => n155, Q => RADDR_5_port);
   nRADDR_reg_6_inst : LATCH port map( CLK => n6, D => N252, Q => nRADDR_6_port
                           );
   RADDR_reg_6_inst : DFFSR port map( D => nRADDR_6_port, CLK => clk, R => n203
                           , S => n154, Q => RADDR_6_port);
   nRADDR_reg_7_inst : LATCH port map( CLK => n6, D => N253, Q => nRADDR_7_port
                           );
   RADDR_reg_7_inst : DFFSR port map( D => nRADDR_7_port, CLK => clk, R => n203
                           , S => n153, Q => RADDR_7_port);
   nRADDR_reg_8_inst : LATCH port map( CLK => n6, D => N254, Q => nRADDR_8_port
                           );
   RADDR_reg_8_inst : DFFSR port map( D => nRADDR_8_port, CLK => clk, R => n203
                           , S => n152, Q => RADDR_8_port);
   nRADDR_reg_9_inst : LATCH port map( CLK => n6, D => N255, Q => nRADDR_9_port
                           );
   RADDR_reg_9_inst : DFFSR port map( D => nRADDR_9_port, CLK => clk, R => n203
                           , S => n151, Q => RADDR_9_port);
   ODATA_tri_enable_reg_7_inst : LATCH port map( CLK => n8, D => n119, Q => 
                           N293);
   ODATA_tri_enable_reg_6_inst : LATCH port map( CLK => n8, D => n119, Q => 
                           N296);
   ODATA_tri_enable_reg_5_inst : LATCH port map( CLK => n8, D => n119, Q => 
                           N299);
   ODATA_tri_enable_reg_4_inst : LATCH port map( CLK => n8, D => n119, Q => 
                           N302);
   ODATA_tri_enable_reg_3_inst : LATCH port map( CLK => n8, D => n119, Q => 
                           N305);
   ODATA_tri_enable_reg_2_inst : LATCH port map( CLK => n8, D => n119, Q => 
                           N308);
   ODATA_tri_enable_reg_1_inst : LATCH port map( CLK => n8, D => n119, Q => 
                           N311);
   ODATA_tri_enable_reg_0_inst : LATCH port map( CLK => n8, D => n119, Q => 
                           N314);
   SDATA_reg_7_inst : LATCH port map( CLK => n8, D => IDATA(7), Q => N316);
   SDATA_tri_enable_reg_7_inst : LATCH port map( CLK => state_0_port, D => n7, 
                           Q => N317);
   ODATA_reg_7_inst : LATCH port map( CLK => state_0_port, D => SDATA(7), Q => 
                           N292);
   SDATA_reg_6_inst : LATCH port map( CLK => n8, D => IDATA(6), Q => N319);
   SDATA_tri_enable_reg_6_inst : LATCH port map( CLK => state_0_port, D => n7, 
                           Q => N320);
   ODATA_reg_6_inst : LATCH port map( CLK => state_0_port, D => SDATA(6), Q => 
                           N295);
   SDATA_reg_5_inst : LATCH port map( CLK => n8, D => IDATA(5), Q => N322);
   SDATA_tri_enable_reg_5_inst : LATCH port map( CLK => state_0_port, D => n7, 
                           Q => N323);
   ODATA_reg_5_inst : LATCH port map( CLK => state_0_port, D => SDATA(5), Q => 
                           N298);
   SDATA_reg_4_inst : LATCH port map( CLK => n8, D => IDATA(4), Q => N325);
   SDATA_tri_enable_reg_4_inst : LATCH port map( CLK => state_0_port, D => n7, 
                           Q => N326);
   ODATA_reg_4_inst : LATCH port map( CLK => state_0_port, D => SDATA(4), Q => 
                           N301);
   SDATA_reg_3_inst : LATCH port map( CLK => n8, D => IDATA(3), Q => N328);
   SDATA_tri_enable_reg_3_inst : LATCH port map( CLK => n8, D => n7, Q => N329)
                           ;
   ODATA_reg_3_inst : LATCH port map( CLK => state_0_port, D => SDATA(3), Q => 
                           N304);
   SDATA_reg_2_inst : LATCH port map( CLK => n8, D => IDATA(2), Q => N331);
   SDATA_tri_enable_reg_2_inst : LATCH port map( CLK => n8, D => n7, Q => N332)
                           ;
   ODATA_reg_2_inst : LATCH port map( CLK => n8, D => SDATA(2), Q => N307);
   SDATA_reg_1_inst : LATCH port map( CLK => n8, D => IDATA(1), Q => N334);
   SDATA_tri_enable_reg_1_inst : LATCH port map( CLK => n8, D => n7, Q => N335)
                           ;
   ODATA_reg_1_inst : LATCH port map( CLK => n8, D => SDATA(1), Q => N310);
   SDATA_reg_0_inst : LATCH port map( CLK => n8, D => IDATA(0), Q => N337);
   SDATA_tri_enable_reg_0_inst : LATCH port map( CLK => n8, D => n7, Q => N338)
                           ;
   ODATA_reg_0_inst : LATCH port map( CLK => n8, D => SDATA(0), Q => N313);
   n151 <= '1';
   n152 <= '1';
   n153 <= '1';
   n154 <= '1';
   n155 <= '1';
   n156 <= '1';
   n157 <= '1';
   n158 <= '1';
   n159 <= '1';
   n160 <= '1';
   n161 <= '1';
   n162 <= '1';
   n163_port <= '1';
   n164_port <= '1';
   n165_port <= '1';
   n166_port <= '1';
   n167_port <= '1';
   n168_port <= '1';
   n169_port <= '1';
   n170_port <= '1';
   n171_port <= '1';
   n172_port <= '1';
   n173_port <= '1';
   n174_port <= '1';
   n175 <= '1';
   n176 <= '1';
   n177 <= '1';
   n178 <= '1';
   n179 <= '1';
   n180_port <= '1';
   n181_port <= '1';
   n182_port <= '1';
   n183_port <= '1';
   n184_port <= '1';
   n185_port <= '1';
   n186_port <= '1';
   n187_port <= '1';
   n188_port <= '1';
   n189_port <= '1';
   n190_port <= '1';
   n191 <= '1';
   n192 <= '1';
   n193 <= '1';
   n194 <= '1';
   sub_132 : s_Control_DW01_dec_0 port map( A(11) => RADDR_11_port, A(10) => 
                           RADDR_10_port, A(9) => RADDR_9_port, A(8) => 
                           RADDR_8_port, A(7) => RADDR_7_port, A(6) => 
                           RADDR_6_port, A(5) => RADDR_5_port, A(4) => 
                           RADDR_4_port, A(3) => RADDR_3_port, A(2) => 
                           RADDR_2_port, A(1) => RADDR_1_port, A(0) => 
                           RADDR_0_port, SUM(11) => N190, SUM(10) => N189, 
                           SUM(9) => N188, SUM(8) => N187, SUM(7) => N186, 
                           SUM(6) => N185, SUM(5) => N184, SUM(4) => N183, 
                           SUM(3) => N182, SUM(2) => N181, SUM(1) => N180, 
                           SUM(0) => n_1005);
   add_123 : s_Control_DW01_inc_0 port map( A(11) => WADDR_11_port, A(10) => 
                           WADDR_10_port, A(9) => WADDR_9_port, A(8) => 
                           WADDR_8_port, A(7) => WADDR_7_port, A(6) => 
                           WADDR_6_port, A(5) => WADDR_5_port, A(4) => 
                           WADDR_4_port, A(3) => WADDR_3_port, A(2) => 
                           WADDR_2_port, A(1) => WADDR_1_port, A(0) => 
                           WADDR_0_port, SUM(11) => N174, SUM(10) => N173, 
                           SUM(9) => N172, SUM(8) => N171, SUM(7) => N170, 
                           SUM(6) => N169, SUM(5) => N168, SUM(4) => N167, 
                           SUM(3) => N166, SUM(2) => N165, SUM(1) => N164, 
                           SUM(0) => N163);
   sub_84 : s_Control_DW01_sub_0 port map( A(11) => PRADDR_11_port, A(10) => 
                           PRADDR_10_port, A(9) => PRADDR_9_port, A(8) => 
                           PRADDR_8_port, A(7) => PRADDR_7_port, A(6) => 
                           PRADDR_6_port, A(5) => PRADDR_5_port, A(4) => 
                           PRADDR_4_port, A(3) => PRADDR_3_port, A(2) => 
                           PRADDR_2_port, A(1) => PRADDR_1_port, A(0) => 
                           PRADDR_0_port, B(11) => RADDR_11_port, B(10) => 
                           RADDR_10_port, B(9) => RADDR_9_port, B(8) => 
                           RADDR_8_port, B(7) => RADDR_7_port, B(6) => 
                           RADDR_6_port, B(5) => RADDR_5_port, B(4) => 
                           RADDR_4_port, B(3) => RADDR_3_port, B(2) => 
                           RADDR_2_port, B(1) => RADDR_1_port, B(0) => 
                           RADDR_0_port, CI => n2, DIFF(11) => N78, DIFF(10) =>
                           N77, DIFF(9) => N76, DIFF(8) => N75, DIFF(7) => N74,
                           DIFF(6) => N73, DIFF(5) => N72, DIFF(4) => N71, 
                           DIFF(3) => N70, DIFF(2) => N69, DIFF(1) => N68, 
                           DIFF(0) => N67, CO => n_1006);
   ODATA_tri_1_inst : TBUFX1 port map( A => n150, EN => n128, Y => ODATA(1));
   ODATA_tri_2_inst : TBUFX1 port map( A => n147, EN => n127, Y => ODATA(2));
   ODATA_tri_6_inst : TBUFX1 port map( A => n135, EN => n123, Y => ODATA(6));
   ODATA_tri_7_inst : TBUFX1 port map( A => n132, EN => n122, Y => ODATA(7));
   ODATA_tri_5_inst : TBUFX1 port map( A => n138, EN => n124, Y => ODATA(5));
   ODATA_tri_0_inst : TBUFX1 port map( A => n202, EN => n129, Y => ODATA(0));
   ODATA_tri_4_inst : TBUFX1 port map( A => n141, EN => n125, Y => ODATA(4));
   ODATA_tri_3_inst : TBUFX1 port map( A => n144, EN => n126, Y => ODATA(3));
   SDATA_tri_0_inst : TBUFX1 port map( A => n195, EN => n196, Y => SDATA(0));
   SDATA_tri_1_inst : TBUFX1 port map( A => n148, EN => n149, Y => SDATA(1));
   SDATA_tri_2_inst : TBUFX1 port map( A => n145, EN => n146, Y => SDATA(2));
   SDATA_tri_3_inst : TBUFX1 port map( A => n142, EN => n143, Y => SDATA(3));
   SDATA_tri_4_inst : TBUFX1 port map( A => n139, EN => n140, Y => SDATA(4));
   SDATA_tri_5_inst : TBUFX1 port map( A => n136, EN => n137, Y => SDATA(5));
   SDATA_tri_6_inst : TBUFX1 port map( A => n133, EN => n134, Y => SDATA(6));
   SDATA_tri_7_inst : TBUFX1 port map( A => n130, EN => n131, Y => SDATA(7));
   ADDR_tri_0_inst : TBUFX1 port map( A => n118, EN => n8, Y => ADDR(0));
   ADDR_tri_1_inst : TBUFX1 port map( A => n117, EN => n8, Y => ADDR(1));
   ADDR_tri_2_inst : TBUFX1 port map( A => n116, EN => n8, Y => ADDR(2));
   ADDR_tri_3_inst : TBUFX1 port map( A => n115, EN => n8, Y => ADDR(3));
   ADDR_tri_4_inst : TBUFX1 port map( A => n114, EN => n8, Y => ADDR(4));
   ADDR_tri_5_inst : TBUFX1 port map( A => n113, EN => n8, Y => ADDR(5));
   ADDR_tri_6_inst : TBUFX1 port map( A => n112, EN => n8, Y => ADDR(6));
   ADDR_tri_7_inst : TBUFX1 port map( A => n111, EN => n8, Y => ADDR(7));
   ADDR_tri_8_inst : TBUFX1 port map( A => n110, EN => n8, Y => ADDR(8));
   ADDR_tri_9_inst : TBUFX1 port map( A => n109, EN => n8, Y => ADDR(9));
   ADDR_tri_10_inst : TBUFX1 port map( A => n108, EN => n8, Y => ADDR(10));
   ADDR_tri_11_inst : TBUFX1 port map( A => n107, EN => n8, Y => ADDR(11));
   U3 : AND2X2 port map( A => n203, B => n10, Y => n1);
   U4 : INVX1 port map( A => n67_port, Y => n3);
   U5 : INVX1 port map( A => n3, Y => n4);
   U6 : INVX2 port map( A => n1, Y => n5);
   U7 : INVX8 port map( A => rst, Y => n203);
   U8 : BUFX2 port map( A => N245, Y => n6);
   U9 : OR2X2 port map( A => n60, B => n61, Y => N258);
   U11 : INVX2 port map( A => n119, Y => n7);
   U12 : INVX4 port map( A => n9, Y => n8);
   U13 : OAI21X1 port map( A => n7, B => n9, C => n10, Y => w_enable_out);
   U14 : INVX1 port map( A => N293, Y => n122);
   U15 : INVX1 port map( A => N296, Y => n123);
   U16 : INVX1 port map( A => N299, Y => n124);
   U17 : INVX1 port map( A => N302, Y => n125);
   U18 : INVX1 port map( A => N305, Y => n126);
   U19 : INVX1 port map( A => N308, Y => n127);
   U20 : INVX1 port map( A => N311, Y => n128);
   U21 : INVX1 port map( A => N314, Y => n129);
   U22 : INVX1 port map( A => N316, Y => n130);
   U23 : INVX1 port map( A => N317, Y => n131);
   U24 : INVX1 port map( A => N292, Y => n132);
   U25 : INVX1 port map( A => N319, Y => n133);
   U26 : INVX1 port map( A => N320, Y => n134);
   U27 : INVX1 port map( A => N295, Y => n135);
   U28 : INVX1 port map( A => N322, Y => n136);
   U29 : INVX1 port map( A => N323, Y => n137);
   U30 : INVX1 port map( A => N298, Y => n138);
   U31 : INVX1 port map( A => N325, Y => n139);
   U32 : INVX1 port map( A => N326, Y => n140);
   U33 : INVX1 port map( A => N301, Y => n141);
   U34 : INVX1 port map( A => N328, Y => n142);
   U35 : INVX1 port map( A => N329, Y => n143);
   U36 : INVX1 port map( A => N304, Y => n144);
   U37 : INVX1 port map( A => N331, Y => n145);
   U38 : INVX1 port map( A => N332, Y => n146);
   U39 : INVX1 port map( A => N307, Y => n147);
   U40 : INVX1 port map( A => N334, Y => n148);
   U41 : INVX1 port map( A => N335, Y => n149);
   U42 : INVX1 port map( A => N310, Y => n150);
   U43 : INVX1 port map( A => N337, Y => n195);
   U44 : INVX1 port map( A => N338, Y => n196);
   U45 : INVX1 port map( A => N313, Y => n202);
   U46 : OAI21X1 port map( A => n11, B => n12, C => n13, Y => n201);
   U47 : OAI21X1 port map( A => n11, B => n14, C => n8, Y => n13);
   U48 : AND2X1 port map( A => n10, B => n15, Y => n12);
   U49 : OAI21X1 port map( A => full, B => r_enable_in, C => n9, Y => n15);
   U50 : MUX2X1 port map( B => n16, A => n119, S => n11, Y => n200);
   U51 : INVX1 port map( A => n17, Y => n11);
   U52 : OAI21X1 port map( A => rst, B => n14, C => N231, Y => n17);
   U53 : AOI22X1 port map( A => n18, B => n19, C => n20, D => n21, Y => n16);
   U54 : NOR2X1 port map( A => n7, B => n8, Y => n19);
   U55 : NOR2X1 port map( A => full, B => n22, Y => n18);
   U56 : INVX1 port map( A => r_enable_in, Y => n22);
   U57 : MUX2X1 port map( B => n23, A => n24, S => cnt8_0_port, Y => n199);
   U58 : NAND2X1 port map( A => n25, B => n21, Y => n23);
   U59 : MUX2X1 port map( B => n26, A => n27, S => cnt8_1_port, Y => n198);
   U60 : INVX1 port map( A => n28, Y => n27);
   U61 : OAI21X1 port map( A => n29, B => n26, C => n30, Y => n197);
   U62 : OAI21X1 port map( A => n25, B => n28, C => cnt8_2_port, Y => n30);
   U63 : OAI21X1 port map( A => cnt8_0_port, B => n31, C => n24, Y => n28);
   U64 : AOI22X1 port map( A => n203, B => r_enable_out_port, C => n14, D => 
                           n25, Y => n24);
   U65 : INVX1 port map( A => n10, Y => r_enable_out_port);
   U66 : NAND3X1 port map( A => cnt8_0_port, B => n21, C => n25, Y => n26);
   U67 : INVX1 port map( A => n31, Y => n25);
   U68 : NAND2X1 port map( A => n20, B => n203, Y => n31);
   U69 : INVX1 port map( A => cnt8_1_port, Y => n29);
   U70 : MUX2X1 port map( B => WADDR_0_port, A => RADDR_0_port, S => 
                           state_1_port, Y => n118);
   U71 : MUX2X1 port map( B => WADDR_1_port, A => RADDR_1_port, S => 
                           state_1_port, Y => n117);
   U72 : MUX2X1 port map( B => WADDR_2_port, A => RADDR_2_port, S => 
                           state_1_port, Y => n116);
   U73 : MUX2X1 port map( B => WADDR_3_port, A => RADDR_3_port, S => 
                           state_1_port, Y => n115);
   U74 : MUX2X1 port map( B => WADDR_4_port, A => RADDR_4_port, S => 
                           state_1_port, Y => n114);
   U75 : MUX2X1 port map( B => WADDR_5_port, A => RADDR_5_port, S => 
                           state_1_port, Y => n113);
   U76 : MUX2X1 port map( B => WADDR_6_port, A => RADDR_6_port, S => 
                           state_1_port, Y => n112);
   U77 : MUX2X1 port map( B => WADDR_7_port, A => RADDR_7_port, S => 
                           state_1_port, Y => n111);
   U78 : MUX2X1 port map( B => WADDR_8_port, A => RADDR_8_port, S => 
                           state_1_port, Y => n110);
   U79 : MUX2X1 port map( B => WADDR_9_port, A => RADDR_9_port, S => n7, Y => 
                           n109);
   U80 : MUX2X1 port map( B => WADDR_10_port, A => RADDR_10_port, S => n7, Y =>
                           n108);
   U81 : MUX2X1 port map( B => WADDR_11_port, A => RADDR_11_port, S => n7, Y =>
                           n107);
   U82 : MUX2X1 port map( B => n32, A => n33, S => icnt8_2_port, Y => 
                           incnt8_2_port);
   U83 : INVX1 port map( A => n34, Y => n33);
   U84 : OAI21X1 port map( A => n35, B => icnt8_1_port, C => n36, Y => n34);
   U85 : NAND3X1 port map( A => icnt8_1_port, B => icnt8_0_port, C => n37, Y =>
                           n32);
   U86 : MUX2X1 port map( B => n38, A => n36, S => icnt8_1_port, Y => 
                           incnt8_1_port);
   U87 : INVX1 port map( A => incnt8_0_port, Y => n36);
   U88 : NAND2X1 port map( A => n37, B => icnt8_0_port, Y => n38);
   U89 : INVX1 port map( A => n35, Y => n37);
   U90 : NOR2X1 port map( A => n35, B => icnt8_0_port, Y => incnt8_0_port);
   U91 : OAI21X1 port map( A => n20, B => r_enable_s_port, C => n203, Y => n35)
                           ;
   U92 : INVX1 port map( A => n39, Y => n20);
   U93 : NAND3X1 port map( A => n40, B => n119, C => n8, Y => n39);
   U94 : INVX1 port map( A => state_1_port, Y => n119);
   U95 : NAND3X1 port map( A => cnt8_2_port, B => cnt8_1_port, C => n41, Y => 
                           n40);
   U96 : AND2X1 port map( A => n21, B => cnt8_0_port, Y => n41);
   U97 : AND2X1 port map( A => n42, B => n43, Y => empty);
   U98 : NOR2X1 port map( A => n44, B => n45, Y => n43);
   U99 : NAND3X1 port map( A => n46, B => n47, C => n48, Y => n45);
   U100 : NAND3X1 port map( A => n49, B => n50, C => n51, Y => n44);
   U101 : NOR2X1 port map( A => n52, B => n53, Y => n42);
   U102 : NAND3X1 port map( A => n54, B => n55, C => n56, Y => n53);
   U103 : NAND3X1 port map( A => n57, B => n58, C => n59, Y => n52);
   U104 : NOR2X1 port map( A => rst, B => n55, Y => N270);
   U105 : INVX1 port map( A => WADDR_11_port, Y => n55);
   U106 : NOR2X1 port map( A => rst, B => n54, Y => N269);
   U107 : INVX1 port map( A => WADDR_10_port, Y => n54);
   U108 : NOR2X1 port map( A => rst, B => n50, Y => N268);
   U109 : INVX1 port map( A => WADDR_9_port, Y => n50);
   U110 : NOR2X1 port map( A => rst, B => n49, Y => N267);
   U111 : INVX1 port map( A => WADDR_8_port, Y => n49);
   U112 : NOR2X1 port map( A => rst, B => n51, Y => N266);
   U113 : INVX1 port map( A => WADDR_7_port, Y => n51);
   U114 : NOR2X1 port map( A => rst, B => n47, Y => N265);
   U115 : INVX1 port map( A => WADDR_6_port, Y => n47);
   U116 : NOR2X1 port map( A => rst, B => n46, Y => N264);
   U117 : INVX1 port map( A => WADDR_5_port, Y => n46);
   U118 : NOR2X1 port map( A => rst, B => n48, Y => N263);
   U119 : INVX1 port map( A => WADDR_4_port, Y => n48);
   U120 : NOR2X1 port map( A => rst, B => n58, Y => N262);
   U121 : INVX1 port map( A => WADDR_3_port, Y => n58);
   U122 : NOR2X1 port map( A => rst, B => n57, Y => N261);
   U123 : INVX1 port map( A => WADDR_2_port, Y => n57);
   U124 : NOR2X1 port map( A => rst, B => n59, Y => N260);
   U125 : INVX1 port map( A => WADDR_1_port, Y => n59);
   U126 : NOR2X1 port map( A => rst, B => n56, Y => N259);
   U127 : INVX1 port map( A => WADDR_0_port, Y => n56);
   U128 : OAI21X1 port map( A => n62, B => n63, C => n203, Y => n61);
   U129 : OAI21X1 port map( A => n64, B => n65, C => n66, Y => N257);
   U130 : AOI22X1 port map( A => n4, B => WADDR_11_port, C => nPRADDR_11_port, 
                           D => n68_port, Y => n66);
   U131 : INVX1 port map( A => N190, Y => n65);
   U132 : OAI21X1 port map( A => n64, B => n69_port, C => n70_port, Y => N256);
   U133 : AOI22X1 port map( A => n4, B => WADDR_10_port, C => nPRADDR_10_port, 
                           D => n68_port, Y => n70_port);
   U134 : INVX1 port map( A => N189, Y => n69_port);
   U135 : OAI21X1 port map( A => n64, B => n71_port, C => n72_port, Y => N255);
   U136 : AOI22X1 port map( A => n4, B => WADDR_9_port, C => nPRADDR_9_port, D 
                           => n68_port, Y => n72_port);
   U137 : INVX1 port map( A => N188, Y => n71_port);
   U138 : OAI21X1 port map( A => n64, B => n73_port, C => n74_port, Y => N254);
   U139 : AOI22X1 port map( A => n4, B => WADDR_8_port, C => nPRADDR_8_port, D 
                           => n68_port, Y => n74_port);
   U140 : INVX1 port map( A => N187, Y => n73_port);
   U141 : OAI21X1 port map( A => n64, B => n75_port, C => n76_port, Y => N253);
   U142 : AOI22X1 port map( A => n4, B => WADDR_7_port, C => nPRADDR_7_port, D 
                           => n68_port, Y => n76_port);
   U143 : INVX1 port map( A => N186, Y => n75_port);
   U144 : OAI21X1 port map( A => n64, B => n77_port, C => n78_port, Y => N252);
   U145 : AOI22X1 port map( A => n4, B => WADDR_6_port, C => nPRADDR_6_port, D 
                           => n68_port, Y => n78_port);
   U146 : INVX1 port map( A => N185, Y => n77_port);
   U147 : OAI21X1 port map( A => n64, B => n79, C => n80, Y => N251);
   U148 : AOI22X1 port map( A => n4, B => WADDR_5_port, C => nPRADDR_5_port, D 
                           => n68_port, Y => n80);
   U149 : INVX1 port map( A => N184, Y => n79);
   U150 : OAI21X1 port map( A => n64, B => n81, C => n82, Y => N250);
   U151 : AOI22X1 port map( A => n4, B => WADDR_4_port, C => nPRADDR_4_port, D 
                           => n68_port, Y => n82);
   U152 : INVX1 port map( A => N183, Y => n81);
   U153 : OAI21X1 port map( A => n64, B => n83, C => n84, Y => N249);
   U154 : AOI22X1 port map( A => n4, B => WADDR_3_port, C => nPRADDR_3_port, D 
                           => n68_port, Y => n84);
   U155 : INVX1 port map( A => N182, Y => n83);
   U156 : OAI21X1 port map( A => n64, B => n85, C => n86, Y => N248);
   U157 : AOI22X1 port map( A => n4, B => WADDR_2_port, C => nPRADDR_2_port, D 
                           => n68_port, Y => n86);
   U158 : INVX1 port map( A => N181, Y => n85);
   U159 : OAI21X1 port map( A => n64, B => n87, C => n88, Y => N247);
   U160 : AOI22X1 port map( A => n4, B => WADDR_1_port, C => nPRADDR_1_port, D 
                           => n68_port, Y => n88);
   U161 : INVX1 port map( A => N180, Y => n87);
   U162 : OAI21X1 port map( A => RADDR_0_port, B => n64, C => n89, Y => N246);
   U163 : AOI22X1 port map( A => n4, B => WADDR_0_port, C => nPRADDR_0_port, D 
                           => n68_port, Y => n89);
   U164 : INVX1 port map( A => n90, Y => n68_port);
   U165 : NAND3X1 port map( A => resend, B => n62, C => n91, Y => n90);
   U166 : AOI21X1 port map( A => n62, B => resend, C => n92, Y => n67_port);
   U167 : NAND2X1 port map( A => n93, B => n94, Y => n62);
   U168 : NOR2X1 port map( A => n95, B => n96, Y => n94);
   U169 : NAND3X1 port map( A => N71, B => N70, C => N72, Y => n96);
   U170 : NAND3X1 port map( A => N68, B => N67, C => N69, Y => n95);
   U171 : NOR2X1 port map( A => n97, B => n98, Y => n93);
   U172 : NAND3X1 port map( A => N77, B => N76, C => N78, Y => n98);
   U173 : NAND3X1 port map( A => N74, B => N73, C => N75, Y => n97);
   U174 : NAND3X1 port map( A => n21, B => n203, C => r_enable_s_port, Y => n64
                           );
   U175 : INVX1 port map( A => n99, Y => r_enable_s_port);
   U176 : INVX1 port map( A => n14, Y => n21);
   U177 : NAND3X1 port map( A => n100, B => n63, C => n91, Y => N245);
   U178 : INVX1 port map( A => n92, Y => n91);
   U179 : OAI21X1 port map( A => n14, B => n99, C => n203, Y => n92);
   U180 : NAND3X1 port map( A => icnt8_1_port, B => icnt8_0_port, C => 
                           icnt8_2_port, Y => n14);
   U181 : INVX1 port map( A => resend, Y => n63);
   U182 : INVX1 port map( A => n60, Y => n100);
   U183 : OAI21X1 port map( A => n101, B => n102, C => sWrite, Y => n60);
   U184 : NAND2X1 port map( A => n103, B => n104, Y => n102);
   U185 : NOR3X1 port map( A => RADDR_10_port, B => RADDR_11_port, C => 
                           RADDR_0_port, Y => n104);
   U186 : NOR3X1 port map( A => RADDR_2_port, B => RADDR_3_port, C => 
                           RADDR_1_port, Y => n103);
   U187 : NAND2X1 port map( A => n105, B => n106, Y => n101);
   U188 : NOR3X1 port map( A => RADDR_5_port, B => RADDR_6_port, C => 
                           RADDR_4_port, Y => n106);
   U189 : NOR3X1 port map( A => RADDR_8_port, B => RADDR_9_port, C => 
                           RADDR_7_port, Y => n105);
   U190 : AND2X1 port map( A => N174, B => n203, Y => N244);
   U191 : AND2X1 port map( A => N173, B => n203, Y => N243);
   U192 : AND2X1 port map( A => N172, B => n203, Y => N242);
   U193 : AND2X1 port map( A => N171, B => n203, Y => N241);
   U194 : AND2X1 port map( A => N170, B => n203, Y => N240);
   U195 : AND2X1 port map( A => N169, B => n203, Y => N239);
   U196 : AND2X1 port map( A => N168, B => n203, Y => N238);
   U197 : AND2X1 port map( A => N167, B => n203, Y => N237);
   U198 : AND2X1 port map( A => N166, B => n203, Y => N236);
   U199 : AND2X1 port map( A => N165, B => n203, Y => N235);
   U200 : AND2X1 port map( A => N164, B => n203, Y => N234);
   U201 : AND2X1 port map( A => N163, B => n203, Y => N233);
   U202 : NAND2X1 port map( A => n7, B => n9, Y => n10);
   U203 : INVX1 port map( A => state_0_port, Y => n9);
   U248 : NAND2X1 port map( A => n203, B => n99, Y => N231);
   U249 : NAND2X1 port map( A => n8, B => n7, Y => n99);

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity bToothTop is

   port( CLK : in std_logic;  DATA : in std_logic_vector (7 downto 0);  EMPTY, 
         READ_EN1, RST : in std_logic;  DATAOUT : out std_logic_vector (7 
         downto 0);  EMPTY_SRAM, READ_EN, RESEND_EN : out std_logic);

end bToothTop;

architecture SYN_struct of bToothTop is

   component B_UAT_WAITSRAM24_WAITREG5264
      port( CLK, RST : in std_logic;  ACCESS_CODE : in std_logic_vector (71 
            downto 0);  HEADER : in std_logic_vector (53 downto 0);  PAYLOAD : 
            in std_logic_vector (7 downto 0);  TRAN_EN, ESTORE_EN : in 
            std_logic;  ANT_LOUT : out std_logic);
   end component;
   
   component B_StripPayload
      port( ANTINR, CLK, READ_EN, RST : in std_logic;  DATAOUT : out 
            std_logic_vector (7 downto 0);  EMPTY_SRAM, ERR, REPLY_EN : out 
            std_logic);
   end component;
   
   component B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869
      port( CLK, RST, REPLY_EN, ERR : in std_logic;  DATAOUT : out std_logic);
   end component;
   
   component B_Header_WAITREG5264
      port( CLK, RST, HEADER_EN : in std_logic;  HEADER : out std_logic_vector 
            (53 downto 0);  TRANS_EN, ENCODE_EN : out std_logic);
   end component;
   
   component B_EncodePacket_STROBCYC15_WAITSRAM24_WAITREG5264
      port( CLK, RST, ENCODE_EN : in std_logic;  DATA : in std_logic_vector (7 
            downto 0);  PAYLOAD : out std_logic_vector (7 downto 0);  ESTORE_EN
            , NEXT_EN, READ_EN : out std_logic);
   end component;
   
   component B_Controller_WAITSRAM24_WAITREG5264_WAITBAK49
      port( CLK, RST, NEXT_EN, ANT_LIN, EMPTY : in std_logic;  RESEND_EN, 
            TRANS_EN : out std_logic);
   end component;
   
   component B_AppendAccessCode
      port( CLK, RST, TRANS_EN : in std_logic;  ACESS_CODE : out 
            std_logic_vector (71 downto 0);  HEADER_EN : out std_logic);
   end component;
   
   signal TRANS_EN, ACESS_CODE_71_port, ACESS_CODE_70_port, ACESS_CODE_69_port,
      ACESS_CODE_68_port, ACESS_CODE_67_port, ACESS_CODE_66_port, 
      ACESS_CODE_65_port, ACESS_CODE_64_port, ACESS_CODE_63_port, 
      ACESS_CODE_62_port, ACESS_CODE_61_port, ACESS_CODE_60_port, 
      ACESS_CODE_59_port, ACESS_CODE_58_port, ACESS_CODE_57_port, 
      ACESS_CODE_56_port, ACESS_CODE_55_port, ACESS_CODE_54_port, 
      ACESS_CODE_53_port, ACESS_CODE_52_port, ACESS_CODE_51_port, 
      ACESS_CODE_50_port, ACESS_CODE_49_port, ACESS_CODE_48_port, 
      ACESS_CODE_47_port, ACESS_CODE_46_port, ACESS_CODE_45_port, 
      ACESS_CODE_44_port, ACESS_CODE_43_port, ACESS_CODE_42_port, 
      ACESS_CODE_41_port, ACESS_CODE_40_port, ACESS_CODE_39_port, 
      ACESS_CODE_38_port, ACESS_CODE_37_port, ACESS_CODE_36_port, 
      ACESS_CODE_35_port, ACESS_CODE_34_port, ACESS_CODE_33_port, 
      ACESS_CODE_32_port, ACESS_CODE_31_port, ACESS_CODE_30_port, 
      ACESS_CODE_29_port, ACESS_CODE_28_port, ACESS_CODE_27_port, 
      ACESS_CODE_26_port, ACESS_CODE_25_port, ACESS_CODE_24_port, 
      ACESS_CODE_23_port, ACESS_CODE_22_port, ACESS_CODE_21_port, 
      ACESS_CODE_20_port, ACESS_CODE_19_port, ACESS_CODE_18_port, 
      ACESS_CODE_17_port, ACESS_CODE_16_port, ACESS_CODE_15_port, 
      ACESS_CODE_14_port, ACESS_CODE_13_port, ACESS_CODE_12_port, 
      ACESS_CODE_11_port, ACESS_CODE_10_port, ACESS_CODE_9_port, 
      ACESS_CODE_8_port, ACESS_CODE_7_port, ACESS_CODE_6_port, 
      ACESS_CODE_5_port, ACESS_CODE_4_port, ACESS_CODE_3_port, 
      ACESS_CODE_2_port, ACESS_CODE_1_port, ACESS_CODE_0_port, HEADER_EN, 
      DATAOUT1, NEXT_EN, ENCODE_EN, ESTORE_EN, PAYLOAD_7_port, PAYLOAD_6_port, 
      PAYLOAD_5_port, PAYLOAD_4_port, PAYLOAD_3_port, PAYLOAD_2_port, 
      PAYLOAD_1_port, PAYLOAD_0_port, HEADER_53_port, HEADER_52_port, 
      HEADER_51_port, HEADER_50_port, HEADER_49_port, HEADER_48_port, 
      HEADER_47_port, HEADER_46_port, HEADER_45_port, HEADER_44_port, 
      HEADER_43_port, HEADER_42_port, HEADER_41_port, HEADER_40_port, 
      HEADER_39_port, HEADER_38_port, HEADER_37_port, HEADER_36_port, 
      HEADER_35_port, HEADER_34_port, HEADER_33_port, HEADER_32_port, 
      HEADER_31_port, HEADER_30_port, HEADER_29_port, HEADER_28_port, 
      HEADER_27_port, HEADER_26_port, HEADER_25_port, HEADER_24_port, 
      HEADER_23_port, HEADER_22_port, HEADER_21_port, HEADER_20_port, 
      HEADER_19_port, HEADER_18_port, HEADER_17_port, HEADER_16_port, 
      HEADER_15_port, HEADER_14_port, HEADER_13_port, HEADER_12_port, 
      HEADER_11_port, HEADER_10_port, HEADER_9_port, HEADER_8_port, 
      HEADER_7_port, HEADER_6_port, HEADER_5_port, HEADER_4_port, HEADER_3_port
      , HEADER_2_port, HEADER_1_port, HEADER_0_port, TRANS_EN1, ERR, REPLY_EN, 
      ANTINR, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, n_1013, n_1014, 
      n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, n_1021, n_1022, n_1023, 
      n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, n_1030, n_1031, n_1032, 
      n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, n_1039, n_1040, n_1041, 
      n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, n_1048, n_1049, n_1050, 
      n_1051, n_1052, n_1053, n_1054, n_1055, n_1056 : std_logic;

begin
   
   U_0 : B_AppendAccessCode port map( CLK => CLK, RST => RST, TRANS_EN => 
                           TRANS_EN, ACESS_CODE(71) => ACESS_CODE_71_port, 
                           ACESS_CODE(70) => n_1007, ACESS_CODE(69) => 
                           ACESS_CODE_69_port, ACESS_CODE(68) => n_1008, 
                           ACESS_CODE(67) => ACESS_CODE_67_port, ACESS_CODE(66)
                           => ACESS_CODE_66_port, ACESS_CODE(65) => 
                           ACESS_CODE_65_port, ACESS_CODE(64) => n_1009, 
                           ACESS_CODE(63) => ACESS_CODE_63_port, ACESS_CODE(62)
                           => n_1010, ACESS_CODE(61) => ACESS_CODE_61_port, 
                           ACESS_CODE(60) => ACESS_CODE_60_port, ACESS_CODE(59)
                           => n_1011, ACESS_CODE(58) => ACESS_CODE_58_port, 
                           ACESS_CODE(57) => ACESS_CODE_57_port, ACESS_CODE(56)
                           => n_1012, ACESS_CODE(55) => n_1013, ACESS_CODE(54) 
                           => ACESS_CODE_54_port, ACESS_CODE(53) => 
                           ACESS_CODE_53_port, ACESS_CODE(52) => n_1014, 
                           ACESS_CODE(51) => ACESS_CODE_51_port, ACESS_CODE(50)
                           => ACESS_CODE_50_port, ACESS_CODE(49) => n_1015, 
                           ACESS_CODE(48) => n_1016, ACESS_CODE(47) => n_1017, 
                           ACESS_CODE(46) => ACESS_CODE_46_port, ACESS_CODE(45)
                           => ACESS_CODE_45_port, ACESS_CODE(44) => 
                           ACESS_CODE_44_port, ACESS_CODE(43) => 
                           ACESS_CODE_43_port, ACESS_CODE(42) => 
                           ACESS_CODE_42_port, ACESS_CODE(41) => 
                           ACESS_CODE_41_port, ACESS_CODE(40) => n_1018, 
                           ACESS_CODE(39) => ACESS_CODE_39_port, ACESS_CODE(38)
                           => n_1019, ACESS_CODE(37) => ACESS_CODE_37_port, 
                           ACESS_CODE(36) => ACESS_CODE_36_port, ACESS_CODE(35)
                           => n_1020, ACESS_CODE(34) => ACESS_CODE_34_port, 
                           ACESS_CODE(33) => ACESS_CODE_33_port, ACESS_CODE(32)
                           => n_1021, ACESS_CODE(31) => n_1022, ACESS_CODE(30) 
                           => ACESS_CODE_30_port, ACESS_CODE(29) => 
                           ACESS_CODE_29_port, ACESS_CODE(28) => n_1023, 
                           ACESS_CODE(27) => ACESS_CODE_27_port, ACESS_CODE(26)
                           => ACESS_CODE_26_port, ACESS_CODE(25) => n_1024, 
                           ACESS_CODE(24) => n_1025, ACESS_CODE(23) => n_1026, 
                           ACESS_CODE(22) => ACESS_CODE_22_port, ACESS_CODE(21)
                           => ACESS_CODE_21_port, ACESS_CODE(20) => 
                           ACESS_CODE_20_port, ACESS_CODE(19) => n_1027, 
                           ACESS_CODE(18) => n_1028, ACESS_CODE(17) => n_1029, 
                           ACESS_CODE(16) => n_1030, ACESS_CODE(15) => n_1031, 
                           ACESS_CODE(14) => n_1032, ACESS_CODE(13) => n_1033, 
                           ACESS_CODE(12) => n_1034, ACESS_CODE(11) => n_1035, 
                           ACESS_CODE(10) => n_1036, ACESS_CODE(9) => n_1037, 
                           ACESS_CODE(8) => n_1038, ACESS_CODE(7) => n_1039, 
                           ACESS_CODE(6) => n_1040, ACESS_CODE(5) => n_1041, 
                           ACESS_CODE(4) => n_1042, ACESS_CODE(3) => 
                           ACESS_CODE_3_port, ACESS_CODE(2) => n_1043, 
                           ACESS_CODE(1) => ACESS_CODE_1_port, ACESS_CODE(0) =>
                           n_1044, HEADER_EN => HEADER_EN);
   U_4 : B_Controller_WAITSRAM24_WAITREG5264_WAITBAK49 port map( CLK => CLK, 
                           RST => RST, NEXT_EN => NEXT_EN, ANT_LIN => DATAOUT1,
                           EMPTY => EMPTY, RESEND_EN => RESEND_EN, TRANS_EN => 
                           TRANS_EN);
   U_2 : B_EncodePacket_STROBCYC15_WAITSRAM24_WAITREG5264 port map( CLK => CLK,
                           RST => RST, ENCODE_EN => ENCODE_EN, DATA(7) => 
                           DATA(7), DATA(6) => DATA(6), DATA(5) => DATA(5), 
                           DATA(4) => DATA(4), DATA(3) => DATA(3), DATA(2) => 
                           DATA(2), DATA(1) => DATA(1), DATA(0) => DATA(0), 
                           PAYLOAD(7) => PAYLOAD_7_port, PAYLOAD(6) => 
                           PAYLOAD_6_port, PAYLOAD(5) => PAYLOAD_5_port, 
                           PAYLOAD(4) => PAYLOAD_4_port, PAYLOAD(3) => 
                           PAYLOAD_3_port, PAYLOAD(2) => PAYLOAD_2_port, 
                           PAYLOAD(1) => PAYLOAD_1_port, PAYLOAD(0) => 
                           PAYLOAD_0_port, ESTORE_EN => ESTORE_EN, NEXT_EN => 
                           NEXT_EN, READ_EN => READ_EN);
   U_1 : B_Header_WAITREG5264 port map( CLK => CLK, RST => RST, HEADER_EN => 
                           HEADER_EN, HEADER(53) => HEADER_53_port, HEADER(52) 
                           => HEADER_52_port, HEADER(51) => HEADER_51_port, 
                           HEADER(50) => n_1045, HEADER(49) => n_1046, 
                           HEADER(48) => n_1047, HEADER(47) => n_1048, 
                           HEADER(46) => n_1049, HEADER(45) => n_1050, 
                           HEADER(44) => HEADER_44_port, HEADER(43) => 
                           HEADER_43_port, HEADER(42) => HEADER_42_port, 
                           HEADER(41) => HEADER_41_port, HEADER(40) => 
                           HEADER_40_port, HEADER(39) => HEADER_39_port, 
                           HEADER(38) => HEADER_38_port, HEADER(37) => 
                           HEADER_37_port, HEADER(36) => HEADER_36_port, 
                           HEADER(35) => HEADER_35_port, HEADER(34) => 
                           HEADER_34_port, HEADER(33) => HEADER_33_port, 
                           HEADER(32) => HEADER_32_port, HEADER(31) => 
                           HEADER_31_port, HEADER(30) => HEADER_30_port, 
                           HEADER(29) => HEADER_29_port, HEADER(28) => 
                           HEADER_28_port, HEADER(27) => HEADER_27_port, 
                           HEADER(26) => HEADER_26_port, HEADER(25) => 
                           HEADER_25_port, HEADER(24) => HEADER_24_port, 
                           HEADER(23) => HEADER_23_port, HEADER(22) => 
                           HEADER_22_port, HEADER(21) => HEADER_21_port, 
                           HEADER(20) => HEADER_20_port, HEADER(19) => 
                           HEADER_19_port, HEADER(18) => HEADER_18_port, 
                           HEADER(17) => HEADER_17_port, HEADER(16) => 
                           HEADER_16_port, HEADER(15) => HEADER_15_port, 
                           HEADER(14) => HEADER_14_port, HEADER(13) => 
                           HEADER_13_port, HEADER(12) => HEADER_12_port, 
                           HEADER(11) => HEADER_11_port, HEADER(10) => 
                           HEADER_10_port, HEADER(9) => HEADER_9_port, 
                           HEADER(8) => n_1051, HEADER(7) => n_1052, HEADER(6) 
                           => n_1053, HEADER(5) => n_1054, HEADER(4) => n_1055,
                           HEADER(3) => n_1056, HEADER(2) => HEADER_2_port, 
                           HEADER(1) => HEADER_1_port, HEADER(0) => 
                           HEADER_0_port, TRANS_EN => TRANS_EN1, ENCODE_EN => 
                           ENCODE_EN);
   U_6 : B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869 port map( CLK => CLK, 
                           RST => RST, REPLY_EN => REPLY_EN, ERR => ERR, 
                           DATAOUT => DATAOUT1);
   U_5 : B_StripPayload port map( ANTINR => ANTINR, CLK => CLK, READ_EN => 
                           READ_EN1, RST => RST, DATAOUT(7) => DATAOUT(7), 
                           DATAOUT(6) => DATAOUT(6), DATAOUT(5) => DATAOUT(5), 
                           DATAOUT(4) => DATAOUT(4), DATAOUT(3) => DATAOUT(3), 
                           DATAOUT(2) => DATAOUT(2), DATAOUT(1) => DATAOUT(1), 
                           DATAOUT(0) => DATAOUT(0), EMPTY_SRAM => EMPTY_SRAM, 
                           ERR => ERR, REPLY_EN => REPLY_EN);
   U_3 : B_UAT_WAITSRAM24_WAITREG5264 port map( CLK => CLK, RST => RST, 
                           ACCESS_CODE(71) => ACESS_CODE_71_port, 
                           ACCESS_CODE(70) => ACESS_CODE_70_port, 
                           ACCESS_CODE(69) => ACESS_CODE_69_port, 
                           ACCESS_CODE(68) => ACESS_CODE_68_port, 
                           ACCESS_CODE(67) => ACESS_CODE_67_port, 
                           ACCESS_CODE(66) => ACESS_CODE_66_port, 
                           ACCESS_CODE(65) => ACESS_CODE_65_port, 
                           ACCESS_CODE(64) => ACESS_CODE_64_port, 
                           ACCESS_CODE(63) => ACESS_CODE_63_port, 
                           ACCESS_CODE(62) => ACESS_CODE_62_port, 
                           ACCESS_CODE(61) => ACESS_CODE_61_port, 
                           ACCESS_CODE(60) => ACESS_CODE_60_port, 
                           ACCESS_CODE(59) => ACESS_CODE_59_port, 
                           ACCESS_CODE(58) => ACESS_CODE_58_port, 
                           ACCESS_CODE(57) => ACESS_CODE_57_port, 
                           ACCESS_CODE(56) => ACESS_CODE_56_port, 
                           ACCESS_CODE(55) => ACESS_CODE_55_port, 
                           ACCESS_CODE(54) => ACESS_CODE_54_port, 
                           ACCESS_CODE(53) => ACESS_CODE_53_port, 
                           ACCESS_CODE(52) => ACESS_CODE_52_port, 
                           ACCESS_CODE(51) => ACESS_CODE_51_port, 
                           ACCESS_CODE(50) => ACESS_CODE_50_port, 
                           ACCESS_CODE(49) => ACESS_CODE_49_port, 
                           ACCESS_CODE(48) => ACESS_CODE_48_port, 
                           ACCESS_CODE(47) => ACESS_CODE_47_port, 
                           ACCESS_CODE(46) => ACESS_CODE_46_port, 
                           ACCESS_CODE(45) => ACESS_CODE_45_port, 
                           ACCESS_CODE(44) => ACESS_CODE_44_port, 
                           ACCESS_CODE(43) => ACESS_CODE_43_port, 
                           ACCESS_CODE(42) => ACESS_CODE_42_port, 
                           ACCESS_CODE(41) => ACESS_CODE_41_port, 
                           ACCESS_CODE(40) => ACESS_CODE_40_port, 
                           ACCESS_CODE(39) => ACESS_CODE_39_port, 
                           ACCESS_CODE(38) => ACESS_CODE_38_port, 
                           ACCESS_CODE(37) => ACESS_CODE_37_port, 
                           ACCESS_CODE(36) => ACESS_CODE_36_port, 
                           ACCESS_CODE(35) => ACESS_CODE_35_port, 
                           ACCESS_CODE(34) => ACESS_CODE_34_port, 
                           ACCESS_CODE(33) => ACESS_CODE_33_port, 
                           ACCESS_CODE(32) => ACESS_CODE_32_port, 
                           ACCESS_CODE(31) => ACESS_CODE_31_port, 
                           ACCESS_CODE(30) => ACESS_CODE_30_port, 
                           ACCESS_CODE(29) => ACESS_CODE_29_port, 
                           ACCESS_CODE(28) => ACESS_CODE_28_port, 
                           ACCESS_CODE(27) => ACESS_CODE_27_port, 
                           ACCESS_CODE(26) => ACESS_CODE_26_port, 
                           ACCESS_CODE(25) => ACESS_CODE_25_port, 
                           ACCESS_CODE(24) => ACESS_CODE_24_port, 
                           ACCESS_CODE(23) => ACESS_CODE_23_port, 
                           ACCESS_CODE(22) => ACESS_CODE_22_port, 
                           ACCESS_CODE(21) => ACESS_CODE_21_port, 
                           ACCESS_CODE(20) => ACESS_CODE_20_port, 
                           ACCESS_CODE(19) => ACESS_CODE_19_port, 
                           ACCESS_CODE(18) => ACESS_CODE_18_port, 
                           ACCESS_CODE(17) => ACESS_CODE_17_port, 
                           ACCESS_CODE(16) => ACESS_CODE_16_port, 
                           ACCESS_CODE(15) => ACESS_CODE_15_port, 
                           ACCESS_CODE(14) => ACESS_CODE_14_port, 
                           ACCESS_CODE(13) => ACESS_CODE_13_port, 
                           ACCESS_CODE(12) => ACESS_CODE_12_port, 
                           ACCESS_CODE(11) => ACESS_CODE_11_port, 
                           ACCESS_CODE(10) => ACESS_CODE_10_port, 
                           ACCESS_CODE(9) => ACESS_CODE_9_port, ACCESS_CODE(8) 
                           => ACESS_CODE_8_port, ACCESS_CODE(7) => 
                           ACESS_CODE_7_port, ACCESS_CODE(6) => 
                           ACESS_CODE_6_port, ACCESS_CODE(5) => 
                           ACESS_CODE_5_port, ACCESS_CODE(4) => 
                           ACESS_CODE_4_port, ACCESS_CODE(3) => 
                           ACESS_CODE_3_port, ACCESS_CODE(2) => 
                           ACESS_CODE_2_port, ACCESS_CODE(1) => 
                           ACESS_CODE_1_port, ACCESS_CODE(0) => 
                           ACESS_CODE_0_port, HEADER(53) => HEADER_53_port, 
                           HEADER(52) => HEADER_52_port, HEADER(51) => 
                           HEADER_51_port, HEADER(50) => HEADER_50_port, 
                           HEADER(49) => HEADER_49_port, HEADER(48) => 
                           HEADER_48_port, HEADER(47) => HEADER_47_port, 
                           HEADER(46) => HEADER_46_port, HEADER(45) => 
                           HEADER_45_port, HEADER(44) => HEADER_44_port, 
                           HEADER(43) => HEADER_43_port, HEADER(42) => 
                           HEADER_42_port, HEADER(41) => HEADER_41_port, 
                           HEADER(40) => HEADER_40_port, HEADER(39) => 
                           HEADER_39_port, HEADER(38) => HEADER_38_port, 
                           HEADER(37) => HEADER_37_port, HEADER(36) => 
                           HEADER_36_port, HEADER(35) => HEADER_35_port, 
                           HEADER(34) => HEADER_34_port, HEADER(33) => 
                           HEADER_33_port, HEADER(32) => HEADER_32_port, 
                           HEADER(31) => HEADER_31_port, HEADER(30) => 
                           HEADER_30_port, HEADER(29) => HEADER_29_port, 
                           HEADER(28) => HEADER_28_port, HEADER(27) => 
                           HEADER_27_port, HEADER(26) => HEADER_26_port, 
                           HEADER(25) => HEADER_25_port, HEADER(24) => 
                           HEADER_24_port, HEADER(23) => HEADER_23_port, 
                           HEADER(22) => HEADER_22_port, HEADER(21) => 
                           HEADER_21_port, HEADER(20) => HEADER_20_port, 
                           HEADER(19) => HEADER_19_port, HEADER(18) => 
                           HEADER_18_port, HEADER(17) => HEADER_17_port, 
                           HEADER(16) => HEADER_16_port, HEADER(15) => 
                           HEADER_15_port, HEADER(14) => HEADER_14_port, 
                           HEADER(13) => HEADER_13_port, HEADER(12) => 
                           HEADER_12_port, HEADER(11) => HEADER_11_port, 
                           HEADER(10) => HEADER_10_port, HEADER(9) => 
                           HEADER_9_port, HEADER(8) => HEADER_8_port, HEADER(7)
                           => HEADER_7_port, HEADER(6) => HEADER_6_port, 
                           HEADER(5) => HEADER_5_port, HEADER(4) => 
                           HEADER_4_port, HEADER(3) => HEADER_3_port, HEADER(2)
                           => HEADER_2_port, HEADER(1) => HEADER_1_port, 
                           HEADER(0) => HEADER_0_port, PAYLOAD(7) => 
                           PAYLOAD_7_port, PAYLOAD(6) => PAYLOAD_6_port, 
                           PAYLOAD(5) => PAYLOAD_5_port, PAYLOAD(4) => 
                           PAYLOAD_4_port, PAYLOAD(3) => PAYLOAD_3_port, 
                           PAYLOAD(2) => PAYLOAD_2_port, PAYLOAD(1) => 
                           PAYLOAD_1_port, PAYLOAD(0) => PAYLOAD_0_port, 
                           TRAN_EN => TRANS_EN1, ESTORE_EN => ESTORE_EN, 
                           ANT_LOUT => ANTINR);
   HEADER_3_port <= '0';
   HEADER_4_port <= '0';
   HEADER_5_port <= '0';
   HEADER_6_port <= '0';
   HEADER_7_port <= '0';
   HEADER_8_port <= '0';
   HEADER_45_port <= '0';
   HEADER_46_port <= '0';
   HEADER_47_port <= '0';
   HEADER_48_port <= '0';
   HEADER_49_port <= '0';
   HEADER_50_port <= '0';
   ACESS_CODE_0_port <= '0';
   ACESS_CODE_2_port <= '0';
   ACESS_CODE_4_port <= '0';
   ACESS_CODE_5_port <= '0';
   ACESS_CODE_6_port <= '0';
   ACESS_CODE_7_port <= '0';
   ACESS_CODE_8_port <= '0';
   ACESS_CODE_9_port <= '0';
   ACESS_CODE_10_port <= '0';
   ACESS_CODE_11_port <= '0';
   ACESS_CODE_12_port <= '0';
   ACESS_CODE_13_port <= '0';
   ACESS_CODE_14_port <= '0';
   ACESS_CODE_15_port <= '0';
   ACESS_CODE_16_port <= '0';
   ACESS_CODE_17_port <= '0';
   ACESS_CODE_18_port <= '0';
   ACESS_CODE_19_port <= '0';
   ACESS_CODE_23_port <= '0';
   ACESS_CODE_24_port <= '0';
   ACESS_CODE_25_port <= '0';
   ACESS_CODE_28_port <= '0';
   ACESS_CODE_31_port <= '0';
   ACESS_CODE_32_port <= '0';
   ACESS_CODE_35_port <= '0';
   ACESS_CODE_38_port <= '0';
   ACESS_CODE_40_port <= '0';
   ACESS_CODE_47_port <= '0';
   ACESS_CODE_48_port <= '0';
   ACESS_CODE_49_port <= '0';
   ACESS_CODE_52_port <= '0';
   ACESS_CODE_55_port <= '0';
   ACESS_CODE_56_port <= '0';
   ACESS_CODE_59_port <= '0';
   ACESS_CODE_62_port <= '0';
   ACESS_CODE_64_port <= '0';
   ACESS_CODE_68_port <= '0';
   ACESS_CODE_70_port <= '0';

end SYN_struct;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity USB_RCVR is

   port( CLK, D_MINUS, D_PLUS, RST, R_ENABLE : in std_logic;  EMPTY, FULL : out
         std_logic;  R_DATA : out std_logic_vector (7 downto 0);  r_error, 
         rcving : out std_logic);

end USB_RCVR;

architecture SYN_struct of USB_RCVR is

   component BUFX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX8
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component U_TIMER
      port( D_CLK, RST_N, D_EDGE, RCVING : in std_logic;  SHIFT_ENABLE : out 
            std_logic);
   end component;
   
   component U_RCU
      port( D_CLK, rst_n, d_edge, eop, CRC_ERROR, STUFF_ERROR, shift_enable : 
            in std_logic;  rcv_data : in std_logic_vector (7 downto 0);  rcving
            , w_enable, r_error, CRC_EN : out std_logic);
   end component;
   
   component U_FCU
      port( D_CLK, RST, EOP, CRC_ERROR, R_ERROR : in std_logic;  W_ENABLE1, 
            R_ENABLE0 : out std_logic;  EMPTY0, FULL0, FULL1 : in std_logic);
   end component;
   
   component U_EOP_DETECT
      port( D_PLUS, D_MINUS : in std_logic;  EOP : out std_logic);
   end component;
   
   component U_EDGE_DETECT
      port( D_CLK, rst_n, d_plus : in std_logic;  d_edge : out std_logic);
   end component;
   
   component U_DECODE
      port( D_CLK, rst_n, d_plus, shift_enable, eop : in std_logic;  d_orig : 
            out std_logic);
   end component;
   
   component U_CRC
      port( D_CLK, RST_N, CRC_SHIFT, D_ORIG, CRC_EN : in std_logic;  CRC_ERROR 
            : out std_logic);
   end component;
   
   component U_CLKDIV
      port( CLK, RST : in std_logic;  D_CLK : out std_logic);
   end component;
   
   component U_BUFFER
      port( D_CLK, RST, W_ENABLE, EOP : in std_logic;  W_ENABLE_OUT : out 
            std_logic;  RCV_DATA : in std_logic_vector (7 downto 0);  W_DATA : 
            out std_logic_vector (7 downto 0));
   end component;
   
   component USB_SHIFT
      port( D_CLK, RST, EOP, SHIFT_ENABLE, D_ORIG : in std_logic;  RCV_DATA : 
            out std_logic_vector (7 downto 0);  CRC_SHIFT, STUFF_ERROR : out 
            std_logic);
   end component;
   
   component RCV_FIFO_0
      port( CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE : in std_logic;  WDATA : in 
            std_logic_vector (7 downto 0);  R_DATA : out std_logic_vector (7 
            downto 0);  EMPTY, FULL : out std_logic);
   end component;
   
   component RCV_FIFO_1
      port( CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE : in std_logic;  WDATA : in 
            std_logic_vector (7 downto 0);  R_DATA : out std_logic_vector (7 
            downto 0);  EMPTY, FULL : out std_logic);
   end component;
   
   signal FULL_port, r_error_port, rcving_port, D_CLK, R_DATA1_7_port, 
      R_DATA1_6_port, R_DATA1_5_port, R_DATA1_4_port, R_DATA1_3_port, 
      R_DATA1_2_port, R_DATA1_1_port, R_DATA1_0_port, W_ENABLE1, R_ENABLE0, 
      W_DATA_7_port, W_DATA_6_port, W_DATA_5_port, W_DATA_4_port, W_DATA_3_port
      , W_DATA_2_port, W_DATA_1_port, W_DATA_0_port, W_ENABLE_OUT, EMPTY1, 
      FULL1, d_orig, EOP, SHIFT_ENABLE, CRC_SHIFT, RCV_DATA_7_port, 
      RCV_DATA_6_port, RCV_DATA_5_port, RCV_DATA_4_port, RCV_DATA_3_port, 
      RCV_DATA_2_port, RCV_DATA_1_port, RCV_DATA_0_port, STUFF_ERROR, w_enable,
      CRC_EN, CRC_ERROR, d_edge, n1, n2, n3 : std_logic;

begin
   FULL <= FULL_port;
   r_error <= r_error_port;
   rcving <= rcving_port;
   
   U_5 : RCV_FIFO_1 port map( CLK => CLK, D_CLK => n2, RST_N => n3, R_ENABLE =>
                           R_ENABLE, W_ENABLE => W_ENABLE1, WDATA(7) => 
                           R_DATA1_7_port, WDATA(6) => R_DATA1_6_port, WDATA(5)
                           => R_DATA1_5_port, WDATA(4) => R_DATA1_4_port, 
                           WDATA(3) => R_DATA1_3_port, WDATA(2) => 
                           R_DATA1_2_port, WDATA(1) => R_DATA1_1_port, WDATA(0)
                           => R_DATA1_0_port, R_DATA(7) => R_DATA(7), R_DATA(6)
                           => R_DATA(6), R_DATA(5) => R_DATA(5), R_DATA(4) => 
                           R_DATA(4), R_DATA(3) => R_DATA(3), R_DATA(2) => 
                           R_DATA(2), R_DATA(1) => R_DATA(1), R_DATA(0) => 
                           R_DATA(0), EMPTY => EMPTY, FULL => FULL_port);
   U_11 : RCV_FIFO_0 port map( CLK => n1, D_CLK => n2, RST_N => n3, R_ENABLE =>
                           R_ENABLE0, W_ENABLE => W_ENABLE_OUT, WDATA(7) => 
                           W_DATA_7_port, WDATA(6) => W_DATA_6_port, WDATA(5) 
                           => W_DATA_5_port, WDATA(4) => W_DATA_4_port, 
                           WDATA(3) => W_DATA_3_port, WDATA(2) => W_DATA_2_port
                           , WDATA(1) => W_DATA_1_port, WDATA(0) => 
                           W_DATA_0_port, R_DATA(7) => R_DATA1_7_port, 
                           R_DATA(6) => R_DATA1_6_port, R_DATA(5) => 
                           R_DATA1_5_port, R_DATA(4) => R_DATA1_4_port, 
                           R_DATA(3) => R_DATA1_3_port, R_DATA(2) => 
                           R_DATA1_2_port, R_DATA(1) => R_DATA1_1_port, 
                           R_DATA(0) => R_DATA1_0_port, EMPTY => EMPTY1, FULL 
                           => FULL1);
   U_7 : USB_SHIFT port map( D_CLK => n1, RST => RST, EOP => EOP, SHIFT_ENABLE 
                           => SHIFT_ENABLE, D_ORIG => d_orig, RCV_DATA(7) => 
                           RCV_DATA_7_port, RCV_DATA(6) => RCV_DATA_6_port, 
                           RCV_DATA(5) => RCV_DATA_5_port, RCV_DATA(4) => 
                           RCV_DATA_4_port, RCV_DATA(3) => RCV_DATA_3_port, 
                           RCV_DATA(2) => RCV_DATA_2_port, RCV_DATA(1) => 
                           RCV_DATA_1_port, RCV_DATA(0) => RCV_DATA_0_port, 
                           CRC_SHIFT => CRC_SHIFT, STUFF_ERROR => STUFF_ERROR);
   U_10 : U_BUFFER port map( D_CLK => n1, RST => RST, W_ENABLE => w_enable, EOP
                           => EOP, W_ENABLE_OUT => W_ENABLE_OUT, RCV_DATA(7) =>
                           RCV_DATA_7_port, RCV_DATA(6) => RCV_DATA_6_port, 
                           RCV_DATA(5) => RCV_DATA_5_port, RCV_DATA(4) => 
                           RCV_DATA_4_port, RCV_DATA(3) => RCV_DATA_3_port, 
                           RCV_DATA(2) => RCV_DATA_2_port, RCV_DATA(1) => 
                           RCV_DATA_1_port, RCV_DATA(0) => RCV_DATA_0_port, 
                           W_DATA(7) => W_DATA_7_port, W_DATA(6) => 
                           W_DATA_6_port, W_DATA(5) => W_DATA_5_port, W_DATA(4)
                           => W_DATA_4_port, W_DATA(3) => W_DATA_3_port, 
                           W_DATA(2) => W_DATA_2_port, W_DATA(1) => 
                           W_DATA_1_port, W_DATA(0) => W_DATA_0_port);
   U_8 : U_CLKDIV port map( CLK => CLK, RST => RST, D_CLK => D_CLK);
   U_0 : U_CRC port map( D_CLK => n2, RST_N => RST, CRC_SHIFT => CRC_SHIFT, 
                           D_ORIG => d_orig, CRC_EN => CRC_EN, CRC_ERROR => 
                           CRC_ERROR);
   U_1 : U_DECODE port map( D_CLK => n1, rst_n => RST, d_plus => D_PLUS, 
                           shift_enable => SHIFT_ENABLE, eop => EOP, d_orig => 
                           d_orig);
   U_2 : U_EDGE_DETECT port map( D_CLK => n1, rst_n => RST, d_plus => D_PLUS, 
                           d_edge => d_edge);
   U_3 : U_EOP_DETECT port map( D_PLUS => D_PLUS, D_MINUS => D_MINUS, EOP => 
                           EOP);
   U_12 : U_FCU port map( D_CLK => n2, RST => RST, EOP => EOP, CRC_ERROR => 
                           CRC_ERROR, R_ERROR => r_error_port, W_ENABLE1 => 
                           W_ENABLE1, R_ENABLE0 => R_ENABLE0, EMPTY0 => EMPTY1,
                           FULL0 => FULL1, FULL1 => FULL_port);
   U_4 : U_RCU port map( D_CLK => n2, rst_n => RST, d_edge => d_edge, eop => 
                           EOP, CRC_ERROR => CRC_ERROR, STUFF_ERROR => 
                           STUFF_ERROR, shift_enable => CRC_SHIFT, rcv_data(7) 
                           => RCV_DATA_7_port, rcv_data(6) => RCV_DATA_6_port, 
                           rcv_data(5) => RCV_DATA_5_port, rcv_data(4) => 
                           RCV_DATA_4_port, rcv_data(3) => RCV_DATA_3_port, 
                           rcv_data(2) => RCV_DATA_2_port, rcv_data(1) => 
                           RCV_DATA_1_port, rcv_data(0) => RCV_DATA_0_port, 
                           rcving => rcving_port, w_enable => w_enable, r_error
                           => r_error_port, CRC_EN => CRC_EN);
   U_6 : U_TIMER port map( D_CLK => n2, RST_N => RST, D_EDGE => d_edge, RCVING 
                           => rcving_port, SHIFT_ENABLE => SHIFT_ENABLE);
   U1 : INVX8 port map( A => RST, Y => n3);
   U2 : BUFX4 port map( A => D_CLK, Y => n1);
   U3 : BUFX4 port map( A => D_CLK, Y => n2);

end SYN_struct;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity ENCRYPTION is

   port( CLK : in std_logic;  DATA : in std_logic_vector (7 downto 0);  EMPTY, 
         FULL, RENABLE, RST : in std_logic;  EMPTY1, FULL1 : out std_logic;  
         RDATA : out std_logic_vector (7 downto 0);  R_ENABLE : out std_logic);

end ENCRYPTION;

architecture SYN_struct of ENCRYPTION is

   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component e_rndCount
      port( CLK, RST, START : in std_logic;  IN_SELECT, FIESTELCLK : out 
            std_logic;  RND_CNT : out std_logic_vector (3 downto 0));
   end component;
   
   component e_rkeyGen
      port( RNDNUM : in std_logic_vector (3 downto 0);  START_RST, IN_SELECT, 
            CLK : in std_logic;  RKEY : out std_logic_vector (47 downto 0));
   end component;
   
   component e_fiestel
      port( FIESTELCLK, START : in std_logic;  ENC_LEFT, ENC_RIGHT : in 
            std_logic_vector (31 downto 0);  RKEY : in std_logic_vector (47 
            downto 0);  IN_SELECT : in std_logic;  OUTDATA : out 
            std_logic_vector (63 downto 0));
   end component;
   
   component e_encController
      port( DATA : in std_logic_vector (7 downto 0);  FULL, EMPTY, CLK, RST : 
            in std_logic;  START, R_ENABLE, W_ENABLE : out std_logic;  ENC_LEFT
            , ENC_RIGHT : out std_logic_vector (31 downto 0));
   end component;
   
   component e_DeCompile
      port( OUTDATA : in std_logic_vector (63 downto 0);  D_ENABLE, CLK : in 
            std_logic;  DATA : out std_logic_vector (7 downto 0);  W_ENABLE : 
            out std_logic);
   end component;
   
   component RCV_FIFO_2
      port( CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE : in std_logic;  WDATA : in 
            std_logic_vector (7 downto 0);  R_DATA : out std_logic_vector (7 
            downto 0);  EMPTY, FULL : out std_logic);
   end component;
   
   signal DATA1_7_port, DATA1_6_port, DATA1_5_port, DATA1_4_port, DATA1_3_port,
      DATA1_2_port, DATA1_1_port, DATA1_0_port, W_ENABLE1, W_ENABLE, 
      OUTDATA_63_port, OUTDATA_62_port, OUTDATA_61_port, OUTDATA_60_port, 
      OUTDATA_59_port, OUTDATA_58_port, OUTDATA_57_port, OUTDATA_56_port, 
      OUTDATA_55_port, OUTDATA_54_port, OUTDATA_53_port, OUTDATA_52_port, 
      OUTDATA_51_port, OUTDATA_50_port, OUTDATA_49_port, OUTDATA_48_port, 
      OUTDATA_47_port, OUTDATA_46_port, OUTDATA_45_port, OUTDATA_44_port, 
      OUTDATA_43_port, OUTDATA_42_port, OUTDATA_41_port, OUTDATA_40_port, 
      OUTDATA_39_port, OUTDATA_38_port, OUTDATA_37_port, OUTDATA_36_port, 
      OUTDATA_35_port, OUTDATA_34_port, OUTDATA_33_port, OUTDATA_32_port, 
      OUTDATA_31_port, OUTDATA_30_port, OUTDATA_29_port, OUTDATA_28_port, 
      OUTDATA_27_port, OUTDATA_26_port, OUTDATA_25_port, OUTDATA_24_port, 
      OUTDATA_23_port, OUTDATA_22_port, OUTDATA_21_port, OUTDATA_20_port, 
      OUTDATA_19_port, OUTDATA_18_port, OUTDATA_17_port, OUTDATA_16_port, 
      OUTDATA_15_port, OUTDATA_14_port, OUTDATA_13_port, OUTDATA_12_port, 
      OUTDATA_11_port, OUTDATA_10_port, OUTDATA_9_port, OUTDATA_8_port, 
      OUTDATA_7_port, OUTDATA_6_port, OUTDATA_5_port, OUTDATA_4_port, 
      OUTDATA_3_port, OUTDATA_2_port, OUTDATA_1_port, OUTDATA_0_port, 
      ENC_LEFT_31_port, ENC_LEFT_30_port, ENC_LEFT_29_port, ENC_LEFT_28_port, 
      ENC_LEFT_27_port, ENC_LEFT_26_port, ENC_LEFT_25_port, ENC_LEFT_24_port, 
      ENC_LEFT_23_port, ENC_LEFT_22_port, ENC_LEFT_21_port, ENC_LEFT_20_port, 
      ENC_LEFT_19_port, ENC_LEFT_18_port, ENC_LEFT_17_port, ENC_LEFT_16_port, 
      ENC_LEFT_15_port, ENC_LEFT_14_port, ENC_LEFT_13_port, ENC_LEFT_12_port, 
      ENC_LEFT_11_port, ENC_LEFT_10_port, ENC_LEFT_9_port, ENC_LEFT_8_port, 
      ENC_LEFT_7_port, ENC_LEFT_6_port, ENC_LEFT_5_port, ENC_LEFT_4_port, 
      ENC_LEFT_3_port, ENC_LEFT_2_port, ENC_LEFT_1_port, ENC_LEFT_0_port, 
      ENC_RIGHT_31_port, ENC_RIGHT_30_port, ENC_RIGHT_29_port, 
      ENC_RIGHT_28_port, ENC_RIGHT_27_port, ENC_RIGHT_26_port, 
      ENC_RIGHT_25_port, ENC_RIGHT_24_port, ENC_RIGHT_23_port, 
      ENC_RIGHT_22_port, ENC_RIGHT_21_port, ENC_RIGHT_20_port, 
      ENC_RIGHT_19_port, ENC_RIGHT_18_port, ENC_RIGHT_17_port, 
      ENC_RIGHT_16_port, ENC_RIGHT_15_port, ENC_RIGHT_14_port, 
      ENC_RIGHT_13_port, ENC_RIGHT_12_port, ENC_RIGHT_11_port, 
      ENC_RIGHT_10_port, ENC_RIGHT_9_port, ENC_RIGHT_8_port, ENC_RIGHT_7_port, 
      ENC_RIGHT_6_port, ENC_RIGHT_5_port, ENC_RIGHT_4_port, ENC_RIGHT_3_port, 
      ENC_RIGHT_2_port, ENC_RIGHT_1_port, ENC_RIGHT_0_port, START, FIESTELCLK, 
      IN_SELECT, RKEY_47_port, RKEY_46_port, RKEY_45_port, RKEY_44_port, 
      RKEY_43_port, RKEY_42_port, RKEY_41_port, RKEY_40_port, RKEY_39_port, 
      RKEY_38_port, RKEY_37_port, RKEY_36_port, RKEY_35_port, RKEY_34_port, 
      RKEY_33_port, RKEY_32_port, RKEY_31_port, RKEY_30_port, RKEY_29_port, 
      RKEY_28_port, RKEY_27_port, RKEY_26_port, RKEY_25_port, RKEY_24_port, 
      RKEY_23_port, RKEY_22_port, RKEY_21_port, RKEY_20_port, RKEY_19_port, 
      RKEY_18_port, RKEY_17_port, RKEY_16_port, RKEY_15_port, RKEY_14_port, 
      RKEY_13_port, RKEY_12_port, RKEY_11_port, RKEY_10_port, RKEY_9_port, 
      RKEY_8_port, RKEY_7_port, RKEY_6_port, RKEY_5_port, RKEY_4_port, 
      RKEY_3_port, RKEY_2_port, RKEY_1_port, RKEY_0_port, RND_CNT_3_port, 
      RND_CNT_2_port, RND_CNT_1_port, RND_CNT_0_port, n1 : std_logic;

begin
   
   U_5 : RCV_FIFO_2 port map( CLK => CLK, D_CLK => CLK, RST_N => n1, R_ENABLE 
                           => RENABLE, W_ENABLE => W_ENABLE1, WDATA(7) => 
                           DATA1_7_port, WDATA(6) => DATA1_6_port, WDATA(5) => 
                           DATA1_5_port, WDATA(4) => DATA1_4_port, WDATA(3) => 
                           DATA1_3_port, WDATA(2) => DATA1_2_port, WDATA(1) => 
                           DATA1_1_port, WDATA(0) => DATA1_0_port, R_DATA(7) =>
                           RDATA(7), R_DATA(6) => RDATA(6), R_DATA(5) => 
                           RDATA(5), R_DATA(4) => RDATA(4), R_DATA(3) => 
                           RDATA(3), R_DATA(2) => RDATA(2), R_DATA(1) => 
                           RDATA(1), R_DATA(0) => RDATA(0), EMPTY => EMPTY1, 
                           FULL => FULL1);
   U_0 : e_DeCompile port map( OUTDATA(63) => OUTDATA_63_port, OUTDATA(62) => 
                           OUTDATA_62_port, OUTDATA(61) => OUTDATA_61_port, 
                           OUTDATA(60) => OUTDATA_60_port, OUTDATA(59) => 
                           OUTDATA_59_port, OUTDATA(58) => OUTDATA_58_port, 
                           OUTDATA(57) => OUTDATA_57_port, OUTDATA(56) => 
                           OUTDATA_56_port, OUTDATA(55) => OUTDATA_55_port, 
                           OUTDATA(54) => OUTDATA_54_port, OUTDATA(53) => 
                           OUTDATA_53_port, OUTDATA(52) => OUTDATA_52_port, 
                           OUTDATA(51) => OUTDATA_51_port, OUTDATA(50) => 
                           OUTDATA_50_port, OUTDATA(49) => OUTDATA_49_port, 
                           OUTDATA(48) => OUTDATA_48_port, OUTDATA(47) => 
                           OUTDATA_47_port, OUTDATA(46) => OUTDATA_46_port, 
                           OUTDATA(45) => OUTDATA_45_port, OUTDATA(44) => 
                           OUTDATA_44_port, OUTDATA(43) => OUTDATA_43_port, 
                           OUTDATA(42) => OUTDATA_42_port, OUTDATA(41) => 
                           OUTDATA_41_port, OUTDATA(40) => OUTDATA_40_port, 
                           OUTDATA(39) => OUTDATA_39_port, OUTDATA(38) => 
                           OUTDATA_38_port, OUTDATA(37) => OUTDATA_37_port, 
                           OUTDATA(36) => OUTDATA_36_port, OUTDATA(35) => 
                           OUTDATA_35_port, OUTDATA(34) => OUTDATA_34_port, 
                           OUTDATA(33) => OUTDATA_33_port, OUTDATA(32) => 
                           OUTDATA_32_port, OUTDATA(31) => OUTDATA_31_port, 
                           OUTDATA(30) => OUTDATA_30_port, OUTDATA(29) => 
                           OUTDATA_29_port, OUTDATA(28) => OUTDATA_28_port, 
                           OUTDATA(27) => OUTDATA_27_port, OUTDATA(26) => 
                           OUTDATA_26_port, OUTDATA(25) => OUTDATA_25_port, 
                           OUTDATA(24) => OUTDATA_24_port, OUTDATA(23) => 
                           OUTDATA_23_port, OUTDATA(22) => OUTDATA_22_port, 
                           OUTDATA(21) => OUTDATA_21_port, OUTDATA(20) => 
                           OUTDATA_20_port, OUTDATA(19) => OUTDATA_19_port, 
                           OUTDATA(18) => OUTDATA_18_port, OUTDATA(17) => 
                           OUTDATA_17_port, OUTDATA(16) => OUTDATA_16_port, 
                           OUTDATA(15) => OUTDATA_15_port, OUTDATA(14) => 
                           OUTDATA_14_port, OUTDATA(13) => OUTDATA_13_port, 
                           OUTDATA(12) => OUTDATA_12_port, OUTDATA(11) => 
                           OUTDATA_11_port, OUTDATA(10) => OUTDATA_10_port, 
                           OUTDATA(9) => OUTDATA_9_port, OUTDATA(8) => 
                           OUTDATA_8_port, OUTDATA(7) => OUTDATA_7_port, 
                           OUTDATA(6) => OUTDATA_6_port, OUTDATA(5) => 
                           OUTDATA_5_port, OUTDATA(4) => OUTDATA_4_port, 
                           OUTDATA(3) => OUTDATA_3_port, OUTDATA(2) => 
                           OUTDATA_2_port, OUTDATA(1) => OUTDATA_1_port, 
                           OUTDATA(0) => OUTDATA_0_port, D_ENABLE => W_ENABLE, 
                           CLK => CLK, DATA(7) => DATA1_7_port, DATA(6) => 
                           DATA1_6_port, DATA(5) => DATA1_5_port, DATA(4) => 
                           DATA1_4_port, DATA(3) => DATA1_3_port, DATA(2) => 
                           DATA1_2_port, DATA(1) => DATA1_1_port, DATA(0) => 
                           DATA1_0_port, W_ENABLE => W_ENABLE1);
   U_1 : e_encController port map( DATA(7) => DATA(7), DATA(6) => DATA(6), 
                           DATA(5) => DATA(5), DATA(4) => DATA(4), DATA(3) => 
                           DATA(3), DATA(2) => DATA(2), DATA(1) => DATA(1), 
                           DATA(0) => DATA(0), FULL => FULL, EMPTY => EMPTY, 
                           CLK => CLK, RST => RST, START => START, R_ENABLE => 
                           R_ENABLE, W_ENABLE => W_ENABLE, ENC_LEFT(31) => 
                           ENC_LEFT_31_port, ENC_LEFT(30) => ENC_LEFT_30_port, 
                           ENC_LEFT(29) => ENC_LEFT_29_port, ENC_LEFT(28) => 
                           ENC_LEFT_28_port, ENC_LEFT(27) => ENC_LEFT_27_port, 
                           ENC_LEFT(26) => ENC_LEFT_26_port, ENC_LEFT(25) => 
                           ENC_LEFT_25_port, ENC_LEFT(24) => ENC_LEFT_24_port, 
                           ENC_LEFT(23) => ENC_LEFT_23_port, ENC_LEFT(22) => 
                           ENC_LEFT_22_port, ENC_LEFT(21) => ENC_LEFT_21_port, 
                           ENC_LEFT(20) => ENC_LEFT_20_port, ENC_LEFT(19) => 
                           ENC_LEFT_19_port, ENC_LEFT(18) => ENC_LEFT_18_port, 
                           ENC_LEFT(17) => ENC_LEFT_17_port, ENC_LEFT(16) => 
                           ENC_LEFT_16_port, ENC_LEFT(15) => ENC_LEFT_15_port, 
                           ENC_LEFT(14) => ENC_LEFT_14_port, ENC_LEFT(13) => 
                           ENC_LEFT_13_port, ENC_LEFT(12) => ENC_LEFT_12_port, 
                           ENC_LEFT(11) => ENC_LEFT_11_port, ENC_LEFT(10) => 
                           ENC_LEFT_10_port, ENC_LEFT(9) => ENC_LEFT_9_port, 
                           ENC_LEFT(8) => ENC_LEFT_8_port, ENC_LEFT(7) => 
                           ENC_LEFT_7_port, ENC_LEFT(6) => ENC_LEFT_6_port, 
                           ENC_LEFT(5) => ENC_LEFT_5_port, ENC_LEFT(4) => 
                           ENC_LEFT_4_port, ENC_LEFT(3) => ENC_LEFT_3_port, 
                           ENC_LEFT(2) => ENC_LEFT_2_port, ENC_LEFT(1) => 
                           ENC_LEFT_1_port, ENC_LEFT(0) => ENC_LEFT_0_port, 
                           ENC_RIGHT(31) => ENC_RIGHT_31_port, ENC_RIGHT(30) =>
                           ENC_RIGHT_30_port, ENC_RIGHT(29) => 
                           ENC_RIGHT_29_port, ENC_RIGHT(28) => 
                           ENC_RIGHT_28_port, ENC_RIGHT(27) => 
                           ENC_RIGHT_27_port, ENC_RIGHT(26) => 
                           ENC_RIGHT_26_port, ENC_RIGHT(25) => 
                           ENC_RIGHT_25_port, ENC_RIGHT(24) => 
                           ENC_RIGHT_24_port, ENC_RIGHT(23) => 
                           ENC_RIGHT_23_port, ENC_RIGHT(22) => 
                           ENC_RIGHT_22_port, ENC_RIGHT(21) => 
                           ENC_RIGHT_21_port, ENC_RIGHT(20) => 
                           ENC_RIGHT_20_port, ENC_RIGHT(19) => 
                           ENC_RIGHT_19_port, ENC_RIGHT(18) => 
                           ENC_RIGHT_18_port, ENC_RIGHT(17) => 
                           ENC_RIGHT_17_port, ENC_RIGHT(16) => 
                           ENC_RIGHT_16_port, ENC_RIGHT(15) => 
                           ENC_RIGHT_15_port, ENC_RIGHT(14) => 
                           ENC_RIGHT_14_port, ENC_RIGHT(13) => 
                           ENC_RIGHT_13_port, ENC_RIGHT(12) => 
                           ENC_RIGHT_12_port, ENC_RIGHT(11) => 
                           ENC_RIGHT_11_port, ENC_RIGHT(10) => 
                           ENC_RIGHT_10_port, ENC_RIGHT(9) => ENC_RIGHT_9_port,
                           ENC_RIGHT(8) => ENC_RIGHT_8_port, ENC_RIGHT(7) => 
                           ENC_RIGHT_7_port, ENC_RIGHT(6) => ENC_RIGHT_6_port, 
                           ENC_RIGHT(5) => ENC_RIGHT_5_port, ENC_RIGHT(4) => 
                           ENC_RIGHT_4_port, ENC_RIGHT(3) => ENC_RIGHT_3_port, 
                           ENC_RIGHT(2) => ENC_RIGHT_2_port, ENC_RIGHT(1) => 
                           ENC_RIGHT_1_port, ENC_RIGHT(0) => ENC_RIGHT_0_port);
   U_2 : e_fiestel port map( FIESTELCLK => FIESTELCLK, START => START, 
                           ENC_LEFT(31) => ENC_LEFT_31_port, ENC_LEFT(30) => 
                           ENC_LEFT_30_port, ENC_LEFT(29) => ENC_LEFT_29_port, 
                           ENC_LEFT(28) => ENC_LEFT_28_port, ENC_LEFT(27) => 
                           ENC_LEFT_27_port, ENC_LEFT(26) => ENC_LEFT_26_port, 
                           ENC_LEFT(25) => ENC_LEFT_25_port, ENC_LEFT(24) => 
                           ENC_LEFT_24_port, ENC_LEFT(23) => ENC_LEFT_23_port, 
                           ENC_LEFT(22) => ENC_LEFT_22_port, ENC_LEFT(21) => 
                           ENC_LEFT_21_port, ENC_LEFT(20) => ENC_LEFT_20_port, 
                           ENC_LEFT(19) => ENC_LEFT_19_port, ENC_LEFT(18) => 
                           ENC_LEFT_18_port, ENC_LEFT(17) => ENC_LEFT_17_port, 
                           ENC_LEFT(16) => ENC_LEFT_16_port, ENC_LEFT(15) => 
                           ENC_LEFT_15_port, ENC_LEFT(14) => ENC_LEFT_14_port, 
                           ENC_LEFT(13) => ENC_LEFT_13_port, ENC_LEFT(12) => 
                           ENC_LEFT_12_port, ENC_LEFT(11) => ENC_LEFT_11_port, 
                           ENC_LEFT(10) => ENC_LEFT_10_port, ENC_LEFT(9) => 
                           ENC_LEFT_9_port, ENC_LEFT(8) => ENC_LEFT_8_port, 
                           ENC_LEFT(7) => ENC_LEFT_7_port, ENC_LEFT(6) => 
                           ENC_LEFT_6_port, ENC_LEFT(5) => ENC_LEFT_5_port, 
                           ENC_LEFT(4) => ENC_LEFT_4_port, ENC_LEFT(3) => 
                           ENC_LEFT_3_port, ENC_LEFT(2) => ENC_LEFT_2_port, 
                           ENC_LEFT(1) => ENC_LEFT_1_port, ENC_LEFT(0) => 
                           ENC_LEFT_0_port, ENC_RIGHT(31) => ENC_RIGHT_31_port,
                           ENC_RIGHT(30) => ENC_RIGHT_30_port, ENC_RIGHT(29) =>
                           ENC_RIGHT_29_port, ENC_RIGHT(28) => 
                           ENC_RIGHT_28_port, ENC_RIGHT(27) => 
                           ENC_RIGHT_27_port, ENC_RIGHT(26) => 
                           ENC_RIGHT_26_port, ENC_RIGHT(25) => 
                           ENC_RIGHT_25_port, ENC_RIGHT(24) => 
                           ENC_RIGHT_24_port, ENC_RIGHT(23) => 
                           ENC_RIGHT_23_port, ENC_RIGHT(22) => 
                           ENC_RIGHT_22_port, ENC_RIGHT(21) => 
                           ENC_RIGHT_21_port, ENC_RIGHT(20) => 
                           ENC_RIGHT_20_port, ENC_RIGHT(19) => 
                           ENC_RIGHT_19_port, ENC_RIGHT(18) => 
                           ENC_RIGHT_18_port, ENC_RIGHT(17) => 
                           ENC_RIGHT_17_port, ENC_RIGHT(16) => 
                           ENC_RIGHT_16_port, ENC_RIGHT(15) => 
                           ENC_RIGHT_15_port, ENC_RIGHT(14) => 
                           ENC_RIGHT_14_port, ENC_RIGHT(13) => 
                           ENC_RIGHT_13_port, ENC_RIGHT(12) => 
                           ENC_RIGHT_12_port, ENC_RIGHT(11) => 
                           ENC_RIGHT_11_port, ENC_RIGHT(10) => 
                           ENC_RIGHT_10_port, ENC_RIGHT(9) => ENC_RIGHT_9_port,
                           ENC_RIGHT(8) => ENC_RIGHT_8_port, ENC_RIGHT(7) => 
                           ENC_RIGHT_7_port, ENC_RIGHT(6) => ENC_RIGHT_6_port, 
                           ENC_RIGHT(5) => ENC_RIGHT_5_port, ENC_RIGHT(4) => 
                           ENC_RIGHT_4_port, ENC_RIGHT(3) => ENC_RIGHT_3_port, 
                           ENC_RIGHT(2) => ENC_RIGHT_2_port, ENC_RIGHT(1) => 
                           ENC_RIGHT_1_port, ENC_RIGHT(0) => ENC_RIGHT_0_port, 
                           RKEY(47) => RKEY_47_port, RKEY(46) => RKEY_46_port, 
                           RKEY(45) => RKEY_45_port, RKEY(44) => RKEY_44_port, 
                           RKEY(43) => RKEY_43_port, RKEY(42) => RKEY_42_port, 
                           RKEY(41) => RKEY_41_port, RKEY(40) => RKEY_40_port, 
                           RKEY(39) => RKEY_39_port, RKEY(38) => RKEY_38_port, 
                           RKEY(37) => RKEY_37_port, RKEY(36) => RKEY_36_port, 
                           RKEY(35) => RKEY_35_port, RKEY(34) => RKEY_34_port, 
                           RKEY(33) => RKEY_33_port, RKEY(32) => RKEY_32_port, 
                           RKEY(31) => RKEY_31_port, RKEY(30) => RKEY_30_port, 
                           RKEY(29) => RKEY_29_port, RKEY(28) => RKEY_28_port, 
                           RKEY(27) => RKEY_27_port, RKEY(26) => RKEY_26_port, 
                           RKEY(25) => RKEY_25_port, RKEY(24) => RKEY_24_port, 
                           RKEY(23) => RKEY_23_port, RKEY(22) => RKEY_22_port, 
                           RKEY(21) => RKEY_21_port, RKEY(20) => RKEY_20_port, 
                           RKEY(19) => RKEY_19_port, RKEY(18) => RKEY_18_port, 
                           RKEY(17) => RKEY_17_port, RKEY(16) => RKEY_16_port, 
                           RKEY(15) => RKEY_15_port, RKEY(14) => RKEY_14_port, 
                           RKEY(13) => RKEY_13_port, RKEY(12) => RKEY_12_port, 
                           RKEY(11) => RKEY_11_port, RKEY(10) => RKEY_10_port, 
                           RKEY(9) => RKEY_9_port, RKEY(8) => RKEY_8_port, 
                           RKEY(7) => RKEY_7_port, RKEY(6) => RKEY_6_port, 
                           RKEY(5) => RKEY_5_port, RKEY(4) => RKEY_4_port, 
                           RKEY(3) => RKEY_3_port, RKEY(2) => RKEY_2_port, 
                           RKEY(1) => RKEY_1_port, RKEY(0) => RKEY_0_port, 
                           IN_SELECT => IN_SELECT, OUTDATA(63) => 
                           OUTDATA_63_port, OUTDATA(62) => OUTDATA_62_port, 
                           OUTDATA(61) => OUTDATA_61_port, OUTDATA(60) => 
                           OUTDATA_60_port, OUTDATA(59) => OUTDATA_59_port, 
                           OUTDATA(58) => OUTDATA_58_port, OUTDATA(57) => 
                           OUTDATA_57_port, OUTDATA(56) => OUTDATA_56_port, 
                           OUTDATA(55) => OUTDATA_55_port, OUTDATA(54) => 
                           OUTDATA_54_port, OUTDATA(53) => OUTDATA_53_port, 
                           OUTDATA(52) => OUTDATA_52_port, OUTDATA(51) => 
                           OUTDATA_51_port, OUTDATA(50) => OUTDATA_50_port, 
                           OUTDATA(49) => OUTDATA_49_port, OUTDATA(48) => 
                           OUTDATA_48_port, OUTDATA(47) => OUTDATA_47_port, 
                           OUTDATA(46) => OUTDATA_46_port, OUTDATA(45) => 
                           OUTDATA_45_port, OUTDATA(44) => OUTDATA_44_port, 
                           OUTDATA(43) => OUTDATA_43_port, OUTDATA(42) => 
                           OUTDATA_42_port, OUTDATA(41) => OUTDATA_41_port, 
                           OUTDATA(40) => OUTDATA_40_port, OUTDATA(39) => 
                           OUTDATA_39_port, OUTDATA(38) => OUTDATA_38_port, 
                           OUTDATA(37) => OUTDATA_37_port, OUTDATA(36) => 
                           OUTDATA_36_port, OUTDATA(35) => OUTDATA_35_port, 
                           OUTDATA(34) => OUTDATA_34_port, OUTDATA(33) => 
                           OUTDATA_33_port, OUTDATA(32) => OUTDATA_32_port, 
                           OUTDATA(31) => OUTDATA_31_port, OUTDATA(30) => 
                           OUTDATA_30_port, OUTDATA(29) => OUTDATA_29_port, 
                           OUTDATA(28) => OUTDATA_28_port, OUTDATA(27) => 
                           OUTDATA_27_port, OUTDATA(26) => OUTDATA_26_port, 
                           OUTDATA(25) => OUTDATA_25_port, OUTDATA(24) => 
                           OUTDATA_24_port, OUTDATA(23) => OUTDATA_23_port, 
                           OUTDATA(22) => OUTDATA_22_port, OUTDATA(21) => 
                           OUTDATA_21_port, OUTDATA(20) => OUTDATA_20_port, 
                           OUTDATA(19) => OUTDATA_19_port, OUTDATA(18) => 
                           OUTDATA_18_port, OUTDATA(17) => OUTDATA_17_port, 
                           OUTDATA(16) => OUTDATA_16_port, OUTDATA(15) => 
                           OUTDATA_15_port, OUTDATA(14) => OUTDATA_14_port, 
                           OUTDATA(13) => OUTDATA_13_port, OUTDATA(12) => 
                           OUTDATA_12_port, OUTDATA(11) => OUTDATA_11_port, 
                           OUTDATA(10) => OUTDATA_10_port, OUTDATA(9) => 
                           OUTDATA_9_port, OUTDATA(8) => OUTDATA_8_port, 
                           OUTDATA(7) => OUTDATA_7_port, OUTDATA(6) => 
                           OUTDATA_6_port, OUTDATA(5) => OUTDATA_5_port, 
                           OUTDATA(4) => OUTDATA_4_port, OUTDATA(3) => 
                           OUTDATA_3_port, OUTDATA(2) => OUTDATA_2_port, 
                           OUTDATA(1) => OUTDATA_1_port, OUTDATA(0) => 
                           OUTDATA_0_port);
   U_3 : e_rkeyGen port map( RNDNUM(3) => RND_CNT_3_port, RNDNUM(2) => 
                           RND_CNT_2_port, RNDNUM(1) => RND_CNT_1_port, 
                           RNDNUM(0) => RND_CNT_0_port, START_RST => START, 
                           IN_SELECT => IN_SELECT, CLK => CLK, RKEY(47) => 
                           RKEY_47_port, RKEY(46) => RKEY_46_port, RKEY(45) => 
                           RKEY_45_port, RKEY(44) => RKEY_44_port, RKEY(43) => 
                           RKEY_43_port, RKEY(42) => RKEY_42_port, RKEY(41) => 
                           RKEY_41_port, RKEY(40) => RKEY_40_port, RKEY(39) => 
                           RKEY_39_port, RKEY(38) => RKEY_38_port, RKEY(37) => 
                           RKEY_37_port, RKEY(36) => RKEY_36_port, RKEY(35) => 
                           RKEY_35_port, RKEY(34) => RKEY_34_port, RKEY(33) => 
                           RKEY_33_port, RKEY(32) => RKEY_32_port, RKEY(31) => 
                           RKEY_31_port, RKEY(30) => RKEY_30_port, RKEY(29) => 
                           RKEY_29_port, RKEY(28) => RKEY_28_port, RKEY(27) => 
                           RKEY_27_port, RKEY(26) => RKEY_26_port, RKEY(25) => 
                           RKEY_25_port, RKEY(24) => RKEY_24_port, RKEY(23) => 
                           RKEY_23_port, RKEY(22) => RKEY_22_port, RKEY(21) => 
                           RKEY_21_port, RKEY(20) => RKEY_20_port, RKEY(19) => 
                           RKEY_19_port, RKEY(18) => RKEY_18_port, RKEY(17) => 
                           RKEY_17_port, RKEY(16) => RKEY_16_port, RKEY(15) => 
                           RKEY_15_port, RKEY(14) => RKEY_14_port, RKEY(13) => 
                           RKEY_13_port, RKEY(12) => RKEY_12_port, RKEY(11) => 
                           RKEY_11_port, RKEY(10) => RKEY_10_port, RKEY(9) => 
                           RKEY_9_port, RKEY(8) => RKEY_8_port, RKEY(7) => 
                           RKEY_7_port, RKEY(6) => RKEY_6_port, RKEY(5) => 
                           RKEY_5_port, RKEY(4) => RKEY_4_port, RKEY(3) => 
                           RKEY_3_port, RKEY(2) => RKEY_2_port, RKEY(1) => 
                           RKEY_1_port, RKEY(0) => RKEY_0_port);
   U_4 : e_rndCount port map( CLK => CLK, RST => RST, START => START, IN_SELECT
                           => IN_SELECT, FIESTELCLK => FIESTELCLK, RND_CNT(3) 
                           => RND_CNT_3_port, RND_CNT(2) => RND_CNT_2_port, 
                           RND_CNT(1) => RND_CNT_1_port, RND_CNT(0) => 
                           RND_CNT_0_port);
   U1 : INVX4 port map( A => RST, Y => n1);

end SYN_struct;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BENC.all;

entity BENC is

   port( CLK, D_MINUS, D_PLUS, READ_EN1, RST : in std_logic;  ADDR : out 
         std_logic_vector (11 downto 0);  DATAOUT : out std_logic_vector (7 
         downto 0);  EMPTY_SRAM : out std_logic;  SDATA : inout 
         std_logic_vector (7 downto 0);  r_enable_s, r_error, rcving, 
         w_enable_out : out std_logic);

end BENC;

architecture SYN_struct of BENC is

   component s_Control
      port( clk, rst, full, resend, r_enable_in : in std_logic;  IDATA : in 
            std_logic_vector (7 downto 0);  empty, r_enable_out, r_enable_s : 
            out std_logic;  ADDR : out std_logic_vector (11 downto 0);  ODATA :
            out std_logic_vector (7 downto 0);  SDATA : inout std_logic_vector 
            (7 downto 0);  w_enable_out : out std_logic);
   end component;
   
   component bToothTop
      port( CLK : in std_logic;  DATA : in std_logic_vector (7 downto 0);  
            EMPTY, READ_EN1, RST : in std_logic;  DATAOUT : out 
            std_logic_vector (7 downto 0);  EMPTY_SRAM, READ_EN, RESEND_EN : 
            out std_logic);
   end component;
   
   component USB_RCVR
      port( CLK, D_MINUS, D_PLUS, RST, R_ENABLE : in std_logic;  EMPTY, FULL : 
            out std_logic;  R_DATA : out std_logic_vector (7 downto 0);  
            r_error, rcving : out std_logic);
   end component;
   
   component ENCRYPTION
      port( CLK : in std_logic;  DATA : in std_logic_vector (7 downto 0);  
            EMPTY, FULL, RENABLE, RST : in std_logic;  EMPTY1, FULL1 : out 
            std_logic;  RDATA : out std_logic_vector (7 downto 0);  R_ENABLE : 
            out std_logic);
   end component;
   
   signal R_DATA_7_port, R_DATA_6_port, R_DATA_5_port, R_DATA_4_port, 
      R_DATA_3_port, R_DATA_2_port, R_DATA_1_port, R_DATA_0_port, EMPTY, FULL, 
      r_enable_out, FULL1, RDATA_7_port, RDATA_6_port, RDATA_5_port, 
      RDATA_4_port, RDATA_3_port, RDATA_2_port, RDATA_1_port, RDATA_0_port, 
      R_ENABLE, DATA_7_port, DATA_6_port, DATA_5_port, DATA_4_port, DATA_3_port
      , DATA_2_port, DATA_1_port, DATA_0_port, empty1, r_enable_in, resend, 
      n_1057 : std_logic;

begin
   
   U_0 : ENCRYPTION port map( CLK => CLK, DATA(7) => R_DATA_7_port, DATA(6) => 
                           R_DATA_6_port, DATA(5) => R_DATA_5_port, DATA(4) => 
                           R_DATA_4_port, DATA(3) => R_DATA_3_port, DATA(2) => 
                           R_DATA_2_port, DATA(1) => R_DATA_1_port, DATA(0) => 
                           R_DATA_0_port, EMPTY => EMPTY, FULL => FULL, RENABLE
                           => r_enable_out, RST => RST, EMPTY1 => n_1057, FULL1
                           => FULL1, RDATA(7) => RDATA_7_port, RDATA(6) => 
                           RDATA_6_port, RDATA(5) => RDATA_5_port, RDATA(4) => 
                           RDATA_4_port, RDATA(3) => RDATA_3_port, RDATA(2) => 
                           RDATA_2_port, RDATA(1) => RDATA_1_port, RDATA(0) => 
                           RDATA_0_port, R_ENABLE => R_ENABLE);
   U_1 : USB_RCVR port map( CLK => CLK, D_MINUS => D_MINUS, D_PLUS => D_PLUS, 
                           RST => RST, R_ENABLE => R_ENABLE, EMPTY => EMPTY, 
                           FULL => FULL, R_DATA(7) => R_DATA_7_port, R_DATA(6) 
                           => R_DATA_6_port, R_DATA(5) => R_DATA_5_port, 
                           R_DATA(4) => R_DATA_4_port, R_DATA(3) => 
                           R_DATA_3_port, R_DATA(2) => R_DATA_2_port, R_DATA(1)
                           => R_DATA_1_port, R_DATA(0) => R_DATA_0_port, 
                           r_error => r_error, rcving => rcving);
   U_2 : bToothTop port map( CLK => CLK, DATA(7) => DATA_7_port, DATA(6) => 
                           DATA_6_port, DATA(5) => DATA_5_port, DATA(4) => 
                           DATA_4_port, DATA(3) => DATA_3_port, DATA(2) => 
                           DATA_2_port, DATA(1) => DATA_1_port, DATA(0) => 
                           DATA_0_port, EMPTY => empty1, READ_EN1 => READ_EN1, 
                           RST => RST, DATAOUT(7) => DATAOUT(7), DATAOUT(6) => 
                           DATAOUT(6), DATAOUT(5) => DATAOUT(5), DATAOUT(4) => 
                           DATAOUT(4), DATAOUT(3) => DATAOUT(3), DATAOUT(2) => 
                           DATAOUT(2), DATAOUT(1) => DATAOUT(1), DATAOUT(0) => 
                           DATAOUT(0), EMPTY_SRAM => EMPTY_SRAM, READ_EN => 
                           r_enable_in, RESEND_EN => resend);
   U_3 : s_Control port map( clk => CLK, rst => RST, full => FULL1, resend => 
                           resend, r_enable_in => r_enable_in, IDATA(7) => 
                           RDATA_7_port, IDATA(6) => RDATA_6_port, IDATA(5) => 
                           RDATA_5_port, IDATA(4) => RDATA_4_port, IDATA(3) => 
                           RDATA_3_port, IDATA(2) => RDATA_2_port, IDATA(1) => 
                           RDATA_1_port, IDATA(0) => RDATA_0_port, empty => 
                           empty1, r_enable_out => r_enable_out, r_enable_s => 
                           r_enable_s, ADDR(11) => ADDR(11), ADDR(10) => 
                           ADDR(10), ADDR(9) => ADDR(9), ADDR(8) => ADDR(8), 
                           ADDR(7) => ADDR(7), ADDR(6) => ADDR(6), ADDR(5) => 
                           ADDR(5), ADDR(4) => ADDR(4), ADDR(3) => ADDR(3), 
                           ADDR(2) => ADDR(2), ADDR(1) => ADDR(1), ADDR(0) => 
                           ADDR(0), ODATA(7) => DATA_7_port, ODATA(6) => 
                           DATA_6_port, ODATA(5) => DATA_5_port, ODATA(4) => 
                           DATA_4_port, ODATA(3) => DATA_3_port, ODATA(2) => 
                           DATA_2_port, ODATA(1) => DATA_1_port, ODATA(0) => 
                           DATA_0_port, SDATA(7) => SDATA(7), SDATA(6) => 
                           SDATA(6), SDATA(5) => SDATA(5), SDATA(4) => SDATA(4)
                           , SDATA(3) => SDATA(3), SDATA(2) => SDATA(2), 
                           SDATA(1) => SDATA(1), SDATA(0) => SDATA(0), 
                           w_enable_out => w_enable_out);

end SYN_struct;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

entity SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
   generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
   port(
      clear, preset, enable, data_in, synch_clear, synch_preset, synch_toggle, 
         synch_enable, next_state, clocked_on : in std_logic;
      Q, QN : buffer std_logic
   );
end SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT;

architecture RTL of SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
begin

   process ( preset, clear, enable, data_in, clocked_on )
   begin
   
            -- Check the value of inputs (asynchronous first)
            if ( ( ( preset /= '1' ) and ( preset /= '0' ) ) or ( ( clear /= 
                     '1' ) and ( clear /= '0' ) )  ) then
               Q <= 'X';
            elsif ( clear = '1' and preset = '1' ) then
               case ac_as_q is
                  when 2 =>
                     Q <= '1';
                  when 1 =>
                     Q <= '0';
                  when others =>
                     Q <= 'X';
               end case;
               case ac_as_qn is
                  when 2 =>
                     QN <= '1';
                  when 1 =>
                     QN <= '0';
                  when others =>
                     QN <= 'X';
               end case;
            elsif ( clear = '1' ) then
               Q <= '0';
            elsif ( preset = '1' ) then
               Q <= '1';
            elsif ( ( enable /= '1' ) and ( enable /= '0' ) ) then
               Q <= 'X';
            elsif ( enable = '1' ) then
               Q <= data_in;
            elsif ( ( clocked_on /= '1' ) and ( clocked_on /= '0' ) ) then
               Q <= 'X';
            elsif ( clocked_on'event and clocked_on = '1' ) then
         if ( ( ( synch_preset /= '1' ) and ( synch_preset /= '0' ) ) or ( ( 
                  synch_clear /= '1' ) and ( synch_clear /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_clear = '1' and synch_preset = '1' ) then
            case sc_ss_q is
               when 2 =>
                  Q <= '1';
               when 1 =>
                  Q <= '0';
               when others =>
                  Q <= 'X';
            end case;
         elsif ( synch_clear = '1' ) then
            Q <= '0';
         elsif ( synch_preset = '1' ) then
            Q <= '1';
         elsif ( ( ( synch_toggle /= '1' ) and ( synch_toggle /= '0' ) ) or ( (
                  synch_enable /= '1' ) and ( synch_enable /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_enable = '1' and synch_toggle = '1' ) then
            Q <= 'X';
         elsif ( synch_toggle = '1' ) then
            Q <= QN;
         elsif ( synch_enable = '1' ) then
            Q <= next_state;
         end if;
      end if;
   
   end process;

end RTL;
