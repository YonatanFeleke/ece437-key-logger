
module U_EOP_DETECT ( D_PLUS, D_MINUS, EOP );
  input D_PLUS, D_MINUS;
  output EOP;
  wire   N0;
  assign EOP = N0;

  NOR2X1 U2 ( .A(D_PLUS), .B(D_MINUS), .Y(N0) );
endmodule

