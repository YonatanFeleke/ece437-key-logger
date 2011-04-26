
module U_FCU ( D_CLK, RST, EOP, CRC_ERROR, R_ERROR, W_ENABLE1, R_ENABLE0, 
        EMPTY0, FULL0, FULL1 );
  input D_CLK, RST, EOP, CRC_ERROR, R_ERROR, EMPTY0, FULL0, FULL1;
  output W_ENABLE1, R_ENABLE0;
  wire   n14, n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65;
  wire   [2:0] state;
  wire   [2:0] nextstate;
  wire   [1:0] ctr;

  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(D_CLK), .R(1'b1), .S(n14), .Q(
        state[0]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(D_CLK), .R(1'b1), .S(n14), .Q(
        state[1]) );
  DFFSR \state_reg[2]  ( .D(nextstate[2]), .CLK(D_CLK), .R(n14), .S(1'b1), .Q(
        state[2]) );
  DFFPOSX1 \ctr_reg[1]  ( .D(n36), .CLK(D_CLK), .Q(ctr[1]) );
  DFFPOSX1 \ctr_reg[0]  ( .D(n35), .CLK(D_CLK), .Q(ctr[0]) );
  NAND2X1 U42 ( .A(n38), .B(n39), .Y(nextstate[2]) );
  AOI22X1 U43 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n39) );
  NOR2X1 U44 ( .A(CRC_ERROR), .B(n44), .Y(n41) );
  NAND2X1 U45 ( .A(n45), .B(n46), .Y(n44) );
  NOR2X1 U46 ( .A(n47), .B(n48), .Y(n40) );
  AOI22X1 U47 ( .A(EMPTY0), .B(R_ENABLE0), .C(W_ENABLE1), .D(FULL1), .Y(n38)
         );
  OAI21X1 U48 ( .A(n49), .B(n43), .C(n50), .Y(nextstate[1]) );
  AOI21X1 U49 ( .A(n51), .B(R_ENABLE0), .C(n52), .Y(n50) );
  NOR2X1 U50 ( .A(EMPTY0), .B(n53), .Y(n51) );
  INVX1 U51 ( .A(n54), .Y(n43) );
  MUX2X1 U52 ( .B(FULL1), .A(EOP), .S(state[0]), .Y(n54) );
  INVX1 U53 ( .A(n42), .Y(n49) );
  NAND2X1 U54 ( .A(n55), .B(n56), .Y(nextstate[0]) );
  AOI22X1 U55 ( .A(n57), .B(W_ENABLE1), .C(R_ENABLE0), .D(EMPTY0), .Y(n56) );
  INVX1 U56 ( .A(FULL1), .Y(n57) );
  AOI21X1 U57 ( .A(state[0]), .B(n42), .C(n52), .Y(n55) );
  INVX1 U58 ( .A(n58), .Y(n52) );
  NAND3X1 U59 ( .A(n59), .B(n45), .C(n60), .Y(n58) );
  MUX2X1 U60 ( .B(FULL0), .A(n61), .S(EOP), .Y(n60) );
  NOR2X1 U61 ( .A(ctr[1]), .B(n48), .Y(n61) );
  INVX1 U62 ( .A(R_ERROR), .Y(n45) );
  NOR2X1 U63 ( .A(n62), .B(state[1]), .Y(n42) );
  AND2X1 U64 ( .A(n63), .B(ctr[1]), .Y(n36) );
  MUX2X1 U65 ( .B(n47), .A(n48), .S(n63), .Y(n35) );
  OAI21X1 U66 ( .A(n47), .B(n46), .C(n14), .Y(n63) );
  INVX1 U67 ( .A(ctr[1]), .Y(n46) );
  INVX1 U68 ( .A(ctr[0]), .Y(n48) );
  NAND2X1 U69 ( .A(EOP), .B(n59), .Y(n47) );
  INVX1 U70 ( .A(n64), .Y(n59) );
  NAND3X1 U71 ( .A(state[0]), .B(n62), .C(state[1]), .Y(n64) );
  INVX1 U72 ( .A(RST), .Y(n14) );
  INVX1 U73 ( .A(n65), .Y(W_ENABLE1) );
  NAND3X1 U74 ( .A(n53), .B(n62), .C(state[1]), .Y(n65) );
  INVX1 U75 ( .A(state[2]), .Y(n62) );
  INVX1 U76 ( .A(state[0]), .Y(n53) );
  NOR2X1 U77 ( .A(state[1]), .B(state[2]), .Y(R_ENABLE0) );
endmodule

