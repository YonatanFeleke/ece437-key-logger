
module USB_SHIFT ( D_CLK, RST, EOP, SHIFT_ENABLE, D_ORIG, RCV_DATA, CRC_SHIFT, 
        STUFF_ERROR );
  output [7:0] RCV_DATA;
  input D_CLK, RST, EOP, SHIFT_ENABLE, D_ORIG;
  output CRC_SHIFT, STUFF_ERROR;
  wire   N43, N44, N45, N52, n42, n43, n44, n45, n46, n47, n48, n49, n51, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89;
  wire   [1:0] state;
  wire   [2:0] ctr;
  wire   [1:0] nextstate;

  LATCH \nextstate_reg[0]  ( .CLK(N43), .D(N44), .Q(nextstate[0]) );
  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(D_CLK), .R(1'b1), .S(n51), .Q(
        state[0]) );
  LATCH \nextstate_reg[1]  ( .CLK(N43), .D(N45), .Q(nextstate[1]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(D_CLK), .R(1'b1), .S(n51), .Q(
        state[1]) );
  DFFPOSX1 \current_reg[7]  ( .D(n49), .CLK(D_CLK), .Q(RCV_DATA[7]) );
  DFFPOSX1 \current_reg[6]  ( .D(n48), .CLK(D_CLK), .Q(RCV_DATA[6]) );
  DFFPOSX1 \current_reg[5]  ( .D(n47), .CLK(D_CLK), .Q(RCV_DATA[5]) );
  DFFPOSX1 \current_reg[4]  ( .D(n46), .CLK(D_CLK), .Q(RCV_DATA[4]) );
  DFFPOSX1 \current_reg[3]  ( .D(n45), .CLK(D_CLK), .Q(RCV_DATA[3]) );
  DFFPOSX1 \current_reg[2]  ( .D(n44), .CLK(D_CLK), .Q(RCV_DATA[2]) );
  DFFPOSX1 \current_reg[1]  ( .D(n43), .CLK(D_CLK), .Q(RCV_DATA[1]) );
  DFFPOSX1 \current_reg[0]  ( .D(n42), .CLK(D_CLK), .Q(RCV_DATA[0]) );
  DFFSR \ctr_reg[0]  ( .D(n56), .CLK(D_CLK), .R(n51), .S(1'b1), .Q(ctr[0]) );
  DFFSR \ctr_reg[1]  ( .D(n55), .CLK(D_CLK), .R(n51), .S(1'b1), .Q(ctr[1]) );
  DFFSR \ctr_reg[2]  ( .D(n54), .CLK(D_CLK), .R(n51), .S(1'b1), .Q(ctr[2]) );
  LATCH STUFF_ERROR_reg ( .CLK(N52), .D(n53), .Q(STUFF_ERROR) );
  MUX2X1 U64 ( .B(n57), .A(n58), .S(ctr[0]), .Y(n56) );
  NAND2X1 U65 ( .A(n59), .B(n58), .Y(n57) );
  MUX2X1 U66 ( .B(n60), .A(n61), .S(ctr[1]), .Y(n55) );
  NAND3X1 U67 ( .A(ctr[0]), .B(n58), .C(n59), .Y(n60) );
  INVX1 U68 ( .A(n62), .Y(n59) );
  MUX2X1 U69 ( .B(n63), .A(n64), .S(ctr[2]), .Y(n54) );
  INVX1 U70 ( .A(n65), .Y(n64) );
  OAI21X1 U71 ( .A(n62), .B(ctr[1]), .C(n61), .Y(n65) );
  INVX1 U72 ( .A(n66), .Y(n61) );
  OAI21X1 U73 ( .A(ctr[0]), .B(n62), .C(n58), .Y(n66) );
  NAND2X1 U74 ( .A(n67), .B(n68), .Y(n58) );
  NAND3X1 U75 ( .A(SHIFT_ENABLE), .B(ctr[1]), .C(n69), .Y(n63) );
  NOR2X1 U76 ( .A(n70), .B(n62), .Y(n69) );
  NAND2X1 U77 ( .A(D_ORIG), .B(n67), .Y(n62) );
  INVX1 U78 ( .A(n71), .Y(n53) );
  MUX2X1 U79 ( .B(n72), .A(n73), .S(n74), .Y(n49) );
  MUX2X1 U80 ( .B(n73), .A(n75), .S(n74), .Y(n48) );
  INVX1 U81 ( .A(RCV_DATA[7]), .Y(n73) );
  MUX2X1 U82 ( .B(n75), .A(n76), .S(n74), .Y(n47) );
  INVX1 U83 ( .A(RCV_DATA[6]), .Y(n75) );
  MUX2X1 U84 ( .B(n76), .A(n77), .S(n74), .Y(n46) );
  INVX1 U85 ( .A(RCV_DATA[4]), .Y(n77) );
  INVX1 U86 ( .A(RCV_DATA[5]), .Y(n76) );
  INVX1 U87 ( .A(n78), .Y(n45) );
  MUX2X1 U88 ( .B(RCV_DATA[4]), .A(RCV_DATA[3]), .S(n74), .Y(n78) );
  INVX1 U89 ( .A(n79), .Y(n44) );
  MUX2X1 U90 ( .B(RCV_DATA[3]), .A(RCV_DATA[2]), .S(n74), .Y(n79) );
  INVX1 U91 ( .A(n80), .Y(n43) );
  MUX2X1 U92 ( .B(RCV_DATA[2]), .A(RCV_DATA[1]), .S(n74), .Y(n80) );
  INVX1 U93 ( .A(n81), .Y(n42) );
  MUX2X1 U94 ( .B(RCV_DATA[1]), .A(RCV_DATA[0]), .S(n74), .Y(n81) );
  NAND3X1 U95 ( .A(n67), .B(n51), .C(SHIFT_ENABLE), .Y(n74) );
  INVX1 U96 ( .A(RST), .Y(n51) );
  OAI21X1 U97 ( .A(EOP), .B(n71), .C(n82), .Y(N45) );
  AOI21X1 U98 ( .A(n83), .B(state[0]), .C(n84), .Y(n82) );
  INVX1 U99 ( .A(N43), .Y(n84) );
  NOR2X1 U100 ( .A(state[1]), .B(n72), .Y(n83) );
  INVX1 U101 ( .A(D_ORIG), .Y(n72) );
  NAND2X1 U102 ( .A(state[1]), .B(n85), .Y(n71) );
  NOR2X1 U103 ( .A(n86), .B(n87), .Y(N44) );
  NAND2X1 U104 ( .A(ctr[2]), .B(ctr[1]), .Y(n87) );
  NAND2X1 U105 ( .A(n67), .B(n70), .Y(n86) );
  INVX1 U106 ( .A(ctr[0]), .Y(n70) );
  INVX1 U107 ( .A(N52), .Y(n67) );
  NAND3X1 U108 ( .A(n68), .B(n88), .C(state[0]), .Y(N43) );
  INVX1 U109 ( .A(SHIFT_ENABLE), .Y(n68) );
  AND2X1 U110 ( .A(SHIFT_ENABLE), .B(n89), .Y(CRC_SHIFT) );
  OAI21X1 U111 ( .A(n88), .B(n85), .C(N52), .Y(n89) );
  NAND2X1 U112 ( .A(n88), .B(n85), .Y(N52) );
  INVX1 U113 ( .A(state[0]), .Y(n85) );
  INVX1 U114 ( .A(state[1]), .Y(n88) );
endmodule

