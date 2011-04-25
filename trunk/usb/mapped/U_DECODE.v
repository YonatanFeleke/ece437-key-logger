
module U_DECODE ( D_CLK, rst_n, d_plus, shift_enable, eop, d_orig );
  input D_CLK, rst_n, d_plus, shift_enable, eop;
  output d_orig;
  wire   prevbit, currentbit, N32, N34, N35, n2, n4, n13, n14, n15, n16, n17,
         n18, n19;
  wire   [1:0] state;
  wire   [1:0] nextstate;

  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(D_CLK), .R(1'b1), .S(n2), .Q(
        state[0]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(D_CLK), .R(n2), .S(1'b1), .Q(
        state[1]) );
  LATCH prevbit_reg ( .CLK(N34), .D(N35), .Q(prevbit) );
  LATCH currentbit_reg ( .CLK(n4), .D(d_plus), .Q(currentbit) );
  LATCH d_orig_reg ( .CLK(n4), .D(N32), .Q(d_orig) );
  NOR2X1 U20 ( .A(n13), .B(n14), .Y(nextstate[1]) );
  NAND2X1 U21 ( .A(shift_enable), .B(n15), .Y(n14) );
  NAND2X1 U22 ( .A(n16), .B(n4), .Y(n13) );
  NOR2X1 U23 ( .A(state[1]), .B(n15), .Y(nextstate[0]) );
  INVX1 U24 ( .A(eop), .Y(n15) );
  INVX1 U25 ( .A(rst_n), .Y(n2) );
  MUX2X1 U26 ( .B(state[1]), .A(n17), .S(n16), .Y(N35) );
  NAND2X1 U27 ( .A(d_plus), .B(state[1]), .Y(n17) );
  MUX2X1 U28 ( .B(state[1]), .A(n18), .S(n16), .Y(N34) );
  OR2X1 U29 ( .A(n4), .B(shift_enable), .Y(n18) );
  INVX1 U30 ( .A(state[1]), .Y(n4) );
  AOI21X1 U31 ( .A(n19), .B(n16), .C(state[1]), .Y(N32) );
  INVX1 U32 ( .A(state[0]), .Y(n16) );
  XOR2X1 U33 ( .A(prevbit), .B(currentbit), .Y(n19) );
endmodule

