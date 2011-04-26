
module U_RCU ( D_CLK, rst_n, d_edge, eop, CRC_ERROR, STUFF_ERROR, shift_enable, 
        rcv_data, rcving, w_enable, r_error, CRC_EN );
  input [7:0] rcv_data;
  input D_CLK, rst_n, d_edge, eop, CRC_ERROR, STUFF_ERROR, shift_enable;
  output rcving, w_enable, r_error, CRC_EN;
  wire   N153, N154, N155, N156, N157, N159, n7, n11, n21, n33, n106, n107,
         n108, n109, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196;
  wire   [3:0] state;
  wire   [3:0] nextstate;
  wire   [3:0] shift_ctr;

  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(
        state[0]) );
  DFFSR \state_reg[3]  ( .D(nextstate[3]), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(
        state[3]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(
        state[1]) );
  DFFSR \shift_ctr_reg[0]  ( .D(n108), .CLK(D_CLK), .R(n7), .S(1'b1), .Q(
        shift_ctr[0]) );
  DFFSR \shift_ctr_reg[1]  ( .D(n107), .CLK(D_CLK), .R(n7), .S(1'b1), .Q(
        shift_ctr[1]) );
  DFFSR \shift_ctr_reg[2]  ( .D(n106), .CLK(D_CLK), .R(n7), .S(1'b1), .Q(
        shift_ctr[2]) );
  DFFSR \shift_ctr_reg[3]  ( .D(n109), .CLK(D_CLK), .R(n7), .S(1'b1), .Q(
        shift_ctr[3]) );
  DFFSR \state_reg[2]  ( .D(nextstate[2]), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(
        state[2]) );
  LATCH CRC_EN_reg ( .CLK(n21), .D(N159), .Q(CRC_EN) );
  LATCH rcving_reg ( .CLK(N153), .D(N154), .Q(rcving) );
  LATCH w_enable_reg ( .CLK(N155), .D(n33), .Q(w_enable) );
  LATCH r_error_reg ( .CLK(N156), .D(N157), .Q(r_error) );
  OR2X1 U121 ( .A(n111), .B(n112), .Y(nextstate[3]) );
  OAI21X1 U122 ( .A(n113), .B(n114), .C(n115), .Y(n112) );
  MUX2X1 U123 ( .B(n116), .A(n117), .S(d_edge), .Y(n115) );
  NOR2X1 U124 ( .A(n118), .B(n119), .Y(n116) );
  OAI21X1 U125 ( .A(n120), .B(n121), .C(n122), .Y(n111) );
  OAI21X1 U126 ( .A(n123), .B(n121), .C(n124), .Y(n122) );
  NAND3X1 U127 ( .A(n125), .B(n126), .C(n127), .Y(nextstate[2]) );
  AOI21X1 U128 ( .A(eop), .B(n128), .C(n129), .Y(n127) );
  OAI21X1 U129 ( .A(n130), .B(n131), .C(n132), .Y(n129) );
  NAND2X1 U130 ( .A(n133), .B(n134), .Y(n131) );
  OAI22X1 U131 ( .A(n135), .B(n136), .C(n137), .D(n123), .Y(n128) );
  INVX1 U132 ( .A(n138), .Y(n126) );
  AOI22X1 U133 ( .A(n123), .B(n139), .C(n140), .D(n114), .Y(n125) );
  INVX1 U134 ( .A(n141), .Y(n114) );
  NAND3X1 U135 ( .A(n142), .B(n120), .C(n143), .Y(nextstate[1]) );
  AOI21X1 U136 ( .A(n123), .B(n144), .C(n145), .Y(n143) );
  OAI21X1 U137 ( .A(n146), .B(n130), .C(n147), .Y(n145) );
  OAI21X1 U138 ( .A(n148), .B(n149), .C(n121), .Y(n147) );
  INVX1 U139 ( .A(eop), .Y(n121) );
  AOI21X1 U140 ( .A(n150), .B(n151), .C(n133), .Y(n146) );
  INVX1 U141 ( .A(CRC_ERROR), .Y(n150) );
  AOI21X1 U142 ( .A(n135), .B(n148), .C(n33), .Y(n120) );
  INVX1 U143 ( .A(n152), .Y(n142) );
  OAI22X1 U144 ( .A(n113), .B(n141), .C(n153), .D(d_edge), .Y(n152) );
  NAND3X1 U145 ( .A(n154), .B(n155), .C(n156), .Y(nextstate[0]) );
  NOR2X1 U146 ( .A(n157), .B(n158), .Y(n156) );
  OAI21X1 U147 ( .A(n134), .B(n159), .C(n160), .Y(n158) );
  OAI21X1 U148 ( .A(n140), .B(n149), .C(eop), .Y(n160) );
  NAND2X1 U149 ( .A(n161), .B(n133), .Y(n159) );
  NAND3X1 U150 ( .A(n162), .B(rcv_data[0]), .C(n163), .Y(n134) );
  NOR2X1 U151 ( .A(n164), .B(n165), .Y(n163) );
  NOR2X1 U152 ( .A(n166), .B(n167), .Y(n162) );
  INVX1 U153 ( .A(n168), .Y(n167) );
  XNOR2X1 U154 ( .A(rcv_data[3]), .B(rcv_data[7]), .Y(n166) );
  OR2X1 U155 ( .A(n33), .B(n148), .Y(n157) );
  NOR2X1 U156 ( .A(n136), .B(n123), .Y(n148) );
  INVX1 U157 ( .A(n169), .Y(n123) );
  AOI22X1 U158 ( .A(n170), .B(d_edge), .C(n169), .D(n144), .Y(n155) );
  NAND2X1 U159 ( .A(shift_ctr[3]), .B(n135), .Y(n169) );
  NOR3X1 U160 ( .A(shift_ctr[1]), .B(shift_ctr[2]), .C(shift_ctr[0]), .Y(n135)
         );
  INVX1 U161 ( .A(n119), .Y(n170) );
  AOI21X1 U162 ( .A(n141), .B(n140), .C(n138), .Y(n154) );
  OAI21X1 U163 ( .A(d_edge), .B(n171), .C(n172), .Y(n138) );
  INVX1 U164 ( .A(n113), .Y(n140) );
  NAND2X1 U165 ( .A(n133), .B(n173), .Y(n113) );
  NOR2X1 U166 ( .A(n174), .B(n175), .Y(n141) );
  NAND3X1 U167 ( .A(n168), .B(n176), .C(rcv_data[7]), .Y(n175) );
  INVX1 U168 ( .A(rcv_data[0]), .Y(n176) );
  NOR2X1 U169 ( .A(rcv_data[2]), .B(n177), .Y(n168) );
  OR2X1 U170 ( .A(rcv_data[5]), .B(rcv_data[4]), .Y(n177) );
  NAND3X1 U171 ( .A(n178), .B(n165), .C(n164), .Y(n174) );
  INVX1 U172 ( .A(rcv_data[1]), .Y(n164) );
  INVX1 U173 ( .A(rcv_data[6]), .Y(n165) );
  INVX1 U174 ( .A(rcv_data[3]), .Y(n178) );
  XOR2X1 U175 ( .A(shift_ctr[3]), .B(n179), .Y(n109) );
  NOR2X1 U176 ( .A(n180), .B(n181), .Y(n179) );
  INVX1 U177 ( .A(shift_ctr[2]), .Y(n181) );
  XNOR2X1 U178 ( .A(shift_ctr[0]), .B(n182), .Y(n108) );
  XOR2X1 U179 ( .A(shift_ctr[1]), .B(n183), .Y(n107) );
  XNOR2X1 U180 ( .A(shift_ctr[2]), .B(n180), .Y(n106) );
  NAND2X1 U181 ( .A(shift_ctr[1]), .B(n183), .Y(n180) );
  NOR2X1 U182 ( .A(n184), .B(n182), .Y(n183) );
  NAND3X1 U183 ( .A(n7), .B(n11), .C(shift_enable), .Y(n182) );
  INVX1 U184 ( .A(rst_n), .Y(n11) );
  AND2X1 U185 ( .A(n151), .B(n130), .Y(n7) );
  INVX1 U186 ( .A(n161), .Y(n130) );
  INVX1 U187 ( .A(shift_ctr[0]), .Y(n184) );
  INVX1 U188 ( .A(n185), .Y(N159) );
  OAI21X1 U189 ( .A(n118), .B(n119), .C(n186), .Y(N157) );
  NOR2X1 U190 ( .A(n117), .B(n149), .Y(n186) );
  INVX1 U191 ( .A(n132), .Y(n149) );
  INVX1 U192 ( .A(n187), .Y(n117) );
  OR2X1 U193 ( .A(n144), .B(N155), .Y(N156) );
  NAND2X1 U194 ( .A(n188), .B(n172), .Y(N155) );
  NAND2X1 U195 ( .A(n161), .B(n151), .Y(n172) );
  NOR2X1 U196 ( .A(n189), .B(n118), .Y(n161) );
  INVX1 U197 ( .A(state[3]), .Y(n118) );
  NAND3X1 U198 ( .A(n132), .B(n185), .C(n190), .Y(N154) );
  AOI21X1 U199 ( .A(n133), .B(state[1]), .C(n144), .Y(n190) );
  INVX1 U200 ( .A(n137), .Y(n144) );
  OR2X1 U201 ( .A(n133), .B(n21), .Y(N153) );
  NAND2X1 U202 ( .A(n137), .B(n188), .Y(n21) );
  INVX1 U203 ( .A(n191), .Y(n188) );
  NAND3X1 U204 ( .A(n119), .B(n185), .C(n192), .Y(n191) );
  AND2X1 U205 ( .A(n132), .B(n171), .Y(n192) );
  AND2X1 U206 ( .A(n187), .B(n153), .Y(n171) );
  NAND3X1 U207 ( .A(n173), .B(state[0]), .C(state[2]), .Y(n153) );
  NAND3X1 U208 ( .A(n193), .B(state[0]), .C(state[2]), .Y(n187) );
  NAND3X1 U209 ( .A(n173), .B(n194), .C(state[2]), .Y(n132) );
  NOR2X1 U210 ( .A(n139), .B(n33), .Y(n185) );
  INVX1 U211 ( .A(n195), .Y(n33) );
  NAND3X1 U212 ( .A(n193), .B(n194), .C(state[2]), .Y(n195) );
  INVX1 U213 ( .A(n136), .Y(n139) );
  NAND2X1 U214 ( .A(n173), .B(n151), .Y(n136) );
  NOR2X1 U215 ( .A(n189), .B(state[3]), .Y(n173) );
  NAND2X1 U216 ( .A(n133), .B(n189), .Y(n119) );
  AOI21X1 U217 ( .A(n151), .B(n193), .C(n124), .Y(n137) );
  INVX1 U218 ( .A(n196), .Y(n124) );
  NAND3X1 U219 ( .A(n151), .B(n189), .C(state[3]), .Y(n196) );
  INVX1 U220 ( .A(state[1]), .Y(n189) );
  NOR2X1 U221 ( .A(state[3]), .B(state[1]), .Y(n193) );
  NOR2X1 U222 ( .A(n194), .B(state[2]), .Y(n151) );
  INVX1 U223 ( .A(state[0]), .Y(n194) );
  NOR2X1 U224 ( .A(state[0]), .B(state[2]), .Y(n133) );
endmodule

