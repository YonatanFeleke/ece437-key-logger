
module U_BUFFER ( D_CLK, RST, W_ENABLE, EOP, W_ENABLE_OUT, RCV_DATA, W_DATA );
  input [7:0] RCV_DATA;
  output [7:0] W_DATA;
  input D_CLK, RST, W_ENABLE, EOP;
  output W_ENABLE_OUT;
  wire   n44, n48, n50, n52, n54, n56, n58, n60, n62, n64, n66, n68, n70, n72,
         n74, n76, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121;
  wire   [7:0] Byte0;
  wire   [7:0] Byte1;
  wire   [1:0] ctr;

  DFFSR \Byte0_reg[7]  ( .D(n78), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte0[7])
         );
  DFFSR \Byte0_reg[6]  ( .D(n76), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte0[6])
         );
  DFFSR \Byte0_reg[5]  ( .D(n74), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte0[5])
         );
  DFFSR \Byte0_reg[4]  ( .D(n72), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte0[4])
         );
  DFFSR \Byte0_reg[3]  ( .D(n70), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte0[3])
         );
  DFFSR \Byte0_reg[2]  ( .D(n68), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte0[2])
         );
  DFFSR \Byte0_reg[1]  ( .D(n66), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte0[1])
         );
  DFFSR \Byte0_reg[0]  ( .D(n64), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte0[0])
         );
  DFFSR \Byte1_reg[7]  ( .D(n62), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte1[7])
         );
  DFFSR \Byte1_reg[6]  ( .D(n60), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte1[6])
         );
  DFFSR \Byte1_reg[5]  ( .D(n58), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte1[5])
         );
  DFFSR \Byte1_reg[4]  ( .D(n56), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte1[4])
         );
  DFFSR \Byte1_reg[3]  ( .D(n54), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte1[3])
         );
  DFFSR \Byte1_reg[2]  ( .D(n52), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte1[2])
         );
  DFFSR \Byte1_reg[1]  ( .D(n50), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte1[1])
         );
  DFFSR \Byte1_reg[0]  ( .D(n48), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(Byte1[0])
         );
  DFFSR \ctr_reg[0]  ( .D(n89), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(ctr[0]) );
  DFFSR \ctr_reg[1]  ( .D(n88), .CLK(D_CLK), .R(n87), .S(1'b1), .Q(ctr[1]) );
  DFFPOSX1 W_ENABLE_OUT_reg ( .D(n44), .CLK(D_CLK), .Q(W_ENABLE_OUT) );
  DFFPOSX1 \W_DATA_reg[7]  ( .D(n79), .CLK(D_CLK), .Q(W_DATA[7]) );
  DFFPOSX1 \W_DATA_reg[6]  ( .D(n80), .CLK(D_CLK), .Q(W_DATA[6]) );
  DFFPOSX1 \W_DATA_reg[5]  ( .D(n81), .CLK(D_CLK), .Q(W_DATA[5]) );
  DFFPOSX1 \W_DATA_reg[4]  ( .D(n82), .CLK(D_CLK), .Q(W_DATA[4]) );
  DFFPOSX1 \W_DATA_reg[3]  ( .D(n83), .CLK(D_CLK), .Q(W_DATA[3]) );
  DFFPOSX1 \W_DATA_reg[2]  ( .D(n84), .CLK(D_CLK), .Q(W_DATA[2]) );
  DFFPOSX1 \W_DATA_reg[1]  ( .D(n85), .CLK(D_CLK), .Q(W_DATA[1]) );
  DFFPOSX1 \W_DATA_reg[0]  ( .D(n86), .CLK(D_CLK), .Q(W_DATA[0]) );
  INVX2 U90 ( .A(W_ENABLE), .Y(n95) );
  INVX2 U91 ( .A(RST), .Y(n87) );
  MUX2X1 U92 ( .B(n90), .A(n91), .S(ctr[0]), .Y(n89) );
  NAND2X1 U93 ( .A(n91), .B(n92), .Y(n90) );
  MUX2X1 U94 ( .B(n93), .A(n94), .S(n91), .Y(n88) );
  OAI21X1 U95 ( .A(ctr[1]), .B(n95), .C(n92), .Y(n91) );
  NAND2X1 U96 ( .A(ctr[0]), .B(n92), .Y(n94) );
  INVX1 U97 ( .A(EOP), .Y(n92) );
  INVX1 U98 ( .A(ctr[1]), .Y(n93) );
  INVX1 U99 ( .A(n96), .Y(n86) );
  MUX2X1 U100 ( .B(Byte1[0]), .A(W_DATA[0]), .S(n97), .Y(n96) );
  INVX1 U101 ( .A(n98), .Y(n85) );
  MUX2X1 U102 ( .B(Byte1[1]), .A(W_DATA[1]), .S(n97), .Y(n98) );
  INVX1 U103 ( .A(n99), .Y(n84) );
  MUX2X1 U104 ( .B(Byte1[2]), .A(W_DATA[2]), .S(n97), .Y(n99) );
  INVX1 U105 ( .A(n100), .Y(n83) );
  MUX2X1 U106 ( .B(Byte1[3]), .A(W_DATA[3]), .S(n97), .Y(n100) );
  INVX1 U107 ( .A(n101), .Y(n82) );
  MUX2X1 U108 ( .B(Byte1[4]), .A(W_DATA[4]), .S(n97), .Y(n101) );
  INVX1 U109 ( .A(n102), .Y(n81) );
  MUX2X1 U110 ( .B(Byte1[5]), .A(W_DATA[5]), .S(n97), .Y(n102) );
  INVX1 U111 ( .A(n103), .Y(n80) );
  MUX2X1 U112 ( .B(Byte1[6]), .A(W_DATA[6]), .S(n97), .Y(n103) );
  INVX1 U113 ( .A(n104), .Y(n79) );
  MUX2X1 U114 ( .B(Byte1[7]), .A(W_DATA[7]), .S(n97), .Y(n104) );
  INVX1 U115 ( .A(n105), .Y(n78) );
  MUX2X1 U116 ( .B(RCV_DATA[7]), .A(Byte0[7]), .S(n95), .Y(n105) );
  INVX1 U117 ( .A(n106), .Y(n76) );
  MUX2X1 U118 ( .B(RCV_DATA[6]), .A(Byte0[6]), .S(n95), .Y(n106) );
  INVX1 U119 ( .A(n107), .Y(n74) );
  MUX2X1 U120 ( .B(RCV_DATA[5]), .A(Byte0[5]), .S(n95), .Y(n107) );
  INVX1 U121 ( .A(n108), .Y(n72) );
  MUX2X1 U122 ( .B(RCV_DATA[4]), .A(Byte0[4]), .S(n95), .Y(n108) );
  INVX1 U123 ( .A(n109), .Y(n70) );
  MUX2X1 U124 ( .B(RCV_DATA[3]), .A(Byte0[3]), .S(n95), .Y(n109) );
  INVX1 U125 ( .A(n110), .Y(n68) );
  MUX2X1 U126 ( .B(RCV_DATA[2]), .A(Byte0[2]), .S(n95), .Y(n110) );
  INVX1 U127 ( .A(n111), .Y(n66) );
  MUX2X1 U128 ( .B(RCV_DATA[1]), .A(Byte0[1]), .S(n95), .Y(n111) );
  INVX1 U129 ( .A(n112), .Y(n64) );
  MUX2X1 U130 ( .B(RCV_DATA[0]), .A(Byte0[0]), .S(n95), .Y(n112) );
  INVX1 U131 ( .A(n113), .Y(n62) );
  MUX2X1 U132 ( .B(Byte0[7]), .A(Byte1[7]), .S(n95), .Y(n113) );
  INVX1 U133 ( .A(n114), .Y(n60) );
  MUX2X1 U134 ( .B(Byte0[6]), .A(Byte1[6]), .S(n95), .Y(n114) );
  INVX1 U135 ( .A(n115), .Y(n58) );
  MUX2X1 U136 ( .B(Byte0[5]), .A(Byte1[5]), .S(n95), .Y(n115) );
  INVX1 U137 ( .A(n116), .Y(n56) );
  MUX2X1 U138 ( .B(Byte0[4]), .A(Byte1[4]), .S(n95), .Y(n116) );
  INVX1 U139 ( .A(n117), .Y(n54) );
  MUX2X1 U140 ( .B(Byte0[3]), .A(Byte1[3]), .S(n95), .Y(n117) );
  INVX1 U141 ( .A(n118), .Y(n52) );
  MUX2X1 U142 ( .B(Byte0[2]), .A(Byte1[2]), .S(n95), .Y(n118) );
  INVX1 U143 ( .A(n119), .Y(n50) );
  MUX2X1 U144 ( .B(Byte0[1]), .A(Byte1[1]), .S(n95), .Y(n119) );
  INVX1 U145 ( .A(n120), .Y(n48) );
  MUX2X1 U146 ( .B(Byte0[0]), .A(Byte1[0]), .S(n95), .Y(n120) );
  OAI21X1 U147 ( .A(ctr[0]), .B(n97), .C(n121), .Y(n44) );
  NAND2X1 U148 ( .A(W_ENABLE_OUT), .B(RST), .Y(n121) );
  NAND3X1 U149 ( .A(W_ENABLE), .B(n87), .C(ctr[1]), .Y(n97) );
endmodule

