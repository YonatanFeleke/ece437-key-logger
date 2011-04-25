
module U_TIMER ( D_CLK, RST_N, D_EDGE, RCVING, SHIFT_ENABLE );
  input D_CLK, RST_N, D_EDGE, RCVING;
  output SHIFT_ENABLE;
  wire   n11, n35, n62, n63, n64, n65, n66, n67, n68, n69, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111;
  wire   [2:0] state;
  wire   [2:0] nextstate;
  wire   [3:0] ctr2;
  wire   [3:0] ctr8;

  DFFSR \state_reg[2]  ( .D(nextstate[2]), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(
        state[2]) );
  DFFSR \ctr8_reg[0]  ( .D(n69), .CLK(D_CLK), .R(n71), .S(1'b1), .Q(ctr8[0])
         );
  DFFSR \ctr8_reg[3]  ( .D(n68), .CLK(D_CLK), .R(n71), .S(1'b1), .Q(ctr8[3])
         );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(
        state[1]) );
  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(
        state[0]) );
  DFFSR \ctr2_reg[0]  ( .D(n66), .CLK(D_CLK), .R(n71), .S(1'b1), .Q(ctr2[0])
         );
  DFFSR \ctr8_reg[1]  ( .D(n63), .CLK(D_CLK), .R(n71), .S(1'b1), .Q(ctr8[1])
         );
  DFFSR \ctr8_reg[2]  ( .D(n62), .CLK(D_CLK), .R(n71), .S(1'b1), .Q(ctr8[2])
         );
  DFFSR \ctr2_reg[1]  ( .D(n65), .CLK(D_CLK), .R(1'b1), .S(n71), .Q(ctr2[1])
         );
  DFFSR \ctr2_reg[2]  ( .D(n64), .CLK(D_CLK), .R(n71), .S(1'b1), .Q(ctr2[2])
         );
  DFFSR \ctr2_reg[3]  ( .D(n67), .CLK(D_CLK), .R(n71), .S(1'b1), .Q(ctr2[3])
         );
  BUFX2 U76 ( .A(n35), .Y(n71) );
  NOR2X1 U77 ( .A(n72), .B(n73), .Y(nextstate[2]) );
  OAI21X1 U78 ( .A(n74), .B(n75), .C(n71), .Y(nextstate[1]) );
  MUX2X1 U79 ( .B(n76), .A(n77), .S(state[0]), .Y(n75) );
  OR2X1 U80 ( .A(n78), .B(ctr8[0]), .Y(n77) );
  NOR2X1 U81 ( .A(n74), .B(n79), .Y(nextstate[0]) );
  INVX1 U82 ( .A(n80), .Y(n79) );
  OAI21X1 U83 ( .A(n76), .B(n81), .C(n82), .Y(n80) );
  NAND3X1 U84 ( .A(ctr2[1]), .B(n83), .C(n84), .Y(n76) );
  NOR2X1 U85 ( .A(ctr2[3]), .B(ctr2[2]), .Y(n84) );
  NAND3X1 U86 ( .A(n72), .B(n85), .C(RCVING), .Y(n74) );
  MUX2X1 U87 ( .B(ctr8[0]), .A(n86), .S(n87), .Y(n69) );
  NAND2X1 U88 ( .A(ctr8[0]), .B(n71), .Y(n86) );
  OAI21X1 U89 ( .A(n78), .B(n88), .C(n89), .Y(n68) );
  OAI21X1 U90 ( .A(n90), .B(n91), .C(ctr8[3]), .Y(n89) );
  NOR2X1 U91 ( .A(ctr8[2]), .B(n87), .Y(n90) );
  NAND3X1 U92 ( .A(ctr8[1]), .B(n92), .C(ctr8[2]), .Y(n78) );
  INVX1 U93 ( .A(ctr8[3]), .Y(n92) );
  MUX2X1 U94 ( .B(n93), .A(n94), .S(ctr2[3]), .Y(n67) );
  INVX1 U95 ( .A(n95), .Y(n94) );
  OAI21X1 U96 ( .A(n96), .B(ctr2[2]), .C(n97), .Y(n95) );
  NAND2X1 U97 ( .A(ctr2[2]), .B(n98), .Y(n93) );
  INVX1 U98 ( .A(n99), .Y(n98) );
  MUX2X1 U99 ( .B(n100), .A(ctr2[0]), .S(n101), .Y(n66) );
  NAND2X1 U100 ( .A(ctr2[0]), .B(n71), .Y(n100) );
  NAND2X1 U101 ( .A(n102), .B(n71), .Y(n65) );
  XNOR2X1 U102 ( .A(ctr2[1]), .B(n103), .Y(n102) );
  NOR2X1 U103 ( .A(n96), .B(n83), .Y(n103) );
  INVX1 U104 ( .A(ctr2[0]), .Y(n83) );
  MUX2X1 U105 ( .B(n99), .A(n97), .S(ctr2[2]), .Y(n64) );
  MUX2X1 U106 ( .B(n71), .A(n104), .S(n101), .Y(n97) );
  NAND2X1 U107 ( .A(ctr2[0]), .B(ctr2[1]), .Y(n104) );
  NAND3X1 U108 ( .A(n101), .B(ctr2[1]), .C(ctr2[0]), .Y(n99) );
  INVX1 U109 ( .A(n96), .Y(n101) );
  MUX2X1 U110 ( .B(n88), .A(n105), .S(ctr8[1]), .Y(n63) );
  INVX1 U111 ( .A(n106), .Y(n88) );
  MUX2X1 U112 ( .B(n107), .A(n108), .S(ctr8[2]), .Y(n62) );
  INVX1 U113 ( .A(n91), .Y(n108) );
  OAI21X1 U114 ( .A(ctr8[1]), .B(n87), .C(n105), .Y(n91) );
  MUX2X1 U115 ( .B(n109), .A(n71), .S(n87), .Y(n105) );
  NAND2X1 U116 ( .A(n106), .B(ctr8[1]), .Y(n107) );
  NOR2X1 U117 ( .A(n109), .B(n87), .Y(n106) );
  NAND3X1 U118 ( .A(n96), .B(n85), .C(state[1]), .Y(n87) );
  NAND3X1 U119 ( .A(n82), .B(n85), .C(state[1]), .Y(n96) );
  INVX1 U120 ( .A(ctr8[0]), .Y(n109) );
  NAND3X1 U121 ( .A(n72), .B(n81), .C(n110), .Y(n35) );
  AOI21X1 U122 ( .A(state[2]), .B(state[0]), .C(n73), .Y(n110) );
  INVX1 U123 ( .A(RCVING), .Y(n73) );
  INVX1 U124 ( .A(D_EDGE), .Y(n72) );
  INVX1 U125 ( .A(RST_N), .Y(n11) );
  NOR2X1 U126 ( .A(n82), .B(n111), .Y(SHIFT_ENABLE) );
  NAND2X1 U127 ( .A(n81), .B(n85), .Y(n111) );
  INVX1 U128 ( .A(state[2]), .Y(n85) );
  INVX1 U129 ( .A(state[1]), .Y(n81) );
  INVX1 U130 ( .A(state[0]), .Y(n82) );
endmodule

