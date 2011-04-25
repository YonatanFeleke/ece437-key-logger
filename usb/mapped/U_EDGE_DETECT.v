
module U_EDGE_DETECT ( D_CLK, rst_n, d_plus, d_edge );
  input D_CLK, rst_n, d_plus;
  output d_edge;
  wire   current, previous, N0, n3;

  DFFSR current_reg ( .D(d_plus), .CLK(D_CLK), .R(1'b1), .S(n3), .Q(current)
         );
  DFFSR previous_reg ( .D(current), .CLK(D_CLK), .R(1'b1), .S(n3), .Q(previous) );
  DFFSR d_edge_reg ( .D(N0), .CLK(D_CLK), .R(n3), .S(1'b1), .Q(d_edge) );
  INVX1 U8 ( .A(rst_n), .Y(n3) );
  XOR2X1 U9 ( .A(previous), .B(current), .Y(N0) );
endmodule

