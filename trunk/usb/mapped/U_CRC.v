
module U_CRC ( D_CLK, RST_N, CRC_SHIFT, D_ORIG, CRC_EN, CRC_ERROR );
  input D_CLK, RST_N, CRC_SHIFT, D_ORIG, CRC_EN;
  output CRC_ERROR;
  wire   n16, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123;
  wire   [15:0] present_val;

  DFFSR \present_val_reg[0]  ( .D(n80), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[0]) );
  DFFSR \present_val_reg[1]  ( .D(n79), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[1]) );
  DFFSR \present_val_reg[2]  ( .D(n78), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[2]) );
  DFFSR \present_val_reg[3]  ( .D(n77), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[3]) );
  DFFSR \present_val_reg[4]  ( .D(n76), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[4]) );
  DFFSR \present_val_reg[5]  ( .D(n75), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[5]) );
  DFFSR \present_val_reg[6]  ( .D(n74), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[6]) );
  DFFSR \present_val_reg[7]  ( .D(n73), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[7]) );
  DFFSR \present_val_reg[8]  ( .D(n72), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[8]) );
  DFFSR \present_val_reg[9]  ( .D(n71), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[9]) );
  DFFSR \present_val_reg[10]  ( .D(n70), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[10]) );
  DFFSR \present_val_reg[11]  ( .D(n69), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[11]) );
  DFFSR \present_val_reg[12]  ( .D(n68), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[12]) );
  DFFSR \present_val_reg[13]  ( .D(n67), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[13]) );
  DFFSR \present_val_reg[14]  ( .D(n66), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[14]) );
  DFFSR \present_val_reg[15]  ( .D(n65), .CLK(D_CLK), .R(1'b1), .S(n16), .Q(
        present_val[15]) );
  INVX2 U84 ( .A(RST_N), .Y(n16) );
  NAND2X1 U85 ( .A(CRC_EN), .B(n81), .Y(n80) );
  INVX1 U86 ( .A(n82), .Y(n81) );
  OAI21X1 U87 ( .A(CRC_SHIFT), .B(n83), .C(n84), .Y(n82) );
  NAND2X1 U88 ( .A(n85), .B(CRC_EN), .Y(n79) );
  MUX2X1 U89 ( .B(present_val[1]), .A(present_val[0]), .S(CRC_SHIFT), .Y(n85)
         );
  OR2X1 U90 ( .A(n86), .B(n87), .Y(n78) );
  OAI21X1 U91 ( .A(present_val[1]), .B(n84), .C(CRC_EN), .Y(n87) );
  MUX2X1 U92 ( .B(n88), .A(n89), .S(CRC_SHIFT), .Y(n86) );
  NAND2X1 U93 ( .A(present_val[1]), .B(n90), .Y(n89) );
  INVX1 U94 ( .A(present_val[2]), .Y(n88) );
  NAND2X1 U95 ( .A(n91), .B(CRC_EN), .Y(n77) );
  MUX2X1 U96 ( .B(present_val[3]), .A(present_val[2]), .S(CRC_SHIFT), .Y(n91)
         );
  NAND2X1 U97 ( .A(n92), .B(CRC_EN), .Y(n76) );
  MUX2X1 U98 ( .B(present_val[4]), .A(present_val[3]), .S(CRC_SHIFT), .Y(n92)
         );
  NAND2X1 U99 ( .A(n93), .B(CRC_EN), .Y(n75) );
  MUX2X1 U100 ( .B(present_val[5]), .A(present_val[4]), .S(CRC_SHIFT), .Y(n93)
         );
  NAND2X1 U101 ( .A(n94), .B(CRC_EN), .Y(n74) );
  MUX2X1 U102 ( .B(present_val[6]), .A(present_val[5]), .S(CRC_SHIFT), .Y(n94)
         );
  NAND2X1 U103 ( .A(n95), .B(CRC_EN), .Y(n73) );
  MUX2X1 U104 ( .B(present_val[7]), .A(present_val[6]), .S(CRC_SHIFT), .Y(n95)
         );
  NAND2X1 U105 ( .A(n96), .B(CRC_EN), .Y(n72) );
  MUX2X1 U106 ( .B(present_val[8]), .A(present_val[7]), .S(CRC_SHIFT), .Y(n96)
         );
  NAND2X1 U107 ( .A(n97), .B(CRC_EN), .Y(n71) );
  MUX2X1 U108 ( .B(present_val[9]), .A(present_val[8]), .S(CRC_SHIFT), .Y(n97)
         );
  NAND2X1 U109 ( .A(n98), .B(CRC_EN), .Y(n70) );
  MUX2X1 U110 ( .B(present_val[10]), .A(present_val[9]), .S(CRC_SHIFT), .Y(n98) );
  NAND2X1 U111 ( .A(n99), .B(CRC_EN), .Y(n69) );
  MUX2X1 U112 ( .B(present_val[11]), .A(present_val[10]), .S(CRC_SHIFT), .Y(
        n99) );
  NAND2X1 U113 ( .A(n100), .B(CRC_EN), .Y(n68) );
  MUX2X1 U114 ( .B(present_val[12]), .A(present_val[11]), .S(CRC_SHIFT), .Y(
        n100) );
  NAND2X1 U115 ( .A(n101), .B(CRC_EN), .Y(n67) );
  MUX2X1 U116 ( .B(present_val[13]), .A(present_val[12]), .S(CRC_SHIFT), .Y(
        n101) );
  NAND2X1 U117 ( .A(n102), .B(CRC_EN), .Y(n66) );
  MUX2X1 U118 ( .B(present_val[14]), .A(present_val[13]), .S(CRC_SHIFT), .Y(
        n102) );
  OR2X1 U119 ( .A(n103), .B(n104), .Y(n65) );
  OAI21X1 U120 ( .A(present_val[14]), .B(n84), .C(CRC_EN), .Y(n104) );
  NAND2X1 U121 ( .A(CRC_SHIFT), .B(n105), .Y(n84) );
  MUX2X1 U122 ( .B(n106), .A(n107), .S(CRC_SHIFT), .Y(n103) );
  NAND2X1 U123 ( .A(present_val[14]), .B(n90), .Y(n107) );
  INVX1 U124 ( .A(n105), .Y(n90) );
  XOR2X1 U125 ( .A(present_val[15]), .B(D_ORIG), .Y(n105) );
  NAND2X1 U126 ( .A(n108), .B(n109), .Y(CRC_ERROR) );
  NOR2X1 U127 ( .A(n110), .B(n111), .Y(n109) );
  NAND3X1 U128 ( .A(n112), .B(n113), .C(n114), .Y(n111) );
  NOR2X1 U129 ( .A(present_val[1]), .B(present_val[14]), .Y(n114) );
  INVX1 U130 ( .A(present_val[5]), .Y(n113) );
  INVX1 U131 ( .A(present_val[4]), .Y(n112) );
  NAND3X1 U132 ( .A(n115), .B(n116), .C(n117), .Y(n110) );
  NOR2X1 U133 ( .A(present_val[9]), .B(present_val[8]), .Y(n117) );
  INVX1 U134 ( .A(present_val[7]), .Y(n116) );
  INVX1 U135 ( .A(present_val[6]), .Y(n115) );
  NOR2X1 U136 ( .A(n118), .B(n119), .Y(n108) );
  NAND3X1 U137 ( .A(present_val[3]), .B(present_val[2]), .C(n120), .Y(n119) );
  NOR2X1 U138 ( .A(n106), .B(n83), .Y(n120) );
  INVX1 U139 ( .A(present_val[0]), .Y(n83) );
  INVX1 U140 ( .A(present_val[15]), .Y(n106) );
  NAND3X1 U141 ( .A(n121), .B(n122), .C(n123), .Y(n118) );
  NOR2X1 U142 ( .A(present_val[13]), .B(present_val[12]), .Y(n123) );
  INVX1 U143 ( .A(present_val[11]), .Y(n122) );
  INVX1 U144 ( .A(present_val[10]), .Y(n121) );
endmodule

