
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_U_RCU is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_U_RCU;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_U_RCU.all;

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
      N153, N154, N155, N156, N157, N159, n3, n4, n5, n6, n7, n8, n9, n10, n11,
      n12, n21, n33, n106, n107, n108, n109, n111, n112, n113, n114, n115, n116
      , n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
      n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, 
      n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, 
      n153_port, n154_port, n155_port, n156_port, n157_port, n158, n159_port, 
      n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, 
      n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, 
      n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, 
      n196 : std_logic;

begin
   
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n11, S => n12, Q => state_0_port);
   state_reg_3_inst : DFFSR port map( D => nextstate_3_port, CLK => D_CLK, R =>
                           n11, S => n10, Q => state_3_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n11, S => n9, Q => state_1_port);
   shift_ctr_reg_0_inst : DFFSR port map( D => n108, CLK => D_CLK, R => n7, S 
                           => n8, Q => shift_ctr_0_port);
   shift_ctr_reg_1_inst : DFFSR port map( D => n107, CLK => D_CLK, R => n7, S 
                           => n6, Q => shift_ctr_1_port);
   shift_ctr_reg_2_inst : DFFSR port map( D => n106, CLK => D_CLK, R => n7, S 
                           => n5, Q => shift_ctr_2_port);
   shift_ctr_reg_3_inst : DFFSR port map( D => n109, CLK => D_CLK, R => n7, S 
                           => n4, Q => shift_ctr_3_port);
   state_reg_2_inst : DFFSR port map( D => nextstate_2_port, CLK => D_CLK, R =>
                           n11, S => n3, Q => state_2_port);
   CRC_EN_reg : LATCH port map( CLK => n21, D => N159, Q => CRC_EN);
   rcving_reg : LATCH port map( CLK => N153, D => N154, Q => rcving);
   w_enable_reg : LATCH port map( CLK => N155, D => n33, Q => w_enable);
   r_error_reg : LATCH port map( CLK => N156, D => N157, Q => r_error);
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   n8 <= '1';
   n9 <= '1';
   n10 <= '1';
   n12 <= '1';
   U121 : OR2X1 port map( A => n111, B => n112, Y => nextstate_3_port);
   U122 : OAI21X1 port map( A => n113, B => n114, C => n115, Y => n112);
   U123 : MUX2X1 port map( B => n116, A => n117, S => d_edge, Y => n115);
   U124 : NOR2X1 port map( A => n118, B => n119, Y => n116);
   U125 : OAI21X1 port map( A => n120, B => n121, C => n122, Y => n111);
   U126 : OAI21X1 port map( A => n123, B => n121, C => n124, Y => n122);
   U127 : NAND3X1 port map( A => n125, B => n126, C => n127, Y => 
                           nextstate_2_port);
   U128 : AOI21X1 port map( A => eop, B => n128, C => n129, Y => n127);
   U129 : OAI21X1 port map( A => n130, B => n131, C => n132, Y => n129);
   U130 : NAND2X1 port map( A => n133, B => n134, Y => n131);
   U131 : OAI22X1 port map( A => n135, B => n136, C => n137, D => n123, Y => 
                           n128);
   U132 : INVX1 port map( A => n138, Y => n126);
   U133 : AOI22X1 port map( A => n123, B => n139, C => n140, D => n114, Y => 
                           n125);
   U134 : INVX1 port map( A => n141, Y => n114);
   U135 : NAND3X1 port map( A => n142, B => n120, C => n143, Y => 
                           nextstate_1_port);
   U136 : AOI21X1 port map( A => n123, B => n144, C => n145, Y => n143);
   U137 : OAI21X1 port map( A => n146, B => n130, C => n147, Y => n145);
   U138 : OAI21X1 port map( A => n148, B => n149, C => n121, Y => n147);
   U139 : INVX1 port map( A => eop, Y => n121);
   U140 : AOI21X1 port map( A => n150, B => n151, C => n133, Y => n146);
   U141 : INVX1 port map( A => CRC_ERROR, Y => n150);
   U142 : AOI21X1 port map( A => n135, B => n148, C => n33, Y => n120);
   U143 : INVX1 port map( A => n152, Y => n142);
   U144 : OAI22X1 port map( A => n113, B => n141, C => n153_port, D => d_edge, 
                           Y => n152);
   U145 : NAND3X1 port map( A => n154_port, B => n155_port, C => n156_port, Y 
                           => nextstate_0_port);
   U146 : NOR2X1 port map( A => n157_port, B => n158, Y => n156_port);
   U147 : OAI21X1 port map( A => n134, B => n159_port, C => n160, Y => n158);
   U148 : OAI21X1 port map( A => n140, B => n149, C => eop, Y => n160);
   U149 : NAND2X1 port map( A => n161, B => n133, Y => n159_port);
   U150 : NAND3X1 port map( A => n162, B => rcv_data(0), C => n163, Y => n134);
   U151 : NOR2X1 port map( A => n164, B => n165, Y => n163);
   U152 : NOR2X1 port map( A => n166, B => n167, Y => n162);
   U153 : INVX1 port map( A => n168, Y => n167);
   U154 : XNOR2X1 port map( A => rcv_data(3), B => rcv_data(7), Y => n166);
   U155 : OR2X1 port map( A => n33, B => n148, Y => n157_port);
   U156 : NOR2X1 port map( A => n136, B => n123, Y => n148);
   U157 : INVX1 port map( A => n169, Y => n123);
   U158 : AOI22X1 port map( A => n170, B => d_edge, C => n169, D => n144, Y => 
                           n155_port);
   U159 : NAND2X1 port map( A => shift_ctr_3_port, B => n135, Y => n169);
   U160 : NOR3X1 port map( A => shift_ctr_1_port, B => shift_ctr_2_port, C => 
                           shift_ctr_0_port, Y => n135);
   U161 : INVX1 port map( A => n119, Y => n170);
   U162 : AOI21X1 port map( A => n141, B => n140, C => n138, Y => n154_port);
   U163 : OAI21X1 port map( A => d_edge, B => n171, C => n172, Y => n138);
   U164 : INVX1 port map( A => n113, Y => n140);
   U165 : NAND2X1 port map( A => n133, B => n173, Y => n113);
   U166 : NOR2X1 port map( A => n174, B => n175, Y => n141);
   U167 : NAND3X1 port map( A => n168, B => n176, C => rcv_data(7), Y => n175);
   U168 : INVX1 port map( A => rcv_data(0), Y => n176);
   U169 : NOR2X1 port map( A => rcv_data(2), B => n177, Y => n168);
   U170 : OR2X1 port map( A => rcv_data(5), B => rcv_data(4), Y => n177);
   U171 : NAND3X1 port map( A => n178, B => n165, C => n164, Y => n174);
   U172 : INVX1 port map( A => rcv_data(1), Y => n164);
   U173 : INVX1 port map( A => rcv_data(6), Y => n165);
   U174 : INVX1 port map( A => rcv_data(3), Y => n178);
   U175 : XOR2X1 port map( A => shift_ctr_3_port, B => n179, Y => n109);
   U176 : NOR2X1 port map( A => n180, B => n181, Y => n179);
   U177 : INVX1 port map( A => shift_ctr_2_port, Y => n181);
   U178 : XNOR2X1 port map( A => shift_ctr_0_port, B => n182, Y => n108);
   U179 : XOR2X1 port map( A => shift_ctr_1_port, B => n183, Y => n107);
   U180 : XNOR2X1 port map( A => shift_ctr_2_port, B => n180, Y => n106);
   U181 : NAND2X1 port map( A => shift_ctr_1_port, B => n183, Y => n180);
   U182 : NOR2X1 port map( A => n184, B => n182, Y => n183);
   U183 : NAND3X1 port map( A => n7, B => n11, C => shift_enable, Y => n182);
   U184 : INVX1 port map( A => rst_n, Y => n11);
   U185 : AND2X1 port map( A => n151, B => n130, Y => n7);
   U186 : INVX1 port map( A => n161, Y => n130);
   U187 : INVX1 port map( A => shift_ctr_0_port, Y => n184);
   U188 : INVX1 port map( A => n185, Y => N159);
   U189 : OAI21X1 port map( A => n118, B => n119, C => n186, Y => N157);
   U190 : NOR2X1 port map( A => n117, B => n149, Y => n186);
   U191 : INVX1 port map( A => n132, Y => n149);
   U192 : INVX1 port map( A => n187, Y => n117);
   U193 : OR2X1 port map( A => n144, B => N155, Y => N156);
   U194 : NAND2X1 port map( A => n188, B => n172, Y => N155);
   U195 : NAND2X1 port map( A => n161, B => n151, Y => n172);
   U196 : NOR2X1 port map( A => n189, B => n118, Y => n161);
   U197 : INVX1 port map( A => state_3_port, Y => n118);
   U198 : NAND3X1 port map( A => n132, B => n185, C => n190, Y => N154);
   U199 : AOI21X1 port map( A => n133, B => state_1_port, C => n144, Y => n190)
                           ;
   U200 : INVX1 port map( A => n137, Y => n144);
   U201 : OR2X1 port map( A => n133, B => n21, Y => N153);
   U202 : NAND2X1 port map( A => n137, B => n188, Y => n21);
   U203 : INVX1 port map( A => n191, Y => n188);
   U204 : NAND3X1 port map( A => n119, B => n185, C => n192, Y => n191);
   U205 : AND2X1 port map( A => n132, B => n171, Y => n192);
   U206 : AND2X1 port map( A => n187, B => n153_port, Y => n171);
   U207 : NAND3X1 port map( A => n173, B => state_0_port, C => state_2_port, Y 
                           => n153_port);
   U208 : NAND3X1 port map( A => n193, B => state_0_port, C => state_2_port, Y 
                           => n187);
   U209 : NAND3X1 port map( A => n173, B => n194, C => state_2_port, Y => n132)
                           ;
   U210 : NOR2X1 port map( A => n139, B => n33, Y => n185);
   U211 : INVX1 port map( A => n195, Y => n33);
   U212 : NAND3X1 port map( A => n193, B => n194, C => state_2_port, Y => n195)
                           ;
   U213 : INVX1 port map( A => n136, Y => n139);
   U214 : NAND2X1 port map( A => n173, B => n151, Y => n136);
   U215 : NOR2X1 port map( A => n189, B => state_3_port, Y => n173);
   U216 : NAND2X1 port map( A => n133, B => n189, Y => n119);
   U217 : AOI21X1 port map( A => n151, B => n193, C => n124, Y => n137);
   U218 : INVX1 port map( A => n196, Y => n124);
   U219 : NAND3X1 port map( A => n151, B => n189, C => state_3_port, Y => n196)
                           ;
   U220 : INVX1 port map( A => state_1_port, Y => n189);
   U221 : NOR2X1 port map( A => state_3_port, B => state_1_port, Y => n193);
   U222 : NOR2X1 port map( A => n194, B => state_2_port, Y => n151);
   U223 : INVX1 port map( A => state_0_port, Y => n194);
   U224 : NOR2X1 port map( A => state_0_port, B => state_2_port, Y => n133);

end SYN_behavioral;
