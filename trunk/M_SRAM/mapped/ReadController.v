
module ReadController ( num_writes, read_done, empty, read_ready );
  input num_writes, read_done;
  output empty, read_ready;
  wire   N0, n2;
  assign empty = N0;
  assign read_ready = N0;

  NOR2X1 U3 ( .A(read_done), .B(n2), .Y(N0) );
  INVX1 U4 ( .A(num_writes), .Y(n2) );
endmodule

