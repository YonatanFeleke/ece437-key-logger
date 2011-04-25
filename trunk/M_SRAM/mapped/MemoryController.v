
module MemoryController ( clk, rst, full, read_enable_in, r_enable, w_enable, 
        r_enable_out, num_writes );
  input clk, rst, full, read_enable_in;
  output r_enable, w_enable, r_enable_out, num_writes;
  wire   n51, n52, n53, n54, n55, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, w_enable;
  wire   [2:0] state;
  wire   [2:0] counter;
  wire   [4:0] counter32;
  wire   [2:0] nextState;
  wire   [2:0] newcounter;
  assign r_enable_out = w_enable;

  DFFSR \counter_reg[0]  ( .D(newcounter[0]), .CLK(clk), .R(n91), .S(1'b1), 
        .Q(counter[0]) );
  DFFSR \counter_reg[2]  ( .D(newcounter[2]), .CLK(clk), .R(n91), .S(1'b1), 
        .Q(counter[2]) );
  DFFSR \state_reg[1]  ( .D(nextState[1]), .CLK(clk), .R(n91), .S(1'b1), .Q(
        state[1]) );
  DFFSR \state_reg[0]  ( .D(nextState[0]), .CLK(clk), .R(n91), .S(1'b1), .Q(
        state[0]) );
  DFFSR \state_reg[2]  ( .D(nextState[2]), .CLK(clk), .R(n91), .S(1'b1), .Q(
        state[2]) );
  DFFSR \counter32_reg[0]  ( .D(n55), .CLK(clk), .R(n91), .S(1'b1), .Q(
        counter32[0]) );
  DFFSR \counter32_reg[4]  ( .D(n51), .CLK(clk), .R(n91), .S(1'b1), .Q(
        counter32[4]) );
  DFFSR \counter32_reg[1]  ( .D(n54), .CLK(clk), .R(n91), .S(1'b1), .Q(
        counter32[1]) );
  DFFSR \counter32_reg[2]  ( .D(n53), .CLK(clk), .R(n91), .S(1'b1), .Q(
        counter32[2]) );
  DFFSR \counter32_reg[3]  ( .D(n52), .CLK(clk), .R(n91), .S(1'b1), .Q(
        counter32[3]) );
  DFFSR \counter_reg[1]  ( .D(newcounter[1]), .CLK(clk), .R(n91), .S(1'b1), 
        .Q(counter[1]) );
  INVX2 U66 ( .A(rst), .Y(n91) );
  NOR2X1 U67 ( .A(state[0]), .B(n57), .Y(r_enable) );
  NOR2X1 U68 ( .A(n58), .B(n59), .Y(num_writes) );
  NOR2X1 U69 ( .A(read_enable_in), .B(n60), .Y(nextState[2]) );
  OAI22X1 U70 ( .A(n60), .B(n61), .C(n58), .D(n62), .Y(nextState[1]) );
  INVX1 U71 ( .A(read_enable_in), .Y(n61) );
  INVX1 U72 ( .A(n63), .Y(n60) );
  OAI21X1 U73 ( .A(full), .B(n64), .C(n57), .Y(n63) );
  OAI21X1 U74 ( .A(n65), .B(n66), .C(n58), .Y(nextState[0]) );
  NAND2X1 U75 ( .A(n67), .B(n68), .Y(n66) );
  INVX1 U76 ( .A(full), .Y(n65) );
  NOR2X1 U77 ( .A(n69), .B(n70), .Y(newcounter[2]) );
  AOI21X1 U78 ( .A(counter[0]), .B(counter[1]), .C(counter[2]), .Y(n70) );
  MUX2X1 U79 ( .B(n71), .A(n72), .S(counter[1]), .Y(newcounter[1]) );
  INVX1 U80 ( .A(newcounter[0]), .Y(n72) );
  NAND2X1 U81 ( .A(n73), .B(counter[0]), .Y(n71) );
  INVX1 U82 ( .A(n69), .Y(n73) );
  NOR2X1 U83 ( .A(n69), .B(counter[0]), .Y(newcounter[0]) );
  NAND2X1 U84 ( .A(w_enable), .B(n62), .Y(n69) );
  NAND3X1 U85 ( .A(counter[1]), .B(counter[0]), .C(counter[2]), .Y(n62) );
  MUX2X1 U86 ( .B(n74), .A(n75), .S(counter32[0]), .Y(n55) );
  MUX2X1 U87 ( .B(n76), .A(n77), .S(counter32[1]), .Y(n54) );
  NAND2X1 U88 ( .A(n78), .B(counter32[0]), .Y(n76) );
  MUX2X1 U89 ( .B(n79), .A(n80), .S(counter32[2]), .Y(n53) );
  INVX1 U90 ( .A(n81), .Y(n80) );
  OAI21X1 U91 ( .A(n74), .B(counter32[1]), .C(n77), .Y(n81) );
  INVX1 U92 ( .A(n82), .Y(n77) );
  OAI21X1 U93 ( .A(counter32[0]), .B(n74), .C(n75), .Y(n82) );
  NAND3X1 U94 ( .A(counter32[1]), .B(counter32[0]), .C(n78), .Y(n79) );
  MUX2X1 U95 ( .B(n83), .A(n84), .S(counter32[3]), .Y(n52) );
  INVX1 U96 ( .A(n85), .Y(n84) );
  NAND2X1 U97 ( .A(n78), .B(n86), .Y(n83) );
  OAI21X1 U98 ( .A(n74), .B(n87), .C(n88), .Y(n51) );
  OAI21X1 U99 ( .A(n78), .B(n85), .C(counter32[4]), .Y(n88) );
  OAI21X1 U100 ( .A(n86), .B(n74), .C(n75), .Y(n85) );
  AND2X1 U101 ( .A(n64), .B(n57), .Y(n75) );
  NAND2X1 U102 ( .A(state[1]), .B(n89), .Y(n57) );
  NAND3X1 U103 ( .A(n67), .B(n68), .C(state[2]), .Y(n64) );
  INVX1 U104 ( .A(state[0]), .Y(n67) );
  INVX1 U105 ( .A(n74), .Y(n78) );
  NAND2X1 U106 ( .A(counter32[3]), .B(n86), .Y(n87) );
  NAND2X1 U107 ( .A(w_enable), .B(n59), .Y(n74) );
  NAND3X1 U108 ( .A(counter32[3]), .B(n86), .C(counter32[4]), .Y(n59) );
  INVX1 U109 ( .A(n90), .Y(n86) );
  NAND3X1 U110 ( .A(counter32[1]), .B(counter32[0]), .C(counter32[2]), .Y(n90)
         );
  INVX1 U111 ( .A(n58), .Y(w_enable) );
  NAND3X1 U112 ( .A(n68), .B(n89), .C(state[0]), .Y(n58) );
  INVX1 U113 ( .A(state[2]), .Y(n89) );
  INVX1 U114 ( .A(state[1]), .Y(n68) );
endmodule

