
module U_CLKDIV ( CLK, RST, D_CLK );
  input CLK, RST;
  output D_CLK;
  wire   N8, N9, N13, N14, N15, n7, n8, n9, n10;
  wire   [1:0] ctr1;
  wire   [1:0] ctr0;
  assign D_CLK = N15;

  DFFSR \ctr1_reg[0]  ( .D(N8), .CLK(CLK), .R(n10), .S(1'b1), .Q(ctr1[0]) );
  DFFSR \ctr1_reg[1]  ( .D(N9), .CLK(CLK), .R(n10), .S(1'b1), .Q(ctr1[1]) );
  \**SEQGEN**  \ctr0_reg[1]  ( .clear(RST), .preset(1'b0), .next_state(N14), 
        .clocked_on(n9), .data_in(1'b0), .enable(1'b0), .Q(ctr0[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ctr0_reg[0]  ( .clear(RST), .preset(1'b0), .next_state(N13), 
        .clocked_on(n9), .data_in(1'b0), .enable(1'b0), .Q(ctr0[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  INVX1 U14 ( .A(CLK), .Y(n9) );
  INVX1 U15 ( .A(RST), .Y(n10) );
  NOR2X1 U16 ( .A(ctr1[1]), .B(n7), .Y(N9) );
  NOR2X1 U17 ( .A(ctr1[1]), .B(ctr1[0]), .Y(N8) );
  AOI22X1 U18 ( .A(ctr0[1]), .B(n8), .C(ctr1[1]), .D(n7), .Y(N15) );
  INVX1 U19 ( .A(ctr1[0]), .Y(n7) );
  NOR2X1 U20 ( .A(ctr0[1]), .B(n8), .Y(N14) );
  INVX1 U21 ( .A(ctr0[0]), .Y(n8) );
  NOR2X1 U22 ( .A(ctr0[1]), .B(ctr0[0]), .Y(N13) );
endmodule

