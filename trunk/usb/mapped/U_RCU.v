
module U_RCU ( D_CLK, rst_n, d_edge, eop, CRC_ERROR, STUFF_ERROR, shift_enable, 
        rcv_data, rcving, w_enable, r_error, CRC_EN );
  input [7:0] rcv_data;
  input D_CLK, rst_n, d_edge, eop, CRC_ERROR, STUFF_ERROR, shift_enable;
  output rcving, w_enable, r_error, CRC_EN;
  wire   N147, N148, N149, N150, N151, N153, n8, n11, n18, n28, n99, n100,
         n101, n102, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190;
  wire   [3:0] state;
  wire   [3:0] nextstate;
  wire   [3:0] shift_ctr;

  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(
        state[0]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(
        state[1]) );
  DFFSR \shift_ctr_reg[0]  ( .D(n101), .CLK(D_CLK), .R(n8), .S(1'b1), .Q(
        shift_ctr[0]) );
  DFFSR \shift_ctr_reg[1]  ( .D(n100), .CLK(D_CLK), .R(n8), .S(1'b1), .Q(
        shift_ctr[1]) );
  DFFSR \shift_ctr_reg[2]  ( .D(n99), .CLK(D_CLK), .R(n8), .S(1'b1), .Q(
        shift_ctr[2]) );
  DFFSR \shift_ctr_reg[3]  ( .D(n102), .CLK(D_CLK), .R(n8), .S(1'b1), .Q(
        shift_ctr[3]) );
  DFFSR \state_reg[3]  ( .D(nextstate[3]), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(
        state[3]) );
  DFFSR \state_reg[2]  ( .D(nextstate[2]), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(
        state[2]) );
  LATCH CRC_EN_reg ( .CLK(n18), .D(N153), .Q(CRC_EN) );
  LATCH rcving_reg ( .CLK(N147), .D(N148), .Q(rcving) );
  LATCH w_enable_reg ( .CLK(N149), .D(n28), .Q(w_enable) );
  LATCH r_error_reg ( .CLK(N150), .D(N151), .Q(r_error) );
  OR2X1 U114 ( .A(n104), .B(n105), .Y(nextstate[3]) );
  OAI21X1 U115 ( .A(n106), .B(n107), .C(n108), .Y(n105) );
  MUX2X1 U116 ( .B(n109), .A(n110), .S(d_edge), .Y(n108) );
  NOR2X1 U117 ( .A(n111), .B(n112), .Y(n109) );
  OAI21X1 U118 ( .A(n113), .B(n114), .C(n115), .Y(n104) );
  OAI21X1 U119 ( .A(n116), .B(n106), .C(n117), .Y(n115) );
  INVX1 U120 ( .A(n118), .Y(n117) );
  NAND3X1 U121 ( .A(n119), .B(n120), .C(n121), .Y(nextstate[2]) );
  AOI21X1 U122 ( .A(eop), .B(n122), .C(n123), .Y(n121) );
  OAI21X1 U123 ( .A(n124), .B(n125), .C(n126), .Y(n123) );
  NAND2X1 U124 ( .A(state[3]), .B(n127), .Y(n125) );
  OAI21X1 U125 ( .A(n128), .B(n116), .C(n129), .Y(n122) );
  AOI22X1 U126 ( .A(n116), .B(n130), .C(n131), .D(n114), .Y(n119) );
  INVX1 U127 ( .A(n132), .Y(n114) );
  NAND2X1 U128 ( .A(n133), .B(n134), .Y(nextstate[1]) );
  AOI21X1 U129 ( .A(n135), .B(n106), .C(n136), .Y(n134) );
  OAI21X1 U130 ( .A(n137), .B(n138), .C(n107), .Y(n136) );
  OAI21X1 U131 ( .A(n139), .B(n140), .C(state[3]), .Y(n138) );
  NOR2X1 U132 ( .A(CRC_ERROR), .B(n141), .Y(n139) );
  OAI21X1 U133 ( .A(n116), .B(n129), .C(n126), .Y(n135) );
  INVX1 U134 ( .A(n142), .Y(n116) );
  AOI21X1 U135 ( .A(n143), .B(n144), .C(n145), .Y(n133) );
  OAI22X1 U136 ( .A(n132), .B(n113), .C(n128), .D(n142), .Y(n145) );
  INVX1 U137 ( .A(n146), .Y(n128) );
  INVX1 U138 ( .A(n131), .Y(n113) );
  INVX1 U139 ( .A(d_edge), .Y(n144) );
  NAND3X1 U140 ( .A(n147), .B(n120), .C(n148), .Y(nextstate[0]) );
  NOR2X1 U141 ( .A(n149), .B(n150), .Y(n148) );
  OAI21X1 U142 ( .A(n151), .B(n106), .C(n152), .Y(n150) );
  OAI21X1 U143 ( .A(n130), .B(n146), .C(n142), .Y(n152) );
  NAND3X1 U144 ( .A(shift_ctr[3]), .B(n153), .C(n154), .Y(n142) );
  NOR2X1 U145 ( .A(shift_ctr[2]), .B(shift_ctr[1]), .Y(n154) );
  INVX1 U146 ( .A(eop), .Y(n106) );
  NOR2X1 U147 ( .A(n131), .B(n155), .Y(n151) );
  OAI21X1 U148 ( .A(n127), .B(n156), .C(n107), .Y(n149) );
  OR2X1 U149 ( .A(n124), .B(n111), .Y(n156) );
  NAND3X1 U150 ( .A(n157), .B(rcv_data[0]), .C(n158), .Y(n127) );
  NOR2X1 U151 ( .A(n159), .B(n160), .Y(n158) );
  NOR2X1 U152 ( .A(n161), .B(n162), .Y(n157) );
  INVX1 U153 ( .A(n163), .Y(n162) );
  XOR2X1 U154 ( .A(n164), .B(rcv_data[7]), .Y(n161) );
  INVX1 U155 ( .A(n165), .Y(n120) );
  OAI21X1 U156 ( .A(d_edge), .B(n166), .C(n167), .Y(n165) );
  AOI22X1 U157 ( .A(n168), .B(d_edge), .C(n132), .D(n131), .Y(n147) );
  NOR2X1 U158 ( .A(n124), .B(state[3]), .Y(n131) );
  NOR2X1 U159 ( .A(n169), .B(n170), .Y(n132) );
  NAND3X1 U160 ( .A(n163), .B(n171), .C(rcv_data[7]), .Y(n170) );
  INVX1 U161 ( .A(rcv_data[0]), .Y(n171) );
  NOR2X1 U162 ( .A(rcv_data[2]), .B(n172), .Y(n163) );
  OR2X1 U163 ( .A(rcv_data[5]), .B(rcv_data[4]), .Y(n172) );
  NAND3X1 U164 ( .A(n164), .B(n160), .C(n159), .Y(n169) );
  INVX1 U165 ( .A(rcv_data[1]), .Y(n159) );
  INVX1 U166 ( .A(rcv_data[6]), .Y(n160) );
  INVX1 U167 ( .A(rcv_data[3]), .Y(n164) );
  XOR2X1 U168 ( .A(n173), .B(n174), .Y(n99) );
  INVX1 U169 ( .A(n107), .Y(n28) );
  INVX1 U170 ( .A(n175), .Y(n18) );
  XOR2X1 U171 ( .A(shift_ctr[3]), .B(n176), .Y(n102) );
  NOR2X1 U172 ( .A(n173), .B(n174), .Y(n176) );
  NAND2X1 U173 ( .A(shift_ctr[1]), .B(n177), .Y(n174) );
  INVX1 U174 ( .A(shift_ctr[2]), .Y(n173) );
  XOR2X1 U175 ( .A(n153), .B(n178), .Y(n101) );
  XOR2X1 U176 ( .A(shift_ctr[1]), .B(n177), .Y(n100) );
  NOR2X1 U177 ( .A(n153), .B(n178), .Y(n177) );
  NAND3X1 U178 ( .A(n8), .B(n11), .C(shift_enable), .Y(n178) );
  INVX1 U179 ( .A(rst_n), .Y(n11) );
  OAI21X1 U180 ( .A(state[1]), .B(n141), .C(n179), .Y(n8) );
  INVX1 U181 ( .A(n180), .Y(n141) );
  INVX1 U182 ( .A(shift_ctr[0]), .Y(n153) );
  OAI21X1 U183 ( .A(n111), .B(n112), .C(n181), .Y(N151) );
  NOR2X1 U184 ( .A(n110), .B(n155), .Y(n181) );
  OR2X1 U185 ( .A(n146), .B(N149), .Y(N150) );
  NAND2X1 U186 ( .A(n182), .B(n167), .Y(N149) );
  NAND3X1 U187 ( .A(state[3]), .B(n180), .C(state[1]), .Y(n167) );
  INVX1 U188 ( .A(n183), .Y(n182) );
  NAND3X1 U189 ( .A(n124), .B(n184), .C(n185), .Y(N148) );
  NOR2X1 U190 ( .A(n155), .B(n146), .Y(n185) );
  INVX1 U191 ( .A(n126), .Y(n155) );
  INVX1 U192 ( .A(N153), .Y(n184) );
  NAND2X1 U193 ( .A(n124), .B(n175), .Y(N147) );
  NOR2X1 U194 ( .A(n183), .B(n146), .Y(n175) );
  OAI21X1 U195 ( .A(state[1]), .B(n179), .C(n118), .Y(n146) );
  NAND3X1 U196 ( .A(n180), .B(n137), .C(state[3]), .Y(n118) );
  NAND3X1 U197 ( .A(n166), .B(n126), .C(n186), .Y(n183) );
  NOR2X1 U198 ( .A(N153), .B(n168), .Y(n186) );
  INVX1 U199 ( .A(n112), .Y(n168) );
  NAND2X1 U200 ( .A(n140), .B(n137), .Y(n112) );
  NAND2X1 U201 ( .A(n129), .B(n107), .Y(N153) );
  NAND3X1 U202 ( .A(n187), .B(n137), .C(n188), .Y(n107) );
  INVX1 U203 ( .A(n130), .Y(n129) );
  NOR2X1 U204 ( .A(n179), .B(n137), .Y(n130) );
  NAND2X1 U205 ( .A(n180), .B(n111), .Y(n179) );
  NOR2X1 U206 ( .A(n187), .B(state[2]), .Y(n180) );
  NAND3X1 U207 ( .A(state[1]), .B(n187), .C(n188), .Y(n126) );
  INVX1 U208 ( .A(state[0]), .Y(n187) );
  NOR2X1 U209 ( .A(n110), .B(n143), .Y(n166) );
  INVX1 U210 ( .A(n189), .Y(n143) );
  NAND3X1 U211 ( .A(state[1]), .B(state[0]), .C(n188), .Y(n189) );
  INVX1 U212 ( .A(n190), .Y(n110) );
  NAND3X1 U213 ( .A(state[0]), .B(n137), .C(n188), .Y(n190) );
  AND2X1 U214 ( .A(state[2]), .B(n111), .Y(n188) );
  INVX1 U215 ( .A(state[3]), .Y(n111) );
  INVX1 U216 ( .A(state[1]), .Y(n137) );
  NAND2X1 U217 ( .A(state[1]), .B(n140), .Y(n124) );
  NOR2X1 U218 ( .A(state[0]), .B(state[2]), .Y(n140) );
endmodule

