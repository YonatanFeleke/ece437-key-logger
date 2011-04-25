
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_ADDRgen2 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ADDRgen2;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ADDRgen2.all;

entity ADDRgen2_DW01_dec_0 is

   port( A : in std_logic_vector (11 downto 0);  SUM : out std_logic_vector (11
         downto 0));

end ADDRgen2_DW01_dec_0;

architecture SYN_rpl of ADDRgen2_DW01_dec_0 is

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
   
   signal SUM_11_port, SUM_10_port, SUM_9_port, SUM_7_port, SUM_5_port, 
      SUM_3_port, SUM_1_port, SUM_8_port, SUM_6_port, SUM_4_port, SUM_2_port, 
      SUM_0_port, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, 
      n19, n20, n21, n22, n23, n24 : std_logic;

begin
   SUM <= ( SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, 
      SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, SUM_2_port, SUM_1_port, 
      SUM_0_port );
   
   U1 : INVX2 port map( A => n13, Y => SUM_8_port);
   U2 : INVX2 port map( A => n16, Y => SUM_6_port);
   U3 : INVX2 port map( A => n19, Y => SUM_4_port);
   U4 : INVX2 port map( A => n22, Y => SUM_2_port);
   U5 : INVX2 port map( A => A(0), Y => SUM_0_port);
   U6 : INVX2 port map( A => A(1), Y => n6);
   U7 : INVX2 port map( A => A(3), Y => n7);
   U8 : INVX2 port map( A => A(5), Y => n8);
   U9 : INVX2 port map( A => A(7), Y => n9);
   U10 : INVX2 port map( A => A(9), Y => n10);
   U11 : OAI21X1 port map( A => n11, B => n10, C => n12, Y => SUM_9_port);
   U12 : AOI21X1 port map( A => n14, B => A(8), C => n11, Y => n13);
   U13 : OAI21X1 port map( A => n15, B => n9, C => n14, Y => SUM_7_port);
   U14 : AOI21X1 port map( A => n17, B => A(6), C => n15, Y => n16);
   U15 : OAI21X1 port map( A => n18, B => n8, C => n17, Y => SUM_5_port);
   U16 : AOI21X1 port map( A => n20, B => A(4), C => n18, Y => n19);
   U17 : OAI21X1 port map( A => n21, B => n7, C => n20, Y => SUM_3_port);
   U18 : AOI21X1 port map( A => n23, B => A(2), C => n21, Y => n22);
   U19 : OAI21X1 port map( A => SUM_0_port, B => n6, C => n23, Y => SUM_1_port)
                           ;
   U20 : XOR2X1 port map( A => A(11), B => n24, Y => SUM_11_port);
   U21 : NOR2X1 port map( A => A(10), B => n12, Y => n24);
   U22 : XNOR2X1 port map( A => A(10), B => n12, Y => SUM_10_port);
   U23 : NAND2X1 port map( A => n11, B => n10, Y => n12);
   U24 : NOR2X1 port map( A => n14, B => A(8), Y => n11);
   U25 : NAND2X1 port map( A => n15, B => n9, Y => n14);
   U26 : NOR2X1 port map( A => n17, B => A(6), Y => n15);
   U27 : NAND2X1 port map( A => n18, B => n8, Y => n17);
   U28 : NOR2X1 port map( A => n20, B => A(4), Y => n18);
   U29 : NAND2X1 port map( A => n21, B => n7, Y => n20);
   U30 : NOR2X1 port map( A => n23, B => A(2), Y => n21);
   U31 : NAND2X1 port map( A => n6, B => SUM_0_port, Y => n23);

end SYN_rpl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ADDRgen2.all;

entity ADDRgen2_DW01_inc_0 is

   port( A : in std_logic_vector (11 downto 0);  SUM : out std_logic_vector (11
         downto 0));

end ADDRgen2_DW01_inc_0;

architecture SYN_rpl of ADDRgen2_DW01_inc_0 is

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

use work.CONV_PACK_ADDRgen2.all;

entity ADDRgen2 is

   port( clk, rst, Resend, r_enable_in, w_enable_in, read_ready : in std_logic;
         ADDR : out std_logic_vector (11 downto 0);  r_enable_out, w_enable_out
         , read_done : out std_logic);

end ADDRgen2;

architecture SYN_B_stmachine of ADDRgen2 is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ADDRgen2_DW01_dec_0
      port( A : in std_logic_vector (11 downto 0);  SUM : out std_logic_vector 
            (11 downto 0));
   end component;
   
   component ADDRgen2_DW01_inc_0
      port( A : in std_logic_vector (11 downto 0);  SUM : out std_logic_vector 
            (11 downto 0));
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_1_port, state_0_port, addr_counter_11_port, 
      addr_counter_10_port, addr_counter_9_port, addr_counter_8_port, 
      addr_counter_7_port, addr_counter_6_port, addr_counter_5_port, 
      addr_counter_4_port, addr_counter_3_port, addr_counter_2_port, 
      addr_counter_1_port, addr_counter_0_port, store_addr_11_port, 
      store_addr_10_port, store_addr_9_port, store_addr_8_port, 
      store_addr_7_port, store_addr_6_port, store_addr_5_port, 
      store_addr_4_port, store_addr_3_port, store_addr_2_port, 
      store_addr_1_port, store_addr_0_port, counter32_4_port, counter32_3_port,
      counter32_2_port, counter32_1_port, counter32_0_port, nextState_1_port, 
      nextState_0_port, newcounter32_4_port, newcounter32_3_port, 
      newcounter32_2_port, newcounter32_1_port, newcounter32_0_port, N24, N25, 
      N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N51, N52, N53, N54, N55
      , N56, N57, N58, N59, N60, N61, N62, n1, n2, n3, n4, n5, n6, n7, n8, n9, 
      n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, 
      n24_port, n25_port, n26_port, n27_port, n28_port, n29_port, n30_port, 
      n32_port, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109
      , n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
      n122, r_enable_out_port, n125, w_enable_out_port, n127, n128, n129, n130,
      n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, 
      n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, 
      n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, 
      n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, 
      n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, 
      n191, n192, n193, n194, n195, n196, n197 : std_logic;

begin
   r_enable_out <= r_enable_out_port;
   w_enable_out <= w_enable_out_port;
   read_done <= r_enable_out_port;
   
   state_reg_0_inst : DFFSR port map( D => nextState_0_port, CLK => clk, R => 
                           n197, S => n32_port, Q => state_0_port);
   state_reg_1_inst : DFFSR port map( D => nextState_1_port, CLK => clk, R => 
                           n197, S => n30_port, Q => state_1_port);
   counter32_reg_0_inst : DFFSR port map( D => newcounter32_0_port, CLK => clk,
                           R => n197, S => n29_port, Q => counter32_0_port);
   counter32_reg_1_inst : DFFSR port map( D => newcounter32_1_port, CLK => clk,
                           R => n197, S => n28_port, Q => counter32_1_port);
   counter32_reg_2_inst : DFFSR port map( D => newcounter32_2_port, CLK => clk,
                           R => n197, S => n27_port, Q => counter32_2_port);
   counter32_reg_3_inst : DFFSR port map( D => newcounter32_3_port, CLK => clk,
                           R => n197, S => n26_port, Q => counter32_3_port);
   counter32_reg_4_inst : DFFSR port map( D => newcounter32_4_port, CLK => clk,
                           R => n197, S => n25_port, Q => counter32_4_port);
   addr_counter_reg_0_inst : DFFSR port map( D => n122, CLK => clk, R => n197, 
                           S => n24_port, Q => addr_counter_0_port);
   addr_counter_reg_1_inst : DFFSR port map( D => n121, CLK => clk, R => n197, 
                           S => n23, Q => addr_counter_1_port);
   addr_counter_reg_2_inst : DFFSR port map( D => n120, CLK => clk, R => n197, 
                           S => n22, Q => addr_counter_2_port);
   addr_counter_reg_3_inst : DFFSR port map( D => n119, CLK => clk, R => n197, 
                           S => n21, Q => addr_counter_3_port);
   addr_counter_reg_4_inst : DFFSR port map( D => n118, CLK => clk, R => n197, 
                           S => n20, Q => addr_counter_4_port);
   addr_counter_reg_5_inst : DFFSR port map( D => n117, CLK => clk, R => n197, 
                           S => n19, Q => addr_counter_5_port);
   addr_counter_reg_6_inst : DFFSR port map( D => n116, CLK => clk, R => n197, 
                           S => n18, Q => addr_counter_6_port);
   addr_counter_reg_7_inst : DFFSR port map( D => n115, CLK => clk, R => n197, 
                           S => n17, Q => addr_counter_7_port);
   addr_counter_reg_8_inst : DFFSR port map( D => n114, CLK => clk, R => n197, 
                           S => n16, Q => addr_counter_8_port);
   addr_counter_reg_9_inst : DFFSR port map( D => n113, CLK => clk, R => n197, 
                           S => n15, Q => addr_counter_9_port);
   addr_counter_reg_10_inst : DFFSR port map( D => n112, CLK => clk, R => n197,
                           S => n14, Q => addr_counter_10_port);
   addr_counter_reg_11_inst : DFFSR port map( D => n111, CLK => clk, R => n197,
                           S => n13, Q => addr_counter_11_port);
   store_addr_reg_0_inst : DFFSR port map( D => n110, CLK => clk, R => n197, S 
                           => n12, Q => store_addr_0_port);
   store_addr_reg_1_inst : DFFSR port map( D => n109, CLK => clk, R => n197, S 
                           => n11, Q => store_addr_1_port);
   store_addr_reg_2_inst : DFFSR port map( D => n108, CLK => clk, R => n197, S 
                           => n10, Q => store_addr_2_port);
   store_addr_reg_3_inst : DFFSR port map( D => n107, CLK => clk, R => n197, S 
                           => n9, Q => store_addr_3_port);
   store_addr_reg_4_inst : DFFSR port map( D => n106, CLK => clk, R => n197, S 
                           => n8, Q => store_addr_4_port);
   store_addr_reg_5_inst : DFFSR port map( D => n105, CLK => clk, R => n197, S 
                           => n7, Q => store_addr_5_port);
   store_addr_reg_6_inst : DFFSR port map( D => n104, CLK => clk, R => n197, S 
                           => n6, Q => store_addr_6_port);
   store_addr_reg_7_inst : DFFSR port map( D => n103, CLK => clk, R => n197, S 
                           => n5, Q => store_addr_7_port);
   store_addr_reg_8_inst : DFFSR port map( D => n102, CLK => clk, R => n197, S 
                           => n4, Q => store_addr_8_port);
   store_addr_reg_9_inst : DFFSR port map( D => n101, CLK => clk, R => n197, S 
                           => n3, Q => store_addr_9_port);
   store_addr_reg_10_inst : DFFSR port map( D => n100, CLK => clk, R => n197, S
                           => n2, Q => store_addr_10_port);
   store_addr_reg_11_inst : DFFSR port map( D => n99, CLK => clk, R => n197, S 
                           => n1, Q => store_addr_11_port);
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
   n24_port <= '1';
   n25_port <= '1';
   n26_port <= '1';
   n27_port <= '1';
   n28_port <= '1';
   n29_port <= '1';
   n30_port <= '1';
   n32_port <= '1';
   add_64 : ADDRgen2_DW01_inc_0 port map( A(11) => addr_counter_11_port, A(10) 
                           => addr_counter_10_port, A(9) => addr_counter_9_port
                           , A(8) => addr_counter_8_port, A(7) => 
                           addr_counter_7_port, A(6) => addr_counter_6_port, 
                           A(5) => addr_counter_5_port, A(4) => 
                           addr_counter_4_port, A(3) => addr_counter_3_port, 
                           A(2) => addr_counter_2_port, A(1) => 
                           addr_counter_1_port, A(0) => addr_counter_0_port, 
                           SUM(11) => N62, SUM(10) => N61, SUM(9) => N60, 
                           SUM(8) => N59, SUM(7) => N58, SUM(6) => N57, SUM(5) 
                           => N56, SUM(4) => N55, SUM(3) => N54, SUM(2) => N53,
                           SUM(1) => N52, SUM(0) => N51);
   sub_80 : ADDRgen2_DW01_dec_0 port map( A(11) => store_addr_11_port, A(10) =>
                           store_addr_10_port, A(9) => store_addr_9_port, A(8) 
                           => store_addr_8_port, A(7) => store_addr_7_port, 
                           A(6) => store_addr_6_port, A(5) => store_addr_5_port
                           , A(4) => store_addr_4_port, A(3) => 
                           store_addr_3_port, A(2) => store_addr_2_port, A(1) 
                           => store_addr_1_port, A(0) => store_addr_0_port, 
                           SUM(11) => N35, SUM(10) => N34, SUM(9) => N33, 
                           SUM(8) => N32, SUM(7) => N31, SUM(6) => N30, SUM(5) 
                           => N29, SUM(4) => N28, SUM(3) => N27, SUM(2) => N26,
                           SUM(1) => N25, SUM(0) => N24);
   U145 : AND2X2 port map( A => state_0_port, B => n183, Y => r_enable_out_port
                           );
   U146 : OR2X2 port map( A => n183, B => state_0_port, Y => n125);
   U147 : INVX2 port map( A => n125, Y => w_enable_out_port);
   U148 : INVX2 port map( A => r_enable_out_port, Y => n127);
   U149 : INVX4 port map( A => rst, Y => n197);
   U150 : OR2X2 port map( A => n184, B => w_enable_out_port, Y => n148);
   U151 : OAI21X1 port map( A => n127, B => n128, C => n129, Y => 
                           nextState_1_port);
   U152 : OAI21X1 port map( A => w_enable_in, B => n130, C => n131, Y => n129);
   U153 : NOR2X1 port map( A => state_1_port, B => state_0_port, Y => n131);
   U154 : INVX1 port map( A => n132, Y => n130);
   U155 : NAND2X1 port map( A => counter32_4_port, B => n133, Y => n128);
   U156 : OAI21X1 port map( A => n132, B => n134, C => n135, Y => 
                           nextState_0_port);
   U157 : AOI21X1 port map( A => read_ready, B => state_0_port, C => 
                           r_enable_out_port, Y => n135);
   U158 : OR2X1 port map( A => state_1_port, B => w_enable_in, Y => n134);
   U159 : NOR2X1 port map( A => Resend, B => r_enable_in, Y => n132);
   U160 : NOR2X1 port map( A => n136, B => n127, Y => newcounter32_4_port);
   U161 : XNOR2X1 port map( A => counter32_4_port, B => n133, Y => n136);
   U162 : NOR2X1 port map( A => n137, B => n138, Y => n133);
   U163 : INVX1 port map( A => counter32_3_port, Y => n137);
   U164 : NOR2X1 port map( A => n139, B => n127, Y => newcounter32_3_port);
   U165 : XOR2X1 port map( A => n138, B => counter32_3_port, Y => n139);
   U166 : NAND3X1 port map( A => counter32_1_port, B => counter32_0_port, C => 
                           counter32_2_port, Y => n138);
   U167 : MUX2X1 port map( B => n140, A => n141, S => counter32_2_port, Y => 
                           newcounter32_2_port);
   U168 : INVX1 port map( A => n142, Y => n141);
   U169 : OAI21X1 port map( A => n127, B => counter32_1_port, C => n143, Y => 
                           n142);
   U170 : NAND3X1 port map( A => counter32_1_port, B => counter32_0_port, C => 
                           r_enable_out_port, Y => n140);
   U171 : MUX2X1 port map( B => n144, A => n143, S => counter32_1_port, Y => 
                           newcounter32_1_port);
   U172 : INVX1 port map( A => newcounter32_0_port, Y => n143);
   U173 : NAND2X1 port map( A => r_enable_out_port, B => counter32_0_port, Y =>
                           n144);
   U174 : NOR2X1 port map( A => n127, B => counter32_0_port, Y => 
                           newcounter32_0_port);
   U175 : OAI21X1 port map( A => n127, B => n145, C => n146, Y => n99);
   U176 : AOI22X1 port map( A => addr_counter_11_port, B => n147, C => 
                           store_addr_11_port, D => n148, Y => n146);
   U177 : INVX1 port map( A => N35, Y => n145);
   U178 : INVX1 port map( A => n149, Y => n122);
   U179 : MUX2X1 port map( B => addr_counter_0_port, A => N51, S => 
                           w_enable_out_port, Y => n149);
   U180 : INVX1 port map( A => n150, Y => n121);
   U181 : MUX2X1 port map( B => addr_counter_1_port, A => N52, S => 
                           w_enable_out_port, Y => n150);
   U182 : INVX1 port map( A => n151, Y => n120);
   U183 : MUX2X1 port map( B => addr_counter_2_port, A => N53, S => 
                           w_enable_out_port, Y => n151);
   U184 : INVX1 port map( A => n152, Y => n119);
   U185 : MUX2X1 port map( B => addr_counter_3_port, A => N54, S => 
                           w_enable_out_port, Y => n152);
   U186 : INVX1 port map( A => n153, Y => n118);
   U187 : MUX2X1 port map( B => addr_counter_4_port, A => N55, S => 
                           w_enable_out_port, Y => n153);
   U188 : INVX1 port map( A => n154, Y => n117);
   U189 : MUX2X1 port map( B => addr_counter_5_port, A => N56, S => 
                           w_enable_out_port, Y => n154);
   U190 : INVX1 port map( A => n155, Y => n116);
   U191 : MUX2X1 port map( B => addr_counter_6_port, A => N57, S => 
                           w_enable_out_port, Y => n155);
   U192 : INVX1 port map( A => n156, Y => n115);
   U193 : MUX2X1 port map( B => addr_counter_7_port, A => N58, S => 
                           w_enable_out_port, Y => n156);
   U194 : INVX1 port map( A => n157, Y => n114);
   U195 : MUX2X1 port map( B => addr_counter_8_port, A => N59, S => 
                           w_enable_out_port, Y => n157);
   U196 : INVX1 port map( A => n158, Y => n113);
   U197 : MUX2X1 port map( B => addr_counter_9_port, A => N60, S => 
                           w_enable_out_port, Y => n158);
   U198 : INVX1 port map( A => n159, Y => n112);
   U199 : MUX2X1 port map( B => addr_counter_10_port, A => N61, S => 
                           w_enable_out_port, Y => n159);
   U200 : INVX1 port map( A => n160, Y => n111);
   U201 : MUX2X1 port map( B => addr_counter_11_port, A => N62, S => 
                           w_enable_out_port, Y => n160);
   U202 : OAI21X1 port map( A => n127, B => n161, C => n162, Y => n110);
   U203 : AOI22X1 port map( A => addr_counter_0_port, B => n147, C => 
                           store_addr_0_port, D => n148, Y => n162);
   U204 : INVX1 port map( A => N24, Y => n161);
   U205 : OAI21X1 port map( A => n127, B => n163, C => n164, Y => n109);
   U206 : AOI22X1 port map( A => addr_counter_1_port, B => n147, C => 
                           store_addr_1_port, D => n148, Y => n164);
   U207 : INVX1 port map( A => N25, Y => n163);
   U208 : OAI21X1 port map( A => n127, B => n165, C => n166, Y => n108);
   U209 : AOI22X1 port map( A => addr_counter_2_port, B => n147, C => 
                           store_addr_2_port, D => n148, Y => n166);
   U210 : INVX1 port map( A => N26, Y => n165);
   U211 : OAI21X1 port map( A => n127, B => n167, C => n168, Y => n107);
   U212 : AOI22X1 port map( A => addr_counter_3_port, B => n147, C => 
                           store_addr_3_port, D => n148, Y => n168);
   U213 : INVX1 port map( A => N27, Y => n167);
   U214 : OAI21X1 port map( A => n127, B => n169, C => n170, Y => n106);
   U215 : AOI22X1 port map( A => addr_counter_4_port, B => n147, C => 
                           store_addr_4_port, D => n148, Y => n170);
   U216 : INVX1 port map( A => N28, Y => n169);
   U217 : OAI21X1 port map( A => n127, B => n171, C => n172, Y => n105);
   U218 : AOI22X1 port map( A => addr_counter_5_port, B => n147, C => 
                           store_addr_5_port, D => n148, Y => n172);
   U219 : INVX1 port map( A => N29, Y => n171);
   U220 : OAI21X1 port map( A => n127, B => n173, C => n174, Y => n104);
   U221 : AOI22X1 port map( A => addr_counter_6_port, B => n147, C => 
                           store_addr_6_port, D => n148, Y => n174);
   U222 : INVX1 port map( A => N30, Y => n173);
   U223 : OAI21X1 port map( A => n127, B => n175, C => n176, Y => n103);
   U224 : AOI22X1 port map( A => addr_counter_7_port, B => n147, C => 
                           store_addr_7_port, D => n148, Y => n176);
   U225 : INVX1 port map( A => N31, Y => n175);
   U226 : OAI21X1 port map( A => n127, B => n177, C => n178, Y => n102);
   U227 : AOI22X1 port map( A => addr_counter_8_port, B => n147, C => 
                           store_addr_8_port, D => n148, Y => n178);
   U228 : INVX1 port map( A => N32, Y => n177);
   U229 : OAI21X1 port map( A => n127, B => n179, C => n180, Y => n101);
   U230 : AOI22X1 port map( A => addr_counter_9_port, B => n147, C => 
                           store_addr_9_port, D => n148, Y => n180);
   U231 : INVX1 port map( A => N33, Y => n179);
   U232 : OAI21X1 port map( A => n127, B => n181, C => n182, Y => n100);
   U233 : AOI22X1 port map( A => addr_counter_10_port, B => n147, C => 
                           store_addr_10_port, D => n148, Y => n182);
   U234 : NOR2X1 port map( A => n148, B => n183, Y => n147);
   U235 : AOI21X1 port map( A => state_1_port, B => read_ready, C => 
                           r_enable_out_port, Y => n184);
   U236 : INVX1 port map( A => N34, Y => n181);
   U237 : INVX1 port map( A => n185, Y => ADDR(9));
   U238 : MUX2X1 port map( B => addr_counter_9_port, A => store_addr_9_port, S 
                           => r_enable_out_port, Y => n185);
   U239 : INVX1 port map( A => n186, Y => ADDR(8));
   U240 : MUX2X1 port map( B => addr_counter_8_port, A => store_addr_8_port, S 
                           => r_enable_out_port, Y => n186);
   U241 : INVX1 port map( A => n187, Y => ADDR(7));
   U242 : MUX2X1 port map( B => addr_counter_7_port, A => store_addr_7_port, S 
                           => r_enable_out_port, Y => n187);
   U243 : INVX1 port map( A => n188, Y => ADDR(6));
   U244 : MUX2X1 port map( B => addr_counter_6_port, A => store_addr_6_port, S 
                           => r_enable_out_port, Y => n188);
   U245 : INVX1 port map( A => n189, Y => ADDR(5));
   U246 : MUX2X1 port map( B => addr_counter_5_port, A => store_addr_5_port, S 
                           => r_enable_out_port, Y => n189);
   U247 : INVX1 port map( A => n190, Y => ADDR(4));
   U248 : MUX2X1 port map( B => addr_counter_4_port, A => store_addr_4_port, S 
                           => r_enable_out_port, Y => n190);
   U249 : INVX1 port map( A => n191, Y => ADDR(3));
   U250 : MUX2X1 port map( B => addr_counter_3_port, A => store_addr_3_port, S 
                           => r_enable_out_port, Y => n191);
   U251 : INVX1 port map( A => n192, Y => ADDR(2));
   U252 : MUX2X1 port map( B => addr_counter_2_port, A => store_addr_2_port, S 
                           => r_enable_out_port, Y => n192);
   U253 : INVX1 port map( A => n193, Y => ADDR(1));
   U254 : MUX2X1 port map( B => addr_counter_1_port, A => store_addr_1_port, S 
                           => r_enable_out_port, Y => n193);
   U255 : INVX1 port map( A => n194, Y => ADDR(11));
   U256 : MUX2X1 port map( B => addr_counter_11_port, A => store_addr_11_port, 
                           S => r_enable_out_port, Y => n194);
   U257 : INVX1 port map( A => n195, Y => ADDR(10));
   U258 : MUX2X1 port map( B => addr_counter_10_port, A => store_addr_10_port, 
                           S => r_enable_out_port, Y => n195);
   U259 : INVX1 port map( A => n196, Y => ADDR(0));
   U260 : MUX2X1 port map( B => addr_counter_0_port, A => store_addr_0_port, S 
                           => r_enable_out_port, Y => n196);
   U261 : INVX1 port map( A => state_1_port, Y => n183);

end SYN_B_stmachine;
