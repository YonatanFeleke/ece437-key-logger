
module ADDRgen2_DW01_inc_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  HAX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .YC(carry[11]), .YS(SUM[10]) );
  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[11]), .B(A[11]), .Y(SUM[11]) );
endmodule


module ADDRgen2_DW01_dec_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24;

  INVX2 U1 ( .A(n13), .Y(SUM[8]) );
  INVX2 U2 ( .A(n16), .Y(SUM[6]) );
  INVX2 U3 ( .A(n19), .Y(SUM[4]) );
  INVX2 U4 ( .A(n22), .Y(SUM[2]) );
  INVX2 U5 ( .A(A[0]), .Y(SUM[0]) );
  INVX2 U6 ( .A(A[1]), .Y(n6) );
  INVX2 U7 ( .A(A[3]), .Y(n7) );
  INVX2 U8 ( .A(A[5]), .Y(n8) );
  INVX2 U9 ( .A(A[7]), .Y(n9) );
  INVX2 U10 ( .A(A[9]), .Y(n10) );
  OAI21X1 U11 ( .A(n11), .B(n10), .C(n12), .Y(SUM[9]) );
  AOI21X1 U12 ( .A(n14), .B(A[8]), .C(n11), .Y(n13) );
  OAI21X1 U13 ( .A(n15), .B(n9), .C(n14), .Y(SUM[7]) );
  AOI21X1 U14 ( .A(n17), .B(A[6]), .C(n15), .Y(n16) );
  OAI21X1 U15 ( .A(n18), .B(n8), .C(n17), .Y(SUM[5]) );
  AOI21X1 U16 ( .A(n20), .B(A[4]), .C(n18), .Y(n19) );
  OAI21X1 U17 ( .A(n21), .B(n7), .C(n20), .Y(SUM[3]) );
  AOI21X1 U18 ( .A(n23), .B(A[2]), .C(n21), .Y(n22) );
  OAI21X1 U19 ( .A(SUM[0]), .B(n6), .C(n23), .Y(SUM[1]) );
  XOR2X1 U20 ( .A(A[11]), .B(n24), .Y(SUM[11]) );
  NOR2X1 U21 ( .A(A[10]), .B(n12), .Y(n24) );
  XNOR2X1 U22 ( .A(A[10]), .B(n12), .Y(SUM[10]) );
  NAND2X1 U23 ( .A(n11), .B(n10), .Y(n12) );
  NOR2X1 U24 ( .A(n14), .B(A[8]), .Y(n11) );
  NAND2X1 U25 ( .A(n15), .B(n9), .Y(n14) );
  NOR2X1 U26 ( .A(n17), .B(A[6]), .Y(n15) );
  NAND2X1 U27 ( .A(n18), .B(n8), .Y(n17) );
  NOR2X1 U28 ( .A(n20), .B(A[4]), .Y(n18) );
  NAND2X1 U29 ( .A(n21), .B(n7), .Y(n20) );
  NOR2X1 U30 ( .A(n23), .B(A[2]), .Y(n21) );
  NAND2X1 U31 ( .A(n6), .B(SUM[0]), .Y(n23) );
endmodule


module ADDRgen2 ( clk, rst, Resend, r_enable_in, w_enable_in, read_ready, ADDR, 
        r_enable_out, w_enable_out, read_done );
  output [11:0] ADDR;
  input clk, rst, Resend, r_enable_in, w_enable_in, read_ready;
  output r_enable_out, w_enable_out, read_done;
  wire   N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N51, N52,
         N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         r_enable_out, n125, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197;
  wire   [1:0] state;
  wire   [11:0] addr_counter;
  wire   [11:0] store_addr;
  wire   [4:0] counter32;
  wire   [1:0] nextState;
  wire   [4:0] newcounter32;
  assign read_done = r_enable_out;

  DFFSR \state_reg[0]  ( .D(nextState[0]), .CLK(clk), .R(n197), .S(1'b1), .Q(
        state[0]) );
  DFFSR \state_reg[1]  ( .D(nextState[1]), .CLK(clk), .R(n197), .S(1'b1), .Q(
        state[1]) );
  DFFSR \counter32_reg[0]  ( .D(newcounter32[0]), .CLK(clk), .R(n197), .S(1'b1), .Q(counter32[0]) );
  DFFSR \counter32_reg[1]  ( .D(newcounter32[1]), .CLK(clk), .R(n197), .S(1'b1), .Q(counter32[1]) );
  DFFSR \counter32_reg[2]  ( .D(newcounter32[2]), .CLK(clk), .R(n197), .S(1'b1), .Q(counter32[2]) );
  DFFSR \counter32_reg[3]  ( .D(newcounter32[3]), .CLK(clk), .R(n197), .S(1'b1), .Q(counter32[3]) );
  DFFSR \counter32_reg[4]  ( .D(newcounter32[4]), .CLK(clk), .R(n197), .S(1'b1), .Q(counter32[4]) );
  DFFSR \addr_counter_reg[0]  ( .D(n122), .CLK(clk), .R(n197), .S(1'b1), .Q(
        addr_counter[0]) );
  DFFSR \addr_counter_reg[1]  ( .D(n121), .CLK(clk), .R(n197), .S(1'b1), .Q(
        addr_counter[1]) );
  DFFSR \addr_counter_reg[2]  ( .D(n120), .CLK(clk), .R(n197), .S(1'b1), .Q(
        addr_counter[2]) );
  DFFSR \addr_counter_reg[3]  ( .D(n119), .CLK(clk), .R(n197), .S(1'b1), .Q(
        addr_counter[3]) );
  DFFSR \addr_counter_reg[4]  ( .D(n118), .CLK(clk), .R(n197), .S(1'b1), .Q(
        addr_counter[4]) );
  DFFSR \addr_counter_reg[5]  ( .D(n117), .CLK(clk), .R(n197), .S(1'b1), .Q(
        addr_counter[5]) );
  DFFSR \addr_counter_reg[6]  ( .D(n116), .CLK(clk), .R(n197), .S(1'b1), .Q(
        addr_counter[6]) );
  DFFSR \addr_counter_reg[7]  ( .D(n115), .CLK(clk), .R(n197), .S(1'b1), .Q(
        addr_counter[7]) );
  DFFSR \addr_counter_reg[8]  ( .D(n114), .CLK(clk), .R(n197), .S(1'b1), .Q(
        addr_counter[8]) );
  DFFSR \addr_counter_reg[9]  ( .D(n113), .CLK(clk), .R(n197), .S(1'b1), .Q(
        addr_counter[9]) );
  DFFSR \addr_counter_reg[10]  ( .D(n112), .CLK(clk), .R(n197), .S(1'b1), .Q(
        addr_counter[10]) );
  DFFSR \addr_counter_reg[11]  ( .D(n111), .CLK(clk), .R(n197), .S(1'b1), .Q(
        addr_counter[11]) );
  DFFSR \store_addr_reg[0]  ( .D(n110), .CLK(clk), .R(n197), .S(1'b1), .Q(
        store_addr[0]) );
  DFFSR \store_addr_reg[1]  ( .D(n109), .CLK(clk), .R(n197), .S(1'b1), .Q(
        store_addr[1]) );
  DFFSR \store_addr_reg[2]  ( .D(n108), .CLK(clk), .R(n197), .S(1'b1), .Q(
        store_addr[2]) );
  DFFSR \store_addr_reg[3]  ( .D(n107), .CLK(clk), .R(n197), .S(1'b1), .Q(
        store_addr[3]) );
  DFFSR \store_addr_reg[4]  ( .D(n106), .CLK(clk), .R(n197), .S(1'b1), .Q(
        store_addr[4]) );
  DFFSR \store_addr_reg[5]  ( .D(n105), .CLK(clk), .R(n197), .S(1'b1), .Q(
        store_addr[5]) );
  DFFSR \store_addr_reg[6]  ( .D(n104), .CLK(clk), .R(n197), .S(1'b1), .Q(
        store_addr[6]) );
  DFFSR \store_addr_reg[7]  ( .D(n103), .CLK(clk), .R(n197), .S(1'b1), .Q(
        store_addr[7]) );
  DFFSR \store_addr_reg[8]  ( .D(n102), .CLK(clk), .R(n197), .S(1'b1), .Q(
        store_addr[8]) );
  DFFSR \store_addr_reg[9]  ( .D(n101), .CLK(clk), .R(n197), .S(1'b1), .Q(
        store_addr[9]) );
  DFFSR \store_addr_reg[10]  ( .D(n100), .CLK(clk), .R(n197), .S(1'b1), .Q(
        store_addr[10]) );
  DFFSR \store_addr_reg[11]  ( .D(n99), .CLK(clk), .R(n197), .S(1'b1), .Q(
        store_addr[11]) );
  ADDRgen2_DW01_inc_0 add_64 ( .A(addr_counter), .SUM({N62, N61, N60, N59, N58, 
        N57, N56, N55, N54, N53, N52, N51}) );
  ADDRgen2_DW01_dec_0 sub_80 ( .A(store_addr), .SUM({N35, N34, N33, N32, N31, 
        N30, N29, N28, N27, N26, N25, N24}) );
  AND2X2 U145 ( .A(state[0]), .B(n183), .Y(r_enable_out) );
  OR2X2 U146 ( .A(n183), .B(state[0]), .Y(n125) );
  INVX2 U147 ( .A(n125), .Y(w_enable_out) );
  INVX2 U148 ( .A(r_enable_out), .Y(n127) );
  INVX4 U149 ( .A(rst), .Y(n197) );
  OR2X2 U150 ( .A(n184), .B(w_enable_out), .Y(n148) );
  OAI21X1 U151 ( .A(n127), .B(n128), .C(n129), .Y(nextState[1]) );
  OAI21X1 U152 ( .A(w_enable_in), .B(n130), .C(n131), .Y(n129) );
  NOR2X1 U153 ( .A(state[1]), .B(state[0]), .Y(n131) );
  INVX1 U154 ( .A(n132), .Y(n130) );
  NAND2X1 U155 ( .A(counter32[4]), .B(n133), .Y(n128) );
  OAI21X1 U156 ( .A(n132), .B(n134), .C(n135), .Y(nextState[0]) );
  AOI21X1 U157 ( .A(read_ready), .B(state[0]), .C(r_enable_out), .Y(n135) );
  OR2X1 U158 ( .A(state[1]), .B(w_enable_in), .Y(n134) );
  NOR2X1 U159 ( .A(Resend), .B(r_enable_in), .Y(n132) );
  NOR2X1 U160 ( .A(n136), .B(n127), .Y(newcounter32[4]) );
  XNOR2X1 U161 ( .A(counter32[4]), .B(n133), .Y(n136) );
  NOR2X1 U162 ( .A(n137), .B(n138), .Y(n133) );
  INVX1 U163 ( .A(counter32[3]), .Y(n137) );
  NOR2X1 U164 ( .A(n139), .B(n127), .Y(newcounter32[3]) );
  XOR2X1 U165 ( .A(n138), .B(counter32[3]), .Y(n139) );
  NAND3X1 U166 ( .A(counter32[1]), .B(counter32[0]), .C(counter32[2]), .Y(n138) );
  MUX2X1 U167 ( .B(n140), .A(n141), .S(counter32[2]), .Y(newcounter32[2]) );
  INVX1 U168 ( .A(n142), .Y(n141) );
  OAI21X1 U169 ( .A(n127), .B(counter32[1]), .C(n143), .Y(n142) );
  NAND3X1 U170 ( .A(counter32[1]), .B(counter32[0]), .C(r_enable_out), .Y(n140) );
  MUX2X1 U171 ( .B(n144), .A(n143), .S(counter32[1]), .Y(newcounter32[1]) );
  INVX1 U172 ( .A(newcounter32[0]), .Y(n143) );
  NAND2X1 U173 ( .A(r_enable_out), .B(counter32[0]), .Y(n144) );
  NOR2X1 U174 ( .A(n127), .B(counter32[0]), .Y(newcounter32[0]) );
  OAI21X1 U175 ( .A(n127), .B(n145), .C(n146), .Y(n99) );
  AOI22X1 U176 ( .A(addr_counter[11]), .B(n147), .C(store_addr[11]), .D(n148), 
        .Y(n146) );
  INVX1 U177 ( .A(N35), .Y(n145) );
  INVX1 U178 ( .A(n149), .Y(n122) );
  MUX2X1 U179 ( .B(addr_counter[0]), .A(N51), .S(w_enable_out), .Y(n149) );
  INVX1 U180 ( .A(n150), .Y(n121) );
  MUX2X1 U181 ( .B(addr_counter[1]), .A(N52), .S(w_enable_out), .Y(n150) );
  INVX1 U182 ( .A(n151), .Y(n120) );
  MUX2X1 U183 ( .B(addr_counter[2]), .A(N53), .S(w_enable_out), .Y(n151) );
  INVX1 U184 ( .A(n152), .Y(n119) );
  MUX2X1 U185 ( .B(addr_counter[3]), .A(N54), .S(w_enable_out), .Y(n152) );
  INVX1 U186 ( .A(n153), .Y(n118) );
  MUX2X1 U187 ( .B(addr_counter[4]), .A(N55), .S(w_enable_out), .Y(n153) );
  INVX1 U188 ( .A(n154), .Y(n117) );
  MUX2X1 U189 ( .B(addr_counter[5]), .A(N56), .S(w_enable_out), .Y(n154) );
  INVX1 U190 ( .A(n155), .Y(n116) );
  MUX2X1 U191 ( .B(addr_counter[6]), .A(N57), .S(w_enable_out), .Y(n155) );
  INVX1 U192 ( .A(n156), .Y(n115) );
  MUX2X1 U193 ( .B(addr_counter[7]), .A(N58), .S(w_enable_out), .Y(n156) );
  INVX1 U194 ( .A(n157), .Y(n114) );
  MUX2X1 U195 ( .B(addr_counter[8]), .A(N59), .S(w_enable_out), .Y(n157) );
  INVX1 U196 ( .A(n158), .Y(n113) );
  MUX2X1 U197 ( .B(addr_counter[9]), .A(N60), .S(w_enable_out), .Y(n158) );
  INVX1 U198 ( .A(n159), .Y(n112) );
  MUX2X1 U199 ( .B(addr_counter[10]), .A(N61), .S(w_enable_out), .Y(n159) );
  INVX1 U200 ( .A(n160), .Y(n111) );
  MUX2X1 U201 ( .B(addr_counter[11]), .A(N62), .S(w_enable_out), .Y(n160) );
  OAI21X1 U202 ( .A(n127), .B(n161), .C(n162), .Y(n110) );
  AOI22X1 U203 ( .A(addr_counter[0]), .B(n147), .C(store_addr[0]), .D(n148), 
        .Y(n162) );
  INVX1 U204 ( .A(N24), .Y(n161) );
  OAI21X1 U205 ( .A(n127), .B(n163), .C(n164), .Y(n109) );
  AOI22X1 U206 ( .A(addr_counter[1]), .B(n147), .C(store_addr[1]), .D(n148), 
        .Y(n164) );
  INVX1 U207 ( .A(N25), .Y(n163) );
  OAI21X1 U208 ( .A(n127), .B(n165), .C(n166), .Y(n108) );
  AOI22X1 U209 ( .A(addr_counter[2]), .B(n147), .C(store_addr[2]), .D(n148), 
        .Y(n166) );
  INVX1 U210 ( .A(N26), .Y(n165) );
  OAI21X1 U211 ( .A(n127), .B(n167), .C(n168), .Y(n107) );
  AOI22X1 U212 ( .A(addr_counter[3]), .B(n147), .C(store_addr[3]), .D(n148), 
        .Y(n168) );
  INVX1 U213 ( .A(N27), .Y(n167) );
  OAI21X1 U214 ( .A(n127), .B(n169), .C(n170), .Y(n106) );
  AOI22X1 U215 ( .A(addr_counter[4]), .B(n147), .C(store_addr[4]), .D(n148), 
        .Y(n170) );
  INVX1 U216 ( .A(N28), .Y(n169) );
  OAI21X1 U217 ( .A(n127), .B(n171), .C(n172), .Y(n105) );
  AOI22X1 U218 ( .A(addr_counter[5]), .B(n147), .C(store_addr[5]), .D(n148), 
        .Y(n172) );
  INVX1 U219 ( .A(N29), .Y(n171) );
  OAI21X1 U220 ( .A(n127), .B(n173), .C(n174), .Y(n104) );
  AOI22X1 U221 ( .A(addr_counter[6]), .B(n147), .C(store_addr[6]), .D(n148), 
        .Y(n174) );
  INVX1 U222 ( .A(N30), .Y(n173) );
  OAI21X1 U223 ( .A(n127), .B(n175), .C(n176), .Y(n103) );
  AOI22X1 U224 ( .A(addr_counter[7]), .B(n147), .C(store_addr[7]), .D(n148), 
        .Y(n176) );
  INVX1 U225 ( .A(N31), .Y(n175) );
  OAI21X1 U226 ( .A(n127), .B(n177), .C(n178), .Y(n102) );
  AOI22X1 U227 ( .A(addr_counter[8]), .B(n147), .C(store_addr[8]), .D(n148), 
        .Y(n178) );
  INVX1 U228 ( .A(N32), .Y(n177) );
  OAI21X1 U229 ( .A(n127), .B(n179), .C(n180), .Y(n101) );
  AOI22X1 U230 ( .A(addr_counter[9]), .B(n147), .C(store_addr[9]), .D(n148), 
        .Y(n180) );
  INVX1 U231 ( .A(N33), .Y(n179) );
  OAI21X1 U232 ( .A(n127), .B(n181), .C(n182), .Y(n100) );
  AOI22X1 U233 ( .A(addr_counter[10]), .B(n147), .C(store_addr[10]), .D(n148), 
        .Y(n182) );
  NOR2X1 U234 ( .A(n148), .B(n183), .Y(n147) );
  AOI21X1 U235 ( .A(state[1]), .B(read_ready), .C(r_enable_out), .Y(n184) );
  INVX1 U236 ( .A(N34), .Y(n181) );
  INVX1 U237 ( .A(n185), .Y(ADDR[9]) );
  MUX2X1 U238 ( .B(addr_counter[9]), .A(store_addr[9]), .S(r_enable_out), .Y(
        n185) );
  INVX1 U239 ( .A(n186), .Y(ADDR[8]) );
  MUX2X1 U240 ( .B(addr_counter[8]), .A(store_addr[8]), .S(r_enable_out), .Y(
        n186) );
  INVX1 U241 ( .A(n187), .Y(ADDR[7]) );
  MUX2X1 U242 ( .B(addr_counter[7]), .A(store_addr[7]), .S(r_enable_out), .Y(
        n187) );
  INVX1 U243 ( .A(n188), .Y(ADDR[6]) );
  MUX2X1 U244 ( .B(addr_counter[6]), .A(store_addr[6]), .S(r_enable_out), .Y(
        n188) );
  INVX1 U245 ( .A(n189), .Y(ADDR[5]) );
  MUX2X1 U246 ( .B(addr_counter[5]), .A(store_addr[5]), .S(r_enable_out), .Y(
        n189) );
  INVX1 U247 ( .A(n190), .Y(ADDR[4]) );
  MUX2X1 U248 ( .B(addr_counter[4]), .A(store_addr[4]), .S(r_enable_out), .Y(
        n190) );
  INVX1 U249 ( .A(n191), .Y(ADDR[3]) );
  MUX2X1 U250 ( .B(addr_counter[3]), .A(store_addr[3]), .S(r_enable_out), .Y(
        n191) );
  INVX1 U251 ( .A(n192), .Y(ADDR[2]) );
  MUX2X1 U252 ( .B(addr_counter[2]), .A(store_addr[2]), .S(r_enable_out), .Y(
        n192) );
  INVX1 U253 ( .A(n193), .Y(ADDR[1]) );
  MUX2X1 U254 ( .B(addr_counter[1]), .A(store_addr[1]), .S(r_enable_out), .Y(
        n193) );
  INVX1 U255 ( .A(n194), .Y(ADDR[11]) );
  MUX2X1 U256 ( .B(addr_counter[11]), .A(store_addr[11]), .S(r_enable_out), 
        .Y(n194) );
  INVX1 U257 ( .A(n195), .Y(ADDR[10]) );
  MUX2X1 U258 ( .B(addr_counter[10]), .A(store_addr[10]), .S(r_enable_out), 
        .Y(n195) );
  INVX1 U259 ( .A(n196), .Y(ADDR[0]) );
  MUX2X1 U260 ( .B(addr_counter[0]), .A(store_addr[0]), .S(r_enable_out), .Y(
        n196) );
  INVX1 U261 ( .A(state[1]), .Y(n183) );
endmodule

