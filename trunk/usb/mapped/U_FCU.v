
module U_FCU ( D_CLK, RST, EOP, CRC_ERROR, R_ERROR, W_ENABLE1, R_ENABLE0, 
        EMPTY0, FULL0, FULL1, EMPTY1 );
  input D_CLK, RST, EOP, CRC_ERROR, R_ERROR, EMPTY0, FULL0, FULL1, EMPTY1;
  output W_ENABLE1, R_ENABLE0;
  wire   n3, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;
  wire   [2:0] state;
  wire   [2:0] nextstate;

  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(D_CLK), .R(1'b1), .S(n3), .Q(
        state[0]) );
  DFFSR \state_reg[2]  ( .D(nextstate[2]), .CLK(D_CLK), .R(n3), .S(1'b1), .Q(
        state[2]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(D_CLK), .R(1'b1), .S(n3), .Q(
        state[1]) );
  OAI21X1 U38 ( .A(n32), .B(n33), .C(n34), .Y(nextstate[2]) );
  NAND2X1 U39 ( .A(FULL1), .B(n35), .Y(n34) );
  OAI21X1 U40 ( .A(state[0]), .B(n36), .C(n37), .Y(n35) );
  AOI21X1 U41 ( .A(EOP), .B(n38), .C(n39), .Y(n32) );
  INVX1 U42 ( .A(n40), .Y(n39) );
  OAI21X1 U43 ( .A(CRC_ERROR), .B(n41), .C(n36), .Y(n38) );
  NAND2X1 U44 ( .A(n42), .B(n43), .Y(nextstate[1]) );
  MUX2X1 U45 ( .B(n44), .A(n45), .S(n33), .Y(n42) );
  OAI21X1 U46 ( .A(FULL1), .B(n36), .C(n40), .Y(n45) );
  OAI22X1 U47 ( .A(EMPTY0), .B(n46), .C(EOP), .D(n36), .Y(n44) );
  INVX1 U48 ( .A(R_ENABLE0), .Y(n46) );
  NAND3X1 U49 ( .A(n40), .B(n43), .C(n47), .Y(nextstate[0]) );
  INVX1 U50 ( .A(n48), .Y(n47) );
  OAI22X1 U51 ( .A(n33), .B(n36), .C(n37), .D(FULL1), .Y(n48) );
  NAND2X1 U52 ( .A(state[2]), .B(n49), .Y(n36) );
  NAND3X1 U53 ( .A(n50), .B(n51), .C(state[0]), .Y(n43) );
  INVX1 U54 ( .A(EOP), .Y(n51) );
  INVX1 U55 ( .A(n41), .Y(n50) );
  NAND2X1 U56 ( .A(n52), .B(n53), .Y(n41) );
  NOR2X1 U57 ( .A(state[2]), .B(R_ERROR), .Y(n53) );
  NOR2X1 U58 ( .A(FULL0), .B(n49), .Y(n52) );
  INVX1 U59 ( .A(state[1]), .Y(n49) );
  NAND2X1 U60 ( .A(EMPTY0), .B(R_ENABLE0), .Y(n40) );
  INVX1 U61 ( .A(RST), .Y(n3) );
  INVX1 U62 ( .A(n37), .Y(W_ENABLE1) );
  NAND3X1 U63 ( .A(n33), .B(n54), .C(state[1]), .Y(n37) );
  INVX1 U64 ( .A(state[2]), .Y(n54) );
  INVX1 U65 ( .A(state[0]), .Y(n33) );
  NOR2X1 U66 ( .A(state[1]), .B(state[2]), .Y(R_ENABLE0) );
endmodule

