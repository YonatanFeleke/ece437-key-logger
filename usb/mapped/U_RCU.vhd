
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
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
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
      N147, N148, N149, N150, N151, N153, n3, n4, n5, n6, n7, n8, n9, n10, n11,
      n12, n18, n28, n99, n100, n101, n102, n104, n105, n106, n107, n108, n109,
      n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, 
      n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, 
      n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, 
      n146, n147_port, n148_port, n149_port, n150_port, n151_port, n152, 
      n153_port, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, 
      n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, 
      n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, 
      n188, n189, n190 : std_logic;

begin
   
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n11, S => n12, Q => state_0_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n11, S => n10, Q => state_1_port);
   shift_ctr_reg_0_inst : DFFSR port map( D => n101, CLK => D_CLK, R => n8, S 
                           => n9, Q => shift_ctr_0_port);
   shift_ctr_reg_1_inst : DFFSR port map( D => n100, CLK => D_CLK, R => n8, S 
                           => n7, Q => shift_ctr_1_port);
   shift_ctr_reg_2_inst : DFFSR port map( D => n99, CLK => D_CLK, R => n8, S =>
                           n6, Q => shift_ctr_2_port);
   shift_ctr_reg_3_inst : DFFSR port map( D => n102, CLK => D_CLK, R => n8, S 
                           => n5, Q => shift_ctr_3_port);
   state_reg_3_inst : DFFSR port map( D => nextstate_3_port, CLK => D_CLK, R =>
                           n11, S => n4, Q => state_3_port);
   state_reg_2_inst : DFFSR port map( D => nextstate_2_port, CLK => D_CLK, R =>
                           n11, S => n3, Q => state_2_port);
   CRC_EN_reg : LATCH port map( CLK => n18, D => N153, Q => CRC_EN);
   rcving_reg : LATCH port map( CLK => N147, D => N148, Q => rcving);
   w_enable_reg : LATCH port map( CLK => N149, D => n28, Q => w_enable);
   r_error_reg : LATCH port map( CLK => N150, D => N151, Q => r_error);
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   n7 <= '1';
   n9 <= '1';
   n10 <= '1';
   n12 <= '1';
   U114 : OR2X1 port map( A => n104, B => n105, Y => nextstate_3_port);
   U115 : OAI21X1 port map( A => n106, B => n107, C => n108, Y => n105);
   U116 : MUX2X1 port map( B => n109, A => n110, S => d_edge, Y => n108);
   U117 : NOR2X1 port map( A => n111, B => n112, Y => n109);
   U118 : OAI21X1 port map( A => n113, B => n114, C => n115, Y => n104);
   U119 : OAI21X1 port map( A => n116, B => n106, C => n117, Y => n115);
   U120 : INVX1 port map( A => n118, Y => n117);
   U121 : NAND3X1 port map( A => n119, B => n120, C => n121, Y => 
                           nextstate_2_port);
   U122 : AOI21X1 port map( A => eop, B => n122, C => n123, Y => n121);
   U123 : OAI21X1 port map( A => n124, B => n125, C => n126, Y => n123);
   U124 : NAND2X1 port map( A => state_3_port, B => n127, Y => n125);
   U125 : OAI21X1 port map( A => n128, B => n116, C => n129, Y => n122);
   U126 : AOI22X1 port map( A => n116, B => n130, C => n131, D => n114, Y => 
                           n119);
   U127 : INVX1 port map( A => n132, Y => n114);
   U128 : NAND2X1 port map( A => n133, B => n134, Y => nextstate_1_port);
   U129 : AOI21X1 port map( A => n135, B => n106, C => n136, Y => n134);
   U130 : OAI21X1 port map( A => n137, B => n138, C => n107, Y => n136);
   U131 : OAI21X1 port map( A => n139, B => n140, C => state_3_port, Y => n138)
                           ;
   U132 : NOR2X1 port map( A => CRC_ERROR, B => n141, Y => n139);
   U133 : OAI21X1 port map( A => n116, B => n129, C => n126, Y => n135);
   U134 : INVX1 port map( A => n142, Y => n116);
   U135 : AOI21X1 port map( A => n143, B => n144, C => n145, Y => n133);
   U136 : OAI22X1 port map( A => n132, B => n113, C => n128, D => n142, Y => 
                           n145);
   U137 : INVX1 port map( A => n146, Y => n128);
   U138 : INVX1 port map( A => n131, Y => n113);
   U139 : INVX1 port map( A => d_edge, Y => n144);
   U140 : NAND3X1 port map( A => n147_port, B => n120, C => n148_port, Y => 
                           nextstate_0_port);
   U141 : NOR2X1 port map( A => n149_port, B => n150_port, Y => n148_port);
   U142 : OAI21X1 port map( A => n151_port, B => n106, C => n152, Y => 
                           n150_port);
   U143 : OAI21X1 port map( A => n130, B => n146, C => n142, Y => n152);
   U144 : NAND3X1 port map( A => shift_ctr_3_port, B => n153_port, C => n154, Y
                           => n142);
   U145 : NOR2X1 port map( A => shift_ctr_2_port, B => shift_ctr_1_port, Y => 
                           n154);
   U146 : INVX1 port map( A => eop, Y => n106);
   U147 : NOR2X1 port map( A => n131, B => n155, Y => n151_port);
   U148 : OAI21X1 port map( A => n127, B => n156, C => n107, Y => n149_port);
   U149 : OR2X1 port map( A => n124, B => n111, Y => n156);
   U150 : NAND3X1 port map( A => n157, B => rcv_data(0), C => n158, Y => n127);
   U151 : NOR2X1 port map( A => n159, B => n160, Y => n158);
   U152 : NOR2X1 port map( A => n161, B => n162, Y => n157);
   U153 : INVX1 port map( A => n163, Y => n162);
   U154 : XOR2X1 port map( A => n164, B => rcv_data(7), Y => n161);
   U155 : INVX1 port map( A => n165, Y => n120);
   U156 : OAI21X1 port map( A => d_edge, B => n166, C => n167, Y => n165);
   U157 : AOI22X1 port map( A => n168, B => d_edge, C => n132, D => n131, Y => 
                           n147_port);
   U158 : NOR2X1 port map( A => n124, B => state_3_port, Y => n131);
   U159 : NOR2X1 port map( A => n169, B => n170, Y => n132);
   U160 : NAND3X1 port map( A => n163, B => n171, C => rcv_data(7), Y => n170);
   U161 : INVX1 port map( A => rcv_data(0), Y => n171);
   U162 : NOR2X1 port map( A => rcv_data(2), B => n172, Y => n163);
   U163 : OR2X1 port map( A => rcv_data(5), B => rcv_data(4), Y => n172);
   U164 : NAND3X1 port map( A => n164, B => n160, C => n159, Y => n169);
   U165 : INVX1 port map( A => rcv_data(1), Y => n159);
   U166 : INVX1 port map( A => rcv_data(6), Y => n160);
   U167 : INVX1 port map( A => rcv_data(3), Y => n164);
   U168 : XOR2X1 port map( A => n173, B => n174, Y => n99);
   U169 : INVX1 port map( A => n107, Y => n28);
   U170 : INVX1 port map( A => n175, Y => n18);
   U171 : XOR2X1 port map( A => shift_ctr_3_port, B => n176, Y => n102);
   U172 : NOR2X1 port map( A => n173, B => n174, Y => n176);
   U173 : NAND2X1 port map( A => shift_ctr_1_port, B => n177, Y => n174);
   U174 : INVX1 port map( A => shift_ctr_2_port, Y => n173);
   U175 : XOR2X1 port map( A => n153_port, B => n178, Y => n101);
   U176 : XOR2X1 port map( A => shift_ctr_1_port, B => n177, Y => n100);
   U177 : NOR2X1 port map( A => n153_port, B => n178, Y => n177);
   U178 : NAND3X1 port map( A => n8, B => n11, C => shift_enable, Y => n178);
   U179 : INVX1 port map( A => rst_n, Y => n11);
   U180 : OAI21X1 port map( A => state_1_port, B => n141, C => n179, Y => n8);
   U181 : INVX1 port map( A => n180, Y => n141);
   U182 : INVX1 port map( A => shift_ctr_0_port, Y => n153_port);
   U183 : OAI21X1 port map( A => n111, B => n112, C => n181, Y => N151);
   U184 : NOR2X1 port map( A => n110, B => n155, Y => n181);
   U185 : OR2X1 port map( A => n146, B => N149, Y => N150);
   U186 : NAND2X1 port map( A => n182, B => n167, Y => N149);
   U187 : NAND3X1 port map( A => state_3_port, B => n180, C => state_1_port, Y 
                           => n167);
   U188 : INVX1 port map( A => n183, Y => n182);
   U189 : NAND3X1 port map( A => n124, B => n184, C => n185, Y => N148);
   U190 : NOR2X1 port map( A => n155, B => n146, Y => n185);
   U191 : INVX1 port map( A => n126, Y => n155);
   U192 : INVX1 port map( A => N153, Y => n184);
   U193 : NAND2X1 port map( A => n124, B => n175, Y => N147);
   U194 : NOR2X1 port map( A => n183, B => n146, Y => n175);
   U195 : OAI21X1 port map( A => state_1_port, B => n179, C => n118, Y => n146)
                           ;
   U196 : NAND3X1 port map( A => n180, B => n137, C => state_3_port, Y => n118)
                           ;
   U197 : NAND3X1 port map( A => n166, B => n126, C => n186, Y => n183);
   U198 : NOR2X1 port map( A => N153, B => n168, Y => n186);
   U199 : INVX1 port map( A => n112, Y => n168);
   U200 : NAND2X1 port map( A => n140, B => n137, Y => n112);
   U201 : NAND2X1 port map( A => n129, B => n107, Y => N153);
   U202 : NAND3X1 port map( A => n187, B => n137, C => n188, Y => n107);
   U203 : INVX1 port map( A => n130, Y => n129);
   U204 : NOR2X1 port map( A => n179, B => n137, Y => n130);
   U205 : NAND2X1 port map( A => n180, B => n111, Y => n179);
   U206 : NOR2X1 port map( A => n187, B => state_2_port, Y => n180);
   U207 : NAND3X1 port map( A => state_1_port, B => n187, C => n188, Y => n126)
                           ;
   U208 : INVX1 port map( A => state_0_port, Y => n187);
   U209 : NOR2X1 port map( A => n110, B => n143, Y => n166);
   U210 : INVX1 port map( A => n189, Y => n143);
   U211 : NAND3X1 port map( A => state_1_port, B => state_0_port, C => n188, Y 
                           => n189);
   U212 : INVX1 port map( A => n190, Y => n110);
   U213 : NAND3X1 port map( A => state_0_port, B => n137, C => n188, Y => n190)
                           ;
   U214 : AND2X1 port map( A => state_2_port, B => n111, Y => n188);
   U215 : INVX1 port map( A => state_3_port, Y => n111);
   U216 : INVX1 port map( A => state_1_port, Y => n137);
   U217 : NAND2X1 port map( A => state_1_port, B => n140, Y => n124);
   U218 : NOR2X1 port map( A => state_0_port, B => state_2_port, Y => n140);

end SYN_behavioral;
