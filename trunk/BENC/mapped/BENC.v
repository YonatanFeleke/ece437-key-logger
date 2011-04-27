
module fiforam_2 ( wclk, wenable, waddr, raddr, wdata, rdata );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wenable;
  wire   \fiforeg[0][7] , \fiforeg[0][6] , \fiforeg[0][5] , \fiforeg[0][4] ,
         \fiforeg[0][3] , \fiforeg[0][2] , \fiforeg[0][1] , \fiforeg[0][0] ,
         \fiforeg[1][7] , \fiforeg[1][6] , \fiforeg[1][5] , \fiforeg[1][4] ,
         \fiforeg[1][3] , \fiforeg[1][2] , \fiforeg[1][1] , \fiforeg[1][0] ,
         \fiforeg[2][7] , \fiforeg[2][6] , \fiforeg[2][5] , \fiforeg[2][4] ,
         \fiforeg[2][3] , \fiforeg[2][2] , \fiforeg[2][1] , \fiforeg[2][0] ,
         \fiforeg[3][7] , \fiforeg[3][6] , \fiforeg[3][5] , \fiforeg[3][4] ,
         \fiforeg[3][3] , \fiforeg[3][2] , \fiforeg[3][1] , \fiforeg[3][0] ,
         \fiforeg[4][7] , \fiforeg[4][6] , \fiforeg[4][5] , \fiforeg[4][4] ,
         \fiforeg[4][3] , \fiforeg[4][2] , \fiforeg[4][1] , \fiforeg[4][0] ,
         \fiforeg[5][7] , \fiforeg[5][6] , \fiforeg[5][5] , \fiforeg[5][4] ,
         \fiforeg[5][3] , \fiforeg[5][2] , \fiforeg[5][1] , \fiforeg[5][0] ,
         \fiforeg[6][7] , \fiforeg[6][6] , \fiforeg[6][5] , \fiforeg[6][4] ,
         \fiforeg[6][3] , \fiforeg[6][2] , \fiforeg[6][1] , \fiforeg[6][0] ,
         \fiforeg[7][7] , \fiforeg[7][6] , \fiforeg[7][5] , \fiforeg[7][4] ,
         \fiforeg[7][3] , \fiforeg[7][2] , \fiforeg[7][1] , \fiforeg[7][0] ,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197;

  DFFPOSX1 \fiforeg_reg[7][7]  ( .D(n212), .CLK(wclk), .Q(\fiforeg[7][7] ) );
  DFFPOSX1 \fiforeg_reg[6][7]  ( .D(n213), .CLK(wclk), .Q(\fiforeg[6][7] ) );
  DFFPOSX1 \fiforeg_reg[5][7]  ( .D(n214), .CLK(wclk), .Q(\fiforeg[5][7] ) );
  DFFPOSX1 \fiforeg_reg[4][7]  ( .D(n215), .CLK(wclk), .Q(\fiforeg[4][7] ) );
  DFFPOSX1 \fiforeg_reg[3][7]  ( .D(n216), .CLK(wclk), .Q(\fiforeg[3][7] ) );
  DFFPOSX1 \fiforeg_reg[2][7]  ( .D(n217), .CLK(wclk), .Q(\fiforeg[2][7] ) );
  DFFPOSX1 \fiforeg_reg[1][7]  ( .D(n218), .CLK(wclk), .Q(\fiforeg[1][7] ) );
  DFFPOSX1 \fiforeg_reg[0][7]  ( .D(n219), .CLK(wclk), .Q(\fiforeg[0][7] ) );
  DFFPOSX1 \fiforeg_reg[7][6]  ( .D(n220), .CLK(wclk), .Q(\fiforeg[7][6] ) );
  DFFPOSX1 \fiforeg_reg[6][6]  ( .D(n221), .CLK(wclk), .Q(\fiforeg[6][6] ) );
  DFFPOSX1 \fiforeg_reg[5][6]  ( .D(n222), .CLK(wclk), .Q(\fiforeg[5][6] ) );
  DFFPOSX1 \fiforeg_reg[4][6]  ( .D(n223), .CLK(wclk), .Q(\fiforeg[4][6] ) );
  DFFPOSX1 \fiforeg_reg[3][6]  ( .D(n224), .CLK(wclk), .Q(\fiforeg[3][6] ) );
  DFFPOSX1 \fiforeg_reg[2][6]  ( .D(n225), .CLK(wclk), .Q(\fiforeg[2][6] ) );
  DFFPOSX1 \fiforeg_reg[1][6]  ( .D(n226), .CLK(wclk), .Q(\fiforeg[1][6] ) );
  DFFPOSX1 \fiforeg_reg[0][6]  ( .D(n227), .CLK(wclk), .Q(\fiforeg[0][6] ) );
  DFFPOSX1 \fiforeg_reg[7][5]  ( .D(n228), .CLK(wclk), .Q(\fiforeg[7][5] ) );
  DFFPOSX1 \fiforeg_reg[6][5]  ( .D(n229), .CLK(wclk), .Q(\fiforeg[6][5] ) );
  DFFPOSX1 \fiforeg_reg[5][5]  ( .D(n230), .CLK(wclk), .Q(\fiforeg[5][5] ) );
  DFFPOSX1 \fiforeg_reg[4][5]  ( .D(n231), .CLK(wclk), .Q(\fiforeg[4][5] ) );
  DFFPOSX1 \fiforeg_reg[3][5]  ( .D(n232), .CLK(wclk), .Q(\fiforeg[3][5] ) );
  DFFPOSX1 \fiforeg_reg[2][5]  ( .D(n233), .CLK(wclk), .Q(\fiforeg[2][5] ) );
  DFFPOSX1 \fiforeg_reg[1][5]  ( .D(n234), .CLK(wclk), .Q(\fiforeg[1][5] ) );
  DFFPOSX1 \fiforeg_reg[0][5]  ( .D(n235), .CLK(wclk), .Q(\fiforeg[0][5] ) );
  DFFPOSX1 \fiforeg_reg[7][4]  ( .D(n236), .CLK(wclk), .Q(\fiforeg[7][4] ) );
  DFFPOSX1 \fiforeg_reg[6][4]  ( .D(n237), .CLK(wclk), .Q(\fiforeg[6][4] ) );
  DFFPOSX1 \fiforeg_reg[5][4]  ( .D(n238), .CLK(wclk), .Q(\fiforeg[5][4] ) );
  DFFPOSX1 \fiforeg_reg[4][4]  ( .D(n239), .CLK(wclk), .Q(\fiforeg[4][4] ) );
  DFFPOSX1 \fiforeg_reg[3][4]  ( .D(n240), .CLK(wclk), .Q(\fiforeg[3][4] ) );
  DFFPOSX1 \fiforeg_reg[2][4]  ( .D(n241), .CLK(wclk), .Q(\fiforeg[2][4] ) );
  DFFPOSX1 \fiforeg_reg[1][4]  ( .D(n242), .CLK(wclk), .Q(\fiforeg[1][4] ) );
  DFFPOSX1 \fiforeg_reg[0][4]  ( .D(n243), .CLK(wclk), .Q(\fiforeg[0][4] ) );
  DFFPOSX1 \fiforeg_reg[7][3]  ( .D(n244), .CLK(wclk), .Q(\fiforeg[7][3] ) );
  DFFPOSX1 \fiforeg_reg[6][3]  ( .D(n245), .CLK(wclk), .Q(\fiforeg[6][3] ) );
  DFFPOSX1 \fiforeg_reg[5][3]  ( .D(n246), .CLK(wclk), .Q(\fiforeg[5][3] ) );
  DFFPOSX1 \fiforeg_reg[4][3]  ( .D(n247), .CLK(wclk), .Q(\fiforeg[4][3] ) );
  DFFPOSX1 \fiforeg_reg[3][3]  ( .D(n248), .CLK(wclk), .Q(\fiforeg[3][3] ) );
  DFFPOSX1 \fiforeg_reg[2][3]  ( .D(n249), .CLK(wclk), .Q(\fiforeg[2][3] ) );
  DFFPOSX1 \fiforeg_reg[1][3]  ( .D(n250), .CLK(wclk), .Q(\fiforeg[1][3] ) );
  DFFPOSX1 \fiforeg_reg[0][3]  ( .D(n251), .CLK(wclk), .Q(\fiforeg[0][3] ) );
  DFFPOSX1 \fiforeg_reg[7][2]  ( .D(n252), .CLK(wclk), .Q(\fiforeg[7][2] ) );
  DFFPOSX1 \fiforeg_reg[6][2]  ( .D(n253), .CLK(wclk), .Q(\fiforeg[6][2] ) );
  DFFPOSX1 \fiforeg_reg[5][2]  ( .D(n254), .CLK(wclk), .Q(\fiforeg[5][2] ) );
  DFFPOSX1 \fiforeg_reg[4][2]  ( .D(n255), .CLK(wclk), .Q(\fiforeg[4][2] ) );
  DFFPOSX1 \fiforeg_reg[3][2]  ( .D(n256), .CLK(wclk), .Q(\fiforeg[3][2] ) );
  DFFPOSX1 \fiforeg_reg[2][2]  ( .D(n257), .CLK(wclk), .Q(\fiforeg[2][2] ) );
  DFFPOSX1 \fiforeg_reg[1][2]  ( .D(n258), .CLK(wclk), .Q(\fiforeg[1][2] ) );
  DFFPOSX1 \fiforeg_reg[0][2]  ( .D(n259), .CLK(wclk), .Q(\fiforeg[0][2] ) );
  DFFPOSX1 \fiforeg_reg[7][1]  ( .D(n260), .CLK(wclk), .Q(\fiforeg[7][1] ) );
  DFFPOSX1 \fiforeg_reg[6][1]  ( .D(n261), .CLK(wclk), .Q(\fiforeg[6][1] ) );
  DFFPOSX1 \fiforeg_reg[5][1]  ( .D(n262), .CLK(wclk), .Q(\fiforeg[5][1] ) );
  DFFPOSX1 \fiforeg_reg[4][1]  ( .D(n263), .CLK(wclk), .Q(\fiforeg[4][1] ) );
  DFFPOSX1 \fiforeg_reg[3][1]  ( .D(n264), .CLK(wclk), .Q(\fiforeg[3][1] ) );
  DFFPOSX1 \fiforeg_reg[2][1]  ( .D(n265), .CLK(wclk), .Q(\fiforeg[2][1] ) );
  DFFPOSX1 \fiforeg_reg[1][1]  ( .D(n266), .CLK(wclk), .Q(\fiforeg[1][1] ) );
  DFFPOSX1 \fiforeg_reg[0][1]  ( .D(n267), .CLK(wclk), .Q(\fiforeg[0][1] ) );
  DFFPOSX1 \fiforeg_reg[7][0]  ( .D(n275), .CLK(wclk), .Q(\fiforeg[7][0] ) );
  DFFPOSX1 \fiforeg_reg[6][0]  ( .D(n268), .CLK(wclk), .Q(\fiforeg[6][0] ) );
  DFFPOSX1 \fiforeg_reg[5][0]  ( .D(n269), .CLK(wclk), .Q(\fiforeg[5][0] ) );
  DFFPOSX1 \fiforeg_reg[4][0]  ( .D(n270), .CLK(wclk), .Q(\fiforeg[4][0] ) );
  DFFPOSX1 \fiforeg_reg[3][0]  ( .D(n271), .CLK(wclk), .Q(\fiforeg[3][0] ) );
  DFFPOSX1 \fiforeg_reg[2][0]  ( .D(n272), .CLK(wclk), .Q(\fiforeg[2][0] ) );
  DFFPOSX1 \fiforeg_reg[1][0]  ( .D(n273), .CLK(wclk), .Q(\fiforeg[1][0] ) );
  DFFPOSX1 \fiforeg_reg[0][0]  ( .D(n274), .CLK(wclk), .Q(\fiforeg[0][0] ) );
  INVX1 U2 ( .A(n99), .Y(n1) );
  INVX2 U3 ( .A(n1), .Y(n2) );
  INVX1 U4 ( .A(n101), .Y(n3) );
  INVX2 U5 ( .A(n3), .Y(n4) );
  INVX1 U6 ( .A(n100), .Y(n5) );
  INVX2 U7 ( .A(n5), .Y(n6) );
  BUFX2 U8 ( .A(n98), .Y(n7) );
  NAND3X1 U9 ( .A(n8), .B(n9), .C(n10), .Y(rdata[7]) );
  NOR2X1 U10 ( .A(n11), .B(n12), .Y(n10) );
  OAI22X1 U11 ( .A(n13), .B(n14), .C(n15), .D(n16), .Y(n12) );
  OAI22X1 U12 ( .A(n17), .B(n18), .C(n19), .D(n20), .Y(n11) );
  AOI22X1 U13 ( .A(\fiforeg[5][7] ), .B(n21), .C(\fiforeg[4][7] ), .D(n22), 
        .Y(n9) );
  AOI22X1 U14 ( .A(\fiforeg[7][7] ), .B(n23), .C(\fiforeg[6][7] ), .D(n24), 
        .Y(n8) );
  NAND3X1 U15 ( .A(n25), .B(n26), .C(n27), .Y(rdata[6]) );
  NOR2X1 U16 ( .A(n28), .B(n29), .Y(n27) );
  OAI22X1 U17 ( .A(n13), .B(n30), .C(n15), .D(n31), .Y(n29) );
  OAI22X1 U18 ( .A(n17), .B(n32), .C(n19), .D(n33), .Y(n28) );
  AOI22X1 U19 ( .A(\fiforeg[5][6] ), .B(n21), .C(\fiforeg[4][6] ), .D(n22), 
        .Y(n26) );
  AOI22X1 U20 ( .A(\fiforeg[7][6] ), .B(n23), .C(\fiforeg[6][6] ), .D(n24), 
        .Y(n25) );
  NAND3X1 U21 ( .A(n34), .B(n35), .C(n36), .Y(rdata[5]) );
  NOR2X1 U22 ( .A(n37), .B(n38), .Y(n36) );
  OAI22X1 U23 ( .A(n13), .B(n39), .C(n15), .D(n40), .Y(n38) );
  OAI22X1 U24 ( .A(n17), .B(n41), .C(n19), .D(n42), .Y(n37) );
  AOI22X1 U25 ( .A(\fiforeg[5][5] ), .B(n21), .C(\fiforeg[4][5] ), .D(n22), 
        .Y(n35) );
  AOI22X1 U26 ( .A(\fiforeg[7][5] ), .B(n23), .C(\fiforeg[6][5] ), .D(n24), 
        .Y(n34) );
  NAND3X1 U27 ( .A(n43), .B(n44), .C(n45), .Y(rdata[4]) );
  NOR2X1 U28 ( .A(n46), .B(n47), .Y(n45) );
  OAI22X1 U29 ( .A(n13), .B(n48), .C(n15), .D(n49), .Y(n47) );
  OAI22X1 U30 ( .A(n17), .B(n50), .C(n19), .D(n51), .Y(n46) );
  AOI22X1 U31 ( .A(\fiforeg[5][4] ), .B(n21), .C(\fiforeg[4][4] ), .D(n22), 
        .Y(n44) );
  AOI22X1 U32 ( .A(\fiforeg[7][4] ), .B(n23), .C(\fiforeg[6][4] ), .D(n24), 
        .Y(n43) );
  NAND3X1 U33 ( .A(n52), .B(n53), .C(n54), .Y(rdata[3]) );
  NOR2X1 U34 ( .A(n55), .B(n56), .Y(n54) );
  OAI22X1 U35 ( .A(n13), .B(n57), .C(n15), .D(n58), .Y(n56) );
  OAI22X1 U36 ( .A(n17), .B(n59), .C(n19), .D(n60), .Y(n55) );
  AOI22X1 U37 ( .A(\fiforeg[5][3] ), .B(n21), .C(\fiforeg[4][3] ), .D(n22), 
        .Y(n53) );
  AOI22X1 U38 ( .A(\fiforeg[7][3] ), .B(n23), .C(\fiforeg[6][3] ), .D(n24), 
        .Y(n52) );
  NAND3X1 U39 ( .A(n61), .B(n62), .C(n63), .Y(rdata[2]) );
  NOR2X1 U40 ( .A(n64), .B(n65), .Y(n63) );
  OAI22X1 U41 ( .A(n13), .B(n66), .C(n15), .D(n67), .Y(n65) );
  OAI22X1 U42 ( .A(n17), .B(n68), .C(n19), .D(n69), .Y(n64) );
  AOI22X1 U43 ( .A(\fiforeg[5][2] ), .B(n21), .C(\fiforeg[4][2] ), .D(n22), 
        .Y(n62) );
  AOI22X1 U44 ( .A(\fiforeg[7][2] ), .B(n23), .C(\fiforeg[6][2] ), .D(n24), 
        .Y(n61) );
  NAND3X1 U45 ( .A(n70), .B(n71), .C(n72), .Y(rdata[1]) );
  NOR2X1 U46 ( .A(n73), .B(n74), .Y(n72) );
  OAI22X1 U47 ( .A(n13), .B(n75), .C(n15), .D(n76), .Y(n74) );
  OAI22X1 U48 ( .A(n17), .B(n77), .C(n19), .D(n78), .Y(n73) );
  AOI22X1 U49 ( .A(\fiforeg[5][1] ), .B(n21), .C(\fiforeg[4][1] ), .D(n22), 
        .Y(n71) );
  AOI22X1 U50 ( .A(\fiforeg[7][1] ), .B(n23), .C(\fiforeg[6][1] ), .D(n24), 
        .Y(n70) );
  NAND3X1 U51 ( .A(n79), .B(n80), .C(n81), .Y(rdata[0]) );
  NOR2X1 U52 ( .A(n82), .B(n83), .Y(n81) );
  OAI22X1 U53 ( .A(n13), .B(n84), .C(n15), .D(n85), .Y(n83) );
  NAND3X1 U54 ( .A(n86), .B(n87), .C(n88), .Y(n15) );
  NAND3X1 U55 ( .A(n86), .B(n87), .C(raddr[0]), .Y(n13) );
  OAI22X1 U56 ( .A(n17), .B(n89), .C(n19), .D(n90), .Y(n82) );
  NAND3X1 U57 ( .A(n88), .B(n87), .C(raddr[1]), .Y(n19) );
  NAND3X1 U58 ( .A(raddr[0]), .B(n87), .C(raddr[1]), .Y(n17) );
  INVX1 U59 ( .A(raddr[2]), .Y(n87) );
  AOI22X1 U60 ( .A(\fiforeg[5][0] ), .B(n21), .C(\fiforeg[4][0] ), .D(n22), 
        .Y(n80) );
  INVX1 U61 ( .A(n91), .Y(n22) );
  NAND3X1 U62 ( .A(n88), .B(n86), .C(raddr[2]), .Y(n91) );
  INVX1 U63 ( .A(n92), .Y(n21) );
  NAND3X1 U64 ( .A(raddr[0]), .B(n86), .C(raddr[2]), .Y(n92) );
  INVX1 U65 ( .A(raddr[1]), .Y(n86) );
  AOI22X1 U66 ( .A(\fiforeg[7][0] ), .B(n23), .C(\fiforeg[6][0] ), .D(n24), 
        .Y(n79) );
  INVX1 U67 ( .A(n93), .Y(n24) );
  NAND3X1 U68 ( .A(raddr[2]), .B(n88), .C(raddr[1]), .Y(n93) );
  INVX1 U69 ( .A(raddr[0]), .Y(n88) );
  INVX1 U70 ( .A(n94), .Y(n23) );
  NAND3X1 U71 ( .A(raddr[2]), .B(raddr[0]), .C(raddr[1]), .Y(n94) );
  MUX2X1 U72 ( .B(n95), .A(n96), .S(n97), .Y(n275) );
  INVX1 U73 ( .A(\fiforeg[7][0] ), .Y(n96) );
  MUX2X1 U74 ( .B(n95), .A(n85), .S(n7), .Y(n274) );
  MUX2X1 U75 ( .B(n95), .A(n84), .S(n2), .Y(n273) );
  MUX2X1 U76 ( .B(n95), .A(n90), .S(n6), .Y(n272) );
  MUX2X1 U77 ( .B(n95), .A(n89), .S(n4), .Y(n271) );
  MUX2X1 U78 ( .B(n95), .A(n102), .S(n103), .Y(n270) );
  INVX1 U79 ( .A(\fiforeg[4][0] ), .Y(n102) );
  MUX2X1 U80 ( .B(n95), .A(n104), .S(n105), .Y(n269) );
  INVX1 U81 ( .A(\fiforeg[5][0] ), .Y(n104) );
  MUX2X1 U82 ( .B(n95), .A(n106), .S(n107), .Y(n268) );
  INVX1 U83 ( .A(\fiforeg[6][0] ), .Y(n106) );
  MUX2X1 U84 ( .B(n108), .A(wdata[0]), .S(wenable), .Y(n95) );
  NAND3X1 U85 ( .A(n109), .B(n110), .C(n111), .Y(n108) );
  NOR2X1 U86 ( .A(n112), .B(n113), .Y(n111) );
  OAI22X1 U87 ( .A(n84), .B(n2), .C(n85), .D(n7), .Y(n113) );
  INVX1 U88 ( .A(\fiforeg[0][0] ), .Y(n85) );
  INVX1 U89 ( .A(\fiforeg[1][0] ), .Y(n84) );
  OAI22X1 U90 ( .A(n89), .B(n4), .C(n90), .D(n6), .Y(n112) );
  INVX1 U91 ( .A(\fiforeg[2][0] ), .Y(n90) );
  INVX1 U92 ( .A(\fiforeg[3][0] ), .Y(n89) );
  AOI22X1 U93 ( .A(n114), .B(\fiforeg[6][0] ), .C(n115), .D(\fiforeg[4][0] ), 
        .Y(n110) );
  AOI22X1 U94 ( .A(n116), .B(\fiforeg[5][0] ), .C(n117), .D(\fiforeg[7][0] ), 
        .Y(n109) );
  MUX2X1 U95 ( .B(n118), .A(n76), .S(n7), .Y(n267) );
  MUX2X1 U96 ( .B(n118), .A(n75), .S(n2), .Y(n266) );
  MUX2X1 U97 ( .B(n118), .A(n78), .S(n6), .Y(n265) );
  MUX2X1 U98 ( .B(n118), .A(n77), .S(n4), .Y(n264) );
  MUX2X1 U99 ( .B(n118), .A(n119), .S(n103), .Y(n263) );
  INVX1 U100 ( .A(\fiforeg[4][1] ), .Y(n119) );
  MUX2X1 U101 ( .B(n118), .A(n120), .S(n105), .Y(n262) );
  INVX1 U102 ( .A(\fiforeg[5][1] ), .Y(n120) );
  MUX2X1 U103 ( .B(n118), .A(n121), .S(n107), .Y(n261) );
  INVX1 U104 ( .A(\fiforeg[6][1] ), .Y(n121) );
  MUX2X1 U105 ( .B(n118), .A(n122), .S(n97), .Y(n260) );
  INVX1 U106 ( .A(\fiforeg[7][1] ), .Y(n122) );
  MUX2X1 U107 ( .B(n123), .A(wdata[1]), .S(wenable), .Y(n118) );
  NAND3X1 U108 ( .A(n124), .B(n125), .C(n126), .Y(n123) );
  NOR2X1 U109 ( .A(n127), .B(n128), .Y(n126) );
  OAI22X1 U110 ( .A(n75), .B(n2), .C(n76), .D(n7), .Y(n128) );
  INVX1 U111 ( .A(\fiforeg[0][1] ), .Y(n76) );
  INVX1 U112 ( .A(\fiforeg[1][1] ), .Y(n75) );
  OAI22X1 U113 ( .A(n77), .B(n4), .C(n78), .D(n6), .Y(n127) );
  INVX1 U114 ( .A(\fiforeg[2][1] ), .Y(n78) );
  INVX1 U115 ( .A(\fiforeg[3][1] ), .Y(n77) );
  AOI22X1 U116 ( .A(n114), .B(\fiforeg[6][1] ), .C(n115), .D(\fiforeg[4][1] ), 
        .Y(n125) );
  AOI22X1 U117 ( .A(n116), .B(\fiforeg[5][1] ), .C(n117), .D(\fiforeg[7][1] ), 
        .Y(n124) );
  MUX2X1 U118 ( .B(n129), .A(n67), .S(n7), .Y(n259) );
  MUX2X1 U119 ( .B(n129), .A(n66), .S(n2), .Y(n258) );
  MUX2X1 U120 ( .B(n129), .A(n69), .S(n6), .Y(n257) );
  MUX2X1 U121 ( .B(n129), .A(n68), .S(n4), .Y(n256) );
  MUX2X1 U122 ( .B(n129), .A(n130), .S(n103), .Y(n255) );
  INVX1 U123 ( .A(\fiforeg[4][2] ), .Y(n130) );
  MUX2X1 U124 ( .B(n129), .A(n131), .S(n105), .Y(n254) );
  INVX1 U125 ( .A(\fiforeg[5][2] ), .Y(n131) );
  MUX2X1 U126 ( .B(n129), .A(n132), .S(n107), .Y(n253) );
  INVX1 U127 ( .A(\fiforeg[6][2] ), .Y(n132) );
  MUX2X1 U128 ( .B(n129), .A(n133), .S(n97), .Y(n252) );
  INVX1 U129 ( .A(\fiforeg[7][2] ), .Y(n133) );
  MUX2X1 U130 ( .B(n134), .A(wdata[2]), .S(wenable), .Y(n129) );
  NAND3X1 U131 ( .A(n135), .B(n136), .C(n137), .Y(n134) );
  NOR2X1 U132 ( .A(n138), .B(n139), .Y(n137) );
  OAI22X1 U133 ( .A(n66), .B(n2), .C(n67), .D(n7), .Y(n139) );
  INVX1 U134 ( .A(\fiforeg[0][2] ), .Y(n67) );
  INVX1 U135 ( .A(\fiforeg[1][2] ), .Y(n66) );
  OAI22X1 U136 ( .A(n68), .B(n4), .C(n69), .D(n6), .Y(n138) );
  INVX1 U137 ( .A(\fiforeg[2][2] ), .Y(n69) );
  INVX1 U138 ( .A(\fiforeg[3][2] ), .Y(n68) );
  AOI22X1 U139 ( .A(n114), .B(\fiforeg[6][2] ), .C(n115), .D(\fiforeg[4][2] ), 
        .Y(n136) );
  AOI22X1 U140 ( .A(n116), .B(\fiforeg[5][2] ), .C(n117), .D(\fiforeg[7][2] ), 
        .Y(n135) );
  MUX2X1 U141 ( .B(n140), .A(n58), .S(n7), .Y(n251) );
  MUX2X1 U142 ( .B(n140), .A(n57), .S(n2), .Y(n250) );
  MUX2X1 U143 ( .B(n140), .A(n60), .S(n6), .Y(n249) );
  MUX2X1 U144 ( .B(n140), .A(n59), .S(n4), .Y(n248) );
  MUX2X1 U145 ( .B(n140), .A(n141), .S(n103), .Y(n247) );
  INVX1 U146 ( .A(\fiforeg[4][3] ), .Y(n141) );
  MUX2X1 U147 ( .B(n140), .A(n142), .S(n105), .Y(n246) );
  INVX1 U148 ( .A(\fiforeg[5][3] ), .Y(n142) );
  MUX2X1 U149 ( .B(n140), .A(n143), .S(n107), .Y(n245) );
  INVX1 U150 ( .A(\fiforeg[6][3] ), .Y(n143) );
  MUX2X1 U151 ( .B(n140), .A(n144), .S(n97), .Y(n244) );
  INVX1 U152 ( .A(\fiforeg[7][3] ), .Y(n144) );
  MUX2X1 U153 ( .B(n145), .A(wdata[3]), .S(wenable), .Y(n140) );
  NAND3X1 U154 ( .A(n146), .B(n147), .C(n148), .Y(n145) );
  NOR2X1 U155 ( .A(n149), .B(n150), .Y(n148) );
  OAI22X1 U156 ( .A(n57), .B(n2), .C(n58), .D(n7), .Y(n150) );
  INVX1 U157 ( .A(\fiforeg[0][3] ), .Y(n58) );
  INVX1 U158 ( .A(\fiforeg[1][3] ), .Y(n57) );
  OAI22X1 U159 ( .A(n59), .B(n4), .C(n60), .D(n6), .Y(n149) );
  INVX1 U160 ( .A(\fiforeg[2][3] ), .Y(n60) );
  INVX1 U161 ( .A(\fiforeg[3][3] ), .Y(n59) );
  AOI22X1 U162 ( .A(n114), .B(\fiforeg[6][3] ), .C(n115), .D(\fiforeg[4][3] ), 
        .Y(n147) );
  AOI22X1 U163 ( .A(n116), .B(\fiforeg[5][3] ), .C(n117), .D(\fiforeg[7][3] ), 
        .Y(n146) );
  MUX2X1 U164 ( .B(n151), .A(n49), .S(n7), .Y(n243) );
  MUX2X1 U165 ( .B(n151), .A(n48), .S(n2), .Y(n242) );
  MUX2X1 U166 ( .B(n151), .A(n51), .S(n6), .Y(n241) );
  MUX2X1 U167 ( .B(n151), .A(n50), .S(n4), .Y(n240) );
  MUX2X1 U168 ( .B(n151), .A(n152), .S(n103), .Y(n239) );
  INVX1 U169 ( .A(\fiforeg[4][4] ), .Y(n152) );
  MUX2X1 U170 ( .B(n151), .A(n153), .S(n105), .Y(n238) );
  INVX1 U171 ( .A(\fiforeg[5][4] ), .Y(n153) );
  MUX2X1 U172 ( .B(n151), .A(n154), .S(n107), .Y(n237) );
  INVX1 U173 ( .A(\fiforeg[6][4] ), .Y(n154) );
  MUX2X1 U174 ( .B(n151), .A(n155), .S(n97), .Y(n236) );
  INVX1 U175 ( .A(\fiforeg[7][4] ), .Y(n155) );
  MUX2X1 U176 ( .B(n156), .A(wdata[4]), .S(wenable), .Y(n151) );
  NAND3X1 U177 ( .A(n157), .B(n158), .C(n159), .Y(n156) );
  NOR2X1 U178 ( .A(n160), .B(n161), .Y(n159) );
  OAI22X1 U179 ( .A(n48), .B(n2), .C(n49), .D(n7), .Y(n161) );
  INVX1 U180 ( .A(\fiforeg[0][4] ), .Y(n49) );
  INVX1 U181 ( .A(\fiforeg[1][4] ), .Y(n48) );
  OAI22X1 U182 ( .A(n50), .B(n4), .C(n51), .D(n6), .Y(n160) );
  INVX1 U183 ( .A(\fiforeg[2][4] ), .Y(n51) );
  INVX1 U184 ( .A(\fiforeg[3][4] ), .Y(n50) );
  AOI22X1 U185 ( .A(n114), .B(\fiforeg[6][4] ), .C(n115), .D(\fiforeg[4][4] ), 
        .Y(n158) );
  AOI22X1 U186 ( .A(n116), .B(\fiforeg[5][4] ), .C(n117), .D(\fiforeg[7][4] ), 
        .Y(n157) );
  MUX2X1 U187 ( .B(n162), .A(n40), .S(n7), .Y(n235) );
  MUX2X1 U188 ( .B(n162), .A(n39), .S(n2), .Y(n234) );
  MUX2X1 U189 ( .B(n162), .A(n42), .S(n6), .Y(n233) );
  MUX2X1 U190 ( .B(n162), .A(n41), .S(n4), .Y(n232) );
  MUX2X1 U191 ( .B(n162), .A(n163), .S(n103), .Y(n231) );
  INVX1 U192 ( .A(\fiforeg[4][5] ), .Y(n163) );
  MUX2X1 U193 ( .B(n162), .A(n164), .S(n105), .Y(n230) );
  INVX1 U194 ( .A(\fiforeg[5][5] ), .Y(n164) );
  MUX2X1 U195 ( .B(n162), .A(n165), .S(n107), .Y(n229) );
  INVX1 U196 ( .A(\fiforeg[6][5] ), .Y(n165) );
  MUX2X1 U197 ( .B(n162), .A(n166), .S(n97), .Y(n228) );
  INVX1 U198 ( .A(\fiforeg[7][5] ), .Y(n166) );
  MUX2X1 U199 ( .B(n167), .A(wdata[5]), .S(wenable), .Y(n162) );
  NAND3X1 U200 ( .A(n168), .B(n169), .C(n170), .Y(n167) );
  NOR2X1 U201 ( .A(n171), .B(n172), .Y(n170) );
  OAI22X1 U202 ( .A(n39), .B(n2), .C(n40), .D(n7), .Y(n172) );
  INVX1 U203 ( .A(\fiforeg[0][5] ), .Y(n40) );
  INVX1 U204 ( .A(\fiforeg[1][5] ), .Y(n39) );
  OAI22X1 U205 ( .A(n41), .B(n4), .C(n42), .D(n6), .Y(n171) );
  INVX1 U206 ( .A(\fiforeg[2][5] ), .Y(n42) );
  INVX1 U207 ( .A(\fiforeg[3][5] ), .Y(n41) );
  AOI22X1 U208 ( .A(n114), .B(\fiforeg[6][5] ), .C(n115), .D(\fiforeg[4][5] ), 
        .Y(n169) );
  AOI22X1 U209 ( .A(n116), .B(\fiforeg[5][5] ), .C(n117), .D(\fiforeg[7][5] ), 
        .Y(n168) );
  MUX2X1 U210 ( .B(n173), .A(n31), .S(n7), .Y(n227) );
  MUX2X1 U211 ( .B(n173), .A(n30), .S(n2), .Y(n226) );
  MUX2X1 U212 ( .B(n173), .A(n33), .S(n6), .Y(n225) );
  MUX2X1 U213 ( .B(n173), .A(n32), .S(n4), .Y(n224) );
  MUX2X1 U214 ( .B(n173), .A(n174), .S(n103), .Y(n223) );
  INVX1 U215 ( .A(\fiforeg[4][6] ), .Y(n174) );
  MUX2X1 U216 ( .B(n173), .A(n175), .S(n105), .Y(n222) );
  INVX1 U217 ( .A(\fiforeg[5][6] ), .Y(n175) );
  MUX2X1 U218 ( .B(n173), .A(n176), .S(n107), .Y(n221) );
  INVX1 U219 ( .A(\fiforeg[6][6] ), .Y(n176) );
  MUX2X1 U220 ( .B(n173), .A(n177), .S(n97), .Y(n220) );
  INVX1 U221 ( .A(\fiforeg[7][6] ), .Y(n177) );
  MUX2X1 U222 ( .B(n178), .A(wdata[6]), .S(wenable), .Y(n173) );
  NAND3X1 U223 ( .A(n179), .B(n180), .C(n181), .Y(n178) );
  NOR2X1 U224 ( .A(n182), .B(n183), .Y(n181) );
  OAI22X1 U225 ( .A(n30), .B(n2), .C(n31), .D(n7), .Y(n183) );
  INVX1 U226 ( .A(\fiforeg[0][6] ), .Y(n31) );
  INVX1 U227 ( .A(\fiforeg[1][6] ), .Y(n30) );
  OAI22X1 U228 ( .A(n32), .B(n4), .C(n33), .D(n6), .Y(n182) );
  INVX1 U229 ( .A(\fiforeg[2][6] ), .Y(n33) );
  INVX1 U230 ( .A(\fiforeg[3][6] ), .Y(n32) );
  AOI22X1 U231 ( .A(n114), .B(\fiforeg[6][6] ), .C(n115), .D(\fiforeg[4][6] ), 
        .Y(n180) );
  AOI22X1 U232 ( .A(n116), .B(\fiforeg[5][6] ), .C(n117), .D(\fiforeg[7][6] ), 
        .Y(n179) );
  MUX2X1 U233 ( .B(n184), .A(n16), .S(n7), .Y(n219) );
  MUX2X1 U234 ( .B(n184), .A(n14), .S(n2), .Y(n218) );
  MUX2X1 U235 ( .B(n184), .A(n20), .S(n6), .Y(n217) );
  MUX2X1 U236 ( .B(n184), .A(n18), .S(n4), .Y(n216) );
  MUX2X1 U237 ( .B(n184), .A(n185), .S(n103), .Y(n215) );
  INVX1 U238 ( .A(\fiforeg[4][7] ), .Y(n185) );
  MUX2X1 U239 ( .B(n184), .A(n186), .S(n105), .Y(n214) );
  INVX1 U240 ( .A(\fiforeg[5][7] ), .Y(n186) );
  MUX2X1 U241 ( .B(n184), .A(n187), .S(n107), .Y(n213) );
  INVX1 U242 ( .A(\fiforeg[6][7] ), .Y(n187) );
  MUX2X1 U243 ( .B(n184), .A(n188), .S(n97), .Y(n212) );
  INVX1 U244 ( .A(\fiforeg[7][7] ), .Y(n188) );
  MUX2X1 U245 ( .B(n189), .A(wdata[7]), .S(wenable), .Y(n184) );
  NAND3X1 U246 ( .A(n190), .B(n191), .C(n192), .Y(n189) );
  NOR2X1 U247 ( .A(n193), .B(n194), .Y(n192) );
  OAI22X1 U248 ( .A(n14), .B(n2), .C(n16), .D(n7), .Y(n194) );
  NAND3X1 U249 ( .A(n195), .B(n196), .C(n197), .Y(n98) );
  INVX1 U250 ( .A(\fiforeg[0][7] ), .Y(n16) );
  NAND3X1 U251 ( .A(n195), .B(n196), .C(waddr[0]), .Y(n99) );
  INVX1 U252 ( .A(\fiforeg[1][7] ), .Y(n14) );
  OAI22X1 U253 ( .A(n18), .B(n4), .C(n20), .D(n6), .Y(n193) );
  NAND3X1 U254 ( .A(n197), .B(n196), .C(waddr[1]), .Y(n100) );
  INVX1 U255 ( .A(\fiforeg[2][7] ), .Y(n20) );
  NAND3X1 U256 ( .A(waddr[0]), .B(n196), .C(waddr[1]), .Y(n101) );
  INVX1 U257 ( .A(waddr[2]), .Y(n196) );
  INVX1 U258 ( .A(\fiforeg[3][7] ), .Y(n18) );
  AOI22X1 U259 ( .A(n114), .B(\fiforeg[6][7] ), .C(n115), .D(\fiforeg[4][7] ), 
        .Y(n191) );
  INVX1 U260 ( .A(n103), .Y(n115) );
  NAND3X1 U261 ( .A(n197), .B(n195), .C(waddr[2]), .Y(n103) );
  INVX1 U262 ( .A(n107), .Y(n114) );
  NAND3X1 U263 ( .A(waddr[1]), .B(n197), .C(waddr[2]), .Y(n107) );
  INVX1 U264 ( .A(waddr[0]), .Y(n197) );
  AOI22X1 U265 ( .A(n116), .B(\fiforeg[5][7] ), .C(n117), .D(\fiforeg[7][7] ), 
        .Y(n190) );
  INVX1 U266 ( .A(n97), .Y(n117) );
  NAND3X1 U267 ( .A(waddr[1]), .B(waddr[0]), .C(waddr[2]), .Y(n97) );
  INVX1 U268 ( .A(n105), .Y(n116) );
  NAND3X1 U269 ( .A(waddr[0]), .B(n195), .C(waddr[2]), .Y(n105) );
  INVX1 U270 ( .A(waddr[1]), .Y(n195) );
endmodule


module write_ptr_2 ( wclk, rst_n, wenable, wptr, wptr_nxt );
  output [3:0] wptr;
  output [3:0] wptr_nxt;
  input wclk, rst_n, wenable;
  wire   n9, n10, n11, n12;
  wire   [2:0] binary_nxt;
  wire   [3:0] binary_r;

  DFFSR \binary_r_reg[0]  ( .D(binary_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[0]) );
  DFFSR \binary_r_reg[1]  ( .D(binary_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[1]) );
  DFFSR \binary_r_reg[2]  ( .D(binary_nxt[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[2]) );
  DFFSR \binary_r_reg[3]  ( .D(wptr_nxt[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[3]) );
  DFFSR \gray_r_reg[3]  ( .D(wptr_nxt[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[3]) );
  DFFSR \gray_r_reg[2]  ( .D(wptr_nxt[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[2]) );
  DFFSR \gray_r_reg[1]  ( .D(wptr_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[1]) );
  DFFSR \gray_r_reg[0]  ( .D(wptr_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[0]) );
  XOR2X1 U11 ( .A(wptr_nxt[3]), .B(binary_nxt[2]), .Y(wptr_nxt[2]) );
  XNOR2X1 U12 ( .A(n9), .B(binary_r[3]), .Y(wptr_nxt[3]) );
  NAND2X1 U13 ( .A(binary_r[2]), .B(n10), .Y(n9) );
  XOR2X1 U14 ( .A(binary_nxt[2]), .B(binary_nxt[1]), .Y(wptr_nxt[1]) );
  XOR2X1 U15 ( .A(binary_nxt[1]), .B(binary_nxt[0]), .Y(wptr_nxt[0]) );
  XOR2X1 U16 ( .A(n10), .B(binary_r[2]), .Y(binary_nxt[2]) );
  INVX1 U17 ( .A(n11), .Y(n10) );
  NAND3X1 U18 ( .A(binary_r[1]), .B(binary_r[0]), .C(wenable), .Y(n11) );
  XNOR2X1 U19 ( .A(n12), .B(binary_r[1]), .Y(binary_nxt[1]) );
  NAND2X1 U20 ( .A(wenable), .B(binary_r[0]), .Y(n12) );
  XOR2X1 U21 ( .A(binary_r[0]), .B(wenable), .Y(binary_nxt[0]) );
endmodule


module write_fifo_ctrl_2 ( wclk, rst_n, wenable, rptr, wenable_fifo, wptr, 
        waddr, full_flag );
  input [3:0] rptr;
  output [3:0] wptr;
  output [2:0] waddr;
  input wclk, rst_n, wenable;
  output wenable_fifo, full_flag;
  wire   \gray_wptr[2] , N5, n1, n15, n16, n17, n18, n19, n20, n21, n22;
  wire   [3:0] wptr_nxt;
  wire   [3:0] wrptr_r2;
  wire   [3:0] wrptr_r1;

  DFFSR \wrptr_r1_reg[3]  ( .D(rptr[3]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[3]) );
  DFFSR \wrptr_r1_reg[2]  ( .D(rptr[2]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[2]) );
  DFFSR \wrptr_r1_reg[1]  ( .D(rptr[1]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[1]) );
  DFFSR \wrptr_r1_reg[0]  ( .D(rptr[0]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[0]) );
  DFFSR \wrptr_r2_reg[3]  ( .D(wrptr_r1[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[3]) );
  DFFSR \wrptr_r2_reg[2]  ( .D(wrptr_r1[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[2]) );
  DFFSR \wrptr_r2_reg[1]  ( .D(wrptr_r1[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[1]) );
  DFFSR \wrptr_r2_reg[0]  ( .D(wrptr_r1[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[0]) );
  DFFSR full_flag_r_reg ( .D(N5), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        full_flag) );
  DFFSR \waddr_reg[2]  ( .D(\gray_wptr[2] ), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(waddr[2]) );
  DFFSR \waddr_reg[1]  ( .D(wptr_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        waddr[1]) );
  DFFSR \waddr_reg[0]  ( .D(wptr_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        waddr[0]) );
  write_ptr_2 WPU1 ( .wclk(wclk), .rst_n(rst_n), .wenable(wenable_fifo), 
        .wptr(wptr), .wptr_nxt(wptr_nxt) );
  OR2X2 U15 ( .A(full_flag), .B(n15), .Y(n1) );
  INVX1 U16 ( .A(n1), .Y(wenable_fifo) );
  INVX1 U17 ( .A(wenable), .Y(n15) );
  NOR2X1 U18 ( .A(n16), .B(n17), .Y(N5) );
  NAND2X1 U19 ( .A(n18), .B(n19), .Y(n17) );
  XOR2X1 U20 ( .A(n20), .B(\gray_wptr[2] ), .Y(n19) );
  XOR2X1 U21 ( .A(wptr_nxt[3]), .B(wptr_nxt[2]), .Y(\gray_wptr[2] ) );
  XNOR2X1 U22 ( .A(wrptr_r2[3]), .B(wrptr_r2[2]), .Y(n20) );
  XNOR2X1 U23 ( .A(wrptr_r2[1]), .B(wptr_nxt[1]), .Y(n18) );
  NAND2X1 U24 ( .A(n21), .B(n22), .Y(n16) );
  XOR2X1 U25 ( .A(wrptr_r2[3]), .B(wptr_nxt[3]), .Y(n22) );
  XNOR2X1 U26 ( .A(wrptr_r2[0]), .B(wptr_nxt[0]), .Y(n21) );
endmodule


module read_ptr_2 ( rclk, rst_n, renable, rptr, rptr_nxt );
  output [3:0] rptr;
  output [3:0] rptr_nxt;
  input rclk, rst_n, renable;
  wire   n9, n10, n11, n12;
  wire   [2:0] binary_nxt;
  wire   [3:0] binary_r;

  DFFSR \binary_r_reg[0]  ( .D(binary_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[0]) );
  DFFSR \binary_r_reg[1]  ( .D(binary_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[1]) );
  DFFSR \binary_r_reg[2]  ( .D(binary_nxt[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[2]) );
  DFFSR \binary_r_reg[3]  ( .D(rptr_nxt[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[3]) );
  DFFSR \gray_r_reg[3]  ( .D(rptr_nxt[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[3]) );
  DFFSR \gray_r_reg[2]  ( .D(rptr_nxt[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[2]) );
  DFFSR \gray_r_reg[1]  ( .D(rptr_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[1]) );
  DFFSR \gray_r_reg[0]  ( .D(rptr_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[0]) );
  XOR2X1 U11 ( .A(rptr_nxt[3]), .B(binary_nxt[2]), .Y(rptr_nxt[2]) );
  XNOR2X1 U12 ( .A(n9), .B(binary_r[3]), .Y(rptr_nxt[3]) );
  NAND2X1 U13 ( .A(binary_r[2]), .B(n10), .Y(n9) );
  XOR2X1 U14 ( .A(binary_nxt[2]), .B(binary_nxt[1]), .Y(rptr_nxt[1]) );
  XOR2X1 U15 ( .A(binary_nxt[1]), .B(binary_nxt[0]), .Y(rptr_nxt[0]) );
  XOR2X1 U16 ( .A(n10), .B(binary_r[2]), .Y(binary_nxt[2]) );
  INVX1 U17 ( .A(n11), .Y(n10) );
  NAND3X1 U18 ( .A(binary_r[1]), .B(binary_r[0]), .C(renable), .Y(n11) );
  XNOR2X1 U19 ( .A(n12), .B(binary_r[1]), .Y(binary_nxt[1]) );
  NAND2X1 U20 ( .A(renable), .B(binary_r[0]), .Y(n12) );
  XOR2X1 U21 ( .A(binary_r[0]), .B(renable), .Y(binary_nxt[0]) );
endmodule


module read_fifo_ctrl_2 ( rclk, rst_n, renable, wptr, rptr, raddr, empty_flag
 );
  input [3:0] wptr;
  output [3:0] rptr;
  output [2:0] raddr;
  input rclk, rst_n, renable;
  output empty_flag;
  wire   renable_p2, \gray_rptr[2] , N3, n1, n2, n15, n16, n17, n18, n19, n20;
  wire   [3:0] rptr_nxt;
  wire   [3:0] rwptr_r2;
  wire   [3:0] rwptr_r1;

  DFFSR \rwptr_r1_reg[3]  ( .D(wptr[3]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[3]) );
  DFFSR \rwptr_r1_reg[2]  ( .D(wptr[2]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[2]) );
  DFFSR \rwptr_r1_reg[1]  ( .D(wptr[1]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[1]) );
  DFFSR \rwptr_r1_reg[0]  ( .D(wptr[0]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[0]) );
  DFFSR \rwptr_r2_reg[3]  ( .D(rwptr_r1[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[3]) );
  DFFSR \rwptr_r2_reg[2]  ( .D(rwptr_r1[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[2]) );
  DFFSR \rwptr_r2_reg[1]  ( .D(rwptr_r1[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[1]) );
  DFFSR \rwptr_r2_reg[0]  ( .D(rwptr_r1[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[0]) );
  DFFSR empty_flag_r_reg ( .D(N3), .CLK(rclk), .R(1'b1), .S(rst_n), .Q(
        empty_flag) );
  DFFSR \raddr_reg[2]  ( .D(\gray_rptr[2] ), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(raddr[2]) );
  DFFSR \raddr_reg[1]  ( .D(rptr_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        raddr[1]) );
  DFFSR \raddr_reg[0]  ( .D(rptr_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        raddr[0]) );
  read_ptr_2 RPU1 ( .rclk(rclk), .rst_n(rst_n), .renable(renable_p2), .rptr(
        rptr), .rptr_nxt(rptr_nxt) );
  NOR2X1 U15 ( .A(empty_flag), .B(n1), .Y(renable_p2) );
  INVX1 U16 ( .A(renable), .Y(n1) );
  NOR2X1 U17 ( .A(n2), .B(n15), .Y(N3) );
  NAND2X1 U18 ( .A(n16), .B(n17), .Y(n15) );
  XOR2X1 U19 ( .A(n18), .B(\gray_rptr[2] ), .Y(n17) );
  XOR2X1 U20 ( .A(rptr_nxt[3]), .B(rptr_nxt[2]), .Y(\gray_rptr[2] ) );
  XNOR2X1 U21 ( .A(rwptr_r2[3]), .B(rwptr_r2[2]), .Y(n18) );
  XNOR2X1 U22 ( .A(rwptr_r2[1]), .B(rptr_nxt[1]), .Y(n16) );
  NAND2X1 U23 ( .A(n19), .B(n20), .Y(n2) );
  XNOR2X1 U24 ( .A(rwptr_r2[0]), .B(rptr_nxt[0]), .Y(n20) );
  XNOR2X1 U25 ( .A(rptr_nxt[3]), .B(rwptr_r2[3]), .Y(n19) );
endmodule


module fifo_2 ( rclk, wclk, rst_n, renable, wenable, wdata, rdata, empty, full
 );
  input [7:0] wdata;
  output [7:0] rdata;
  input rclk, wclk, rst_n, renable, wenable;
  output empty, full;
  wire   wenable_fifo;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] rptr;
  wire   [3:0] wptr;

  fiforam_2 UFIFORAM ( .wclk(wclk), .wenable(wenable_fifo), .waddr(waddr), 
        .raddr(raddr), .wdata(wdata), .rdata(rdata) );
  write_fifo_ctrl_2 UWFC ( .wclk(wclk), .rst_n(rst_n), .wenable(wenable), 
        .rptr(rptr), .wenable_fifo(wenable_fifo), .wptr(wptr), .waddr(waddr), 
        .full_flag(full) );
  read_fifo_ctrl_2 URFC ( .rclk(rclk), .rst_n(rst_n), .renable(renable), 
        .wptr(wptr), .rptr(rptr), .raddr(raddr), .empty_flag(empty) );
endmodule


module RCV_FIFO_2 ( CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE, WDATA, R_DATA, 
        EMPTY, FULL );
  input [7:0] WDATA;
  output [7:0] R_DATA;
  input CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE;
  output EMPTY, FULL;


  fifo_2 MAPPING ( .rclk(CLK), .wclk(D_CLK), .rst_n(RST_N), .renable(R_ENABLE), 
        .wenable(W_ENABLE), .wdata(WDATA), .rdata(R_DATA), .empty(EMPTY), 
        .full(FULL) );
endmodule


module e_DeCompile ( OUTDATA, D_ENABLE, CLK, DATA, W_ENABLE );
  input [63:0] OUTDATA;
  output [7:0] DATA;
  input D_ENABLE, CLK;
  output W_ENABLE;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86;
  wire   [3:0] state;
  wire   [3:0] nextstate;

  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(CLK), .R(D_ENABLE), .S(1'b1), 
        .Q(state[0]) );
  DFFSR \state_reg[3]  ( .D(nextstate[3]), .CLK(CLK), .R(D_ENABLE), .S(1'b1), 
        .Q(state[3]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(CLK), .R(D_ENABLE), .S(1'b1), 
        .Q(state[1]) );
  DFFSR \state_reg[2]  ( .D(nextstate[2]), .CLK(CLK), .R(D_ENABLE), .S(1'b1), 
        .Q(state[2]) );
  AND2X2 U4 ( .A(n80), .B(n72), .Y(n5) );
  INVX2 U8 ( .A(n72), .Y(n6) );
  INVX1 U9 ( .A(state[1]), .Y(n72) );
  INVX2 U10 ( .A(n80), .Y(n7) );
  MUX2X1 U11 ( .B(n9), .A(n10), .S(state[1]), .Y(n8) );
  MUX2X1 U12 ( .B(n12), .A(n13), .S(state[1]), .Y(n11) );
  MUX2X1 U13 ( .B(n14), .A(n15), .S(state[3]), .Y(DATA[0]) );
  MUX2X1 U14 ( .B(n17), .A(n18), .S(state[1]), .Y(n16) );
  MUX2X1 U15 ( .B(n20), .A(n21), .S(state[1]), .Y(n19) );
  MUX2X1 U16 ( .B(n22), .A(n23), .S(state[3]), .Y(DATA[1]) );
  MUX2X1 U17 ( .B(n25), .A(n26), .S(state[1]), .Y(n24) );
  MUX2X1 U18 ( .B(n28), .A(n29), .S(state[1]), .Y(n27) );
  MUX2X1 U19 ( .B(n30), .A(n31), .S(state[3]), .Y(DATA[2]) );
  MUX2X1 U20 ( .B(n33), .A(n34), .S(state[1]), .Y(n32) );
  MUX2X1 U21 ( .B(n36), .A(n37), .S(state[1]), .Y(n35) );
  MUX2X1 U22 ( .B(n38), .A(n39), .S(state[3]), .Y(DATA[3]) );
  MUX2X1 U23 ( .B(n41), .A(n42), .S(state[1]), .Y(n40) );
  MUX2X1 U24 ( .B(n44), .A(n45), .S(n6), .Y(n43) );
  MUX2X1 U25 ( .B(n46), .A(n47), .S(state[3]), .Y(DATA[4]) );
  MUX2X1 U26 ( .B(n49), .A(n50), .S(n6), .Y(n48) );
  MUX2X1 U27 ( .B(n52), .A(n53), .S(n6), .Y(n51) );
  MUX2X1 U28 ( .B(n54), .A(n55), .S(state[3]), .Y(DATA[5]) );
  MUX2X1 U29 ( .B(n57), .A(n58), .S(n6), .Y(n56) );
  MUX2X1 U30 ( .B(n60), .A(n61), .S(n6), .Y(n59) );
  MUX2X1 U31 ( .B(n62), .A(n63), .S(state[3]), .Y(DATA[6]) );
  MUX2X1 U32 ( .B(n65), .A(n66), .S(n6), .Y(n64) );
  MUX2X1 U33 ( .B(n68), .A(n69), .S(n6), .Y(n67) );
  MUX2X1 U34 ( .B(n70), .A(n71), .S(state[3]), .Y(DATA[7]) );
  MUX2X1 U35 ( .B(OUTDATA[40]), .A(OUTDATA[8]), .S(state[2]), .Y(n10) );
  MUX2X1 U36 ( .B(OUTDATA[56]), .A(OUTDATA[24]), .S(state[2]), .Y(n9) );
  MUX2X1 U37 ( .B(OUTDATA[48]), .A(OUTDATA[16]), .S(state[2]), .Y(n13) );
  NAND2X1 U38 ( .A(n7), .B(OUTDATA[32]), .Y(n12) );
  MUX2X1 U39 ( .B(n11), .A(n8), .S(state[0]), .Y(n14) );
  NAND2X1 U40 ( .A(OUTDATA[0]), .B(n5), .Y(n15) );
  MUX2X1 U41 ( .B(OUTDATA[41]), .A(OUTDATA[9]), .S(state[2]), .Y(n18) );
  MUX2X1 U42 ( .B(OUTDATA[57]), .A(OUTDATA[25]), .S(state[2]), .Y(n17) );
  MUX2X1 U43 ( .B(OUTDATA[49]), .A(OUTDATA[17]), .S(state[2]), .Y(n21) );
  NAND2X1 U44 ( .A(OUTDATA[33]), .B(n7), .Y(n20) );
  MUX2X1 U45 ( .B(n19), .A(n16), .S(state[0]), .Y(n22) );
  NAND2X1 U46 ( .A(OUTDATA[1]), .B(n5), .Y(n23) );
  MUX2X1 U47 ( .B(OUTDATA[42]), .A(OUTDATA[10]), .S(state[2]), .Y(n26) );
  MUX2X1 U48 ( .B(OUTDATA[58]), .A(OUTDATA[26]), .S(state[2]), .Y(n25) );
  MUX2X1 U49 ( .B(OUTDATA[50]), .A(OUTDATA[18]), .S(state[2]), .Y(n29) );
  NAND2X1 U50 ( .A(OUTDATA[34]), .B(n7), .Y(n28) );
  MUX2X1 U51 ( .B(n27), .A(n24), .S(state[0]), .Y(n30) );
  NAND2X1 U52 ( .A(OUTDATA[2]), .B(n5), .Y(n31) );
  MUX2X1 U53 ( .B(OUTDATA[43]), .A(OUTDATA[11]), .S(n7), .Y(n34) );
  MUX2X1 U54 ( .B(OUTDATA[59]), .A(OUTDATA[27]), .S(n7), .Y(n33) );
  MUX2X1 U55 ( .B(OUTDATA[51]), .A(OUTDATA[19]), .S(n7), .Y(n37) );
  NAND2X1 U56 ( .A(OUTDATA[35]), .B(n7), .Y(n36) );
  MUX2X1 U57 ( .B(n35), .A(n32), .S(state[0]), .Y(n38) );
  NAND2X1 U58 ( .A(OUTDATA[3]), .B(n5), .Y(n39) );
  MUX2X1 U59 ( .B(OUTDATA[44]), .A(OUTDATA[12]), .S(n7), .Y(n42) );
  MUX2X1 U60 ( .B(OUTDATA[60]), .A(OUTDATA[28]), .S(n7), .Y(n41) );
  MUX2X1 U61 ( .B(OUTDATA[52]), .A(OUTDATA[20]), .S(n7), .Y(n45) );
  NAND2X1 U62 ( .A(OUTDATA[36]), .B(n7), .Y(n44) );
  MUX2X1 U63 ( .B(n43), .A(n40), .S(state[0]), .Y(n46) );
  NAND2X1 U64 ( .A(OUTDATA[4]), .B(n5), .Y(n47) );
  MUX2X1 U65 ( .B(OUTDATA[45]), .A(OUTDATA[13]), .S(n7), .Y(n50) );
  MUX2X1 U66 ( .B(OUTDATA[61]), .A(OUTDATA[29]), .S(n7), .Y(n49) );
  MUX2X1 U67 ( .B(OUTDATA[53]), .A(OUTDATA[21]), .S(n7), .Y(n53) );
  NAND2X1 U68 ( .A(OUTDATA[37]), .B(n7), .Y(n52) );
  MUX2X1 U69 ( .B(n51), .A(n48), .S(state[0]), .Y(n54) );
  NAND2X1 U70 ( .A(OUTDATA[5]), .B(n5), .Y(n55) );
  MUX2X1 U71 ( .B(OUTDATA[46]), .A(OUTDATA[14]), .S(n7), .Y(n58) );
  MUX2X1 U72 ( .B(OUTDATA[62]), .A(OUTDATA[30]), .S(n7), .Y(n57) );
  MUX2X1 U73 ( .B(OUTDATA[54]), .A(OUTDATA[22]), .S(n7), .Y(n61) );
  NAND2X1 U74 ( .A(OUTDATA[38]), .B(n7), .Y(n60) );
  MUX2X1 U75 ( .B(n59), .A(n56), .S(state[0]), .Y(n62) );
  NAND2X1 U76 ( .A(OUTDATA[6]), .B(n5), .Y(n63) );
  MUX2X1 U77 ( .B(OUTDATA[47]), .A(OUTDATA[15]), .S(n7), .Y(n66) );
  MUX2X1 U78 ( .B(OUTDATA[63]), .A(OUTDATA[31]), .S(n7), .Y(n65) );
  MUX2X1 U79 ( .B(OUTDATA[55]), .A(OUTDATA[23]), .S(n7), .Y(n69) );
  NAND2X1 U80 ( .A(OUTDATA[39]), .B(n7), .Y(n68) );
  MUX2X1 U81 ( .B(n67), .A(n64), .S(state[0]), .Y(n70) );
  NAND2X1 U82 ( .A(OUTDATA[7]), .B(n5), .Y(n71) );
  MUX2X1 U83 ( .B(n73), .A(n74), .S(n75), .Y(nextstate[3]) );
  OR2X1 U84 ( .A(n76), .B(n77), .Y(n74) );
  NAND2X1 U85 ( .A(n77), .B(n76), .Y(n73) );
  NOR2X1 U86 ( .A(state[3]), .B(n78), .Y(nextstate[2]) );
  XNOR2X1 U87 ( .A(n79), .B(n80), .Y(n78) );
  NOR2X1 U88 ( .A(state[3]), .B(n81), .Y(nextstate[1]) );
  NOR2X1 U89 ( .A(state[0]), .B(n82), .Y(nextstate[0]) );
  MUX2X1 U90 ( .B(n83), .A(n84), .S(n75), .Y(n82) );
  NAND3X1 U91 ( .A(n72), .B(n80), .C(n85), .Y(n84) );
  INVX1 U92 ( .A(D_ENABLE), .Y(n85) );
  NOR2X1 U93 ( .A(n7), .B(n6), .Y(n83) );
  NAND3X1 U94 ( .A(n76), .B(n75), .C(n77), .Y(W_ENABLE) );
  INVX1 U95 ( .A(n86), .Y(n77) );
  OAI21X1 U96 ( .A(n81), .B(n80), .C(n79), .Y(n86) );
  INVX1 U97 ( .A(state[3]), .Y(n75) );
  XNOR2X1 U98 ( .A(n81), .B(n80), .Y(n76) );
  INVX1 U99 ( .A(state[2]), .Y(n80) );
  OAI21X1 U100 ( .A(n6), .B(state[0]), .C(n79), .Y(n81) );
  NAND2X1 U101 ( .A(n6), .B(state[0]), .Y(n79) );
endmodule


module e_encController ( DATA, FULL, EMPTY, CLK, RST, START, R_ENABLE, 
        W_ENABLE, ENC_LEFT, ENC_RIGHT );
  input [7:0] DATA;
  output [31:0] ENC_LEFT;
  output [31:0] ENC_RIGHT;
  input FULL, EMPTY, CLK, RST;
  output START, R_ENABLE, W_ENABLE;
  wire   N23, N273, n215, n217, n219, n221, n227, n229, n230, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214;
  wire   [3:0] compileCT;
  wire   [3:0] nxtCompCT;
  wire   [4:0] rndCT;
  wire   [7:0] cData1;
  wire   [7:0] cData2;
  wire   [7:0] cData3;
  wire   [7:0] cData4;
  wire   [7:0] cData5;
  wire   [7:0] cData6;
  wire   [7:0] cData7;
  wire   [7:0] cData8;

  DFFSR \rndCT_reg[0]  ( .D(n229), .CLK(CLK), .R(n214), .S(1'b1), .Q(rndCT[0])
         );
  DFFSR \rndCT_reg[1]  ( .D(n227), .CLK(CLK), .R(n214), .S(1'b1), .Q(rndCT[1])
         );
  DFFSR \compileCT_reg[3]  ( .D(nxtCompCT[3]), .CLK(CLK), .R(n214), .S(1'b1), 
        .Q(compileCT[3]) );
  DFFSR \compileCT_reg[1]  ( .D(n230), .CLK(CLK), .R(n214), .S(1'b1), .Q(
        compileCT[1]) );
  DFFSR \compileCT_reg[2]  ( .D(nxtCompCT[2]), .CLK(CLK), .R(n214), .S(1'b1), 
        .Q(compileCT[2]) );
  DFFSR \compileCT_reg[0]  ( .D(n213), .CLK(CLK), .R(n214), .S(1'b1), .Q(
        compileCT[0]) );
  DFFSR \rndCT_reg[2]  ( .D(n221), .CLK(CLK), .R(n214), .S(1'b1), .Q(rndCT[2])
         );
  DFFSR \rndCT_reg[3]  ( .D(n219), .CLK(CLK), .R(n214), .S(1'b1), .Q(rndCT[3])
         );
  DFFSR \rndCT_reg[4]  ( .D(n217), .CLK(CLK), .R(n214), .S(1'b1), .Q(N23) );
  DFFPOSX1 cD_ENABLE_reg ( .D(n215), .CLK(CLK), .Q(W_ENABLE) );
  DFFPOSX1 \cData2_reg[7]  ( .D(n353), .CLK(CLK), .Q(cData2[7]) );
  DFFPOSX1 \cData2_reg[6]  ( .D(n354), .CLK(CLK), .Q(cData2[6]) );
  DFFPOSX1 \cData2_reg[5]  ( .D(n355), .CLK(CLK), .Q(cData2[5]) );
  DFFPOSX1 \cData2_reg[4]  ( .D(n356), .CLK(CLK), .Q(cData2[4]) );
  DFFPOSX1 \cData2_reg[3]  ( .D(n357), .CLK(CLK), .Q(cData2[3]) );
  DFFPOSX1 \cData2_reg[2]  ( .D(n358), .CLK(CLK), .Q(cData2[2]) );
  DFFPOSX1 \cData2_reg[1]  ( .D(n359), .CLK(CLK), .Q(cData2[1]) );
  DFFPOSX1 \cData2_reg[0]  ( .D(n360), .CLK(CLK), .Q(cData2[0]) );
  DFFPOSX1 \cData8_reg[7]  ( .D(n297), .CLK(CLK), .Q(cData8[7]) );
  DFFPOSX1 \cData8_reg[6]  ( .D(n298), .CLK(CLK), .Q(cData8[6]) );
  DFFPOSX1 \cData8_reg[5]  ( .D(n299), .CLK(CLK), .Q(cData8[5]) );
  DFFPOSX1 \cData8_reg[4]  ( .D(n300), .CLK(CLK), .Q(cData8[4]) );
  DFFPOSX1 \cData8_reg[3]  ( .D(n301), .CLK(CLK), .Q(cData8[3]) );
  DFFPOSX1 \cData8_reg[2]  ( .D(n302), .CLK(CLK), .Q(cData8[2]) );
  DFFPOSX1 \cData8_reg[1]  ( .D(n303), .CLK(CLK), .Q(cData8[1]) );
  DFFPOSX1 \cData8_reg[0]  ( .D(n304), .CLK(CLK), .Q(cData8[0]) );
  DFFPOSX1 \cData7_reg[7]  ( .D(n305), .CLK(CLK), .Q(cData7[7]) );
  DFFPOSX1 \cData7_reg[6]  ( .D(n306), .CLK(CLK), .Q(cData7[6]) );
  DFFPOSX1 \cData7_reg[5]  ( .D(n307), .CLK(CLK), .Q(cData7[5]) );
  DFFPOSX1 \cData7_reg[4]  ( .D(n308), .CLK(CLK), .Q(cData7[4]) );
  DFFPOSX1 \cData7_reg[3]  ( .D(n309), .CLK(CLK), .Q(cData7[3]) );
  DFFPOSX1 \cData7_reg[2]  ( .D(n310), .CLK(CLK), .Q(cData7[2]) );
  DFFPOSX1 \cData7_reg[1]  ( .D(n311), .CLK(CLK), .Q(cData7[1]) );
  DFFPOSX1 \cData7_reg[0]  ( .D(n312), .CLK(CLK), .Q(cData7[0]) );
  DFFPOSX1 \cData6_reg[7]  ( .D(n313), .CLK(CLK), .Q(cData6[7]) );
  DFFPOSX1 \cData6_reg[6]  ( .D(n314), .CLK(CLK), .Q(cData6[6]) );
  DFFPOSX1 \cData6_reg[5]  ( .D(n315), .CLK(CLK), .Q(cData6[5]) );
  DFFPOSX1 \cData6_reg[4]  ( .D(n316), .CLK(CLK), .Q(cData6[4]) );
  DFFPOSX1 \cData6_reg[3]  ( .D(n317), .CLK(CLK), .Q(cData6[3]) );
  DFFPOSX1 \cData6_reg[2]  ( .D(n318), .CLK(CLK), .Q(cData6[2]) );
  DFFPOSX1 \cData6_reg[1]  ( .D(n319), .CLK(CLK), .Q(cData6[1]) );
  DFFPOSX1 \cData6_reg[0]  ( .D(n320), .CLK(CLK), .Q(cData6[0]) );
  DFFPOSX1 \cData5_reg[7]  ( .D(n321), .CLK(CLK), .Q(cData5[7]) );
  DFFPOSX1 \cData5_reg[6]  ( .D(n322), .CLK(CLK), .Q(cData5[6]) );
  DFFPOSX1 \cData5_reg[5]  ( .D(n323), .CLK(CLK), .Q(cData5[5]) );
  DFFPOSX1 \cData5_reg[4]  ( .D(n324), .CLK(CLK), .Q(cData5[4]) );
  DFFPOSX1 \cData5_reg[3]  ( .D(n325), .CLK(CLK), .Q(cData5[3]) );
  DFFPOSX1 \cData5_reg[2]  ( .D(n326), .CLK(CLK), .Q(cData5[2]) );
  DFFPOSX1 \cData5_reg[1]  ( .D(n327), .CLK(CLK), .Q(cData5[1]) );
  DFFPOSX1 \cData5_reg[0]  ( .D(n328), .CLK(CLK), .Q(cData5[0]) );
  DFFPOSX1 \cData4_reg[7]  ( .D(n329), .CLK(CLK), .Q(cData4[7]) );
  DFFPOSX1 \cData4_reg[6]  ( .D(n330), .CLK(CLK), .Q(cData4[6]) );
  DFFPOSX1 \cData4_reg[5]  ( .D(n331), .CLK(CLK), .Q(cData4[5]) );
  DFFPOSX1 \cData4_reg[4]  ( .D(n332), .CLK(CLK), .Q(cData4[4]) );
  DFFPOSX1 \cData4_reg[3]  ( .D(n333), .CLK(CLK), .Q(cData4[3]) );
  DFFPOSX1 \cData4_reg[2]  ( .D(n334), .CLK(CLK), .Q(cData4[2]) );
  DFFPOSX1 \cData4_reg[1]  ( .D(n335), .CLK(CLK), .Q(cData4[1]) );
  DFFPOSX1 \cData4_reg[0]  ( .D(n336), .CLK(CLK), .Q(cData4[0]) );
  DFFPOSX1 \cData3_reg[7]  ( .D(n337), .CLK(CLK), .Q(cData3[7]) );
  DFFPOSX1 \cData3_reg[6]  ( .D(n338), .CLK(CLK), .Q(cData3[6]) );
  DFFPOSX1 \cData3_reg[5]  ( .D(n339), .CLK(CLK), .Q(cData3[5]) );
  DFFPOSX1 \cData3_reg[4]  ( .D(n340), .CLK(CLK), .Q(cData3[4]) );
  DFFPOSX1 \cData3_reg[3]  ( .D(n341), .CLK(CLK), .Q(cData3[3]) );
  DFFPOSX1 \cData3_reg[2]  ( .D(n342), .CLK(CLK), .Q(cData3[2]) );
  DFFPOSX1 \cData3_reg[1]  ( .D(n343), .CLK(CLK), .Q(cData3[1]) );
  DFFPOSX1 \cData3_reg[0]  ( .D(n344), .CLK(CLK), .Q(cData3[0]) );
  DFFPOSX1 \cData1_reg[7]  ( .D(n345), .CLK(CLK), .Q(cData1[7]) );
  DFFPOSX1 \cData1_reg[6]  ( .D(n346), .CLK(CLK), .Q(cData1[6]) );
  DFFPOSX1 \cData1_reg[5]  ( .D(n347), .CLK(CLK), .Q(cData1[5]) );
  DFFPOSX1 \cData1_reg[4]  ( .D(n348), .CLK(CLK), .Q(cData1[4]) );
  DFFPOSX1 \cData1_reg[3]  ( .D(n349), .CLK(CLK), .Q(cData1[3]) );
  DFFPOSX1 \cData1_reg[2]  ( .D(n350), .CLK(CLK), .Q(cData1[2]) );
  DFFPOSX1 \cData1_reg[1]  ( .D(n351), .CLK(CLK), .Q(cData1[1]) );
  DFFPOSX1 \cData1_reg[0]  ( .D(n352), .CLK(CLK), .Q(cData1[0]) );
  DFFPOSX1 \CompData2_reg[63]  ( .D(n233), .CLK(CLK), .Q(ENC_LEFT[31]) );
  DFFPOSX1 \CompData2_reg[62]  ( .D(n234), .CLK(CLK), .Q(ENC_LEFT[30]) );
  DFFPOSX1 \CompData2_reg[61]  ( .D(n235), .CLK(CLK), .Q(ENC_LEFT[29]) );
  DFFPOSX1 \CompData2_reg[60]  ( .D(n236), .CLK(CLK), .Q(ENC_LEFT[28]) );
  DFFPOSX1 \CompData2_reg[59]  ( .D(n237), .CLK(CLK), .Q(ENC_LEFT[27]) );
  DFFPOSX1 \CompData2_reg[58]  ( .D(n238), .CLK(CLK), .Q(ENC_LEFT[26]) );
  DFFPOSX1 \CompData2_reg[57]  ( .D(n239), .CLK(CLK), .Q(ENC_LEFT[25]) );
  DFFPOSX1 \CompData2_reg[56]  ( .D(n240), .CLK(CLK), .Q(ENC_LEFT[24]) );
  DFFPOSX1 \CompData2_reg[55]  ( .D(n241), .CLK(CLK), .Q(ENC_LEFT[23]) );
  DFFPOSX1 \CompData2_reg[54]  ( .D(n242), .CLK(CLK), .Q(ENC_LEFT[22]) );
  DFFPOSX1 \CompData2_reg[53]  ( .D(n243), .CLK(CLK), .Q(ENC_LEFT[21]) );
  DFFPOSX1 \CompData2_reg[52]  ( .D(n244), .CLK(CLK), .Q(ENC_LEFT[20]) );
  DFFPOSX1 \CompData2_reg[51]  ( .D(n245), .CLK(CLK), .Q(ENC_LEFT[19]) );
  DFFPOSX1 \CompData2_reg[50]  ( .D(n246), .CLK(CLK), .Q(ENC_LEFT[18]) );
  DFFPOSX1 \CompData2_reg[49]  ( .D(n247), .CLK(CLK), .Q(ENC_LEFT[17]) );
  DFFPOSX1 \CompData2_reg[48]  ( .D(n248), .CLK(CLK), .Q(ENC_LEFT[16]) );
  DFFPOSX1 \CompData2_reg[47]  ( .D(n249), .CLK(CLK), .Q(ENC_LEFT[15]) );
  DFFPOSX1 \CompData2_reg[46]  ( .D(n250), .CLK(CLK), .Q(ENC_LEFT[14]) );
  DFFPOSX1 \CompData2_reg[45]  ( .D(n251), .CLK(CLK), .Q(ENC_LEFT[13]) );
  DFFPOSX1 \CompData2_reg[44]  ( .D(n252), .CLK(CLK), .Q(ENC_LEFT[12]) );
  DFFPOSX1 \CompData2_reg[43]  ( .D(n253), .CLK(CLK), .Q(ENC_LEFT[11]) );
  DFFPOSX1 \CompData2_reg[42]  ( .D(n254), .CLK(CLK), .Q(ENC_LEFT[10]) );
  DFFPOSX1 \CompData2_reg[41]  ( .D(n255), .CLK(CLK), .Q(ENC_LEFT[9]) );
  DFFPOSX1 \CompData2_reg[40]  ( .D(n256), .CLK(CLK), .Q(ENC_LEFT[8]) );
  DFFPOSX1 \CompData2_reg[39]  ( .D(n257), .CLK(CLK), .Q(ENC_LEFT[7]) );
  DFFPOSX1 \CompData2_reg[38]  ( .D(n258), .CLK(CLK), .Q(ENC_LEFT[6]) );
  DFFPOSX1 \CompData2_reg[37]  ( .D(n259), .CLK(CLK), .Q(ENC_LEFT[5]) );
  DFFPOSX1 \CompData2_reg[36]  ( .D(n260), .CLK(CLK), .Q(ENC_LEFT[4]) );
  DFFPOSX1 \CompData2_reg[35]  ( .D(n261), .CLK(CLK), .Q(ENC_LEFT[3]) );
  DFFPOSX1 \CompData2_reg[34]  ( .D(n262), .CLK(CLK), .Q(ENC_LEFT[2]) );
  DFFPOSX1 \CompData2_reg[33]  ( .D(n263), .CLK(CLK), .Q(ENC_LEFT[1]) );
  DFFPOSX1 \CompData2_reg[32]  ( .D(n264), .CLK(CLK), .Q(ENC_LEFT[0]) );
  DFFPOSX1 \CompData2_reg[31]  ( .D(n265), .CLK(CLK), .Q(ENC_RIGHT[31]) );
  DFFPOSX1 \CompData2_reg[30]  ( .D(n266), .CLK(CLK), .Q(ENC_RIGHT[30]) );
  DFFPOSX1 \CompData2_reg[29]  ( .D(n267), .CLK(CLK), .Q(ENC_RIGHT[29]) );
  DFFPOSX1 \CompData2_reg[28]  ( .D(n268), .CLK(CLK), .Q(ENC_RIGHT[28]) );
  DFFPOSX1 \CompData2_reg[27]  ( .D(n269), .CLK(CLK), .Q(ENC_RIGHT[27]) );
  DFFPOSX1 \CompData2_reg[26]  ( .D(n270), .CLK(CLK), .Q(ENC_RIGHT[26]) );
  DFFPOSX1 \CompData2_reg[25]  ( .D(n271), .CLK(CLK), .Q(ENC_RIGHT[25]) );
  DFFPOSX1 \CompData2_reg[24]  ( .D(n272), .CLK(CLK), .Q(ENC_RIGHT[24]) );
  DFFPOSX1 \CompData2_reg[23]  ( .D(n273), .CLK(CLK), .Q(ENC_RIGHT[23]) );
  DFFPOSX1 \CompData2_reg[22]  ( .D(n274), .CLK(CLK), .Q(ENC_RIGHT[22]) );
  DFFPOSX1 \CompData2_reg[21]  ( .D(n275), .CLK(CLK), .Q(ENC_RIGHT[21]) );
  DFFPOSX1 \CompData2_reg[20]  ( .D(n276), .CLK(CLK), .Q(ENC_RIGHT[20]) );
  DFFPOSX1 \CompData2_reg[19]  ( .D(n277), .CLK(CLK), .Q(ENC_RIGHT[19]) );
  DFFPOSX1 \CompData2_reg[18]  ( .D(n278), .CLK(CLK), .Q(ENC_RIGHT[18]) );
  DFFPOSX1 \CompData2_reg[17]  ( .D(n279), .CLK(CLK), .Q(ENC_RIGHT[17]) );
  DFFPOSX1 \CompData2_reg[16]  ( .D(n280), .CLK(CLK), .Q(ENC_RIGHT[16]) );
  DFFPOSX1 \CompData2_reg[15]  ( .D(n281), .CLK(CLK), .Q(ENC_RIGHT[15]) );
  DFFPOSX1 \CompData2_reg[14]  ( .D(n282), .CLK(CLK), .Q(ENC_RIGHT[14]) );
  DFFPOSX1 \CompData2_reg[13]  ( .D(n283), .CLK(CLK), .Q(ENC_RIGHT[13]) );
  DFFPOSX1 \CompData2_reg[12]  ( .D(n284), .CLK(CLK), .Q(ENC_RIGHT[12]) );
  DFFPOSX1 \CompData2_reg[11]  ( .D(n285), .CLK(CLK), .Q(ENC_RIGHT[11]) );
  DFFPOSX1 \CompData2_reg[10]  ( .D(n286), .CLK(CLK), .Q(ENC_RIGHT[10]) );
  DFFPOSX1 \CompData2_reg[9]  ( .D(n287), .CLK(CLK), .Q(ENC_RIGHT[9]) );
  DFFPOSX1 \CompData2_reg[8]  ( .D(n288), .CLK(CLK), .Q(ENC_RIGHT[8]) );
  DFFPOSX1 \CompData2_reg[7]  ( .D(n289), .CLK(CLK), .Q(ENC_RIGHT[7]) );
  DFFPOSX1 \CompData2_reg[6]  ( .D(n290), .CLK(CLK), .Q(ENC_RIGHT[6]) );
  DFFPOSX1 \CompData2_reg[5]  ( .D(n291), .CLK(CLK), .Q(ENC_RIGHT[5]) );
  DFFPOSX1 \CompData2_reg[4]  ( .D(n292), .CLK(CLK), .Q(ENC_RIGHT[4]) );
  DFFPOSX1 \CompData2_reg[3]  ( .D(n293), .CLK(CLK), .Q(ENC_RIGHT[3]) );
  DFFPOSX1 \CompData2_reg[2]  ( .D(n294), .CLK(CLK), .Q(ENC_RIGHT[2]) );
  DFFPOSX1 \CompData2_reg[1]  ( .D(n295), .CLK(CLK), .Q(ENC_RIGHT[1]) );
  DFFPOSX1 \CompData2_reg[0]  ( .D(n296), .CLK(CLK), .Q(ENC_RIGHT[0]) );
  NAND2X1 U3 ( .A(n4), .B(n39), .Y(n1) );
  AND2X2 U4 ( .A(nxtCompCT[3]), .B(n230), .Y(n2) );
  INVX4 U5 ( .A(n1), .Y(n3) );
  INVX8 U6 ( .A(n2), .Y(n4) );
  INVX2 U7 ( .A(RST), .Y(n214) );
  INVX2 U8 ( .A(N273), .Y(n5) );
  INVX8 U9 ( .A(n5), .Y(START) );
  OAI22X1 U10 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n360) );
  OAI22X1 U11 ( .A(n7), .B(n11), .C(n9), .D(n12), .Y(n359) );
  OAI22X1 U12 ( .A(n7), .B(n13), .C(n9), .D(n14), .Y(n358) );
  OAI22X1 U13 ( .A(n7), .B(n15), .C(n9), .D(n16), .Y(n357) );
  OAI22X1 U14 ( .A(n7), .B(n17), .C(n9), .D(n18), .Y(n356) );
  OAI22X1 U15 ( .A(n7), .B(n19), .C(n9), .D(n20), .Y(n355) );
  OAI22X1 U16 ( .A(n7), .B(n21), .C(n9), .D(n22), .Y(n354) );
  OAI22X1 U17 ( .A(n7), .B(n23), .C(n9), .D(n24), .Y(n353) );
  OAI21X1 U18 ( .A(nxtCompCT[3]), .B(n25), .C(n7), .Y(n9) );
  NAND2X1 U19 ( .A(n26), .B(n27), .Y(n25) );
  NAND3X1 U20 ( .A(n26), .B(n230), .C(n28), .Y(n7) );
  OAI22X1 U21 ( .A(n8), .B(n29), .C(n30), .D(n31), .Y(n352) );
  OAI22X1 U22 ( .A(n11), .B(n29), .C(n30), .D(n32), .Y(n351) );
  OAI22X1 U23 ( .A(n13), .B(n29), .C(n30), .D(n33), .Y(n350) );
  OAI22X1 U24 ( .A(n15), .B(n29), .C(n30), .D(n34), .Y(n349) );
  OAI22X1 U25 ( .A(n17), .B(n29), .C(n30), .D(n35), .Y(n348) );
  OAI22X1 U26 ( .A(n19), .B(n29), .C(n30), .D(n36), .Y(n347) );
  OAI22X1 U27 ( .A(n21), .B(n29), .C(n30), .D(n37), .Y(n346) );
  OAI22X1 U28 ( .A(n23), .B(n29), .C(n30), .D(n38), .Y(n345) );
  NAND2X1 U29 ( .A(n39), .B(n29), .Y(n30) );
  NAND2X1 U30 ( .A(n40), .B(n28), .Y(n29) );
  OAI22X1 U31 ( .A(n8), .B(n41), .C(n42), .D(n43), .Y(n344) );
  OAI22X1 U32 ( .A(n11), .B(n41), .C(n42), .D(n44), .Y(n343) );
  OAI22X1 U33 ( .A(n13), .B(n41), .C(n42), .D(n45), .Y(n342) );
  OAI22X1 U34 ( .A(n15), .B(n41), .C(n42), .D(n46), .Y(n341) );
  OAI22X1 U35 ( .A(n17), .B(n41), .C(n42), .D(n47), .Y(n340) );
  OAI22X1 U36 ( .A(n19), .B(n41), .C(n42), .D(n48), .Y(n339) );
  OAI22X1 U37 ( .A(n21), .B(n41), .C(n42), .D(n49), .Y(n338) );
  OAI22X1 U38 ( .A(n23), .B(n41), .C(n42), .D(n50), .Y(n337) );
  NAND2X1 U39 ( .A(n39), .B(n41), .Y(n42) );
  NAND3X1 U40 ( .A(n51), .B(n27), .C(nxtCompCT[2]), .Y(n41) );
  OAI22X1 U41 ( .A(n8), .B(n52), .C(n53), .D(n54), .Y(n336) );
  OAI22X1 U42 ( .A(n11), .B(n52), .C(n53), .D(n55), .Y(n335) );
  OAI22X1 U43 ( .A(n13), .B(n52), .C(n53), .D(n56), .Y(n334) );
  OAI22X1 U44 ( .A(n15), .B(n52), .C(n53), .D(n57), .Y(n333) );
  OAI22X1 U45 ( .A(n17), .B(n52), .C(n53), .D(n58), .Y(n332) );
  OAI22X1 U46 ( .A(n19), .B(n52), .C(n53), .D(n59), .Y(n331) );
  OAI22X1 U47 ( .A(n21), .B(n52), .C(n53), .D(n60), .Y(n330) );
  OAI22X1 U48 ( .A(n23), .B(n52), .C(n53), .D(n61), .Y(n329) );
  NAND2X1 U49 ( .A(n39), .B(n52), .Y(n53) );
  NAND3X1 U50 ( .A(n51), .B(nxtCompCT[2]), .C(n28), .Y(n52) );
  OAI22X1 U51 ( .A(n8), .B(n62), .C(n63), .D(n64), .Y(n328) );
  OAI22X1 U52 ( .A(n11), .B(n62), .C(n63), .D(n65), .Y(n327) );
  OAI22X1 U53 ( .A(n13), .B(n62), .C(n63), .D(n66), .Y(n326) );
  OAI22X1 U54 ( .A(n15), .B(n62), .C(n63), .D(n67), .Y(n325) );
  OAI22X1 U55 ( .A(n17), .B(n62), .C(n63), .D(n68), .Y(n324) );
  OAI22X1 U56 ( .A(n19), .B(n62), .C(n63), .D(n69), .Y(n323) );
  OAI22X1 U57 ( .A(n21), .B(n62), .C(n63), .D(n70), .Y(n322) );
  OAI22X1 U58 ( .A(n23), .B(n62), .C(n63), .D(n71), .Y(n321) );
  NAND2X1 U59 ( .A(n39), .B(n62), .Y(n63) );
  NAND3X1 U60 ( .A(nxtCompCT[2]), .B(n27), .C(n230), .Y(n62) );
  OAI22X1 U61 ( .A(n8), .B(n72), .C(n73), .D(n74), .Y(n320) );
  OAI22X1 U62 ( .A(n11), .B(n72), .C(n73), .D(n75), .Y(n319) );
  OAI22X1 U63 ( .A(n13), .B(n72), .C(n73), .D(n76), .Y(n318) );
  OAI22X1 U64 ( .A(n15), .B(n72), .C(n73), .D(n77), .Y(n317) );
  OAI22X1 U65 ( .A(n17), .B(n72), .C(n73), .D(n78), .Y(n316) );
  OAI22X1 U66 ( .A(n19), .B(n72), .C(n73), .D(n79), .Y(n315) );
  OAI22X1 U67 ( .A(n21), .B(n72), .C(n73), .D(n80), .Y(n314) );
  OAI22X1 U68 ( .A(n23), .B(n72), .C(n73), .D(n81), .Y(n313) );
  NAND2X1 U69 ( .A(n39), .B(n72), .Y(n73) );
  NAND3X1 U70 ( .A(n230), .B(nxtCompCT[2]), .C(n28), .Y(n72) );
  NOR2X1 U71 ( .A(n27), .B(nxtCompCT[3]), .Y(n28) );
  OAI22X1 U72 ( .A(n8), .B(n82), .C(n83), .D(n84), .Y(n312) );
  OAI22X1 U73 ( .A(n11), .B(n82), .C(n83), .D(n85), .Y(n311) );
  OAI22X1 U74 ( .A(n13), .B(n82), .C(n83), .D(n86), .Y(n310) );
  OAI22X1 U75 ( .A(n15), .B(n82), .C(n83), .D(n87), .Y(n309) );
  OAI22X1 U76 ( .A(n17), .B(n82), .C(n83), .D(n88), .Y(n308) );
  OAI22X1 U77 ( .A(n19), .B(n82), .C(n83), .D(n89), .Y(n307) );
  OAI22X1 U78 ( .A(n21), .B(n82), .C(n83), .D(n90), .Y(n306) );
  OAI22X1 U79 ( .A(n23), .B(n82), .C(n83), .D(n91), .Y(n305) );
  NAND2X1 U80 ( .A(n39), .B(n82), .Y(n83) );
  NAND3X1 U81 ( .A(n40), .B(n27), .C(nxtCompCT[3]), .Y(n82) );
  OAI22X1 U82 ( .A(n8), .B(n92), .C(n93), .D(n94), .Y(n304) );
  INVX1 U83 ( .A(DATA[0]), .Y(n8) );
  OAI22X1 U84 ( .A(n11), .B(n92), .C(n93), .D(n95), .Y(n303) );
  INVX1 U85 ( .A(DATA[1]), .Y(n11) );
  OAI22X1 U86 ( .A(n13), .B(n92), .C(n93), .D(n96), .Y(n302) );
  INVX1 U87 ( .A(DATA[2]), .Y(n13) );
  OAI22X1 U88 ( .A(n15), .B(n92), .C(n93), .D(n97), .Y(n301) );
  INVX1 U89 ( .A(DATA[3]), .Y(n15) );
  OAI22X1 U90 ( .A(n17), .B(n92), .C(n93), .D(n98), .Y(n300) );
  INVX1 U91 ( .A(DATA[4]), .Y(n17) );
  OAI22X1 U92 ( .A(n19), .B(n92), .C(n93), .D(n99), .Y(n299) );
  INVX1 U93 ( .A(DATA[5]), .Y(n19) );
  OAI22X1 U94 ( .A(n21), .B(n92), .C(n93), .D(n100), .Y(n298) );
  INVX1 U95 ( .A(DATA[6]), .Y(n21) );
  OAI22X1 U96 ( .A(n23), .B(n92), .C(n93), .D(n101), .Y(n297) );
  NAND2X1 U97 ( .A(n39), .B(n92), .Y(n93) );
  NAND2X1 U98 ( .A(nxtCompCT[3]), .B(n213), .Y(n92) );
  INVX1 U99 ( .A(n27), .Y(n213) );
  INVX1 U100 ( .A(DATA[7]), .Y(n23) );
  OAI21X1 U101 ( .A(n94), .B(n4), .C(n102), .Y(n296) );
  NAND2X1 U102 ( .A(ENC_RIGHT[0]), .B(n3), .Y(n102) );
  INVX1 U103 ( .A(cData8[0]), .Y(n94) );
  OAI21X1 U104 ( .A(n95), .B(n4), .C(n103), .Y(n295) );
  NAND2X1 U105 ( .A(ENC_RIGHT[1]), .B(n3), .Y(n103) );
  INVX1 U106 ( .A(cData8[1]), .Y(n95) );
  OAI21X1 U107 ( .A(n96), .B(n4), .C(n104), .Y(n294) );
  NAND2X1 U108 ( .A(ENC_RIGHT[2]), .B(n3), .Y(n104) );
  INVX1 U109 ( .A(cData8[2]), .Y(n96) );
  OAI21X1 U110 ( .A(n97), .B(n4), .C(n105), .Y(n293) );
  NAND2X1 U111 ( .A(ENC_RIGHT[3]), .B(n3), .Y(n105) );
  INVX1 U112 ( .A(cData8[3]), .Y(n97) );
  OAI21X1 U113 ( .A(n98), .B(n4), .C(n106), .Y(n292) );
  NAND2X1 U114 ( .A(ENC_RIGHT[4]), .B(n3), .Y(n106) );
  INVX1 U115 ( .A(cData8[4]), .Y(n98) );
  OAI21X1 U116 ( .A(n99), .B(n4), .C(n107), .Y(n291) );
  NAND2X1 U117 ( .A(ENC_RIGHT[5]), .B(n3), .Y(n107) );
  INVX1 U118 ( .A(cData8[5]), .Y(n99) );
  OAI21X1 U119 ( .A(n100), .B(n4), .C(n108), .Y(n290) );
  NAND2X1 U120 ( .A(ENC_RIGHT[6]), .B(n3), .Y(n108) );
  INVX1 U121 ( .A(cData8[6]), .Y(n100) );
  OAI21X1 U122 ( .A(n101), .B(n4), .C(n109), .Y(n289) );
  NAND2X1 U123 ( .A(ENC_RIGHT[7]), .B(n3), .Y(n109) );
  INVX1 U124 ( .A(cData8[7]), .Y(n101) );
  OAI21X1 U125 ( .A(n84), .B(n4), .C(n110), .Y(n288) );
  NAND2X1 U126 ( .A(ENC_RIGHT[8]), .B(n3), .Y(n110) );
  INVX1 U127 ( .A(cData7[0]), .Y(n84) );
  OAI21X1 U128 ( .A(n85), .B(n4), .C(n111), .Y(n287) );
  NAND2X1 U129 ( .A(ENC_RIGHT[9]), .B(n3), .Y(n111) );
  INVX1 U130 ( .A(cData7[1]), .Y(n85) );
  OAI21X1 U131 ( .A(n86), .B(n4), .C(n112), .Y(n286) );
  NAND2X1 U132 ( .A(ENC_RIGHT[10]), .B(n3), .Y(n112) );
  INVX1 U133 ( .A(cData7[2]), .Y(n86) );
  OAI21X1 U134 ( .A(n87), .B(n4), .C(n113), .Y(n285) );
  NAND2X1 U135 ( .A(ENC_RIGHT[11]), .B(n3), .Y(n113) );
  INVX1 U136 ( .A(cData7[3]), .Y(n87) );
  OAI21X1 U137 ( .A(n88), .B(n4), .C(n114), .Y(n284) );
  NAND2X1 U138 ( .A(ENC_RIGHT[12]), .B(n3), .Y(n114) );
  INVX1 U139 ( .A(cData7[4]), .Y(n88) );
  OAI21X1 U140 ( .A(n89), .B(n4), .C(n115), .Y(n283) );
  NAND2X1 U141 ( .A(ENC_RIGHT[13]), .B(n3), .Y(n115) );
  INVX1 U142 ( .A(cData7[5]), .Y(n89) );
  OAI21X1 U143 ( .A(n90), .B(n4), .C(n116), .Y(n282) );
  NAND2X1 U144 ( .A(ENC_RIGHT[14]), .B(n3), .Y(n116) );
  INVX1 U145 ( .A(cData7[6]), .Y(n90) );
  OAI21X1 U146 ( .A(n91), .B(n4), .C(n117), .Y(n281) );
  NAND2X1 U147 ( .A(ENC_RIGHT[15]), .B(n3), .Y(n117) );
  INVX1 U148 ( .A(cData7[7]), .Y(n91) );
  OAI21X1 U149 ( .A(n74), .B(n4), .C(n118), .Y(n280) );
  NAND2X1 U150 ( .A(ENC_RIGHT[16]), .B(n3), .Y(n118) );
  INVX1 U151 ( .A(cData6[0]), .Y(n74) );
  OAI21X1 U152 ( .A(n75), .B(n4), .C(n119), .Y(n279) );
  NAND2X1 U153 ( .A(ENC_RIGHT[17]), .B(n3), .Y(n119) );
  INVX1 U154 ( .A(cData6[1]), .Y(n75) );
  OAI21X1 U155 ( .A(n76), .B(n4), .C(n120), .Y(n278) );
  NAND2X1 U156 ( .A(ENC_RIGHT[18]), .B(n3), .Y(n120) );
  INVX1 U157 ( .A(cData6[2]), .Y(n76) );
  OAI21X1 U158 ( .A(n77), .B(n4), .C(n121), .Y(n277) );
  NAND2X1 U159 ( .A(ENC_RIGHT[19]), .B(n3), .Y(n121) );
  INVX1 U160 ( .A(cData6[3]), .Y(n77) );
  OAI21X1 U161 ( .A(n78), .B(n4), .C(n122), .Y(n276) );
  NAND2X1 U162 ( .A(ENC_RIGHT[20]), .B(n3), .Y(n122) );
  INVX1 U163 ( .A(cData6[4]), .Y(n78) );
  OAI21X1 U164 ( .A(n79), .B(n4), .C(n123), .Y(n275) );
  NAND2X1 U165 ( .A(ENC_RIGHT[21]), .B(n3), .Y(n123) );
  INVX1 U166 ( .A(cData6[5]), .Y(n79) );
  OAI21X1 U167 ( .A(n80), .B(n4), .C(n124), .Y(n274) );
  NAND2X1 U168 ( .A(ENC_RIGHT[22]), .B(n3), .Y(n124) );
  INVX1 U169 ( .A(cData6[6]), .Y(n80) );
  OAI21X1 U170 ( .A(n81), .B(n4), .C(n125), .Y(n273) );
  NAND2X1 U171 ( .A(ENC_RIGHT[23]), .B(n3), .Y(n125) );
  INVX1 U172 ( .A(cData6[7]), .Y(n81) );
  OAI21X1 U173 ( .A(n64), .B(n4), .C(n126), .Y(n272) );
  NAND2X1 U174 ( .A(ENC_RIGHT[24]), .B(n3), .Y(n126) );
  INVX1 U175 ( .A(cData5[0]), .Y(n64) );
  OAI21X1 U176 ( .A(n65), .B(n4), .C(n127), .Y(n271) );
  NAND2X1 U177 ( .A(ENC_RIGHT[25]), .B(n3), .Y(n127) );
  INVX1 U178 ( .A(cData5[1]), .Y(n65) );
  OAI21X1 U179 ( .A(n66), .B(n4), .C(n128), .Y(n270) );
  NAND2X1 U180 ( .A(ENC_RIGHT[26]), .B(n3), .Y(n128) );
  INVX1 U181 ( .A(cData5[2]), .Y(n66) );
  OAI21X1 U182 ( .A(n67), .B(n4), .C(n129), .Y(n269) );
  NAND2X1 U183 ( .A(ENC_RIGHT[27]), .B(n3), .Y(n129) );
  INVX1 U184 ( .A(cData5[3]), .Y(n67) );
  OAI21X1 U185 ( .A(n68), .B(n4), .C(n130), .Y(n268) );
  NAND2X1 U186 ( .A(ENC_RIGHT[28]), .B(n3), .Y(n130) );
  INVX1 U187 ( .A(cData5[4]), .Y(n68) );
  OAI21X1 U188 ( .A(n69), .B(n4), .C(n131), .Y(n267) );
  NAND2X1 U189 ( .A(ENC_RIGHT[29]), .B(n3), .Y(n131) );
  INVX1 U190 ( .A(cData5[5]), .Y(n69) );
  OAI21X1 U191 ( .A(n70), .B(n4), .C(n132), .Y(n266) );
  NAND2X1 U192 ( .A(ENC_RIGHT[30]), .B(n3), .Y(n132) );
  INVX1 U193 ( .A(cData5[6]), .Y(n70) );
  OAI21X1 U194 ( .A(n71), .B(n4), .C(n133), .Y(n265) );
  NAND2X1 U195 ( .A(ENC_RIGHT[31]), .B(n3), .Y(n133) );
  INVX1 U196 ( .A(cData5[7]), .Y(n71) );
  OAI21X1 U197 ( .A(n54), .B(n4), .C(n134), .Y(n264) );
  NAND2X1 U198 ( .A(ENC_LEFT[0]), .B(n3), .Y(n134) );
  INVX1 U199 ( .A(cData4[0]), .Y(n54) );
  OAI21X1 U200 ( .A(n55), .B(n4), .C(n135), .Y(n263) );
  NAND2X1 U201 ( .A(ENC_LEFT[1]), .B(n3), .Y(n135) );
  INVX1 U202 ( .A(cData4[1]), .Y(n55) );
  OAI21X1 U203 ( .A(n56), .B(n4), .C(n136), .Y(n262) );
  NAND2X1 U204 ( .A(ENC_LEFT[2]), .B(n3), .Y(n136) );
  INVX1 U205 ( .A(cData4[2]), .Y(n56) );
  OAI21X1 U206 ( .A(n57), .B(n4), .C(n137), .Y(n261) );
  NAND2X1 U207 ( .A(ENC_LEFT[3]), .B(n3), .Y(n137) );
  INVX1 U208 ( .A(cData4[3]), .Y(n57) );
  OAI21X1 U209 ( .A(n58), .B(n4), .C(n138), .Y(n260) );
  NAND2X1 U210 ( .A(ENC_LEFT[4]), .B(n3), .Y(n138) );
  INVX1 U211 ( .A(cData4[4]), .Y(n58) );
  OAI21X1 U212 ( .A(n59), .B(n4), .C(n139), .Y(n259) );
  NAND2X1 U213 ( .A(ENC_LEFT[5]), .B(n3), .Y(n139) );
  INVX1 U214 ( .A(cData4[5]), .Y(n59) );
  OAI21X1 U215 ( .A(n60), .B(n4), .C(n140), .Y(n258) );
  NAND2X1 U216 ( .A(ENC_LEFT[6]), .B(n3), .Y(n140) );
  INVX1 U217 ( .A(cData4[6]), .Y(n60) );
  OAI21X1 U218 ( .A(n61), .B(n4), .C(n141), .Y(n257) );
  NAND2X1 U219 ( .A(ENC_LEFT[7]), .B(n3), .Y(n141) );
  INVX1 U220 ( .A(cData4[7]), .Y(n61) );
  OAI21X1 U221 ( .A(n43), .B(n4), .C(n142), .Y(n256) );
  NAND2X1 U222 ( .A(ENC_LEFT[8]), .B(n3), .Y(n142) );
  INVX1 U223 ( .A(cData3[0]), .Y(n43) );
  OAI21X1 U224 ( .A(n44), .B(n4), .C(n143), .Y(n255) );
  NAND2X1 U225 ( .A(ENC_LEFT[9]), .B(n3), .Y(n143) );
  INVX1 U226 ( .A(cData3[1]), .Y(n44) );
  OAI21X1 U227 ( .A(n45), .B(n4), .C(n144), .Y(n254) );
  NAND2X1 U228 ( .A(ENC_LEFT[10]), .B(n3), .Y(n144) );
  INVX1 U229 ( .A(cData3[2]), .Y(n45) );
  OAI21X1 U230 ( .A(n46), .B(n4), .C(n145), .Y(n253) );
  NAND2X1 U231 ( .A(ENC_LEFT[11]), .B(n3), .Y(n145) );
  INVX1 U232 ( .A(cData3[3]), .Y(n46) );
  OAI21X1 U233 ( .A(n47), .B(n4), .C(n146), .Y(n252) );
  NAND2X1 U234 ( .A(ENC_LEFT[12]), .B(n3), .Y(n146) );
  INVX1 U235 ( .A(cData3[4]), .Y(n47) );
  OAI21X1 U236 ( .A(n48), .B(n4), .C(n147), .Y(n251) );
  NAND2X1 U237 ( .A(ENC_LEFT[13]), .B(n3), .Y(n147) );
  INVX1 U238 ( .A(cData3[5]), .Y(n48) );
  OAI21X1 U239 ( .A(n49), .B(n4), .C(n148), .Y(n250) );
  NAND2X1 U240 ( .A(ENC_LEFT[14]), .B(n3), .Y(n148) );
  INVX1 U241 ( .A(cData3[6]), .Y(n49) );
  OAI21X1 U242 ( .A(n50), .B(n4), .C(n149), .Y(n249) );
  NAND2X1 U243 ( .A(ENC_LEFT[15]), .B(n3), .Y(n149) );
  INVX1 U244 ( .A(cData3[7]), .Y(n50) );
  OAI21X1 U245 ( .A(n10), .B(n4), .C(n150), .Y(n248) );
  NAND2X1 U246 ( .A(ENC_LEFT[16]), .B(n3), .Y(n150) );
  INVX1 U247 ( .A(cData2[0]), .Y(n10) );
  OAI21X1 U248 ( .A(n12), .B(n4), .C(n151), .Y(n247) );
  NAND2X1 U249 ( .A(ENC_LEFT[17]), .B(n3), .Y(n151) );
  INVX1 U250 ( .A(cData2[1]), .Y(n12) );
  OAI21X1 U251 ( .A(n14), .B(n4), .C(n152), .Y(n246) );
  NAND2X1 U252 ( .A(ENC_LEFT[18]), .B(n3), .Y(n152) );
  INVX1 U253 ( .A(cData2[2]), .Y(n14) );
  OAI21X1 U254 ( .A(n16), .B(n4), .C(n153), .Y(n245) );
  NAND2X1 U255 ( .A(ENC_LEFT[19]), .B(n3), .Y(n153) );
  INVX1 U256 ( .A(cData2[3]), .Y(n16) );
  OAI21X1 U257 ( .A(n18), .B(n4), .C(n154), .Y(n244) );
  NAND2X1 U258 ( .A(ENC_LEFT[20]), .B(n3), .Y(n154) );
  INVX1 U259 ( .A(cData2[4]), .Y(n18) );
  OAI21X1 U260 ( .A(n20), .B(n4), .C(n155), .Y(n243) );
  NAND2X1 U261 ( .A(ENC_LEFT[21]), .B(n3), .Y(n155) );
  INVX1 U262 ( .A(cData2[5]), .Y(n20) );
  OAI21X1 U263 ( .A(n22), .B(n4), .C(n156), .Y(n242) );
  NAND2X1 U264 ( .A(ENC_LEFT[22]), .B(n3), .Y(n156) );
  INVX1 U265 ( .A(cData2[6]), .Y(n22) );
  OAI21X1 U266 ( .A(n24), .B(n4), .C(n157), .Y(n241) );
  NAND2X1 U267 ( .A(ENC_LEFT[23]), .B(n3), .Y(n157) );
  INVX1 U268 ( .A(cData2[7]), .Y(n24) );
  OAI21X1 U269 ( .A(n31), .B(n4), .C(n158), .Y(n240) );
  NAND2X1 U270 ( .A(ENC_LEFT[24]), .B(n3), .Y(n158) );
  INVX1 U271 ( .A(cData1[0]), .Y(n31) );
  OAI21X1 U272 ( .A(n32), .B(n4), .C(n159), .Y(n239) );
  NAND2X1 U273 ( .A(ENC_LEFT[25]), .B(n3), .Y(n159) );
  INVX1 U274 ( .A(cData1[1]), .Y(n32) );
  OAI21X1 U275 ( .A(n33), .B(n4), .C(n160), .Y(n238) );
  NAND2X1 U276 ( .A(ENC_LEFT[26]), .B(n3), .Y(n160) );
  INVX1 U277 ( .A(cData1[2]), .Y(n33) );
  OAI21X1 U278 ( .A(n34), .B(n4), .C(n161), .Y(n237) );
  NAND2X1 U279 ( .A(ENC_LEFT[27]), .B(n3), .Y(n161) );
  INVX1 U280 ( .A(cData1[3]), .Y(n34) );
  OAI21X1 U281 ( .A(n35), .B(n4), .C(n162), .Y(n236) );
  NAND2X1 U282 ( .A(ENC_LEFT[28]), .B(n3), .Y(n162) );
  INVX1 U283 ( .A(cData1[4]), .Y(n35) );
  OAI21X1 U284 ( .A(n36), .B(n4), .C(n163), .Y(n235) );
  NAND2X1 U285 ( .A(ENC_LEFT[29]), .B(n3), .Y(n163) );
  INVX1 U286 ( .A(cData1[5]), .Y(n36) );
  OAI21X1 U287 ( .A(n37), .B(n4), .C(n164), .Y(n234) );
  NAND2X1 U288 ( .A(ENC_LEFT[30]), .B(n3), .Y(n164) );
  INVX1 U289 ( .A(cData1[6]), .Y(n37) );
  OAI21X1 U290 ( .A(n38), .B(n4), .C(n165), .Y(n233) );
  NAND2X1 U291 ( .A(ENC_LEFT[31]), .B(n3), .Y(n165) );
  NAND3X1 U292 ( .A(n166), .B(n27), .C(n40), .Y(n39) );
  NOR2X1 U293 ( .A(n230), .B(nxtCompCT[2]), .Y(n40) );
  INVX1 U294 ( .A(n26), .Y(nxtCompCT[2]) );
  MUX2X1 U295 ( .B(n167), .A(n168), .S(n169), .Y(n26) );
  NOR2X1 U296 ( .A(n170), .B(n171), .Y(n168) );
  OAI22X1 U297 ( .A(compileCT[3]), .B(compileCT[1]), .C(compileCT[0]), .D(n170), .Y(n167) );
  NAND3X1 U298 ( .A(n172), .B(n171), .C(n173), .Y(n27) );
  NAND2X1 U299 ( .A(n174), .B(n170), .Y(n173) );
  OAI21X1 U300 ( .A(FULL), .B(n175), .C(n176), .Y(n174) );
  OR2X1 U301 ( .A(compileCT[2]), .B(compileCT[3]), .Y(n175) );
  INVX1 U302 ( .A(nxtCompCT[3]), .Y(n166) );
  MUX2X1 U303 ( .B(n177), .A(n178), .S(n169), .Y(nxtCompCT[3]) );
  OAI21X1 U304 ( .A(n179), .B(n176), .C(compileCT[3]), .Y(n178) );
  AND2X1 U305 ( .A(n180), .B(n171), .Y(n179) );
  NAND2X1 U306 ( .A(compileCT[0]), .B(n181), .Y(n177) );
  INVX1 U307 ( .A(cData1[7]), .Y(n38) );
  INVX1 U308 ( .A(n51), .Y(n230) );
  MUX2X1 U309 ( .B(n182), .A(n183), .S(n171), .Y(n51) );
  OAI21X1 U310 ( .A(n176), .B(n184), .C(n170), .Y(n183) );
  INVX1 U311 ( .A(n181), .Y(n170) );
  NAND2X1 U312 ( .A(n180), .B(n169), .Y(n184) );
  NAND3X1 U313 ( .A(N23), .B(n185), .C(n186), .Y(n180) );
  NOR2X1 U314 ( .A(rndCT[0]), .B(n187), .Y(n186) );
  AND2X1 U315 ( .A(n176), .B(n172), .Y(n182) );
  NAND2X1 U316 ( .A(compileCT[3]), .B(compileCT[2]), .Y(n172) );
  MUX2X1 U317 ( .B(n188), .A(n189), .S(n190), .Y(n229) );
  MUX2X1 U318 ( .B(n191), .A(n192), .S(rndCT[1]), .Y(n227) );
  NAND2X1 U319 ( .A(n193), .B(rndCT[0]), .Y(n191) );
  MUX2X1 U320 ( .B(n194), .A(n195), .S(rndCT[2]), .Y(n221) );
  AND2X1 U321 ( .A(rndCT[1]), .B(n192), .Y(n195) );
  NOR2X1 U322 ( .A(n196), .B(n190), .Y(n192) );
  NAND3X1 U323 ( .A(rndCT[1]), .B(rndCT[0]), .C(n193), .Y(n194) );
  MUX2X1 U324 ( .B(n197), .A(n198), .S(n187), .Y(n219) );
  NAND2X1 U325 ( .A(n199), .B(n193), .Y(n198) );
  INVX1 U326 ( .A(n200), .Y(n197) );
  MUX2X1 U327 ( .B(n201), .A(n202), .S(N23), .Y(n217) );
  NOR2X1 U328 ( .A(n187), .B(n200), .Y(n202) );
  OAI21X1 U329 ( .A(n199), .B(n189), .C(n188), .Y(n200) );
  NAND3X1 U330 ( .A(n193), .B(rndCT[3]), .C(n199), .Y(n201) );
  INVX1 U331 ( .A(n203), .Y(n199) );
  NAND3X1 U332 ( .A(rndCT[1]), .B(rndCT[0]), .C(rndCT[2]), .Y(n203) );
  INVX1 U333 ( .A(n189), .Y(n193) );
  OAI21X1 U334 ( .A(n204), .B(n205), .C(n188), .Y(n189) );
  INVX1 U335 ( .A(n196), .Y(n188) );
  NAND2X1 U336 ( .A(N23), .B(n185), .Y(n205) );
  NAND2X1 U337 ( .A(rndCT[3]), .B(rndCT[0]), .Y(n204) );
  MUX2X1 U338 ( .B(n206), .A(n207), .S(n214), .Y(n215) );
  NAND2X1 U339 ( .A(N23), .B(n208), .Y(n207) );
  OAI21X1 U340 ( .A(rndCT[0]), .B(n209), .C(rndCT[3]), .Y(n208) );
  INVX1 U341 ( .A(n185), .Y(n209) );
  INVX1 U342 ( .A(W_ENABLE), .Y(n206) );
  NAND3X1 U343 ( .A(n171), .B(n169), .C(n210), .Y(R_ENABLE) );
  AOI21X1 U344 ( .A(compileCT[3]), .B(n176), .C(n181), .Y(n210) );
  NOR2X1 U345 ( .A(n176), .B(compileCT[3]), .Y(n181) );
  INVX1 U346 ( .A(compileCT[1]), .Y(n176) );
  INVX1 U347 ( .A(compileCT[2]), .Y(n169) );
  INVX1 U348 ( .A(compileCT[0]), .Y(n171) );
  AOI21X1 U349 ( .A(N23), .B(n211), .C(n196), .Y(N273) );
  NAND3X1 U350 ( .A(compileCT[3]), .B(compileCT[1]), .C(n212), .Y(n196) );
  NOR2X1 U351 ( .A(compileCT[2]), .B(compileCT[0]), .Y(n212) );
  NAND3X1 U352 ( .A(n190), .B(n187), .C(n185), .Y(n211) );
  NOR2X1 U353 ( .A(rndCT[1]), .B(rndCT[2]), .Y(n185) );
  INVX1 U354 ( .A(rndCT[3]), .Y(n187) );
  INVX1 U364 ( .A(rndCT[0]), .Y(n190) );
endmodule


module e_fiestel ( FIESTELCLK, START, ENC_LEFT, ENC_RIGHT, RKEY, IN_SELECT, 
        OUTDATA );
  input [31:0] ENC_LEFT;
  input [31:0] ENC_RIGHT;
  input [47:0] RKEY;
  output [63:0] OUTDATA;
  input FIESTELCLK, START, IN_SELECT;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672,
         n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683,
         n684, n685, n686, n687, n688, n689, n690, n691, n692, n693, n694,
         n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, n705,
         n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716,
         n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749,
         n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n760,
         n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771,
         n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, n782,
         n783, n784, n785, n786, n787, n788, n789, n790, n791, n792, n793,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815,
         n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826,
         n827, n828, n829, n830, n831, n832, n833, n834, n835, n836, n837,
         n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, n848,
         n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859,
         n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870,
         n871, n872, n873, n874, n875, n876, n877, n878, n879, n880, n881,
         n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892,
         n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958,
         n959, n960, n961, n962, n963, n964, n965, n966, n967, n968, n969,
         n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, n980,
         n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991,
         n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002,
         n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
         n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042,
         n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052,
         n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062,
         n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072,
         n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090;
  wire   [31:0] CUR_ENC_LEFT;
  wire   [31:0] CUR_ENC_RIGHT;
  wire   [31:0] NXT_ENC_RIGHT1;

  DFFSR \CUR_ENC_LEFT_reg[0]  ( .D(CUR_ENC_RIGHT[0]), .CLK(FIESTELCLK), .R(
        n1090), .S(n1089), .Q(CUR_ENC_LEFT[0]) );
  DFFSR \CUR_ENC_RIGHT_reg[0]  ( .D(NXT_ENC_RIGHT1[0]), .CLK(FIESTELCLK), .R(
        n1088), .S(n1087), .Q(CUR_ENC_RIGHT[0]) );
  DFFSR \CUR_ENC_RIGHT_reg[15]  ( .D(NXT_ENC_RIGHT1[15]), .CLK(FIESTELCLK), 
        .R(n1082), .S(n1081), .Q(CUR_ENC_RIGHT[15]) );
  DFFSR \CUR_ENC_LEFT_reg[15]  ( .D(CUR_ENC_RIGHT[15]), .CLK(FIESTELCLK), .R(
        n1080), .S(n1079), .Q(CUR_ENC_LEFT[15]) );
  DFFSR \CUR_ENC_RIGHT_reg[29]  ( .D(NXT_ENC_RIGHT1[29]), .CLK(FIESTELCLK), 
        .R(n966), .S(n965), .Q(CUR_ENC_RIGHT[29]) );
  DFFSR \CUR_ENC_LEFT_reg[29]  ( .D(CUR_ENC_RIGHT[29]), .CLK(FIESTELCLK), .R(
        n964), .S(n963), .Q(CUR_ENC_LEFT[29]) );
  DFFSR \CUR_ENC_RIGHT_reg[9]  ( .D(NXT_ENC_RIGHT1[9]), .CLK(FIESTELCLK), .R(
        n1078), .S(n1077), .Q(CUR_ENC_RIGHT[9]) );
  DFFSR \CUR_ENC_LEFT_reg[9]  ( .D(CUR_ENC_RIGHT[9]), .CLK(FIESTELCLK), .R(
        n1076), .S(n1075), .Q(CUR_ENC_LEFT[9]) );
  DFFSR \CUR_ENC_RIGHT_reg[28]  ( .D(NXT_ENC_RIGHT1[28]), .CLK(FIESTELCLK), 
        .R(n1042), .S(n1041), .Q(CUR_ENC_RIGHT[28]) );
  DFFSR \CUR_ENC_LEFT_reg[28]  ( .D(CUR_ENC_RIGHT[28]), .CLK(FIESTELCLK), .R(
        n1040), .S(n1039), .Q(CUR_ENC_LEFT[28]) );
  DFFSR \CUR_ENC_RIGHT_reg[23]  ( .D(NXT_ENC_RIGHT1[23]), .CLK(FIESTELCLK), 
        .R(n1086), .S(n1085), .Q(CUR_ENC_RIGHT[23]) );
  DFFSR \CUR_ENC_LEFT_reg[23]  ( .D(CUR_ENC_RIGHT[23]), .CLK(FIESTELCLK), .R(
        n1084), .S(n1083), .Q(CUR_ENC_LEFT[23]) );
  DFFSR \CUR_ENC_RIGHT_reg[2]  ( .D(NXT_ENC_RIGHT1[2]), .CLK(FIESTELCLK), .R(
        n1022), .S(n1021), .Q(CUR_ENC_RIGHT[2]) );
  DFFSR \CUR_ENC_LEFT_reg[2]  ( .D(CUR_ENC_RIGHT[2]), .CLK(FIESTELCLK), .R(
        n1020), .S(n1019), .Q(CUR_ENC_LEFT[2]) );
  DFFSR \CUR_ENC_RIGHT_reg[17]  ( .D(NXT_ENC_RIGHT1[17]), .CLK(FIESTELCLK), 
        .R(n1062), .S(n1061), .Q(CUR_ENC_RIGHT[17]) );
  DFFSR \CUR_ENC_LEFT_reg[17]  ( .D(CUR_ENC_RIGHT[17]), .CLK(FIESTELCLK), .R(
        n1060), .S(n1059), .Q(CUR_ENC_LEFT[17]) );
  DFFSR \CUR_ENC_RIGHT_reg[6]  ( .D(NXT_ENC_RIGHT1[6]), .CLK(FIESTELCLK), .R(
        n1002), .S(n1001), .Q(CUR_ENC_RIGHT[6]) );
  DFFSR \CUR_ENC_LEFT_reg[6]  ( .D(CUR_ENC_RIGHT[6]), .CLK(FIESTELCLK), .R(
        n1000), .S(n999), .Q(CUR_ENC_LEFT[6]) );
  DFFSR \CUR_ENC_RIGHT_reg[25]  ( .D(NXT_ENC_RIGHT1[25]), .CLK(FIESTELCLK), 
        .R(n982), .S(n981), .Q(CUR_ENC_RIGHT[25]) );
  DFFSR \CUR_ENC_LEFT_reg[25]  ( .D(CUR_ENC_RIGHT[25]), .CLK(FIESTELCLK), .R(
        n980), .S(n979), .Q(CUR_ENC_LEFT[25]) );
  DFFSR \CUR_ENC_RIGHT_reg[4]  ( .D(NXT_ENC_RIGHT1[4]), .CLK(FIESTELCLK), .R(
        n1010), .S(n1009), .Q(CUR_ENC_RIGHT[4]) );
  DFFSR \CUR_ENC_LEFT_reg[4]  ( .D(CUR_ENC_RIGHT[4]), .CLK(FIESTELCLK), .R(
        n1008), .S(n1007), .Q(CUR_ENC_LEFT[4]) );
  DFFSR \CUR_ENC_RIGHT_reg[11]  ( .D(NXT_ENC_RIGHT1[11]), .CLK(FIESTELCLK), 
        .R(n1058), .S(n1057), .Q(CUR_ENC_RIGHT[11]) );
  DFFSR \CUR_ENC_LEFT_reg[11]  ( .D(CUR_ENC_RIGHT[11]), .CLK(FIESTELCLK), .R(
        n1056), .S(n1055), .Q(CUR_ENC_LEFT[11]) );
  DFFSR \CUR_ENC_RIGHT_reg[18]  ( .D(NXT_ENC_RIGHT1[18]), .CLK(FIESTELCLK), 
        .R(n1050), .S(n1049), .Q(CUR_ENC_RIGHT[18]) );
  DFFSR \CUR_ENC_LEFT_reg[18]  ( .D(CUR_ENC_RIGHT[18]), .CLK(FIESTELCLK), .R(
        n1048), .S(n1047), .Q(CUR_ENC_LEFT[18]) );
  DFFSR \CUR_ENC_RIGHT_reg[31]  ( .D(NXT_ENC_RIGHT1[31]), .CLK(FIESTELCLK), 
        .R(n990), .S(n989), .Q(CUR_ENC_RIGHT[31]) );
  DFFSR \CUR_ENC_LEFT_reg[31]  ( .D(CUR_ENC_RIGHT[31]), .CLK(FIESTELCLK), .R(
        n988), .S(n987), .Q(CUR_ENC_LEFT[31]) );
  DFFSR \CUR_ENC_RIGHT_reg[1]  ( .D(NXT_ENC_RIGHT1[1]), .CLK(FIESTELCLK), .R(
        n1074), .S(n1073), .Q(CUR_ENC_RIGHT[1]) );
  DFFSR \CUR_ENC_LEFT_reg[1]  ( .D(CUR_ENC_RIGHT[1]), .CLK(FIESTELCLK), .R(
        n1072), .S(n1071), .Q(CUR_ENC_LEFT[1]) );
  DFFSR \CUR_ENC_RIGHT_reg[27]  ( .D(NXT_ENC_RIGHT1[27]), .CLK(FIESTELCLK), 
        .R(n1070), .S(n1069), .Q(CUR_ENC_RIGHT[27]) );
  DFFSR \CUR_ENC_LEFT_reg[27]  ( .D(CUR_ENC_RIGHT[27]), .CLK(FIESTELCLK), .R(
        n1068), .S(n1067), .Q(CUR_ENC_LEFT[27]) );
  DFFSR \CUR_ENC_RIGHT_reg[19]  ( .D(NXT_ENC_RIGHT1[19]), .CLK(FIESTELCLK), 
        .R(n1014), .S(n1013), .Q(CUR_ENC_RIGHT[19]) );
  DFFSR \CUR_ENC_LEFT_reg[19]  ( .D(CUR_ENC_RIGHT[19]), .CLK(FIESTELCLK), .R(
        n1012), .S(n1011), .Q(CUR_ENC_LEFT[19]) );
  DFFSR \CUR_ENC_RIGHT_reg[16]  ( .D(NXT_ENC_RIGHT1[16]), .CLK(FIESTELCLK), 
        .R(n1026), .S(n1025), .Q(CUR_ENC_RIGHT[16]) );
  DFFSR \CUR_ENC_LEFT_reg[16]  ( .D(CUR_ENC_RIGHT[16]), .CLK(FIESTELCLK), .R(
        n1024), .S(n1023), .Q(CUR_ENC_LEFT[16]) );
  DFFSR \CUR_ENC_RIGHT_reg[24]  ( .D(NXT_ENC_RIGHT1[24]), .CLK(FIESTELCLK), 
        .R(n1054), .S(n1053), .Q(CUR_ENC_RIGHT[24]) );
  DFFSR \CUR_ENC_LEFT_reg[24]  ( .D(CUR_ENC_RIGHT[24]), .CLK(FIESTELCLK), .R(
        n1052), .S(n1051), .Q(CUR_ENC_LEFT[24]) );
  DFFSR \CUR_ENC_RIGHT_reg[26]  ( .D(NXT_ENC_RIGHT1[26]), .CLK(FIESTELCLK), 
        .R(n1018), .S(n1017), .Q(CUR_ENC_RIGHT[26]) );
  DFFSR \CUR_ENC_LEFT_reg[26]  ( .D(CUR_ENC_RIGHT[26]), .CLK(FIESTELCLK), .R(
        n1016), .S(n1015), .Q(CUR_ENC_LEFT[26]) );
  DFFSR \CUR_ENC_RIGHT_reg[14]  ( .D(NXT_ENC_RIGHT1[14]), .CLK(FIESTELCLK), 
        .R(n974), .S(n973), .Q(CUR_ENC_RIGHT[14]) );
  DFFSR \CUR_ENC_LEFT_reg[14]  ( .D(CUR_ENC_RIGHT[14]), .CLK(FIESTELCLK), .R(
        n972), .S(n971), .Q(CUR_ENC_LEFT[14]) );
  DFFSR \CUR_ENC_RIGHT_reg[7]  ( .D(NXT_ENC_RIGHT1[7]), .CLK(FIESTELCLK), .R(
        n1046), .S(n1045), .Q(CUR_ENC_RIGHT[7]) );
  DFFSR \CUR_ENC_LEFT_reg[7]  ( .D(CUR_ENC_RIGHT[7]), .CLK(FIESTELCLK), .R(
        n1044), .S(n1043), .Q(CUR_ENC_LEFT[7]) );
  DFFSR \CUR_ENC_RIGHT_reg[21]  ( .D(NXT_ENC_RIGHT1[21]), .CLK(FIESTELCLK), 
        .R(n1034), .S(n1033), .Q(CUR_ENC_RIGHT[21]) );
  DFFSR \CUR_ENC_LEFT_reg[21]  ( .D(CUR_ENC_RIGHT[21]), .CLK(FIESTELCLK), .R(
        n1032), .S(n1031), .Q(CUR_ENC_LEFT[21]) );
  DFFSR \CUR_ENC_RIGHT_reg[8]  ( .D(NXT_ENC_RIGHT1[8]), .CLK(FIESTELCLK), .R(
        n1030), .S(n1029), .Q(CUR_ENC_RIGHT[8]) );
  DFFSR \CUR_ENC_LEFT_reg[8]  ( .D(CUR_ENC_RIGHT[8]), .CLK(FIESTELCLK), .R(
        n1028), .S(n1027), .Q(CUR_ENC_LEFT[8]) );
  DFFSR \CUR_ENC_RIGHT_reg[3]  ( .D(NXT_ENC_RIGHT1[3]), .CLK(FIESTELCLK), .R(
        n1038), .S(n1037), .Q(CUR_ENC_RIGHT[3]) );
  DFFSR \CUR_ENC_LEFT_reg[3]  ( .D(CUR_ENC_RIGHT[3]), .CLK(FIESTELCLK), .R(
        n1036), .S(n1035), .Q(CUR_ENC_LEFT[3]) );
  DFFSR \CUR_ENC_RIGHT_reg[5]  ( .D(NXT_ENC_RIGHT1[5]), .CLK(FIESTELCLK), .R(
        n1066), .S(n1065), .Q(CUR_ENC_RIGHT[5]) );
  DFFSR \CUR_ENC_LEFT_reg[5]  ( .D(CUR_ENC_RIGHT[5]), .CLK(FIESTELCLK), .R(
        n1064), .S(n1063), .Q(CUR_ENC_LEFT[5]) );
  DFFSR \CUR_ENC_RIGHT_reg[20]  ( .D(NXT_ENC_RIGHT1[20]), .CLK(FIESTELCLK), 
        .R(n1006), .S(n1005), .Q(CUR_ENC_RIGHT[20]) );
  DFFSR \CUR_ENC_LEFT_reg[20]  ( .D(CUR_ENC_RIGHT[20]), .CLK(FIESTELCLK), .R(
        n1004), .S(n1003), .Q(CUR_ENC_LEFT[20]) );
  DFFSR \CUR_ENC_RIGHT_reg[22]  ( .D(NXT_ENC_RIGHT1[22]), .CLK(FIESTELCLK), 
        .R(n994), .S(n993), .Q(CUR_ENC_RIGHT[22]) );
  DFFSR \CUR_ENC_LEFT_reg[22]  ( .D(CUR_ENC_RIGHT[22]), .CLK(FIESTELCLK), .R(
        n992), .S(n991), .Q(CUR_ENC_LEFT[22]) );
  DFFSR \CUR_ENC_RIGHT_reg[12]  ( .D(NXT_ENC_RIGHT1[12]), .CLK(FIESTELCLK), 
        .R(n998), .S(n997), .Q(CUR_ENC_RIGHT[12]) );
  DFFSR \CUR_ENC_LEFT_reg[12]  ( .D(CUR_ENC_RIGHT[12]), .CLK(FIESTELCLK), .R(
        n996), .S(n995), .Q(CUR_ENC_LEFT[12]) );
  DFFSR \CUR_ENC_RIGHT_reg[10]  ( .D(NXT_ENC_RIGHT1[10]), .CLK(FIESTELCLK), 
        .R(n986), .S(n985), .Q(CUR_ENC_RIGHT[10]) );
  DFFSR \CUR_ENC_LEFT_reg[10]  ( .D(CUR_ENC_RIGHT[10]), .CLK(FIESTELCLK), .R(
        n984), .S(n983), .Q(CUR_ENC_LEFT[10]) );
  DFFSR \CUR_ENC_RIGHT_reg[13]  ( .D(NXT_ENC_RIGHT1[13]), .CLK(FIESTELCLK), 
        .R(n970), .S(n969), .Q(CUR_ENC_RIGHT[13]) );
  DFFSR \CUR_ENC_LEFT_reg[13]  ( .D(CUR_ENC_RIGHT[13]), .CLK(FIESTELCLK), .R(
        n968), .S(n967), .Q(CUR_ENC_LEFT[13]) );
  DFFSR \CUR_ENC_RIGHT_reg[30]  ( .D(NXT_ENC_RIGHT1[30]), .CLK(FIESTELCLK), 
        .R(n978), .S(n977), .Q(CUR_ENC_RIGHT[30]) );
  DFFSR \CUR_ENC_LEFT_reg[30]  ( .D(CUR_ENC_RIGHT[30]), .CLK(FIESTELCLK), .R(
        n976), .S(n975), .Q(CUR_ENC_LEFT[30]) );
  LATCH \OUTDATA_reg[63]  ( .CLK(START), .D(CUR_ENC_RIGHT[31]), .Q(OUTDATA[63]) );
  LATCH \OUTDATA_reg[62]  ( .CLK(START), .D(CUR_ENC_RIGHT[30]), .Q(OUTDATA[62]) );
  LATCH \OUTDATA_reg[61]  ( .CLK(START), .D(CUR_ENC_RIGHT[29]), .Q(OUTDATA[61]) );
  LATCH \OUTDATA_reg[60]  ( .CLK(START), .D(CUR_ENC_RIGHT[28]), .Q(OUTDATA[60]) );
  LATCH \OUTDATA_reg[59]  ( .CLK(START), .D(CUR_ENC_RIGHT[27]), .Q(OUTDATA[59]) );
  LATCH \OUTDATA_reg[58]  ( .CLK(START), .D(CUR_ENC_RIGHT[26]), .Q(OUTDATA[58]) );
  LATCH \OUTDATA_reg[57]  ( .CLK(START), .D(CUR_ENC_RIGHT[25]), .Q(OUTDATA[57]) );
  LATCH \OUTDATA_reg[56]  ( .CLK(START), .D(CUR_ENC_RIGHT[24]), .Q(OUTDATA[56]) );
  LATCH \OUTDATA_reg[55]  ( .CLK(START), .D(CUR_ENC_RIGHT[23]), .Q(OUTDATA[55]) );
  LATCH \OUTDATA_reg[54]  ( .CLK(START), .D(CUR_ENC_RIGHT[22]), .Q(OUTDATA[54]) );
  LATCH \OUTDATA_reg[53]  ( .CLK(START), .D(CUR_ENC_RIGHT[21]), .Q(OUTDATA[53]) );
  LATCH \OUTDATA_reg[52]  ( .CLK(START), .D(CUR_ENC_RIGHT[20]), .Q(OUTDATA[52]) );
  LATCH \OUTDATA_reg[51]  ( .CLK(START), .D(CUR_ENC_RIGHT[19]), .Q(OUTDATA[51]) );
  LATCH \OUTDATA_reg[50]  ( .CLK(START), .D(CUR_ENC_RIGHT[18]), .Q(OUTDATA[50]) );
  LATCH \OUTDATA_reg[49]  ( .CLK(START), .D(CUR_ENC_RIGHT[17]), .Q(OUTDATA[49]) );
  LATCH \OUTDATA_reg[48]  ( .CLK(START), .D(CUR_ENC_RIGHT[16]), .Q(OUTDATA[48]) );
  LATCH \OUTDATA_reg[47]  ( .CLK(START), .D(CUR_ENC_RIGHT[15]), .Q(OUTDATA[47]) );
  LATCH \OUTDATA_reg[46]  ( .CLK(START), .D(CUR_ENC_RIGHT[14]), .Q(OUTDATA[46]) );
  LATCH \OUTDATA_reg[45]  ( .CLK(START), .D(CUR_ENC_RIGHT[13]), .Q(OUTDATA[45]) );
  LATCH \OUTDATA_reg[44]  ( .CLK(START), .D(CUR_ENC_RIGHT[12]), .Q(OUTDATA[44]) );
  LATCH \OUTDATA_reg[43]  ( .CLK(START), .D(CUR_ENC_RIGHT[11]), .Q(OUTDATA[43]) );
  LATCH \OUTDATA_reg[42]  ( .CLK(START), .D(CUR_ENC_RIGHT[10]), .Q(OUTDATA[42]) );
  LATCH \OUTDATA_reg[41]  ( .CLK(START), .D(CUR_ENC_RIGHT[9]), .Q(OUTDATA[41])
         );
  LATCH \OUTDATA_reg[40]  ( .CLK(START), .D(CUR_ENC_RIGHT[8]), .Q(OUTDATA[40])
         );
  LATCH \OUTDATA_reg[39]  ( .CLK(START), .D(CUR_ENC_RIGHT[7]), .Q(OUTDATA[39])
         );
  LATCH \OUTDATA_reg[38]  ( .CLK(START), .D(CUR_ENC_RIGHT[6]), .Q(OUTDATA[38])
         );
  LATCH \OUTDATA_reg[37]  ( .CLK(START), .D(CUR_ENC_RIGHT[5]), .Q(OUTDATA[37])
         );
  LATCH \OUTDATA_reg[36]  ( .CLK(START), .D(CUR_ENC_RIGHT[4]), .Q(OUTDATA[36])
         );
  LATCH \OUTDATA_reg[35]  ( .CLK(START), .D(CUR_ENC_RIGHT[3]), .Q(OUTDATA[35])
         );
  LATCH \OUTDATA_reg[34]  ( .CLK(START), .D(CUR_ENC_RIGHT[2]), .Q(OUTDATA[34])
         );
  LATCH \OUTDATA_reg[33]  ( .CLK(START), .D(CUR_ENC_RIGHT[1]), .Q(OUTDATA[33])
         );
  LATCH \OUTDATA_reg[32]  ( .CLK(n1), .D(CUR_ENC_RIGHT[0]), .Q(OUTDATA[32]) );
  LATCH \OUTDATA_reg[31]  ( .CLK(n1), .D(CUR_ENC_LEFT[31]), .Q(OUTDATA[31]) );
  LATCH \OUTDATA_reg[30]  ( .CLK(n1), .D(CUR_ENC_LEFT[30]), .Q(OUTDATA[30]) );
  LATCH \OUTDATA_reg[29]  ( .CLK(n1), .D(CUR_ENC_LEFT[29]), .Q(OUTDATA[29]) );
  LATCH \OUTDATA_reg[28]  ( .CLK(n1), .D(CUR_ENC_LEFT[28]), .Q(OUTDATA[28]) );
  LATCH \OUTDATA_reg[27]  ( .CLK(n1), .D(CUR_ENC_LEFT[27]), .Q(OUTDATA[27]) );
  LATCH \OUTDATA_reg[26]  ( .CLK(n1), .D(CUR_ENC_LEFT[26]), .Q(OUTDATA[26]) );
  LATCH \OUTDATA_reg[25]  ( .CLK(n1), .D(CUR_ENC_LEFT[25]), .Q(OUTDATA[25]) );
  LATCH \OUTDATA_reg[24]  ( .CLK(n1), .D(CUR_ENC_LEFT[24]), .Q(OUTDATA[24]) );
  LATCH \OUTDATA_reg[23]  ( .CLK(n1), .D(CUR_ENC_LEFT[23]), .Q(OUTDATA[23]) );
  LATCH \OUTDATA_reg[22]  ( .CLK(n1), .D(CUR_ENC_LEFT[22]), .Q(OUTDATA[22]) );
  LATCH \OUTDATA_reg[21]  ( .CLK(n1), .D(CUR_ENC_LEFT[21]), .Q(OUTDATA[21]) );
  LATCH \OUTDATA_reg[20]  ( .CLK(n1), .D(CUR_ENC_LEFT[20]), .Q(OUTDATA[20]) );
  LATCH \OUTDATA_reg[19]  ( .CLK(n1), .D(CUR_ENC_LEFT[19]), .Q(OUTDATA[19]) );
  LATCH \OUTDATA_reg[18]  ( .CLK(n1), .D(CUR_ENC_LEFT[18]), .Q(OUTDATA[18]) );
  LATCH \OUTDATA_reg[17]  ( .CLK(n1), .D(CUR_ENC_LEFT[17]), .Q(OUTDATA[17]) );
  LATCH \OUTDATA_reg[16]  ( .CLK(n1), .D(CUR_ENC_LEFT[16]), .Q(OUTDATA[16]) );
  LATCH \OUTDATA_reg[15]  ( .CLK(n1), .D(CUR_ENC_LEFT[15]), .Q(OUTDATA[15]) );
  LATCH \OUTDATA_reg[14]  ( .CLK(n1), .D(CUR_ENC_LEFT[14]), .Q(OUTDATA[14]) );
  LATCH \OUTDATA_reg[13]  ( .CLK(n1), .D(CUR_ENC_LEFT[13]), .Q(OUTDATA[13]) );
  LATCH \OUTDATA_reg[12]  ( .CLK(n1), .D(CUR_ENC_LEFT[12]), .Q(OUTDATA[12]) );
  LATCH \OUTDATA_reg[11]  ( .CLK(n1), .D(CUR_ENC_LEFT[11]), .Q(OUTDATA[11]) );
  LATCH \OUTDATA_reg[10]  ( .CLK(n1), .D(CUR_ENC_LEFT[10]), .Q(OUTDATA[10]) );
  LATCH \OUTDATA_reg[9]  ( .CLK(n1), .D(CUR_ENC_LEFT[9]), .Q(OUTDATA[9]) );
  LATCH \OUTDATA_reg[8]  ( .CLK(n1), .D(CUR_ENC_LEFT[8]), .Q(OUTDATA[8]) );
  LATCH \OUTDATA_reg[7]  ( .CLK(n1), .D(CUR_ENC_LEFT[7]), .Q(OUTDATA[7]) );
  LATCH \OUTDATA_reg[6]  ( .CLK(n1), .D(CUR_ENC_LEFT[6]), .Q(OUTDATA[6]) );
  LATCH \OUTDATA_reg[5]  ( .CLK(n1), .D(CUR_ENC_LEFT[5]), .Q(OUTDATA[5]) );
  LATCH \OUTDATA_reg[4]  ( .CLK(n1), .D(CUR_ENC_LEFT[4]), .Q(OUTDATA[4]) );
  LATCH \OUTDATA_reg[3]  ( .CLK(n1), .D(CUR_ENC_LEFT[3]), .Q(OUTDATA[3]) );
  LATCH \OUTDATA_reg[2]  ( .CLK(n1), .D(CUR_ENC_LEFT[2]), .Q(OUTDATA[2]) );
  LATCH \OUTDATA_reg[1]  ( .CLK(n1), .D(CUR_ENC_LEFT[1]), .Q(OUTDATA[1]) );
  LATCH \OUTDATA_reg[0]  ( .CLK(n1), .D(CUR_ENC_LEFT[0]), .Q(OUTDATA[0]) );
  BUFX4 U3 ( .A(START), .Y(n1) );
  INVX4 U4 ( .A(IN_SELECT), .Y(n2) );
  NAND2X1 U5 ( .A(ENC_LEFT[29]), .B(n2), .Y(n963) );
  OR2X1 U6 ( .A(IN_SELECT), .B(ENC_LEFT[29]), .Y(n964) );
  NAND2X1 U7 ( .A(ENC_RIGHT[29]), .B(n2), .Y(n965) );
  OR2X1 U8 ( .A(IN_SELECT), .B(ENC_RIGHT[29]), .Y(n966) );
  NAND2X1 U9 ( .A(ENC_LEFT[13]), .B(n2), .Y(n967) );
  OR2X1 U10 ( .A(IN_SELECT), .B(ENC_LEFT[13]), .Y(n968) );
  NAND2X1 U11 ( .A(ENC_RIGHT[13]), .B(n2), .Y(n969) );
  OR2X1 U12 ( .A(IN_SELECT), .B(ENC_RIGHT[13]), .Y(n970) );
  NAND2X1 U13 ( .A(ENC_LEFT[14]), .B(n2), .Y(n971) );
  OR2X1 U14 ( .A(IN_SELECT), .B(ENC_LEFT[14]), .Y(n972) );
  NAND2X1 U15 ( .A(ENC_RIGHT[14]), .B(n2), .Y(n973) );
  OR2X1 U16 ( .A(IN_SELECT), .B(ENC_RIGHT[14]), .Y(n974) );
  NAND2X1 U17 ( .A(ENC_LEFT[30]), .B(n2), .Y(n975) );
  OR2X1 U18 ( .A(IN_SELECT), .B(ENC_LEFT[30]), .Y(n976) );
  NAND2X1 U19 ( .A(ENC_RIGHT[30]), .B(n2), .Y(n977) );
  OR2X1 U20 ( .A(IN_SELECT), .B(ENC_RIGHT[30]), .Y(n978) );
  NAND2X1 U21 ( .A(ENC_LEFT[25]), .B(n2), .Y(n979) );
  OR2X1 U22 ( .A(IN_SELECT), .B(ENC_LEFT[25]), .Y(n980) );
  NAND2X1 U23 ( .A(ENC_RIGHT[25]), .B(n2), .Y(n981) );
  OR2X1 U24 ( .A(IN_SELECT), .B(ENC_RIGHT[25]), .Y(n982) );
  NAND2X1 U25 ( .A(ENC_LEFT[10]), .B(n2), .Y(n983) );
  OR2X1 U26 ( .A(IN_SELECT), .B(ENC_LEFT[10]), .Y(n984) );
  NAND2X1 U27 ( .A(ENC_RIGHT[10]), .B(n2), .Y(n985) );
  OR2X1 U28 ( .A(IN_SELECT), .B(ENC_RIGHT[10]), .Y(n986) );
  NAND2X1 U29 ( .A(ENC_LEFT[31]), .B(n2), .Y(n987) );
  OR2X1 U30 ( .A(IN_SELECT), .B(ENC_LEFT[31]), .Y(n988) );
  NAND2X1 U31 ( .A(ENC_RIGHT[31]), .B(n2), .Y(n989) );
  OR2X1 U32 ( .A(IN_SELECT), .B(ENC_RIGHT[31]), .Y(n990) );
  NAND2X1 U33 ( .A(ENC_LEFT[22]), .B(n2), .Y(n991) );
  OR2X1 U34 ( .A(IN_SELECT), .B(ENC_LEFT[22]), .Y(n992) );
  NAND2X1 U35 ( .A(ENC_RIGHT[22]), .B(n2), .Y(n993) );
  OR2X1 U36 ( .A(IN_SELECT), .B(ENC_RIGHT[22]), .Y(n994) );
  NAND2X1 U37 ( .A(ENC_LEFT[12]), .B(n2), .Y(n995) );
  OR2X1 U38 ( .A(IN_SELECT), .B(ENC_LEFT[12]), .Y(n996) );
  NAND2X1 U39 ( .A(ENC_RIGHT[12]), .B(n2), .Y(n997) );
  OR2X1 U40 ( .A(IN_SELECT), .B(ENC_RIGHT[12]), .Y(n998) );
  NAND2X1 U41 ( .A(ENC_LEFT[6]), .B(n2), .Y(n999) );
  OR2X1 U42 ( .A(IN_SELECT), .B(ENC_LEFT[6]), .Y(n1000) );
  NAND2X1 U43 ( .A(ENC_RIGHT[6]), .B(n2), .Y(n1001) );
  OR2X1 U44 ( .A(IN_SELECT), .B(ENC_RIGHT[6]), .Y(n1002) );
  NAND2X1 U45 ( .A(ENC_LEFT[20]), .B(n2), .Y(n1003) );
  OR2X1 U46 ( .A(IN_SELECT), .B(ENC_LEFT[20]), .Y(n1004) );
  NAND2X1 U47 ( .A(ENC_RIGHT[20]), .B(n2), .Y(n1005) );
  OR2X1 U48 ( .A(IN_SELECT), .B(ENC_RIGHT[20]), .Y(n1006) );
  NAND2X1 U49 ( .A(ENC_LEFT[4]), .B(n2), .Y(n1007) );
  OR2X1 U50 ( .A(IN_SELECT), .B(ENC_LEFT[4]), .Y(n1008) );
  NAND2X1 U51 ( .A(ENC_RIGHT[4]), .B(n2), .Y(n1009) );
  OR2X1 U52 ( .A(IN_SELECT), .B(ENC_RIGHT[4]), .Y(n1010) );
  NAND2X1 U53 ( .A(ENC_LEFT[19]), .B(n2), .Y(n1011) );
  OR2X1 U54 ( .A(IN_SELECT), .B(ENC_LEFT[19]), .Y(n1012) );
  NAND2X1 U55 ( .A(ENC_RIGHT[19]), .B(n2), .Y(n1013) );
  OR2X1 U56 ( .A(IN_SELECT), .B(ENC_RIGHT[19]), .Y(n1014) );
  NAND2X1 U57 ( .A(ENC_LEFT[26]), .B(n2), .Y(n1015) );
  OR2X1 U58 ( .A(IN_SELECT), .B(ENC_LEFT[26]), .Y(n1016) );
  NAND2X1 U59 ( .A(ENC_RIGHT[26]), .B(n2), .Y(n1017) );
  OR2X1 U60 ( .A(IN_SELECT), .B(ENC_RIGHT[26]), .Y(n1018) );
  NAND2X1 U61 ( .A(ENC_LEFT[2]), .B(n2), .Y(n1019) );
  OR2X1 U62 ( .A(IN_SELECT), .B(ENC_LEFT[2]), .Y(n1020) );
  NAND2X1 U63 ( .A(ENC_RIGHT[2]), .B(n2), .Y(n1021) );
  OR2X1 U64 ( .A(IN_SELECT), .B(ENC_RIGHT[2]), .Y(n1022) );
  NAND2X1 U65 ( .A(ENC_LEFT[16]), .B(n2), .Y(n1023) );
  OR2X1 U66 ( .A(IN_SELECT), .B(ENC_LEFT[16]), .Y(n1024) );
  NAND2X1 U67 ( .A(ENC_RIGHT[16]), .B(n2), .Y(n1025) );
  OR2X1 U68 ( .A(IN_SELECT), .B(ENC_RIGHT[16]), .Y(n1026) );
  NAND2X1 U69 ( .A(ENC_LEFT[8]), .B(n2), .Y(n1027) );
  OR2X1 U70 ( .A(IN_SELECT), .B(ENC_LEFT[8]), .Y(n1028) );
  NAND2X1 U71 ( .A(ENC_RIGHT[8]), .B(n2), .Y(n1029) );
  OR2X1 U72 ( .A(IN_SELECT), .B(ENC_RIGHT[8]), .Y(n1030) );
  NAND2X1 U73 ( .A(ENC_LEFT[21]), .B(n2), .Y(n1031) );
  OR2X1 U74 ( .A(IN_SELECT), .B(ENC_LEFT[21]), .Y(n1032) );
  NAND2X1 U75 ( .A(ENC_RIGHT[21]), .B(n2), .Y(n1033) );
  OR2X1 U76 ( .A(IN_SELECT), .B(ENC_RIGHT[21]), .Y(n1034) );
  NAND2X1 U77 ( .A(ENC_LEFT[3]), .B(n2), .Y(n1035) );
  OR2X1 U78 ( .A(IN_SELECT), .B(ENC_LEFT[3]), .Y(n1036) );
  NAND2X1 U79 ( .A(ENC_RIGHT[3]), .B(n2), .Y(n1037) );
  OR2X1 U80 ( .A(IN_SELECT), .B(ENC_RIGHT[3]), .Y(n1038) );
  NAND2X1 U81 ( .A(ENC_LEFT[28]), .B(n2), .Y(n1039) );
  OR2X1 U82 ( .A(IN_SELECT), .B(ENC_LEFT[28]), .Y(n1040) );
  NAND2X1 U83 ( .A(ENC_RIGHT[28]), .B(n2), .Y(n1041) );
  OR2X1 U84 ( .A(IN_SELECT), .B(ENC_RIGHT[28]), .Y(n1042) );
  NAND2X1 U85 ( .A(ENC_LEFT[7]), .B(n2), .Y(n1043) );
  OR2X1 U86 ( .A(IN_SELECT), .B(ENC_LEFT[7]), .Y(n1044) );
  NAND2X1 U87 ( .A(ENC_RIGHT[7]), .B(n2), .Y(n1045) );
  OR2X1 U88 ( .A(IN_SELECT), .B(ENC_RIGHT[7]), .Y(n1046) );
  NAND2X1 U89 ( .A(ENC_LEFT[18]), .B(n2), .Y(n1047) );
  OR2X1 U90 ( .A(IN_SELECT), .B(ENC_LEFT[18]), .Y(n1048) );
  NAND2X1 U91 ( .A(ENC_RIGHT[18]), .B(n2), .Y(n1049) );
  OR2X1 U92 ( .A(IN_SELECT), .B(ENC_RIGHT[18]), .Y(n1050) );
  NAND2X1 U93 ( .A(ENC_LEFT[24]), .B(n2), .Y(n1051) );
  OR2X1 U94 ( .A(IN_SELECT), .B(ENC_LEFT[24]), .Y(n1052) );
  NAND2X1 U95 ( .A(ENC_RIGHT[24]), .B(n2), .Y(n1053) );
  OR2X1 U96 ( .A(IN_SELECT), .B(ENC_RIGHT[24]), .Y(n1054) );
  NAND2X1 U97 ( .A(ENC_LEFT[11]), .B(n2), .Y(n1055) );
  OR2X1 U98 ( .A(IN_SELECT), .B(ENC_LEFT[11]), .Y(n1056) );
  NAND2X1 U99 ( .A(ENC_RIGHT[11]), .B(n2), .Y(n1057) );
  OR2X1 U100 ( .A(IN_SELECT), .B(ENC_RIGHT[11]), .Y(n1058) );
  NAND2X1 U101 ( .A(ENC_LEFT[17]), .B(n2), .Y(n1059) );
  OR2X1 U102 ( .A(IN_SELECT), .B(ENC_LEFT[17]), .Y(n1060) );
  NAND2X1 U103 ( .A(ENC_RIGHT[17]), .B(n2), .Y(n1061) );
  OR2X1 U104 ( .A(IN_SELECT), .B(ENC_RIGHT[17]), .Y(n1062) );
  NAND2X1 U105 ( .A(ENC_LEFT[5]), .B(n2), .Y(n1063) );
  OR2X1 U106 ( .A(IN_SELECT), .B(ENC_LEFT[5]), .Y(n1064) );
  NAND2X1 U107 ( .A(ENC_RIGHT[5]), .B(n2), .Y(n1065) );
  OR2X1 U108 ( .A(IN_SELECT), .B(ENC_RIGHT[5]), .Y(n1066) );
  NAND2X1 U109 ( .A(ENC_LEFT[27]), .B(n2), .Y(n1067) );
  OR2X1 U110 ( .A(IN_SELECT), .B(ENC_LEFT[27]), .Y(n1068) );
  NAND2X1 U111 ( .A(ENC_RIGHT[27]), .B(n2), .Y(n1069) );
  OR2X1 U112 ( .A(IN_SELECT), .B(ENC_RIGHT[27]), .Y(n1070) );
  NAND2X1 U113 ( .A(ENC_LEFT[1]), .B(n2), .Y(n1071) );
  OR2X1 U114 ( .A(IN_SELECT), .B(ENC_LEFT[1]), .Y(n1072) );
  NAND2X1 U115 ( .A(ENC_RIGHT[1]), .B(n2), .Y(n1073) );
  OR2X1 U116 ( .A(IN_SELECT), .B(ENC_RIGHT[1]), .Y(n1074) );
  NAND2X1 U117 ( .A(ENC_LEFT[9]), .B(n2), .Y(n1075) );
  OR2X1 U118 ( .A(IN_SELECT), .B(ENC_LEFT[9]), .Y(n1076) );
  NAND2X1 U119 ( .A(ENC_RIGHT[9]), .B(n2), .Y(n1077) );
  OR2X1 U120 ( .A(IN_SELECT), .B(ENC_RIGHT[9]), .Y(n1078) );
  NAND2X1 U121 ( .A(ENC_LEFT[15]), .B(n2), .Y(n1079) );
  OR2X1 U122 ( .A(IN_SELECT), .B(ENC_LEFT[15]), .Y(n1080) );
  NAND2X1 U123 ( .A(ENC_RIGHT[15]), .B(n2), .Y(n1081) );
  OR2X1 U124 ( .A(IN_SELECT), .B(ENC_RIGHT[15]), .Y(n1082) );
  NAND2X1 U125 ( .A(ENC_LEFT[23]), .B(n2), .Y(n1083) );
  OR2X1 U126 ( .A(IN_SELECT), .B(ENC_LEFT[23]), .Y(n1084) );
  NAND2X1 U127 ( .A(ENC_RIGHT[23]), .B(n2), .Y(n1085) );
  OR2X1 U128 ( .A(IN_SELECT), .B(ENC_RIGHT[23]), .Y(n1086) );
  NAND2X1 U129 ( .A(ENC_RIGHT[0]), .B(n2), .Y(n1087) );
  OR2X1 U130 ( .A(IN_SELECT), .B(ENC_RIGHT[0]), .Y(n1088) );
  NAND2X1 U131 ( .A(ENC_LEFT[0]), .B(n2), .Y(n1089) );
  OR2X1 U132 ( .A(IN_SELECT), .B(ENC_LEFT[0]), .Y(n1090) );
  XNOR2X1 U133 ( .A(CUR_ENC_LEFT[9]), .B(n3), .Y(NXT_ENC_RIGHT1[9]) );
  NOR2X1 U134 ( .A(n4), .B(n5), .Y(n3) );
  OAI21X1 U135 ( .A(n6), .B(n7), .C(n8), .Y(n5) );
  NAND3X1 U136 ( .A(n9), .B(n10), .C(n11), .Y(n4) );
  OAI21X1 U137 ( .A(n12), .B(n13), .C(n14), .Y(n11) );
  OR2X1 U138 ( .A(n15), .B(n16), .Y(n13) );
  NAND2X1 U139 ( .A(n17), .B(n18), .Y(n12) );
  OAI21X1 U140 ( .A(n19), .B(n20), .C(n21), .Y(n10) );
  NOR2X1 U141 ( .A(n22), .B(n23), .Y(n19) );
  OAI21X1 U142 ( .A(n24), .B(n25), .C(n26), .Y(n9) );
  XOR2X1 U143 ( .A(n27), .B(CUR_ENC_LEFT[8]), .Y(NXT_ENC_RIGHT1[8]) );
  NAND3X1 U144 ( .A(n28), .B(n29), .C(n30), .Y(n27) );
  AOI21X1 U145 ( .A(n31), .B(n32), .C(n33), .Y(n30) );
  NAND3X1 U146 ( .A(n34), .B(n35), .C(n36), .Y(n32) );
  INVX1 U147 ( .A(n37), .Y(n36) );
  OAI21X1 U148 ( .A(n38), .B(n39), .C(n40), .Y(n37) );
  OAI21X1 U149 ( .A(n41), .B(n42), .C(n43), .Y(n29) );
  OAI21X1 U150 ( .A(n44), .B(n45), .C(n46), .Y(n42) );
  INVX1 U151 ( .A(n47), .Y(n46) );
  NAND2X1 U152 ( .A(n48), .B(n49), .Y(n45) );
  AOI22X1 U153 ( .A(n50), .B(n51), .C(n52), .D(n53), .Y(n28) );
  OAI21X1 U154 ( .A(n54), .B(n55), .C(n56), .Y(n53) );
  AND2X1 U155 ( .A(n57), .B(n58), .Y(n56) );
  OR2X1 U156 ( .A(n59), .B(n60), .Y(n55) );
  NOR2X1 U157 ( .A(n61), .B(n62), .Y(n50) );
  XNOR2X1 U158 ( .A(CUR_ENC_LEFT[7]), .B(n63), .Y(NXT_ENC_RIGHT1[7]) );
  NOR2X1 U159 ( .A(n64), .B(n65), .Y(n63) );
  OAI21X1 U160 ( .A(n66), .B(n67), .C(n68), .Y(n65) );
  INVX1 U161 ( .A(n69), .Y(n66) );
  NAND3X1 U162 ( .A(n70), .B(n71), .C(n72), .Y(n64) );
  OAI21X1 U163 ( .A(n73), .B(n74), .C(n75), .Y(n72) );
  OAI21X1 U164 ( .A(n76), .B(n77), .C(n78), .Y(n74) );
  OAI21X1 U165 ( .A(n79), .B(n80), .C(n81), .Y(n71) );
  OR2X1 U166 ( .A(n82), .B(n83), .Y(n70) );
  XNOR2X1 U167 ( .A(CUR_ENC_LEFT[6]), .B(n84), .Y(NXT_ENC_RIGHT1[6]) );
  NOR2X1 U168 ( .A(n85), .B(n86), .Y(n84) );
  NAND3X1 U169 ( .A(n87), .B(n88), .C(n89), .Y(n86) );
  INVX1 U170 ( .A(n90), .Y(n89) );
  OAI22X1 U171 ( .A(n91), .B(n92), .C(n93), .D(n94), .Y(n90) );
  INVX1 U172 ( .A(n95), .Y(n92) );
  INVX1 U173 ( .A(n96), .Y(n87) );
  NAND3X1 U174 ( .A(n97), .B(n98), .C(n99), .Y(n85) );
  AOI22X1 U175 ( .A(n100), .B(n101), .C(n102), .D(n103), .Y(n99) );
  OAI21X1 U176 ( .A(n94), .B(n104), .C(n105), .Y(n101) );
  MUX2X1 U177 ( .B(n106), .A(n107), .S(n108), .Y(n105) );
  NOR2X1 U178 ( .A(n109), .B(n110), .Y(n107) );
  NOR2X1 U179 ( .A(n111), .B(n112), .Y(n106) );
  OR2X1 U180 ( .A(n113), .B(n114), .Y(n104) );
  INVX1 U181 ( .A(n115), .Y(n98) );
  AOI21X1 U182 ( .A(n116), .B(n117), .C(n110), .Y(n115) );
  OAI21X1 U183 ( .A(n118), .B(n119), .C(n120), .Y(n97) );
  NAND2X1 U184 ( .A(n121), .B(n122), .Y(n119) );
  XOR2X1 U185 ( .A(n123), .B(CUR_ENC_LEFT[5]), .Y(NXT_ENC_RIGHT1[5]) );
  NAND3X1 U186 ( .A(n124), .B(n125), .C(n126), .Y(n123) );
  NOR2X1 U187 ( .A(n127), .B(n128), .Y(n126) );
  OAI21X1 U188 ( .A(n129), .B(n130), .C(n131), .Y(n128) );
  OAI21X1 U189 ( .A(n132), .B(n133), .C(n134), .Y(n131) );
  AOI21X1 U190 ( .A(n135), .B(n136), .C(n137), .Y(n129) );
  OAI21X1 U191 ( .A(n138), .B(n139), .C(n140), .Y(n127) );
  OAI21X1 U192 ( .A(n141), .B(n142), .C(n143), .Y(n140) );
  OAI21X1 U193 ( .A(n144), .B(n145), .C(n146), .Y(n142) );
  NAND2X1 U194 ( .A(n147), .B(n148), .Y(n141) );
  OR2X1 U195 ( .A(n149), .B(n150), .Y(n139) );
  AOI21X1 U196 ( .A(n151), .B(n152), .C(n153), .Y(n124) );
  INVX1 U197 ( .A(n154), .Y(n152) );
  XOR2X1 U198 ( .A(n155), .B(CUR_ENC_LEFT[4]), .Y(NXT_ENC_RIGHT1[4]) );
  NAND3X1 U199 ( .A(n156), .B(n157), .C(n158), .Y(n155) );
  AOI21X1 U200 ( .A(n159), .B(n160), .C(n161), .Y(n158) );
  OAI21X1 U201 ( .A(n162), .B(n163), .C(n164), .Y(n161) );
  OAI21X1 U202 ( .A(n165), .B(n166), .C(n167), .Y(n164) );
  OAI21X1 U203 ( .A(n168), .B(n169), .C(n170), .Y(n166) );
  OAI21X1 U204 ( .A(n171), .B(n172), .C(n173), .Y(n165) );
  AND2X1 U205 ( .A(n174), .B(n175), .Y(n173) );
  OAI21X1 U206 ( .A(n176), .B(n177), .C(n178), .Y(n157) );
  OAI22X1 U207 ( .A(n179), .B(n169), .C(n171), .D(n168), .Y(n177) );
  NAND2X1 U208 ( .A(n180), .B(n181), .Y(n176) );
  AOI22X1 U209 ( .A(n182), .B(n183), .C(n184), .D(n185), .Y(n156) );
  NAND3X1 U210 ( .A(n186), .B(n187), .C(n170), .Y(n185) );
  NAND3X1 U211 ( .A(n188), .B(n189), .C(n190), .Y(n183) );
  XNOR2X1 U212 ( .A(CUR_ENC_LEFT[3]), .B(n191), .Y(NXT_ENC_RIGHT1[3]) );
  NOR2X1 U213 ( .A(n192), .B(n193), .Y(n191) );
  OAI21X1 U214 ( .A(n194), .B(n195), .C(n196), .Y(n193) );
  OAI21X1 U215 ( .A(n197), .B(n198), .C(n199), .Y(n196) );
  NAND3X1 U216 ( .A(n200), .B(n201), .C(n202), .Y(n198) );
  NAND3X1 U217 ( .A(n203), .B(n204), .C(n205), .Y(n197) );
  NAND3X1 U218 ( .A(n206), .B(n207), .C(n208), .Y(n192) );
  OAI21X1 U219 ( .A(n209), .B(n210), .C(n211), .Y(n208) );
  NAND2X1 U220 ( .A(n212), .B(n200), .Y(n210) );
  AOI22X1 U221 ( .A(n213), .B(n214), .C(n215), .D(n216), .Y(n212) );
  NAND3X1 U222 ( .A(n201), .B(n217), .C(n218), .Y(n209) );
  OAI21X1 U223 ( .A(n219), .B(n220), .C(n221), .Y(n207) );
  NOR2X1 U224 ( .A(n222), .B(n223), .Y(n219) );
  OAI21X1 U225 ( .A(n224), .B(n225), .C(n226), .Y(n206) );
  XNOR2X1 U226 ( .A(CUR_ENC_LEFT[31]), .B(n227), .Y(NXT_ENC_RIGHT1[31]) );
  NOR2X1 U227 ( .A(n228), .B(n229), .Y(n227) );
  NAND2X1 U228 ( .A(n88), .B(n230), .Y(n229) );
  OAI21X1 U229 ( .A(n231), .B(n232), .C(n120), .Y(n230) );
  OAI21X1 U230 ( .A(n233), .B(n234), .C(n235), .Y(n232) );
  AOI21X1 U231 ( .A(n236), .B(n237), .C(n238), .Y(n88) );
  OAI22X1 U232 ( .A(n239), .B(n110), .C(n112), .D(n240), .Y(n238) );
  NAND3X1 U233 ( .A(n241), .B(n242), .C(n243), .Y(n228) );
  OAI21X1 U234 ( .A(n244), .B(n245), .C(n246), .Y(n243) );
  OAI21X1 U235 ( .A(n108), .B(n247), .C(n248), .Y(n245) );
  OAI21X1 U236 ( .A(n249), .B(n250), .C(n237), .Y(n242) );
  NAND2X1 U237 ( .A(n240), .B(n251), .Y(n250) );
  INVX1 U238 ( .A(n252), .Y(n240) );
  NAND2X1 U239 ( .A(n121), .B(n253), .Y(n249) );
  OAI21X1 U240 ( .A(n254), .B(n255), .C(n102), .Y(n241) );
  INVX1 U241 ( .A(n256), .Y(n254) );
  XNOR2X1 U242 ( .A(CUR_ENC_LEFT[30]), .B(n257), .Y(NXT_ENC_RIGHT1[30]) );
  NOR2X1 U243 ( .A(n258), .B(n259), .Y(n257) );
  OAI21X1 U244 ( .A(n260), .B(n180), .C(n261), .Y(n259) );
  OAI21X1 U245 ( .A(n262), .B(n263), .C(n182), .Y(n261) );
  OAI21X1 U246 ( .A(n169), .B(n172), .C(n175), .Y(n263) );
  NAND3X1 U247 ( .A(n264), .B(n265), .C(n266), .Y(n258) );
  OAI21X1 U248 ( .A(n267), .B(n268), .C(n178), .Y(n266) );
  NAND2X1 U249 ( .A(n190), .B(n163), .Y(n268) );
  OAI21X1 U250 ( .A(n269), .B(n270), .C(n167), .Y(n265) );
  OAI21X1 U251 ( .A(n271), .B(n272), .C(n170), .Y(n270) );
  INVX1 U252 ( .A(n273), .Y(n170) );
  OAI21X1 U253 ( .A(n274), .B(n169), .C(n275), .Y(n273) );
  NAND2X1 U254 ( .A(n180), .B(n276), .Y(n269) );
  OAI21X1 U255 ( .A(n277), .B(n278), .C(n184), .Y(n264) );
  NOR2X1 U256 ( .A(n279), .B(n168), .Y(n277) );
  XOR2X1 U257 ( .A(n280), .B(CUR_ENC_LEFT[2]), .Y(NXT_ENC_RIGHT1[2]) );
  NAND3X1 U258 ( .A(n281), .B(n282), .C(n283), .Y(n280) );
  AOI21X1 U259 ( .A(n31), .B(n284), .C(n285), .Y(n283) );
  OAI21X1 U260 ( .A(n286), .B(n287), .C(n288), .Y(n285) );
  OAI21X1 U261 ( .A(n289), .B(n290), .C(n291), .Y(n288) );
  NOR2X1 U262 ( .A(n292), .B(n293), .Y(n286) );
  OAI21X1 U263 ( .A(n49), .B(n294), .C(n295), .Y(n284) );
  OAI21X1 U264 ( .A(n296), .B(n297), .C(n298), .Y(n282) );
  OAI21X1 U265 ( .A(n39), .B(n44), .C(n299), .Y(n297) );
  NAND3X1 U266 ( .A(n300), .B(n35), .C(n301), .Y(n296) );
  AOI22X1 U267 ( .A(n43), .B(n302), .C(n303), .D(n304), .Y(n281) );
  NAND2X1 U268 ( .A(n58), .B(n305), .Y(n302) );
  OAI21X1 U269 ( .A(n306), .B(n307), .C(n48), .Y(n305) );
  XNOR2X1 U270 ( .A(CUR_ENC_LEFT[29]), .B(n308), .Y(NXT_ENC_RIGHT1[29]) );
  NOR2X1 U271 ( .A(n309), .B(n310), .Y(n308) );
  OAI21X1 U272 ( .A(n311), .B(n312), .C(n313), .Y(n310) );
  INVX1 U273 ( .A(n314), .Y(n313) );
  AOI21X1 U274 ( .A(n315), .B(n316), .C(n317), .Y(n311) );
  OAI21X1 U275 ( .A(n318), .B(n82), .C(n319), .Y(n309) );
  AOI22X1 U276 ( .A(n320), .B(n321), .C(n81), .D(n322), .Y(n319) );
  OAI21X1 U277 ( .A(n323), .B(n324), .C(n83), .Y(n322) );
  NOR2X1 U278 ( .A(n325), .B(n326), .Y(n83) );
  OAI21X1 U279 ( .A(n327), .B(n77), .C(n328), .Y(n326) );
  OAI21X1 U280 ( .A(n329), .B(n330), .C(n331), .Y(n321) );
  INVX1 U281 ( .A(n73), .Y(n331) );
  NAND3X1 U282 ( .A(n332), .B(n333), .C(n334), .Y(n73) );
  AND2X1 U283 ( .A(n335), .B(n336), .Y(n334) );
  INVX1 U284 ( .A(n337), .Y(n82) );
  AOI21X1 U285 ( .A(n338), .B(n339), .C(n340), .Y(n318) );
  XNOR2X1 U286 ( .A(CUR_ENC_LEFT[28]), .B(n341), .Y(NXT_ENC_RIGHT1[28]) );
  NOR2X1 U287 ( .A(n342), .B(n343), .Y(n341) );
  NAND3X1 U288 ( .A(n344), .B(n345), .C(n346), .Y(n343) );
  OAI21X1 U289 ( .A(n347), .B(n348), .C(n211), .Y(n346) );
  OR2X1 U290 ( .A(n349), .B(n350), .Y(n348) );
  NAND2X1 U291 ( .A(n201), .B(n205), .Y(n347) );
  INVX1 U292 ( .A(n224), .Y(n201) );
  OAI21X1 U293 ( .A(n351), .B(n352), .C(n226), .Y(n345) );
  INVX1 U294 ( .A(n353), .Y(n351) );
  NAND2X1 U295 ( .A(n354), .B(n355), .Y(n344) );
  OAI21X1 U296 ( .A(n356), .B(n357), .C(n358), .Y(n355) );
  OAI21X1 U297 ( .A(n215), .B(n359), .C(n226), .Y(n358) );
  INVX1 U298 ( .A(n221), .Y(n357) );
  NAND3X1 U299 ( .A(n360), .B(n361), .C(n362), .Y(n342) );
  OAI21X1 U300 ( .A(n363), .B(n364), .C(n199), .Y(n362) );
  NAND2X1 U301 ( .A(n365), .B(n366), .Y(n364) );
  NAND2X1 U302 ( .A(n202), .B(n353), .Y(n363) );
  OAI21X1 U303 ( .A(n367), .B(n368), .C(n221), .Y(n361) );
  INVX1 U304 ( .A(n366), .Y(n368) );
  INVX1 U305 ( .A(n369), .Y(n360) );
  AOI21X1 U306 ( .A(n370), .B(n217), .C(n195), .Y(n369) );
  XOR2X1 U307 ( .A(n371), .B(CUR_ENC_LEFT[27]), .Y(NXT_ENC_RIGHT1[27]) );
  NAND3X1 U308 ( .A(n372), .B(n373), .C(n374), .Y(n371) );
  NOR2X1 U309 ( .A(n375), .B(n376), .Y(n374) );
  INVX1 U310 ( .A(n377), .Y(n376) );
  AOI22X1 U311 ( .A(n378), .B(n137), .C(n379), .D(n380), .Y(n377) );
  OAI21X1 U312 ( .A(n149), .B(n381), .C(n382), .Y(n137) );
  AND2X1 U313 ( .A(n383), .B(n384), .Y(n382) );
  OAI21X1 U314 ( .A(n385), .B(n145), .C(n386), .Y(n375) );
  OAI21X1 U315 ( .A(n387), .B(n388), .C(n134), .Y(n386) );
  NAND2X1 U316 ( .A(n389), .B(n148), .Y(n388) );
  INVX1 U317 ( .A(n390), .Y(n148) );
  AOI21X1 U318 ( .A(n151), .B(n391), .C(n392), .Y(n385) );
  OAI21X1 U319 ( .A(n393), .B(n394), .C(n130), .Y(n392) );
  AOI22X1 U320 ( .A(n143), .B(n133), .C(n395), .D(n151), .Y(n373) );
  NAND3X1 U321 ( .A(n384), .B(n396), .C(n397), .Y(n133) );
  AOI21X1 U322 ( .A(n398), .B(n399), .C(n400), .Y(n397) );
  NOR2X1 U323 ( .A(n153), .B(n401), .Y(n372) );
  XNOR2X1 U324 ( .A(CUR_ENC_LEFT[26]), .B(n402), .Y(NXT_ENC_RIGHT1[26]) );
  NOR2X1 U325 ( .A(n403), .B(n404), .Y(n402) );
  NAND3X1 U326 ( .A(n405), .B(n406), .C(n407), .Y(n404) );
  INVX1 U327 ( .A(n33), .Y(n407) );
  NAND2X1 U328 ( .A(n408), .B(n409), .Y(n33) );
  AOI22X1 U329 ( .A(n410), .B(n289), .C(n52), .D(n411), .Y(n409) );
  OAI21X1 U330 ( .A(n44), .B(n49), .C(n412), .Y(n411) );
  AND2X1 U331 ( .A(n40), .B(n295), .Y(n412) );
  INVX1 U332 ( .A(n57), .Y(n289) );
  NAND3X1 U333 ( .A(n54), .B(n59), .C(n60), .Y(n57) );
  AOI22X1 U334 ( .A(n298), .B(n304), .C(n31), .D(n413), .Y(n408) );
  OAI21X1 U335 ( .A(n41), .B(n293), .C(n291), .Y(n406) );
  OR2X1 U336 ( .A(n414), .B(n415), .Y(n293) );
  OAI21X1 U337 ( .A(n54), .B(n416), .C(n300), .Y(n415) );
  NAND3X1 U338 ( .A(n417), .B(n418), .C(n419), .Y(n300) );
  OAI21X1 U339 ( .A(n47), .B(n420), .C(n52), .Y(n405) );
  NAND2X1 U340 ( .A(n421), .B(n34), .Y(n420) );
  OR2X1 U341 ( .A(n422), .B(n418), .Y(n34) );
  NAND2X1 U342 ( .A(n423), .B(n299), .Y(n47) );
  OAI21X1 U343 ( .A(n424), .B(n62), .C(n425), .Y(n403) );
  AOI22X1 U344 ( .A(n426), .B(n427), .C(n428), .D(n51), .Y(n425) );
  NOR2X1 U345 ( .A(n38), .B(n429), .Y(n428) );
  NOR2X1 U346 ( .A(n430), .B(n44), .Y(n426) );
  INVX1 U347 ( .A(n298), .Y(n62) );
  AOI21X1 U348 ( .A(n431), .B(n417), .C(n432), .Y(n424) );
  NOR2X1 U349 ( .A(n433), .B(n59), .Y(n431) );
  XNOR2X1 U350 ( .A(CUR_ENC_LEFT[25]), .B(n434), .Y(NXT_ENC_RIGHT1[25]) );
  NOR2X1 U351 ( .A(n435), .B(n436), .Y(n434) );
  NAND2X1 U352 ( .A(n437), .B(n438), .Y(n436) );
  AOI22X1 U353 ( .A(n439), .B(n440), .C(n441), .D(n442), .Y(n437) );
  NAND3X1 U354 ( .A(n443), .B(n444), .C(n445), .Y(n440) );
  INVX1 U355 ( .A(n446), .Y(n445) );
  NAND3X1 U356 ( .A(n447), .B(n448), .C(n449), .Y(n435) );
  AOI22X1 U357 ( .A(n450), .B(n451), .C(n452), .D(n453), .Y(n449) );
  OAI21X1 U358 ( .A(n454), .B(n455), .C(n456), .Y(n453) );
  INVX1 U359 ( .A(n457), .Y(n455) );
  NOR2X1 U360 ( .A(n458), .B(n459), .Y(n450) );
  OAI21X1 U361 ( .A(n460), .B(n461), .C(n462), .Y(n448) );
  OAI21X1 U362 ( .A(n463), .B(n464), .C(n465), .Y(n447) );
  OAI21X1 U363 ( .A(n466), .B(n459), .C(n443), .Y(n464) );
  XOR2X1 U364 ( .A(n467), .B(CUR_ENC_LEFT[24]), .Y(NXT_ENC_RIGHT1[24]) );
  NAND3X1 U365 ( .A(n468), .B(n469), .C(n470), .Y(n467) );
  NOR2X1 U366 ( .A(n314), .B(n471), .Y(n470) );
  OAI21X1 U367 ( .A(n472), .B(n473), .C(n474), .Y(n471) );
  OAI21X1 U368 ( .A(n475), .B(n69), .C(n75), .Y(n474) );
  OAI21X1 U369 ( .A(n316), .B(n476), .C(n477), .Y(n69) );
  AND2X1 U370 ( .A(n333), .B(n478), .Y(n477) );
  INVX1 U371 ( .A(n479), .Y(n475) );
  AOI21X1 U372 ( .A(n480), .B(n76), .C(n481), .Y(n472) );
  NAND2X1 U373 ( .A(n335), .B(n482), .Y(n481) );
  NOR2X1 U374 ( .A(n315), .B(n316), .Y(n480) );
  NAND2X1 U375 ( .A(n483), .B(n484), .Y(n314) );
  AOI22X1 U376 ( .A(n75), .B(n485), .C(n81), .D(n486), .Y(n484) );
  OAI21X1 U377 ( .A(n324), .B(n77), .C(n487), .Y(n485) );
  INVX1 U378 ( .A(n325), .Y(n487) );
  AOI22X1 U379 ( .A(n488), .B(n320), .C(n337), .D(n489), .Y(n483) );
  NAND3X1 U380 ( .A(n328), .B(n478), .C(n482), .Y(n489) );
  INVX1 U381 ( .A(n490), .Y(n478) );
  INVX1 U382 ( .A(n482), .Y(n488) );
  OAI21X1 U383 ( .A(n491), .B(n79), .C(n337), .Y(n469) );
  NAND2X1 U384 ( .A(n492), .B(n479), .Y(n79) );
  AOI21X1 U385 ( .A(n320), .B(n493), .C(n494), .Y(n468) );
  INVX1 U386 ( .A(n495), .Y(n494) );
  OAI21X1 U387 ( .A(n496), .B(n476), .C(n497), .Y(n493) );
  INVX1 U388 ( .A(n498), .Y(n476) );
  XNOR2X1 U389 ( .A(CUR_ENC_LEFT[23]), .B(n499), .Y(NXT_ENC_RIGHT1[23]) );
  NOR2X1 U390 ( .A(n500), .B(n501), .Y(n499) );
  INVX1 U391 ( .A(n502), .Y(n501) );
  AOI22X1 U392 ( .A(n503), .B(n504), .C(n505), .D(n21), .Y(n502) );
  NAND3X1 U393 ( .A(n506), .B(n507), .C(n508), .Y(n500) );
  OAI21X1 U394 ( .A(n509), .B(n510), .C(n26), .Y(n508) );
  NAND3X1 U395 ( .A(n511), .B(n512), .C(n513), .Y(n510) );
  OAI21X1 U396 ( .A(n514), .B(n515), .C(n516), .Y(n513) );
  NAND3X1 U397 ( .A(n517), .B(n518), .C(n519), .Y(n509) );
  OAI22X1 U398 ( .A(n520), .B(n521), .C(n21), .D(n504), .Y(n507) );
  INVX1 U399 ( .A(n522), .Y(n521) );
  OAI21X1 U400 ( .A(n523), .B(n524), .C(n14), .Y(n506) );
  INVX1 U401 ( .A(n6), .Y(n524) );
  NOR2X1 U402 ( .A(n525), .B(n526), .Y(n6) );
  OAI21X1 U403 ( .A(n516), .B(n17), .C(n527), .Y(n526) );
  XOR2X1 U404 ( .A(n528), .B(CUR_ENC_LEFT[22]), .Y(NXT_ENC_RIGHT1[22]) );
  NAND3X1 U405 ( .A(n529), .B(n530), .C(n531), .Y(n528) );
  AOI21X1 U406 ( .A(n237), .B(n532), .C(n533), .Y(n531) );
  NAND2X1 U407 ( .A(n534), .B(n535), .Y(n533) );
  OAI21X1 U408 ( .A(n536), .B(n231), .C(n95), .Y(n535) );
  NAND2X1 U409 ( .A(n94), .B(n110), .Y(n95) );
  INVX1 U410 ( .A(n246), .Y(n110) );
  OAI21X1 U411 ( .A(n537), .B(n103), .C(n246), .Y(n534) );
  NAND2X1 U412 ( .A(n538), .B(n251), .Y(n103) );
  OAI21X1 U413 ( .A(n539), .B(n540), .C(n122), .Y(n532) );
  NAND2X1 U414 ( .A(n100), .B(n233), .Y(n540) );
  OAI21X1 U415 ( .A(n541), .B(n542), .C(n120), .Y(n530) );
  OAI21X1 U416 ( .A(n247), .B(n233), .C(n235), .Y(n542) );
  INVX1 U417 ( .A(n543), .Y(n235) );
  NAND3X1 U418 ( .A(n544), .B(n122), .C(n256), .Y(n543) );
  INVX1 U419 ( .A(n109), .Y(n247) );
  NAND3X1 U420 ( .A(n93), .B(n116), .C(n251), .Y(n541) );
  OAI21X1 U421 ( .A(n545), .B(n546), .C(n102), .Y(n529) );
  OR2X1 U422 ( .A(n236), .B(n252), .Y(n546) );
  NAND2X1 U423 ( .A(n547), .B(n116), .Y(n252) );
  NAND2X1 U424 ( .A(n114), .B(n548), .Y(n116) );
  NAND3X1 U425 ( .A(n117), .B(n549), .C(n538), .Y(n236) );
  NAND3X1 U426 ( .A(n248), .B(n544), .C(n93), .Y(n545) );
  NAND2X1 U427 ( .A(n550), .B(n551), .Y(n248) );
  XNOR2X1 U428 ( .A(CUR_ENC_LEFT[21]), .B(n552), .Y(NXT_ENC_RIGHT1[21]) );
  NOR2X1 U429 ( .A(n553), .B(n554), .Y(n552) );
  OAI21X1 U430 ( .A(n195), .B(n555), .C(n556), .Y(n554) );
  OAI21X1 U431 ( .A(n557), .B(n558), .C(n199), .Y(n556) );
  NAND2X1 U432 ( .A(n370), .B(n204), .Y(n558) );
  INVX1 U433 ( .A(n225), .Y(n555) );
  NAND3X1 U434 ( .A(n559), .B(n560), .C(n561), .Y(n225) );
  AOI21X1 U435 ( .A(n354), .B(n215), .C(n562), .Y(n561) );
  INVX1 U436 ( .A(n205), .Y(n562) );
  OAI21X1 U437 ( .A(n563), .B(n564), .C(n565), .Y(n553) );
  AOI22X1 U438 ( .A(n211), .B(n566), .C(n221), .D(n567), .Y(n565) );
  NAND3X1 U439 ( .A(n217), .B(n568), .C(n569), .Y(n567) );
  INVX1 U440 ( .A(n220), .Y(n569) );
  OAI21X1 U441 ( .A(n570), .B(n571), .C(n203), .Y(n220) );
  NAND3X1 U442 ( .A(n205), .B(n203), .C(n572), .Y(n566) );
  INVX1 U443 ( .A(n557), .Y(n572) );
  NAND3X1 U444 ( .A(n194), .B(n353), .C(n573), .Y(n557) );
  NOR2X1 U445 ( .A(n224), .B(n574), .Y(n573) );
  NOR2X1 U446 ( .A(n223), .B(n571), .Y(n224) );
  INVX1 U447 ( .A(n226), .Y(n564) );
  AOI21X1 U448 ( .A(n354), .B(n356), .C(n575), .Y(n563) );
  NAND2X1 U449 ( .A(n370), .B(n218), .Y(n575) );
  XOR2X1 U450 ( .A(n576), .B(CUR_ENC_LEFT[20]), .Y(NXT_ENC_RIGHT1[20]) );
  NAND3X1 U451 ( .A(n577), .B(n578), .C(n579), .Y(n576) );
  NOR2X1 U452 ( .A(n580), .B(n581), .Y(n579) );
  OAI21X1 U453 ( .A(n582), .B(n458), .C(n583), .Y(n581) );
  OAI21X1 U454 ( .A(n584), .B(n585), .C(n452), .Y(n583) );
  OAI21X1 U455 ( .A(n586), .B(n587), .C(n588), .Y(n585) );
  NAND2X1 U456 ( .A(n589), .B(n456), .Y(n584) );
  INVX1 U457 ( .A(n590), .Y(n582) );
  OAI21X1 U458 ( .A(n591), .B(n592), .C(n439), .Y(n578) );
  OAI21X1 U459 ( .A(n459), .B(n593), .C(n594), .Y(n592) );
  INVX1 U460 ( .A(n460), .Y(n594) );
  AOI22X1 U461 ( .A(n465), .B(n595), .C(n462), .D(n596), .Y(n577) );
  OAI21X1 U462 ( .A(n597), .B(n598), .C(n599), .Y(n596) );
  INVX1 U463 ( .A(n463), .Y(n599) );
  NAND3X1 U464 ( .A(n600), .B(n601), .C(n602), .Y(n463) );
  AOI21X1 U465 ( .A(n451), .B(n603), .C(n604), .Y(n602) );
  NAND2X1 U466 ( .A(n605), .B(n606), .Y(n598) );
  NAND3X1 U467 ( .A(n607), .B(n608), .C(n609), .Y(n595) );
  NOR2X1 U468 ( .A(n446), .B(n591), .Y(n609) );
  OAI21X1 U469 ( .A(n610), .B(n593), .C(n589), .Y(n446) );
  INVX1 U470 ( .A(n603), .Y(n610) );
  AND2X1 U471 ( .A(n611), .B(n612), .Y(n607) );
  XNOR2X1 U472 ( .A(CUR_ENC_LEFT[1]), .B(n613), .Y(NXT_ENC_RIGHT1[1]) );
  NOR2X1 U473 ( .A(n614), .B(n615), .Y(n613) );
  OAI21X1 U474 ( .A(n616), .B(n7), .C(n617), .Y(n615) );
  INVX1 U475 ( .A(n504), .Y(n7) );
  OAI21X1 U476 ( .A(n618), .B(n619), .C(n620), .Y(n614) );
  AOI21X1 U477 ( .A(n21), .B(n621), .C(n622), .Y(n620) );
  INVX1 U478 ( .A(n623), .Y(n622) );
  OAI21X1 U479 ( .A(n624), .B(n503), .C(n14), .Y(n623) );
  NAND3X1 U480 ( .A(n512), .B(n625), .C(n626), .Y(n503) );
  AOI21X1 U481 ( .A(n627), .B(n628), .C(n25), .Y(n626) );
  NAND3X1 U482 ( .A(n629), .B(n630), .C(n511), .Y(n25) );
  INVX1 U483 ( .A(n631), .Y(n630) );
  NAND3X1 U484 ( .A(n527), .B(n17), .C(n632), .Y(n621) );
  INVX1 U485 ( .A(n525), .Y(n632) );
  NAND3X1 U486 ( .A(n625), .B(n629), .C(n522), .Y(n525) );
  NAND3X1 U487 ( .A(n633), .B(n634), .C(n635), .Y(n629) );
  INVX1 U488 ( .A(n636), .Y(n527) );
  OAI21X1 U489 ( .A(n637), .B(n638), .C(n639), .Y(n636) );
  AND2X1 U490 ( .A(n18), .B(n640), .Y(n639) );
  INVX1 U491 ( .A(n26), .Y(n619) );
  INVX1 U492 ( .A(n505), .Y(n618) );
  NAND3X1 U493 ( .A(n641), .B(n642), .C(n643), .Y(n505) );
  AOI21X1 U494 ( .A(n515), .B(n628), .C(n16), .Y(n643) );
  INVX1 U495 ( .A(n519), .Y(n16) );
  INVX1 U496 ( .A(n17), .Y(n515) );
  XOR2X1 U497 ( .A(n644), .B(CUR_ENC_LEFT[19]), .Y(NXT_ENC_RIGHT1[19]) );
  NAND3X1 U498 ( .A(n645), .B(n646), .C(n647), .Y(n644) );
  AOI21X1 U499 ( .A(n648), .B(n649), .C(n650), .Y(n647) );
  OAI21X1 U500 ( .A(n188), .B(n651), .C(n652), .Y(n650) );
  OAI21X1 U501 ( .A(n653), .B(n654), .C(n167), .Y(n652) );
  NAND2X1 U502 ( .A(n655), .B(n190), .Y(n654) );
  AOI21X1 U503 ( .A(n656), .B(n657), .C(n658), .Y(n190) );
  NAND2X1 U504 ( .A(n174), .B(n175), .Y(n658) );
  OAI21X1 U505 ( .A(n169), .B(n172), .C(n180), .Y(n653) );
  AOI22X1 U506 ( .A(n659), .B(n660), .C(n657), .D(n661), .Y(n188) );
  OAI21X1 U507 ( .A(n662), .B(n663), .C(n182), .Y(n646) );
  OAI21X1 U508 ( .A(n664), .B(n172), .C(n665), .Y(n663) );
  NAND2X1 U509 ( .A(n180), .B(n175), .Y(n662) );
  AOI22X1 U510 ( .A(n666), .B(n160), .C(n667), .D(n668), .Y(n645) );
  OAI22X1 U511 ( .A(n669), .B(n651), .C(n670), .D(n671), .Y(n668) );
  INVX1 U512 ( .A(n184), .Y(n651) );
  INVX1 U513 ( .A(n260), .Y(n160) );
  NOR2X1 U514 ( .A(n184), .B(n178), .Y(n260) );
  NAND2X1 U515 ( .A(n672), .B(n673), .Y(n666) );
  XOR2X1 U516 ( .A(n674), .B(CUR_ENC_LEFT[18]), .Y(NXT_ENC_RIGHT1[18]) );
  NAND2X1 U517 ( .A(n675), .B(n676), .Y(n674) );
  AOI21X1 U518 ( .A(n75), .B(n677), .C(n678), .Y(n676) );
  OAI21X1 U519 ( .A(n679), .B(n67), .C(n495), .Y(n678) );
  NAND3X1 U520 ( .A(n680), .B(n81), .C(n681), .Y(n495) );
  INVX1 U521 ( .A(n320), .Y(n67) );
  NOR2X1 U522 ( .A(n682), .B(n317), .Y(n679) );
  NAND2X1 U523 ( .A(n683), .B(n336), .Y(n317) );
  INVX1 U524 ( .A(n328), .Y(n682) );
  NAND3X1 U525 ( .A(n316), .B(n327), .C(n315), .Y(n328) );
  OAI21X1 U526 ( .A(n684), .B(n685), .C(n497), .Y(n677) );
  INVX1 U527 ( .A(n686), .Y(n497) );
  NAND3X1 U528 ( .A(n336), .B(n333), .C(n492), .Y(n686) );
  AOI22X1 U529 ( .A(n329), .B(n681), .C(n687), .D(n680), .Y(n492) );
  NAND2X1 U530 ( .A(n338), .B(n329), .Y(n333) );
  NAND3X1 U531 ( .A(n339), .B(n315), .C(n76), .Y(n336) );
  NAND2X1 U532 ( .A(n327), .B(n688), .Y(n685) );
  NOR2X1 U533 ( .A(n689), .B(n690), .Y(n675) );
  OAI21X1 U534 ( .A(n691), .B(n473), .C(n692), .Y(n690) );
  OAI21X1 U535 ( .A(n80), .B(n693), .C(n337), .Y(n692) );
  OAI21X1 U536 ( .A(n684), .B(n688), .C(n482), .Y(n693) );
  INVX1 U537 ( .A(n683), .Y(n80) );
  AOI22X1 U538 ( .A(n684), .B(n491), .C(n680), .D(n681), .Y(n683) );
  INVX1 U539 ( .A(n694), .Y(n491) );
  NAND3X1 U540 ( .A(n339), .B(n323), .C(n76), .Y(n694) );
  INVX1 U541 ( .A(n340), .Y(n691) );
  OAI21X1 U542 ( .A(n323), .B(n695), .C(n696), .Y(n340) );
  AND2X1 U543 ( .A(n332), .B(n78), .Y(n696) );
  INVX1 U544 ( .A(n68), .Y(n689) );
  NOR2X1 U545 ( .A(n697), .B(n698), .Y(n68) );
  OAI21X1 U546 ( .A(n699), .B(n312), .C(n700), .Y(n698) );
  OAI21X1 U547 ( .A(n701), .B(n702), .C(n320), .Y(n700) );
  NOR2X1 U548 ( .A(n703), .B(n704), .Y(n320) );
  OAI22X1 U549 ( .A(n688), .B(n330), .C(n77), .D(n695), .Y(n702) );
  INVX1 U550 ( .A(n338), .Y(n695) );
  NOR2X1 U551 ( .A(n327), .B(n684), .Y(n338) );
  INVX1 U552 ( .A(n680), .Y(n77) );
  INVX1 U553 ( .A(n681), .Y(n330) );
  NOR2X1 U554 ( .A(n705), .B(n76), .Y(n681) );
  NAND2X1 U555 ( .A(n482), .B(n332), .Y(n701) );
  NAND3X1 U556 ( .A(n316), .B(n323), .C(n687), .Y(n332) );
  NAND3X1 U557 ( .A(n705), .B(n327), .C(n680), .Y(n482) );
  NOR2X1 U558 ( .A(n323), .B(n339), .Y(n680) );
  INVX1 U559 ( .A(n316), .Y(n339) );
  INVX1 U560 ( .A(n75), .Y(n312) );
  NOR2X1 U561 ( .A(n703), .B(n706), .Y(n75) );
  OAI21X1 U562 ( .A(n707), .B(n473), .C(n708), .Y(n697) );
  OAI21X1 U563 ( .A(n490), .B(n486), .C(n337), .Y(n708) );
  NOR2X1 U564 ( .A(n706), .B(n709), .Y(n337) );
  NAND2X1 U565 ( .A(n479), .B(n78), .Y(n486) );
  NAND2X1 U566 ( .A(n496), .B(n498), .Y(n78) );
  NOR2X1 U567 ( .A(n316), .B(n705), .Y(n496) );
  NAND3X1 U568 ( .A(n315), .B(n316), .C(n76), .Y(n479) );
  NOR2X1 U569 ( .A(n324), .B(n688), .Y(n490) );
  INVX1 U570 ( .A(n329), .Y(n688) );
  INVX1 U571 ( .A(n687), .Y(n324) );
  NOR2X1 U572 ( .A(n327), .B(n705), .Y(n687) );
  INVX1 U573 ( .A(n81), .Y(n473) );
  NOR2X1 U574 ( .A(n704), .B(n709), .Y(n81) );
  INVX1 U575 ( .A(n703), .Y(n709) );
  XOR2X1 U576 ( .A(CUR_ENC_RIGHT[11]), .B(RKEY[29]), .Y(n703) );
  INVX1 U577 ( .A(n706), .Y(n704) );
  XOR2X1 U578 ( .A(CUR_ENC_RIGHT[16]), .B(RKEY[24]), .Y(n706) );
  AOI21X1 U579 ( .A(n710), .B(n315), .C(n325), .Y(n707) );
  NAND2X1 U580 ( .A(n699), .B(n335), .Y(n325) );
  NAND3X1 U581 ( .A(n705), .B(n327), .C(n329), .Y(n335) );
  NOR2X1 U582 ( .A(n323), .B(n316), .Y(n329) );
  INVX1 U583 ( .A(n684), .Y(n705) );
  NAND3X1 U584 ( .A(n316), .B(n684), .C(n498), .Y(n699) );
  NOR2X1 U585 ( .A(n711), .B(n76), .Y(n498) );
  NOR2X1 U586 ( .A(n684), .B(n711), .Y(n315) );
  INVX1 U587 ( .A(n323), .Y(n711) );
  XOR2X1 U588 ( .A(RKEY[26]), .B(CUR_ENC_RIGHT[14]), .Y(n323) );
  XOR2X1 U589 ( .A(CUR_ENC_RIGHT[12]), .B(RKEY[28]), .Y(n684) );
  NOR2X1 U590 ( .A(n76), .B(n316), .Y(n710) );
  XOR2X1 U591 ( .A(RKEY[27]), .B(CUR_ENC_RIGHT[13]), .Y(n316) );
  INVX1 U592 ( .A(n327), .Y(n76) );
  XOR2X1 U593 ( .A(CUR_ENC_RIGHT[15]), .B(RKEY[25]), .Y(n327) );
  XOR2X1 U594 ( .A(n712), .B(CUR_ENC_LEFT[17]), .Y(NXT_ENC_RIGHT1[17]) );
  NAND3X1 U595 ( .A(n713), .B(n714), .C(n715), .Y(n712) );
  NOR2X1 U596 ( .A(n716), .B(n717), .Y(n715) );
  OAI21X1 U597 ( .A(n150), .B(n718), .C(n719), .Y(n717) );
  OAI21X1 U598 ( .A(n400), .B(n720), .C(n134), .Y(n719) );
  OAI21X1 U599 ( .A(n149), .B(n721), .C(n722), .Y(n720) );
  INVX1 U600 ( .A(n378), .Y(n150) );
  NAND2X1 U601 ( .A(n723), .B(n394), .Y(n378) );
  INVX1 U602 ( .A(n134), .Y(n394) );
  NAND2X1 U603 ( .A(n724), .B(n725), .Y(n716) );
  OAI21X1 U604 ( .A(n726), .B(n727), .C(n380), .Y(n725) );
  NAND2X1 U605 ( .A(n154), .B(n146), .Y(n727) );
  NOR2X1 U606 ( .A(n728), .B(n729), .Y(n154) );
  OAI21X1 U607 ( .A(n145), .B(n730), .C(n731), .Y(n729) );
  NAND2X1 U608 ( .A(n732), .B(n733), .Y(n726) );
  OAI21X1 U609 ( .A(n379), .B(n734), .C(n143), .Y(n724) );
  OAI21X1 U610 ( .A(n145), .B(n730), .C(n732), .Y(n734) );
  INVX1 U611 ( .A(n735), .Y(n732) );
  NAND2X1 U612 ( .A(n731), .B(n718), .Y(n379) );
  INVX1 U613 ( .A(n736), .Y(n718) );
  INVX1 U614 ( .A(n737), .Y(n714) );
  AOI21X1 U615 ( .A(n151), .B(n738), .C(n153), .Y(n713) );
  OAI22X1 U616 ( .A(n130), .B(n147), .C(n739), .D(n740), .Y(n153) );
  INVX1 U617 ( .A(n741), .Y(n147) );
  XOR2X1 U618 ( .A(n742), .B(CUR_ENC_LEFT[16]), .Y(NXT_ENC_RIGHT1[16]) );
  NAND3X1 U619 ( .A(n743), .B(n744), .C(n745), .Y(n742) );
  AOI21X1 U620 ( .A(n52), .B(n746), .C(n747), .Y(n745) );
  OAI21X1 U621 ( .A(n748), .B(n749), .C(n750), .Y(n747) );
  OAI21X1 U622 ( .A(n413), .B(n307), .C(n291), .Y(n750) );
  NAND2X1 U623 ( .A(n429), .B(n430), .Y(n291) );
  INVX1 U624 ( .A(n410), .Y(n430) );
  INVX1 U625 ( .A(n423), .Y(n307) );
  NAND3X1 U626 ( .A(n417), .B(n61), .C(n751), .Y(n423) );
  INVX1 U627 ( .A(n421), .Y(n413) );
  NAND3X1 U628 ( .A(n417), .B(n59), .C(n433), .Y(n421) );
  NAND2X1 U629 ( .A(n31), .B(n54), .Y(n749) );
  NAND2X1 U630 ( .A(n39), .B(n38), .Y(n748) );
  OR2X1 U631 ( .A(n432), .B(n414), .Y(n746) );
  NAND2X1 U632 ( .A(n58), .B(n295), .Y(n414) );
  NAND3X1 U633 ( .A(n417), .B(n61), .C(n433), .Y(n295) );
  OAI21X1 U634 ( .A(n44), .B(n422), .C(n752), .Y(n432) );
  INVX1 U635 ( .A(n292), .Y(n752) );
  OAI21X1 U636 ( .A(n753), .B(n754), .C(n299), .Y(n292) );
  NAND3X1 U637 ( .A(n755), .B(n418), .C(n427), .Y(n299) );
  NAND2X1 U638 ( .A(n417), .B(n418), .Y(n754) );
  INVX1 U639 ( .A(n756), .Y(n753) );
  OAI21X1 U640 ( .A(n757), .B(n758), .C(n298), .Y(n744) );
  NOR2X1 U641 ( .A(n48), .B(n759), .Y(n298) );
  OAI21X1 U642 ( .A(n54), .B(n416), .C(n760), .Y(n758) );
  INVX1 U643 ( .A(n304), .Y(n760) );
  OAI21X1 U644 ( .A(n44), .B(n49), .C(n301), .Y(n304) );
  INVX1 U645 ( .A(n433), .Y(n44) );
  NOR2X1 U646 ( .A(n755), .B(n418), .Y(n433) );
  INVX1 U647 ( .A(n306), .Y(n416) );
  NOR2X1 U648 ( .A(n422), .B(n755), .Y(n306) );
  NAND2X1 U649 ( .A(n39), .B(n61), .Y(n422) );
  OAI21X1 U650 ( .A(n756), .B(n761), .C(n35), .Y(n757) );
  NAND2X1 U651 ( .A(n751), .B(n59), .Y(n35) );
  NOR2X1 U652 ( .A(n755), .B(n61), .Y(n756) );
  AOI22X1 U653 ( .A(n410), .B(n762), .C(n290), .D(n303), .Y(n743) );
  NAND2X1 U654 ( .A(n429), .B(n287), .Y(n303) );
  INVX1 U655 ( .A(n52), .Y(n287) );
  NOR2X1 U656 ( .A(n763), .B(n43), .Y(n52) );
  INVX1 U657 ( .A(n31), .Y(n429) );
  NOR2X1 U658 ( .A(n48), .B(n43), .Y(n31) );
  INVX1 U659 ( .A(n759), .Y(n43) );
  OAI21X1 U660 ( .A(n38), .B(n761), .C(n764), .Y(n290) );
  AND2X1 U661 ( .A(n765), .B(n40), .Y(n764) );
  NAND3X1 U662 ( .A(n60), .B(n59), .C(n418), .Y(n40) );
  INVX1 U663 ( .A(n51), .Y(n761) );
  NOR2X1 U664 ( .A(n39), .B(n418), .Y(n51) );
  INVX1 U665 ( .A(n419), .Y(n38) );
  NAND3X1 U666 ( .A(n58), .B(n301), .C(n766), .Y(n762) );
  AOI21X1 U667 ( .A(n418), .B(n60), .C(n41), .Y(n766) );
  OAI21X1 U668 ( .A(n49), .B(n294), .C(n765), .Y(n41) );
  NAND3X1 U669 ( .A(n418), .B(n39), .C(n419), .Y(n765) );
  INVX1 U670 ( .A(n751), .Y(n294) );
  NOR2X1 U671 ( .A(n54), .B(n755), .Y(n751) );
  INVX1 U672 ( .A(n427), .Y(n49) );
  NOR2X1 U673 ( .A(n39), .B(n767), .Y(n60) );
  INVX1 U674 ( .A(n54), .Y(n418) );
  NAND3X1 U675 ( .A(n54), .B(n39), .C(n419), .Y(n301) );
  NOR2X1 U676 ( .A(n767), .B(n59), .Y(n419) );
  NAND3X1 U677 ( .A(n755), .B(n54), .C(n427), .Y(n58) );
  NOR2X1 U678 ( .A(n417), .B(n61), .Y(n427) );
  INVX1 U679 ( .A(n59), .Y(n61) );
  XOR2X1 U680 ( .A(CUR_ENC_RIGHT[20]), .B(RKEY[16]), .Y(n59) );
  INVX1 U681 ( .A(n39), .Y(n417) );
  XOR2X1 U682 ( .A(CUR_ENC_RIGHT[23]), .B(RKEY[13]), .Y(n39) );
  XOR2X1 U683 ( .A(RKEY[14]), .B(CUR_ENC_RIGHT[22]), .Y(n54) );
  INVX1 U684 ( .A(n767), .Y(n755) );
  XOR2X1 U685 ( .A(RKEY[15]), .B(CUR_ENC_RIGHT[21]), .Y(n767) );
  NOR2X1 U686 ( .A(n759), .B(n763), .Y(n410) );
  INVX1 U687 ( .A(n48), .Y(n763) );
  XOR2X1 U688 ( .A(CUR_ENC_RIGHT[24]), .B(RKEY[12]), .Y(n48) );
  XOR2X1 U689 ( .A(CUR_ENC_RIGHT[19]), .B(RKEY[17]), .Y(n759) );
  XNOR2X1 U690 ( .A(CUR_ENC_LEFT[15]), .B(n768), .Y(NXT_ENC_RIGHT1[15]) );
  NOR2X1 U691 ( .A(n769), .B(n770), .Y(n768) );
  OAI21X1 U692 ( .A(n616), .B(n771), .C(n8), .Y(n770) );
  INVX1 U693 ( .A(n772), .Y(n8) );
  NAND3X1 U694 ( .A(n773), .B(n774), .C(n617), .Y(n772) );
  AOI22X1 U695 ( .A(n624), .B(n26), .C(n520), .D(n504), .Y(n617) );
  NOR2X1 U696 ( .A(n518), .B(n628), .Y(n520) );
  OAI21X1 U697 ( .A(n628), .B(n17), .C(n18), .Y(n624) );
  NAND3X1 U698 ( .A(n516), .B(n637), .C(n22), .Y(n18) );
  NAND3X1 U699 ( .A(n775), .B(n634), .C(n637), .Y(n17) );
  NAND3X1 U700 ( .A(n627), .B(n628), .C(n14), .Y(n774) );
  INVX1 U701 ( .A(n518), .Y(n627) );
  NAND3X1 U702 ( .A(n776), .B(n634), .C(n775), .Y(n518) );
  OAI21X1 U703 ( .A(n777), .B(n778), .C(n21), .Y(n773) );
  INVX1 U704 ( .A(n14), .Y(n771) );
  NOR2X1 U705 ( .A(n779), .B(n780), .Y(n14) );
  NOR2X1 U706 ( .A(n781), .B(n782), .Y(n616) );
  OAI21X1 U707 ( .A(n637), .B(n783), .C(n641), .Y(n782) );
  NAND3X1 U708 ( .A(n625), .B(n517), .C(n512), .Y(n781) );
  INVX1 U709 ( .A(n777), .Y(n625) );
  NOR2X1 U710 ( .A(n784), .B(n516), .Y(n777) );
  NAND3X1 U711 ( .A(n785), .B(n786), .C(n787), .Y(n769) );
  OAI21X1 U712 ( .A(n20), .B(n788), .C(n26), .Y(n787) );
  NOR2X1 U713 ( .A(n789), .B(n780), .Y(n26) );
  INVX1 U714 ( .A(n790), .Y(n780) );
  OAI21X1 U715 ( .A(n791), .B(n23), .C(n642), .Y(n788) );
  INVX1 U716 ( .A(n778), .Y(n642) );
  OAI21X1 U717 ( .A(n637), .B(n638), .C(n517), .Y(n778) );
  NAND3X1 U718 ( .A(n776), .B(n628), .C(n792), .Y(n517) );
  NOR2X1 U719 ( .A(n791), .B(n775), .Y(n792) );
  INVX1 U720 ( .A(n634), .Y(n791) );
  NAND2X1 U721 ( .A(n511), .B(n522), .Y(n20) );
  NAND3X1 U722 ( .A(n637), .B(n628), .C(n22), .Y(n511) );
  OAI21X1 U723 ( .A(n631), .B(n15), .C(n21), .Y(n786) );
  NOR2X1 U724 ( .A(n779), .B(n790), .Y(n21) );
  OAI21X1 U725 ( .A(n776), .B(n793), .C(n794), .Y(n15) );
  NOR2X1 U726 ( .A(n795), .B(n523), .Y(n794) );
  NAND2X1 U727 ( .A(n516), .B(n634), .Y(n793) );
  NOR2X1 U728 ( .A(n23), .B(n783), .Y(n631) );
  INVX1 U729 ( .A(n796), .Y(n783) );
  INVX1 U730 ( .A(n635), .Y(n23) );
  OAI21X1 U731 ( .A(n797), .B(n798), .C(n504), .Y(n785) );
  NOR2X1 U732 ( .A(n790), .B(n789), .Y(n504) );
  INVX1 U733 ( .A(n779), .Y(n789) );
  XOR2X1 U734 ( .A(CUR_ENC_RIGHT[27]), .B(RKEY[5]), .Y(n779) );
  XOR2X1 U735 ( .A(CUR_ENC_RIGHT[0]), .B(RKEY[0]), .Y(n790) );
  NAND2X1 U736 ( .A(n641), .B(n799), .Y(n798) );
  INVX1 U737 ( .A(n24), .Y(n799) );
  OAI21X1 U738 ( .A(n633), .B(n800), .C(n519), .Y(n24) );
  NAND3X1 U739 ( .A(n776), .B(n628), .C(n22), .Y(n519) );
  NAND2X1 U740 ( .A(n628), .B(n634), .Y(n800) );
  AOI21X1 U741 ( .A(n516), .B(n514), .C(n795), .Y(n641) );
  INVX1 U742 ( .A(n640), .Y(n795) );
  NAND2X1 U743 ( .A(n635), .B(n22), .Y(n640) );
  NOR2X1 U744 ( .A(n634), .B(n775), .Y(n22) );
  INVX1 U745 ( .A(n633), .Y(n775) );
  NOR2X1 U746 ( .A(n628), .B(n637), .Y(n635) );
  INVX1 U747 ( .A(n784), .Y(n514) );
  NAND3X1 U748 ( .A(n633), .B(n634), .C(n637), .Y(n784) );
  NAND2X1 U749 ( .A(n512), .B(n522), .Y(n797) );
  NAND3X1 U750 ( .A(n516), .B(n637), .C(n796), .Y(n522) );
  INVX1 U751 ( .A(n776), .Y(n637) );
  INVX1 U752 ( .A(n628), .Y(n516) );
  INVX1 U753 ( .A(n523), .Y(n512) );
  NOR2X1 U754 ( .A(n638), .B(n776), .Y(n523) );
  XOR2X1 U755 ( .A(RKEY[3]), .B(CUR_ENC_RIGHT[29]), .Y(n776) );
  NAND2X1 U756 ( .A(n796), .B(n628), .Y(n638) );
  XOR2X1 U757 ( .A(CUR_ENC_RIGHT[31]), .B(RKEY[1]), .Y(n628) );
  NOR2X1 U758 ( .A(n634), .B(n633), .Y(n796) );
  XOR2X1 U759 ( .A(RKEY[2]), .B(CUR_ENC_RIGHT[30]), .Y(n633) );
  XOR2X1 U760 ( .A(CUR_ENC_RIGHT[28]), .B(RKEY[4]), .Y(n634) );
  XOR2X1 U761 ( .A(n801), .B(CUR_ENC_LEFT[14]), .Y(NXT_ENC_RIGHT1[14]) );
  NAND3X1 U762 ( .A(n802), .B(n803), .C(n804), .Y(n801) );
  AOI21X1 U763 ( .A(n178), .B(n805), .C(n806), .Y(n804) );
  OAI21X1 U764 ( .A(n169), .B(n807), .C(n808), .Y(n806) );
  OAI21X1 U765 ( .A(n648), .B(n278), .C(n182), .Y(n808) );
  NAND3X1 U766 ( .A(n809), .B(n673), .C(n810), .Y(n278) );
  AND2X1 U767 ( .A(n175), .B(n275), .Y(n810) );
  NAND2X1 U768 ( .A(n667), .B(n811), .Y(n175) );
  AND2X1 U769 ( .A(n276), .B(n163), .Y(n809) );
  NAND2X1 U770 ( .A(n660), .B(n649), .Y(n807) );
  INVX1 U771 ( .A(n162), .Y(n649) );
  NOR2X1 U772 ( .A(n178), .B(n182), .Y(n162) );
  NOR2X1 U773 ( .A(n812), .B(n813), .Y(n182) );
  NAND3X1 U774 ( .A(n665), .B(n814), .C(n815), .Y(n805) );
  AND2X1 U775 ( .A(n174), .B(n181), .Y(n815) );
  INVX1 U776 ( .A(n267), .Y(n814) );
  OAI21X1 U777 ( .A(n168), .B(n169), .C(n816), .Y(n267) );
  AOI21X1 U778 ( .A(n661), .B(n657), .C(n159), .Y(n816) );
  INVX1 U779 ( .A(n673), .Y(n159) );
  INVX1 U780 ( .A(n817), .Y(n665) );
  INVX1 U781 ( .A(n671), .Y(n178) );
  NAND2X1 U782 ( .A(n818), .B(n812), .Y(n671) );
  OAI21X1 U783 ( .A(n819), .B(n262), .C(n184), .Y(n803) );
  NOR2X1 U784 ( .A(n818), .B(n812), .Y(n184) );
  NAND2X1 U785 ( .A(n672), .B(n655), .Y(n262) );
  AOI21X1 U786 ( .A(n660), .B(n661), .C(n817), .Y(n655) );
  NAND2X1 U787 ( .A(n275), .B(n189), .Y(n817) );
  NAND2X1 U788 ( .A(n271), .B(n820), .Y(n189) );
  NAND2X1 U789 ( .A(n811), .B(n820), .Y(n275) );
  AND2X1 U790 ( .A(n186), .B(n163), .Y(n672) );
  NAND2X1 U791 ( .A(n657), .B(n820), .Y(n163) );
  AND2X1 U792 ( .A(n181), .B(n276), .Y(n186) );
  NAND2X1 U793 ( .A(n656), .B(n271), .Y(n276) );
  NAND2X1 U794 ( .A(n656), .B(n811), .Y(n181) );
  NOR2X1 U795 ( .A(n821), .B(n169), .Y(n819) );
  OAI21X1 U796 ( .A(n822), .B(n823), .C(n167), .Y(n802) );
  AND2X1 U797 ( .A(n813), .B(n812), .Y(n167) );
  XOR2X1 U798 ( .A(CUR_ENC_RIGHT[28]), .B(RKEY[6]), .Y(n812) );
  INVX1 U799 ( .A(n818), .Y(n813) );
  XOR2X1 U800 ( .A(CUR_ENC_RIGHT[23]), .B(RKEY[11]), .Y(n818) );
  OAI21X1 U801 ( .A(n659), .B(n172), .C(n187), .Y(n823) );
  INVX1 U802 ( .A(n648), .Y(n187) );
  OAI21X1 U803 ( .A(n168), .B(n272), .C(n174), .Y(n648) );
  NAND2X1 U804 ( .A(n660), .B(n820), .Y(n174) );
  NOR2X1 U805 ( .A(n659), .B(n171), .Y(n820) );
  INVX1 U806 ( .A(n661), .Y(n272) );
  INVX1 U807 ( .A(n271), .Y(n168) );
  NOR2X1 U808 ( .A(n669), .B(n179), .Y(n271) );
  INVX1 U809 ( .A(n657), .Y(n172) );
  OAI21X1 U810 ( .A(n274), .B(n169), .C(n824), .Y(n822) );
  AND2X1 U811 ( .A(n673), .B(n180), .Y(n824) );
  NAND2X1 U812 ( .A(n656), .B(n660), .Y(n180) );
  NOR2X1 U813 ( .A(n664), .B(n659), .Y(n656) );
  NAND2X1 U814 ( .A(n661), .B(n811), .Y(n673) );
  NOR2X1 U815 ( .A(n670), .B(n821), .Y(n811) );
  NOR2X1 U816 ( .A(n279), .B(n171), .Y(n661) );
  INVX1 U817 ( .A(n664), .Y(n171) );
  INVX1 U818 ( .A(n667), .Y(n169) );
  NOR2X1 U819 ( .A(n664), .B(n279), .Y(n667) );
  INVX1 U820 ( .A(n659), .Y(n279) );
  XOR2X1 U821 ( .A(CUR_ENC_RIGHT[24]), .B(RKEY[10]), .Y(n659) );
  XOR2X1 U822 ( .A(RKEY[8]), .B(CUR_ENC_RIGHT[26]), .Y(n664) );
  NOR2X1 U823 ( .A(n657), .B(n660), .Y(n274) );
  NOR2X1 U824 ( .A(n670), .B(n669), .Y(n660) );
  NOR2X1 U825 ( .A(n179), .B(n821), .Y(n657) );
  INVX1 U826 ( .A(n669), .Y(n821) );
  XOR2X1 U827 ( .A(CUR_ENC_RIGHT[27]), .B(RKEY[7]), .Y(n669) );
  INVX1 U828 ( .A(n670), .Y(n179) );
  XOR2X1 U829 ( .A(RKEY[9]), .B(CUR_ENC_RIGHT[25]), .Y(n670) );
  XNOR2X1 U830 ( .A(CUR_ENC_LEFT[13]), .B(n825), .Y(NXT_ENC_RIGHT1[13]) );
  NOR2X1 U831 ( .A(n826), .B(n827), .Y(n825) );
  OAI21X1 U832 ( .A(n195), .B(n366), .C(n828), .Y(n827) );
  OAI21X1 U833 ( .A(n829), .B(n830), .C(n211), .Y(n828) );
  NOR2X1 U834 ( .A(n831), .B(n832), .Y(n211) );
  OAI21X1 U835 ( .A(n833), .B(n570), .C(n194), .Y(n830) );
  INVX1 U836 ( .A(n834), .Y(n194) );
  OAI21X1 U837 ( .A(n835), .B(n836), .C(n837), .Y(n834) );
  AND2X1 U838 ( .A(n217), .B(n838), .Y(n837) );
  NAND2X1 U839 ( .A(n839), .B(n222), .Y(n217) );
  NAND3X1 U840 ( .A(n559), .B(n568), .C(n353), .Y(n829) );
  NOR2X1 U841 ( .A(n352), .B(n840), .Y(n366) );
  INVX1 U842 ( .A(n203), .Y(n840) );
  NAND2X1 U843 ( .A(n213), .B(n215), .Y(n203) );
  OAI21X1 U844 ( .A(n835), .B(n836), .C(n559), .Y(n352) );
  NAND2X1 U845 ( .A(n841), .B(n222), .Y(n559) );
  INVX1 U846 ( .A(n213), .Y(n835) );
  NOR2X1 U847 ( .A(n226), .B(n221), .Y(n195) );
  NAND3X1 U848 ( .A(n842), .B(n843), .C(n844), .Y(n826) );
  OAI21X1 U849 ( .A(n845), .B(n846), .C(n226), .Y(n844) );
  NOR2X1 U850 ( .A(n832), .B(n847), .Y(n226) );
  INVX1 U851 ( .A(n848), .Y(n832) );
  OAI21X1 U852 ( .A(n833), .B(n223), .C(n370), .Y(n846) );
  NAND2X1 U853 ( .A(n849), .B(n215), .Y(n370) );
  NAND2X1 U854 ( .A(n205), .B(n204), .Y(n845) );
  NAND2X1 U855 ( .A(n849), .B(n839), .Y(n205) );
  NAND2X1 U856 ( .A(n221), .B(n850), .Y(n843) );
  OAI21X1 U857 ( .A(n841), .B(n851), .C(n365), .Y(n850) );
  INVX1 U858 ( .A(n350), .Y(n365) );
  OAI21X1 U859 ( .A(n570), .B(n571), .C(n204), .Y(n350) );
  NAND2X1 U860 ( .A(n354), .B(n839), .Y(n204) );
  INVX1 U861 ( .A(n215), .Y(n570) );
  NOR2X1 U862 ( .A(n356), .B(n359), .Y(n215) );
  NOR2X1 U863 ( .A(n831), .B(n848), .Y(n221) );
  OAI21X1 U864 ( .A(n349), .B(n852), .C(n199), .Y(n842) );
  NOR2X1 U865 ( .A(n848), .B(n847), .Y(n199) );
  INVX1 U866 ( .A(n831), .Y(n847) );
  XOR2X1 U867 ( .A(CUR_ENC_RIGHT[7]), .B(RKEY[35]), .Y(n831) );
  XOR2X1 U868 ( .A(CUR_ENC_RIGHT[12]), .B(RKEY[30]), .Y(n848) );
  OAI21X1 U869 ( .A(n359), .B(n571), .C(n202), .Y(n852) );
  NOR2X1 U870 ( .A(n574), .B(n367), .Y(n202) );
  INVX1 U871 ( .A(n218), .Y(n367) );
  NAND2X1 U872 ( .A(n849), .B(n841), .Y(n218) );
  AND2X1 U873 ( .A(n354), .B(n853), .Y(n574) );
  INVX1 U874 ( .A(n222), .Y(n571) );
  NOR2X1 U875 ( .A(n216), .B(n833), .Y(n222) );
  NAND3X1 U876 ( .A(n353), .B(n560), .C(n200), .Y(n349) );
  AND2X1 U877 ( .A(n838), .B(n568), .Y(n200) );
  NAND2X1 U878 ( .A(n354), .B(n841), .Y(n568) );
  INVX1 U879 ( .A(n836), .Y(n841) );
  NAND2X1 U880 ( .A(n359), .B(n356), .Y(n836) );
  NOR2X1 U881 ( .A(n833), .B(n854), .Y(n354) );
  NAND2X1 U882 ( .A(n839), .B(n213), .Y(n838) );
  NOR2X1 U883 ( .A(n359), .B(n214), .Y(n839) );
  NAND2X1 U884 ( .A(n853), .B(n213), .Y(n560) );
  NOR2X1 U885 ( .A(n855), .B(n854), .Y(n213) );
  NAND2X1 U886 ( .A(n849), .B(n853), .Y(n353) );
  INVX1 U887 ( .A(n223), .Y(n853) );
  NAND2X1 U888 ( .A(n359), .B(n214), .Y(n223) );
  INVX1 U889 ( .A(n356), .Y(n214) );
  XOR2X1 U890 ( .A(CUR_ENC_RIGHT[8]), .B(RKEY[34]), .Y(n356) );
  XNOR2X1 U891 ( .A(RKEY[32]), .B(CUR_ENC_RIGHT[10]), .Y(n359) );
  INVX1 U892 ( .A(n851), .Y(n849) );
  NAND2X1 U893 ( .A(n833), .B(n854), .Y(n851) );
  INVX1 U894 ( .A(n216), .Y(n854) );
  XOR2X1 U895 ( .A(RKEY[33]), .B(CUR_ENC_RIGHT[9]), .Y(n216) );
  INVX1 U896 ( .A(n855), .Y(n833) );
  XOR2X1 U897 ( .A(CUR_ENC_RIGHT[11]), .B(RKEY[31]), .Y(n855) );
  XOR2X1 U898 ( .A(n856), .B(CUR_ENC_LEFT[12]), .Y(NXT_ENC_RIGHT1[12]) );
  NAND3X1 U899 ( .A(n857), .B(n858), .C(n859), .Y(n856) );
  AOI21X1 U900 ( .A(n237), .B(n860), .C(n96), .Y(n859) );
  OAI21X1 U901 ( .A(n861), .B(n112), .C(n862), .Y(n96) );
  AOI22X1 U902 ( .A(n120), .B(n863), .C(n246), .D(n537), .Y(n862) );
  INVX1 U903 ( .A(n121), .Y(n537) );
  NAND2X1 U904 ( .A(n251), .B(n256), .Y(n863) );
  NAND3X1 U905 ( .A(n100), .B(n233), .C(n109), .Y(n256) );
  NAND3X1 U906 ( .A(n864), .B(n113), .C(n551), .Y(n251) );
  NAND3X1 U907 ( .A(n538), .B(n239), .C(n865), .Y(n860) );
  AOI21X1 U908 ( .A(n551), .B(n234), .C(n231), .Y(n865) );
  NAND3X1 U909 ( .A(n549), .B(n253), .C(n91), .Y(n231) );
  NAND3X1 U910 ( .A(n108), .B(n100), .C(n111), .Y(n549) );
  INVX1 U911 ( .A(n94), .Y(n237) );
  NAND2X1 U912 ( .A(n866), .B(n867), .Y(n94) );
  OAI21X1 U913 ( .A(n118), .B(n868), .C(n102), .Y(n858) );
  INVX1 U914 ( .A(n112), .Y(n102) );
  NAND2X1 U915 ( .A(n869), .B(n867), .Y(n112) );
  OAI21X1 U916 ( .A(n233), .B(n870), .C(n117), .Y(n868) );
  INVX1 U917 ( .A(n871), .Y(n870) );
  NAND3X1 U918 ( .A(n538), .B(n91), .C(n872), .Y(n118) );
  AND2X1 U919 ( .A(n253), .B(n547), .Y(n872) );
  NAND3X1 U920 ( .A(n109), .B(n100), .C(n108), .Y(n547) );
  NOR2X1 U921 ( .A(n539), .B(n113), .Y(n109) );
  NAND2X1 U922 ( .A(n550), .B(n114), .Y(n253) );
  NAND3X1 U923 ( .A(n873), .B(n233), .C(n548), .Y(n538) );
  AOI22X1 U924 ( .A(n120), .B(n874), .C(n246), .D(n875), .Y(n857) );
  INVX1 U925 ( .A(n876), .Y(n875) );
  AOI21X1 U926 ( .A(n233), .B(n550), .C(n255), .Y(n876) );
  NAND3X1 U927 ( .A(n877), .B(n93), .C(n878), .Y(n255) );
  AND2X1 U928 ( .A(n122), .B(n239), .Y(n878) );
  NAND3X1 U929 ( .A(n108), .B(n873), .C(n548), .Y(n239) );
  NAND2X1 U930 ( .A(n871), .B(n551), .Y(n122) );
  NAND3X1 U931 ( .A(n864), .B(n233), .C(n111), .Y(n93) );
  INVX1 U932 ( .A(n536), .Y(n877) );
  NAND2X1 U933 ( .A(n861), .B(n117), .Y(n536) );
  NAND2X1 U934 ( .A(n548), .B(n551), .Y(n117) );
  NOR2X1 U935 ( .A(n233), .B(n873), .Y(n551) );
  NOR2X1 U936 ( .A(n113), .B(n864), .Y(n550) );
  NOR2X1 U937 ( .A(n867), .B(n866), .Y(n246) );
  INVX1 U938 ( .A(n869), .Y(n866) );
  OAI21X1 U939 ( .A(n873), .B(n234), .C(n879), .Y(n874) );
  INVX1 U940 ( .A(n244), .Y(n879) );
  NAND3X1 U941 ( .A(n91), .B(n544), .C(n880), .Y(n244) );
  AND2X1 U942 ( .A(n861), .B(n121), .Y(n880) );
  NAND3X1 U943 ( .A(n100), .B(n233), .C(n111), .Y(n121) );
  NAND3X1 U944 ( .A(n108), .B(n864), .C(n111), .Y(n861) );
  NOR2X1 U945 ( .A(n881), .B(n539), .Y(n111) );
  NAND2X1 U946 ( .A(n871), .B(n114), .Y(n544) );
  NOR2X1 U947 ( .A(n881), .B(n864), .Y(n871) );
  NAND3X1 U948 ( .A(n864), .B(n113), .C(n114), .Y(n91) );
  NOR2X1 U949 ( .A(n108), .B(n873), .Y(n114) );
  INVX1 U950 ( .A(n233), .Y(n108) );
  XOR2X1 U951 ( .A(RKEY[20]), .B(CUR_ENC_RIGHT[18]), .Y(n233) );
  INVX1 U952 ( .A(n100), .Y(n864) );
  INVX1 U953 ( .A(n548), .Y(n234) );
  NOR2X1 U954 ( .A(n100), .B(n113), .Y(n548) );
  INVX1 U955 ( .A(n881), .Y(n113) );
  XOR2X1 U956 ( .A(CUR_ENC_RIGHT[19]), .B(RKEY[19]), .Y(n881) );
  XOR2X1 U957 ( .A(CUR_ENC_RIGHT[16]), .B(RKEY[22]), .Y(n100) );
  INVX1 U958 ( .A(n539), .Y(n873) );
  XOR2X1 U959 ( .A(RKEY[21]), .B(CUR_ENC_RIGHT[17]), .Y(n539) );
  NOR2X1 U960 ( .A(n867), .B(n869), .Y(n120) );
  XOR2X1 U961 ( .A(CUR_ENC_RIGHT[20]), .B(RKEY[18]), .Y(n869) );
  XOR2X1 U962 ( .A(CUR_ENC_RIGHT[15]), .B(RKEY[23]), .Y(n867) );
  XOR2X1 U963 ( .A(n882), .B(CUR_ENC_LEFT[11]), .Y(NXT_ENC_RIGHT1[11]) );
  NAND3X1 U964 ( .A(n883), .B(n884), .C(n885), .Y(n882) );
  NOR2X1 U965 ( .A(n737), .B(n886), .Y(n885) );
  OAI21X1 U966 ( .A(n887), .B(n130), .C(n125), .Y(n886) );
  INVX1 U967 ( .A(n401), .Y(n125) );
  OAI21X1 U968 ( .A(n733), .B(n739), .C(n888), .Y(n401) );
  AND2X1 U969 ( .A(n889), .B(n890), .Y(n888) );
  OAI21X1 U970 ( .A(n735), .B(n395), .C(n380), .Y(n890) );
  NOR2X1 U971 ( .A(n145), .B(n138), .Y(n735) );
  OAI21X1 U972 ( .A(n741), .B(n736), .C(n151), .Y(n889) );
  NOR2X1 U973 ( .A(n891), .B(n138), .Y(n736) );
  INVX1 U974 ( .A(n144), .Y(n138) );
  INVX1 U975 ( .A(n143), .Y(n739) );
  NAND2X1 U976 ( .A(n892), .B(n144), .Y(n733) );
  INVX1 U977 ( .A(n380), .Y(n130) );
  NOR2X1 U978 ( .A(n893), .B(n894), .Y(n380) );
  INVX1 U979 ( .A(n738), .Y(n887) );
  NAND3X1 U980 ( .A(n895), .B(n383), .C(n896), .Y(n738) );
  AOI22X1 U981 ( .A(n897), .B(n398), .C(n892), .D(n898), .Y(n896) );
  NOR2X1 U982 ( .A(n390), .B(n132), .Y(n895) );
  INVX1 U983 ( .A(n731), .Y(n132) );
  NOR2X1 U984 ( .A(n721), .B(n891), .Y(n390) );
  OAI21X1 U985 ( .A(n723), .B(n384), .C(n899), .Y(n737) );
  AOI22X1 U986 ( .A(n143), .B(n900), .C(n134), .D(n728), .Y(n899) );
  NAND2X1 U987 ( .A(n396), .B(n383), .Y(n728) );
  INVX1 U988 ( .A(n387), .Y(n396) );
  NOR2X1 U989 ( .A(n381), .B(n891), .Y(n387) );
  INVX1 U990 ( .A(n135), .Y(n381) );
  OR2X1 U991 ( .A(n400), .B(n741), .Y(n900) );
  NOR2X1 U992 ( .A(n901), .B(n721), .Y(n741) );
  INVX1 U993 ( .A(n897), .Y(n721) );
  NAND2X1 U994 ( .A(n146), .B(n389), .Y(n400) );
  INVX1 U995 ( .A(n151), .Y(n723) );
  OAI21X1 U996 ( .A(n902), .B(n903), .C(n134), .Y(n884) );
  NOR2X1 U997 ( .A(n904), .B(n893), .Y(n134) );
  OAI21X1 U998 ( .A(n905), .B(n901), .C(n146), .Y(n903) );
  NAND2X1 U999 ( .A(n906), .B(n144), .Y(n146) );
  NOR2X1 U1000 ( .A(n393), .B(n391), .Y(n144) );
  INVX1 U1001 ( .A(n892), .Y(n901) );
  NAND2X1 U1002 ( .A(n384), .B(n740), .Y(n902) );
  INVX1 U1003 ( .A(n395), .Y(n740) );
  NOR2X1 U1004 ( .A(n730), .B(n891), .Y(n395) );
  INVX1 U1005 ( .A(n905), .Y(n730) );
  NAND2X1 U1006 ( .A(n906), .B(n905), .Y(n384) );
  AOI22X1 U1007 ( .A(n143), .B(n907), .C(n151), .D(n908), .Y(n883) );
  OAI21X1 U1008 ( .A(n905), .B(n145), .C(n909), .Y(n908) );
  AND2X1 U1009 ( .A(n389), .B(n731), .Y(n909) );
  NAND2X1 U1010 ( .A(n135), .B(n906), .Y(n731) );
  NAND2X1 U1011 ( .A(n892), .B(n905), .Y(n389) );
  NOR2X1 U1012 ( .A(n910), .B(n149), .Y(n892) );
  INVX1 U1013 ( .A(n398), .Y(n145) );
  NOR2X1 U1014 ( .A(n399), .B(n898), .Y(n905) );
  NOR2X1 U1015 ( .A(n904), .B(n911), .Y(n151) );
  OAI21X1 U1016 ( .A(n393), .B(n891), .C(n912), .Y(n907) );
  AND2X1 U1017 ( .A(n722), .B(n383), .Y(n912) );
  NAND2X1 U1018 ( .A(n906), .B(n897), .Y(n383) );
  NOR2X1 U1019 ( .A(n391), .B(n898), .Y(n897) );
  INVX1 U1020 ( .A(n393), .Y(n898) );
  AND2X1 U1021 ( .A(n149), .B(n910), .Y(n906) );
  INVX1 U1022 ( .A(n136), .Y(n910) );
  NAND2X1 U1023 ( .A(n135), .B(n398), .Y(n722) );
  NOR2X1 U1024 ( .A(n136), .B(n149), .Y(n398) );
  NOR2X1 U1025 ( .A(n393), .B(n399), .Y(n135) );
  INVX1 U1026 ( .A(n391), .Y(n399) );
  XOR2X1 U1027 ( .A(RKEY[45]), .B(CUR_ENC_RIGHT[1]), .Y(n391) );
  NAND2X1 U1028 ( .A(n149), .B(n136), .Y(n891) );
  XOR2X1 U1029 ( .A(CUR_ENC_RIGHT[3]), .B(RKEY[43]), .Y(n136) );
  XNOR2X1 U1030 ( .A(CUR_ENC_RIGHT[0]), .B(RKEY[46]), .Y(n149) );
  XOR2X1 U1031 ( .A(RKEY[44]), .B(CUR_ENC_RIGHT[2]), .Y(n393) );
  NOR2X1 U1032 ( .A(n911), .B(n894), .Y(n143) );
  INVX1 U1033 ( .A(n904), .Y(n894) );
  XOR2X1 U1034 ( .A(CUR_ENC_RIGHT[31]), .B(RKEY[47]), .Y(n904) );
  INVX1 U1035 ( .A(n893), .Y(n911) );
  XOR2X1 U1036 ( .A(CUR_ENC_RIGHT[4]), .B(RKEY[42]), .Y(n893) );
  XOR2X1 U1037 ( .A(n913), .B(CUR_ENC_LEFT[10]), .Y(NXT_ENC_RIGHT1[10]) );
  NAND3X1 U1038 ( .A(n914), .B(n438), .C(n915), .Y(n913) );
  AOI21X1 U1039 ( .A(n462), .B(n916), .C(n917), .Y(n915) );
  OAI21X1 U1040 ( .A(n918), .B(n919), .C(n920), .Y(n917) );
  OAI21X1 U1041 ( .A(n921), .B(n922), .C(n465), .Y(n920) );
  OAI21X1 U1042 ( .A(n603), .B(n587), .C(n608), .Y(n922) );
  NAND2X1 U1043 ( .A(n923), .B(n611), .Y(n921) );
  AOI21X1 U1044 ( .A(n457), .B(n924), .C(n604), .Y(n918) );
  INVX1 U1045 ( .A(n588), .Y(n604) );
  NAND3X1 U1046 ( .A(n925), .B(n926), .C(n927), .Y(n916) );
  AOI22X1 U1047 ( .A(n928), .B(n605), .C(n451), .D(n603), .Y(n927) );
  NOR2X1 U1048 ( .A(n929), .B(n466), .Y(n928) );
  AOI21X1 U1049 ( .A(n591), .B(n462), .C(n930), .Y(n438) );
  NAND2X1 U1050 ( .A(n931), .B(n932), .Y(n930) );
  OAI21X1 U1051 ( .A(n933), .B(n460), .C(n452), .Y(n932) );
  INVX1 U1052 ( .A(n589), .Y(n933) );
  OAI21X1 U1053 ( .A(n441), .B(n590), .C(n439), .Y(n931) );
  NAND2X1 U1054 ( .A(n612), .B(n925), .Y(n590) );
  INVX1 U1055 ( .A(n611), .Y(n441) );
  NAND2X1 U1056 ( .A(n600), .B(n444), .Y(n591) );
  INVX1 U1057 ( .A(n934), .Y(n914) );
  OAI22X1 U1058 ( .A(n935), .B(n936), .C(n443), .D(n937), .Y(n934) );
  XOR2X1 U1059 ( .A(n938), .B(CUR_ENC_LEFT[0]), .Y(NXT_ENC_RIGHT1[0]) );
  NAND2X1 U1060 ( .A(n939), .B(n940), .Y(n938) );
  AOI21X1 U1061 ( .A(n462), .B(n941), .C(n942), .Y(n940) );
  OAI21X1 U1062 ( .A(n943), .B(n587), .C(n944), .Y(n942) );
  OAI21X1 U1063 ( .A(n945), .B(n946), .C(n465), .Y(n944) );
  NOR2X1 U1064 ( .A(n947), .B(n937), .Y(n465) );
  OAI21X1 U1065 ( .A(n948), .B(n593), .C(n936), .Y(n946) );
  NOR2X1 U1066 ( .A(n461), .B(n949), .Y(n936) );
  INVX1 U1067 ( .A(n600), .Y(n949) );
  OAI21X1 U1068 ( .A(n950), .B(n459), .C(n608), .Y(n461) );
  AND2X1 U1069 ( .A(n456), .B(n601), .Y(n608) );
  NAND2X1 U1070 ( .A(n457), .B(n951), .Y(n601) );
  NOR2X1 U1071 ( .A(n950), .B(n605), .Y(n457) );
  NAND3X1 U1072 ( .A(n466), .B(n605), .C(n929), .Y(n456) );
  INVX1 U1073 ( .A(n952), .Y(n459) );
  NAND2X1 U1074 ( .A(n443), .B(n925), .Y(n945) );
  NAND3X1 U1075 ( .A(n606), .B(n953), .C(n929), .Y(n925) );
  NAND3X1 U1076 ( .A(n605), .B(n606), .C(n929), .Y(n443) );
  INVX1 U1077 ( .A(n451), .Y(n587) );
  AOI22X1 U1078 ( .A(n462), .B(n954), .C(n452), .D(n952), .Y(n943) );
  INVX1 U1079 ( .A(n586), .Y(n954) );
  NOR2X1 U1080 ( .A(n952), .B(n603), .Y(n586) );
  OAI21X1 U1081 ( .A(n953), .B(n924), .C(n955), .Y(n941) );
  AND2X1 U1082 ( .A(n611), .B(n444), .Y(n955) );
  NAND3X1 U1083 ( .A(n948), .B(n953), .C(n451), .Y(n444) );
  INVX1 U1084 ( .A(n951), .Y(n924) );
  NOR2X1 U1085 ( .A(n580), .B(n956), .Y(n939) );
  OAI21X1 U1086 ( .A(n935), .B(n611), .C(n957), .Y(n956) );
  OAI21X1 U1087 ( .A(n958), .B(n959), .C(n960), .Y(n957) );
  INVX1 U1088 ( .A(n458), .Y(n960) );
  NOR2X1 U1089 ( .A(n439), .B(n452), .Y(n458) );
  INVX1 U1090 ( .A(n919), .Y(n452) );
  INVX1 U1091 ( .A(n935), .Y(n439) );
  OAI21X1 U1092 ( .A(n605), .B(n593), .C(n588), .Y(n959) );
  NAND3X1 U1093 ( .A(n605), .B(n948), .C(n451), .Y(n588) );
  NOR2X1 U1094 ( .A(n606), .B(n950), .Y(n451) );
  NAND2X1 U1095 ( .A(n597), .B(n606), .Y(n593) );
  NAND3X1 U1096 ( .A(n600), .B(n926), .C(n612), .Y(n958) );
  NAND3X1 U1097 ( .A(n950), .B(n606), .C(n952), .Y(n612) );
  NAND3X1 U1098 ( .A(n466), .B(n953), .C(n929), .Y(n600) );
  NOR2X1 U1099 ( .A(n597), .B(n454), .Y(n929) );
  NAND3X1 U1100 ( .A(n466), .B(n950), .C(n603), .Y(n611) );
  INVX1 U1101 ( .A(n961), .Y(n580) );
  AOI21X1 U1102 ( .A(n460), .B(n462), .C(n962), .Y(n961) );
  OAI22X1 U1103 ( .A(n923), .B(n919), .C(n589), .D(n935), .Y(n962) );
  NAND2X1 U1104 ( .A(n937), .B(n947), .Y(n935) );
  INVX1 U1105 ( .A(n442), .Y(n937) );
  NAND3X1 U1106 ( .A(n605), .B(n597), .C(n951), .Y(n589) );
  NOR2X1 U1107 ( .A(n466), .B(n454), .Y(n951) );
  INVX1 U1108 ( .A(n948), .Y(n454) );
  NAND2X1 U1109 ( .A(n947), .B(n442), .Y(n919) );
  NOR2X1 U1110 ( .A(n947), .B(n442), .Y(n462) );
  XOR2X1 U1111 ( .A(CUR_ENC_RIGHT[3]), .B(RKEY[41]), .Y(n442) );
  XOR2X1 U1112 ( .A(CUR_ENC_RIGHT[8]), .B(RKEY[36]), .Y(n947) );
  NAND2X1 U1113 ( .A(n923), .B(n926), .Y(n460) );
  NAND3X1 U1114 ( .A(n466), .B(n950), .C(n952), .Y(n926) );
  NOR2X1 U1115 ( .A(n953), .B(n948), .Y(n952) );
  INVX1 U1116 ( .A(n606), .Y(n466) );
  NAND3X1 U1117 ( .A(n950), .B(n606), .C(n603), .Y(n923) );
  NOR2X1 U1118 ( .A(n948), .B(n605), .Y(n603) );
  INVX1 U1119 ( .A(n953), .Y(n605) );
  XOR2X1 U1120 ( .A(CUR_ENC_RIGHT[7]), .B(RKEY[37]), .Y(n953) );
  XOR2X1 U1121 ( .A(RKEY[38]), .B(CUR_ENC_RIGHT[6]), .Y(n948) );
  XOR2X1 U1122 ( .A(RKEY[39]), .B(CUR_ENC_RIGHT[5]), .Y(n606) );
  INVX1 U1123 ( .A(n597), .Y(n950) );
  XOR2X1 U1124 ( .A(CUR_ENC_RIGHT[4]), .B(RKEY[40]), .Y(n597) );
endmodule


module e_rkeyGen ( RNDNUM, START_RST, IN_SELECT, CLK, RKEY );
  input [3:0] RNDNUM;
  output [47:0] RKEY;
  input START_RST, IN_SELECT, CLK;
  wire   \ENC_LEFT[23] , ENC_LEFT_12, ENC_LEFT_7, ENC_LEFT_4, \ENC_RIGHT[22] ,
         ENC_RIGHT_19, ENC_RIGHT_15, ENC_RIGHT_6;

  DFFSR \ENC_RIGHT_reg[1]  ( .D(RKEY[24]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[32]) );
  DFFSR \ENC_RIGHT_reg[3]  ( .D(RKEY[32]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[38]) );
  DFFSR \ENC_RIGHT_reg[5]  ( .D(RKEY[38]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[30]) );
  DFFSR \ENC_RIGHT_reg[7]  ( .D(RKEY[30]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[36]) );
  DFFSR \ENC_RIGHT_reg[9]  ( .D(RKEY[36]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[33]) );
  DFFSR \ENC_RIGHT_reg[11]  ( .D(RKEY[33]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[47]) );
  DFFSR \ENC_RIGHT_reg[13]  ( .D(RKEY[47]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[29]) );
  DFFSR \ENC_RIGHT_reg[15]  ( .D(RKEY[29]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(ENC_RIGHT_15) );
  DFFSR \ENC_RIGHT_reg[17]  ( .D(ENC_RIGHT_15), .CLK(CLK), .R(1'b1), .S(
        START_RST), .Q(RKEY[26]) );
  DFFSR \ENC_RIGHT_reg[19]  ( .D(RKEY[26]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(ENC_RIGHT_19) );
  DFFSR \ENC_RIGHT_reg[21]  ( .D(ENC_RIGHT_19), .CLK(CLK), .R(1'b1), .S(
        START_RST), .Q(RKEY[44]) );
  DFFSR \ENC_RIGHT_reg[23]  ( .D(RKEY[44]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[31]) );
  DFFSR \ENC_RIGHT_reg[25]  ( .D(RKEY[31]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[40]) );
  DFFSR \ENC_RIGHT_reg[27]  ( .D(RKEY[40]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[24]) );
  DFFSR \ENC_RIGHT_reg[0]  ( .D(RKEY[43]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[41]) );
  DFFSR \ENC_RIGHT_reg[2]  ( .D(RKEY[41]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[42]) );
  DFFSR \ENC_RIGHT_reg[4]  ( .D(RKEY[42]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[28]) );
  DFFSR \ENC_RIGHT_reg[6]  ( .D(RKEY[28]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(ENC_RIGHT_6) );
  DFFSR \ENC_RIGHT_reg[8]  ( .D(ENC_RIGHT_6), .CLK(CLK), .R(START_RST), .S(
        1'b1), .Q(RKEY[45]) );
  DFFSR \ENC_RIGHT_reg[10]  ( .D(RKEY[45]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[25]) );
  DFFSR \ENC_RIGHT_reg[12]  ( .D(RKEY[25]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[39]) );
  DFFSR \ENC_RIGHT_reg[14]  ( .D(RKEY[39]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[46]) );
  DFFSR \ENC_RIGHT_reg[16]  ( .D(RKEY[46]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[34]) );
  DFFSR \ENC_RIGHT_reg[18]  ( .D(RKEY[34]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[37]) );
  DFFSR \ENC_RIGHT_reg[20]  ( .D(RKEY[37]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[35]) );
  DFFSR \ENC_RIGHT_reg[22]  ( .D(RKEY[35]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(\ENC_RIGHT[22] ) );
  DFFSR \ENC_RIGHT_reg[24]  ( .D(\ENC_RIGHT[22] ), .CLK(CLK), .R(1'b1), .S(
        START_RST), .Q(RKEY[27]) );
  DFFSR \ENC_RIGHT_reg[26]  ( .D(RKEY[27]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[43]) );
  DFFSR \ENC_LEFT_reg[1]  ( .D(RKEY[17]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[0]) );
  DFFSR \ENC_LEFT_reg[3]  ( .D(RKEY[0]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[7]) );
  DFFSR \ENC_LEFT_reg[5]  ( .D(RKEY[7]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[2]) );
  DFFSR \ENC_LEFT_reg[7]  ( .D(RKEY[2]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(ENC_LEFT_7) );
  DFFSR \ENC_LEFT_reg[9]  ( .D(ENC_LEFT_7), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[16]) );
  DFFSR \ENC_LEFT_reg[11]  ( .D(RKEY[16]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[4]) );
  DFFSR \ENC_LEFT_reg[13]  ( .D(RKEY[4]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[11]) );
  DFFSR \ENC_LEFT_reg[15]  ( .D(RKEY[11]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[5]) );
  DFFSR \ENC_LEFT_reg[17]  ( .D(RKEY[5]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[12]) );
  DFFSR \ENC_LEFT_reg[19]  ( .D(RKEY[12]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[3]) );
  DFFSR \ENC_LEFT_reg[21]  ( .D(RKEY[3]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[22]) );
  DFFSR \ENC_LEFT_reg[23]  ( .D(RKEY[22]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(\ENC_LEFT[23] ) );
  DFFSR \ENC_LEFT_reg[25]  ( .D(\ENC_LEFT[23] ), .CLK(CLK), .R(1'b1), .S(
        START_RST), .Q(RKEY[8]) );
  DFFSR \ENC_LEFT_reg[27]  ( .D(RKEY[8]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[17]) );
  DFFSR \ENC_LEFT_reg[0]  ( .D(RKEY[1]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[21]) );
  DFFSR \ENC_LEFT_reg[2]  ( .D(RKEY[21]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[13]) );
  DFFSR \ENC_LEFT_reg[4]  ( .D(RKEY[13]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(ENC_LEFT_4) );
  DFFSR \ENC_LEFT_reg[6]  ( .D(ENC_LEFT_4), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[20]) );
  DFFSR \ENC_LEFT_reg[8]  ( .D(RKEY[20]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[9]) );
  DFFSR \ENC_LEFT_reg[10]  ( .D(RKEY[9]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[23]) );
  DFFSR \ENC_LEFT_reg[12]  ( .D(RKEY[23]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(ENC_LEFT_12) );
  DFFSR \ENC_LEFT_reg[14]  ( .D(ENC_LEFT_12), .CLK(CLK), .R(START_RST), .S(
        1'b1), .Q(RKEY[14]) );
  DFFSR \ENC_LEFT_reg[16]  ( .D(RKEY[14]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[19]) );
  DFFSR \ENC_LEFT_reg[18]  ( .D(RKEY[19]), .CLK(CLK), .R(START_RST), .S(1'b1), 
        .Q(RKEY[10]) );
  DFFSR \ENC_LEFT_reg[20]  ( .D(RKEY[10]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[15]) );
  DFFSR \ENC_LEFT_reg[22]  ( .D(RKEY[15]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[6]) );
  DFFSR \ENC_LEFT_reg[24]  ( .D(RKEY[6]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[18]) );
  DFFSR \ENC_LEFT_reg[26]  ( .D(RKEY[18]), .CLK(CLK), .R(1'b1), .S(START_RST), 
        .Q(RKEY[1]) );
endmodule


module e_rndCount ( CLK, RST, START, IN_SELECT, FIESTELCLK, RND_CNT );
  output [3:0] RND_CNT;
  input CLK, RST, START;
  output IN_SELECT, FIESTELCLK;
  wire   n16, n17, n18, n19, n4, n7, n9, n10, n11, n12, n13, n14, n15, n20,
         n21, n22, n23, n24, n25, n26;

  DFFSR \CUR_CNT_reg[0]  ( .D(n19), .CLK(CLK), .R(n26), .S(1'b1), .Q(
        RND_CNT[0]) );
  DFFSR \CUR_CNT_reg[1]  ( .D(n18), .CLK(CLK), .R(n26), .S(1'b1), .Q(
        RND_CNT[1]) );
  DFFSR \CUR_CNT_reg[2]  ( .D(n17), .CLK(CLK), .R(n26), .S(1'b1), .Q(
        RND_CNT[2]) );
  DFFSR \CUR_CNT_reg[3]  ( .D(n16), .CLK(CLK), .R(n26), .S(1'b1), .Q(
        RND_CNT[3]) );
  NOR2X1 U6 ( .A(n24), .B(START), .Y(n4) );
  INVX4 U8 ( .A(n4), .Y(IN_SELECT) );
  NAND2X1 U9 ( .A(CLK), .B(n24), .Y(n7) );
  INVX4 U10 ( .A(n7), .Y(FIESTELCLK) );
  NOR2X1 U11 ( .A(RST), .B(n9), .Y(n26) );
  INVX1 U12 ( .A(START), .Y(n9) );
  XNOR2X1 U13 ( .A(RND_CNT[0]), .B(n10), .Y(n19) );
  XNOR2X1 U14 ( .A(n11), .B(n12), .Y(n18) );
  XNOR2X1 U15 ( .A(RND_CNT[2]), .B(n13), .Y(n17) );
  NAND2X1 U16 ( .A(n12), .B(RND_CNT[1]), .Y(n13) );
  OAI21X1 U17 ( .A(n14), .B(n15), .C(n20), .Y(n16) );
  INVX1 U18 ( .A(RND_CNT[3]), .Y(n20) );
  NAND2X1 U19 ( .A(RND_CNT[2]), .B(RND_CNT[1]), .Y(n15) );
  INVX1 U20 ( .A(n12), .Y(n14) );
  NOR2X1 U21 ( .A(n10), .B(n21), .Y(n12) );
  OAI21X1 U22 ( .A(n22), .B(n23), .C(START), .Y(n10) );
  NAND2X1 U23 ( .A(RND_CNT[3]), .B(RND_CNT[2]), .Y(n23) );
  NAND2X1 U24 ( .A(RND_CNT[1]), .B(RND_CNT[0]), .Y(n22) );
  NAND3X1 U25 ( .A(n21), .B(n11), .C(n25), .Y(n24) );
  NOR2X1 U26 ( .A(RND_CNT[3]), .B(RND_CNT[2]), .Y(n25) );
  INVX1 U27 ( .A(RND_CNT[1]), .Y(n11) );
  INVX1 U28 ( .A(RND_CNT[0]), .Y(n21) );
endmodule


module ENCRYPTION ( CLK, DATA, EMPTY, FULL, RENABLE, RST, EMPTY1, FULL1, RDATA, 
        R_ENABLE );
  input [7:0] DATA;
  output [7:0] RDATA;
  input CLK, EMPTY, FULL, RENABLE, RST;
  output EMPTY1, FULL1, R_ENABLE;
  wire   W_ENABLE1, W_ENABLE, START, FIESTELCLK, IN_SELECT, n1;
  wire   [7:0] DATA1;
  wire   [63:0] OUTDATA;
  wire   [31:0] ENC_LEFT;
  wire   [31:0] ENC_RIGHT;
  wire   [47:0] RKEY;
  wire   [3:0] RND_CNT;

  RCV_FIFO_2 U_5 ( .CLK(CLK), .D_CLK(CLK), .RST_N(n1), .R_ENABLE(RENABLE), 
        .W_ENABLE(W_ENABLE1), .WDATA(DATA1), .R_DATA(RDATA), .EMPTY(EMPTY1), 
        .FULL(FULL1) );
  e_DeCompile U_0 ( .OUTDATA(OUTDATA), .D_ENABLE(W_ENABLE), .CLK(CLK), .DATA(
        DATA1), .W_ENABLE(W_ENABLE1) );
  e_encController U_1 ( .DATA(DATA), .FULL(FULL), .EMPTY(EMPTY), .CLK(CLK), 
        .RST(RST), .START(START), .R_ENABLE(R_ENABLE), .W_ENABLE(W_ENABLE), 
        .ENC_LEFT(ENC_LEFT), .ENC_RIGHT(ENC_RIGHT) );
  e_fiestel U_2 ( .FIESTELCLK(FIESTELCLK), .START(START), .ENC_LEFT(ENC_LEFT), 
        .ENC_RIGHT(ENC_RIGHT), .RKEY(RKEY), .IN_SELECT(IN_SELECT), .OUTDATA(
        OUTDATA) );
  e_rkeyGen U_3 ( .RNDNUM(RND_CNT), .START_RST(START), .IN_SELECT(IN_SELECT), 
        .CLK(CLK), .RKEY(RKEY) );
  e_rndCount U_4 ( .CLK(CLK), .RST(RST), .START(START), .IN_SELECT(IN_SELECT), 
        .FIESTELCLK(FIESTELCLK), .RND_CNT(RND_CNT) );
  INVX4 U1 ( .A(RST), .Y(n1) );
endmodule


module fiforam_1 ( wclk, wenable, waddr, raddr, wdata, rdata );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wenable;
  wire   \fiforeg[0][7] , \fiforeg[0][6] , \fiforeg[0][5] , \fiforeg[0][4] ,
         \fiforeg[0][3] , \fiforeg[0][2] , \fiforeg[0][1] , \fiforeg[0][0] ,
         \fiforeg[1][7] , \fiforeg[1][6] , \fiforeg[1][5] , \fiforeg[1][4] ,
         \fiforeg[1][3] , \fiforeg[1][2] , \fiforeg[1][1] , \fiforeg[1][0] ,
         \fiforeg[2][7] , \fiforeg[2][6] , \fiforeg[2][5] , \fiforeg[2][4] ,
         \fiforeg[2][3] , \fiforeg[2][2] , \fiforeg[2][1] , \fiforeg[2][0] ,
         \fiforeg[3][7] , \fiforeg[3][6] , \fiforeg[3][5] , \fiforeg[3][4] ,
         \fiforeg[3][3] , \fiforeg[3][2] , \fiforeg[3][1] , \fiforeg[3][0] ,
         \fiforeg[4][7] , \fiforeg[4][6] , \fiforeg[4][5] , \fiforeg[4][4] ,
         \fiforeg[4][3] , \fiforeg[4][2] , \fiforeg[4][1] , \fiforeg[4][0] ,
         \fiforeg[5][7] , \fiforeg[5][6] , \fiforeg[5][5] , \fiforeg[5][4] ,
         \fiforeg[5][3] , \fiforeg[5][2] , \fiforeg[5][1] , \fiforeg[5][0] ,
         \fiforeg[6][7] , \fiforeg[6][6] , \fiforeg[6][5] , \fiforeg[6][4] ,
         \fiforeg[6][3] , \fiforeg[6][2] , \fiforeg[6][1] , \fiforeg[6][0] ,
         \fiforeg[7][7] , \fiforeg[7][6] , \fiforeg[7][5] , \fiforeg[7][4] ,
         \fiforeg[7][3] , \fiforeg[7][2] , \fiforeg[7][1] , \fiforeg[7][0] ,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321;

  DFFPOSX1 \fiforeg_reg[7][7]  ( .D(n321), .CLK(n8), .Q(\fiforeg[7][7] ) );
  DFFPOSX1 \fiforeg_reg[6][7]  ( .D(n320), .CLK(n8), .Q(\fiforeg[6][7] ) );
  DFFPOSX1 \fiforeg_reg[5][7]  ( .D(n319), .CLK(n8), .Q(\fiforeg[5][7] ) );
  DFFPOSX1 \fiforeg_reg[4][7]  ( .D(n318), .CLK(n8), .Q(\fiforeg[4][7] ) );
  DFFPOSX1 \fiforeg_reg[3][7]  ( .D(n317), .CLK(n8), .Q(\fiforeg[3][7] ) );
  DFFPOSX1 \fiforeg_reg[2][7]  ( .D(n316), .CLK(n8), .Q(\fiforeg[2][7] ) );
  DFFPOSX1 \fiforeg_reg[1][7]  ( .D(n315), .CLK(n8), .Q(\fiforeg[1][7] ) );
  DFFPOSX1 \fiforeg_reg[0][7]  ( .D(n314), .CLK(n8), .Q(\fiforeg[0][7] ) );
  DFFPOSX1 \fiforeg_reg[7][6]  ( .D(n313), .CLK(n9), .Q(\fiforeg[7][6] ) );
  DFFPOSX1 \fiforeg_reg[6][6]  ( .D(n312), .CLK(n9), .Q(\fiforeg[6][6] ) );
  DFFPOSX1 \fiforeg_reg[5][6]  ( .D(n311), .CLK(n9), .Q(\fiforeg[5][6] ) );
  DFFPOSX1 \fiforeg_reg[4][6]  ( .D(n310), .CLK(n8), .Q(\fiforeg[4][6] ) );
  DFFPOSX1 \fiforeg_reg[3][6]  ( .D(n309), .CLK(n8), .Q(\fiforeg[3][6] ) );
  DFFPOSX1 \fiforeg_reg[2][6]  ( .D(n308), .CLK(n8), .Q(\fiforeg[2][6] ) );
  DFFPOSX1 \fiforeg_reg[1][6]  ( .D(n307), .CLK(n8), .Q(\fiforeg[1][6] ) );
  DFFPOSX1 \fiforeg_reg[0][6]  ( .D(n306), .CLK(n8), .Q(\fiforeg[0][6] ) );
  DFFPOSX1 \fiforeg_reg[7][5]  ( .D(n305), .CLK(n9), .Q(\fiforeg[7][5] ) );
  DFFPOSX1 \fiforeg_reg[6][5]  ( .D(n304), .CLK(n9), .Q(\fiforeg[6][5] ) );
  DFFPOSX1 \fiforeg_reg[5][5]  ( .D(n303), .CLK(n9), .Q(\fiforeg[5][5] ) );
  DFFPOSX1 \fiforeg_reg[4][5]  ( .D(n302), .CLK(n9), .Q(\fiforeg[4][5] ) );
  DFFPOSX1 \fiforeg_reg[3][5]  ( .D(n301), .CLK(n9), .Q(\fiforeg[3][5] ) );
  DFFPOSX1 \fiforeg_reg[2][5]  ( .D(n300), .CLK(n9), .Q(\fiforeg[2][5] ) );
  DFFPOSX1 \fiforeg_reg[1][5]  ( .D(n299), .CLK(n9), .Q(\fiforeg[1][5] ) );
  DFFPOSX1 \fiforeg_reg[0][5]  ( .D(n298), .CLK(n9), .Q(\fiforeg[0][5] ) );
  DFFPOSX1 \fiforeg_reg[7][4]  ( .D(n297), .CLK(n10), .Q(\fiforeg[7][4] ) );
  DFFPOSX1 \fiforeg_reg[6][4]  ( .D(n296), .CLK(n10), .Q(\fiforeg[6][4] ) );
  DFFPOSX1 \fiforeg_reg[5][4]  ( .D(n295), .CLK(n10), .Q(\fiforeg[5][4] ) );
  DFFPOSX1 \fiforeg_reg[4][4]  ( .D(n294), .CLK(n10), .Q(\fiforeg[4][4] ) );
  DFFPOSX1 \fiforeg_reg[3][4]  ( .D(n293), .CLK(n10), .Q(\fiforeg[3][4] ) );
  DFFPOSX1 \fiforeg_reg[2][4]  ( .D(n292), .CLK(n10), .Q(\fiforeg[2][4] ) );
  DFFPOSX1 \fiforeg_reg[1][4]  ( .D(n291), .CLK(n9), .Q(\fiforeg[1][4] ) );
  DFFPOSX1 \fiforeg_reg[0][4]  ( .D(n290), .CLK(n9), .Q(\fiforeg[0][4] ) );
  DFFPOSX1 \fiforeg_reg[7][3]  ( .D(n289), .CLK(n11), .Q(\fiforeg[7][3] ) );
  DFFPOSX1 \fiforeg_reg[6][3]  ( .D(n288), .CLK(n10), .Q(\fiforeg[6][3] ) );
  DFFPOSX1 \fiforeg_reg[5][3]  ( .D(n287), .CLK(n10), .Q(\fiforeg[5][3] ) );
  DFFPOSX1 \fiforeg_reg[4][3]  ( .D(n286), .CLK(n10), .Q(\fiforeg[4][3] ) );
  DFFPOSX1 \fiforeg_reg[3][3]  ( .D(n285), .CLK(n10), .Q(\fiforeg[3][3] ) );
  DFFPOSX1 \fiforeg_reg[2][3]  ( .D(n284), .CLK(n10), .Q(\fiforeg[2][3] ) );
  DFFPOSX1 \fiforeg_reg[1][3]  ( .D(n283), .CLK(n10), .Q(\fiforeg[1][3] ) );
  DFFPOSX1 \fiforeg_reg[0][3]  ( .D(n282), .CLK(n10), .Q(\fiforeg[0][3] ) );
  DFFPOSX1 \fiforeg_reg[7][2]  ( .D(n281), .CLK(n11), .Q(\fiforeg[7][2] ) );
  DFFPOSX1 \fiforeg_reg[6][2]  ( .D(n280), .CLK(n11), .Q(\fiforeg[6][2] ) );
  DFFPOSX1 \fiforeg_reg[5][2]  ( .D(n279), .CLK(n11), .Q(\fiforeg[5][2] ) );
  DFFPOSX1 \fiforeg_reg[4][2]  ( .D(n278), .CLK(n11), .Q(\fiforeg[4][2] ) );
  DFFPOSX1 \fiforeg_reg[3][2]  ( .D(n277), .CLK(n11), .Q(\fiforeg[3][2] ) );
  DFFPOSX1 \fiforeg_reg[2][2]  ( .D(n276), .CLK(n11), .Q(\fiforeg[2][2] ) );
  DFFPOSX1 \fiforeg_reg[1][2]  ( .D(n275), .CLK(n11), .Q(\fiforeg[1][2] ) );
  DFFPOSX1 \fiforeg_reg[0][2]  ( .D(n274), .CLK(n11), .Q(\fiforeg[0][2] ) );
  DFFPOSX1 \fiforeg_reg[7][1]  ( .D(n273), .CLK(n12), .Q(\fiforeg[7][1] ) );
  DFFPOSX1 \fiforeg_reg[6][1]  ( .D(n272), .CLK(n12), .Q(\fiforeg[6][1] ) );
  DFFPOSX1 \fiforeg_reg[5][1]  ( .D(n271), .CLK(n12), .Q(\fiforeg[5][1] ) );
  DFFPOSX1 \fiforeg_reg[4][1]  ( .D(n270), .CLK(n12), .Q(\fiforeg[4][1] ) );
  DFFPOSX1 \fiforeg_reg[3][1]  ( .D(n269), .CLK(n11), .Q(\fiforeg[3][1] ) );
  DFFPOSX1 \fiforeg_reg[2][1]  ( .D(n268), .CLK(n11), .Q(\fiforeg[2][1] ) );
  DFFPOSX1 \fiforeg_reg[1][1]  ( .D(n267), .CLK(n11), .Q(\fiforeg[1][1] ) );
  DFFPOSX1 \fiforeg_reg[0][1]  ( .D(n211), .CLK(n11), .Q(\fiforeg[0][1] ) );
  DFFPOSX1 \fiforeg_reg[7][0]  ( .D(n203), .CLK(n12), .Q(\fiforeg[7][0] ) );
  DFFPOSX1 \fiforeg_reg[6][0]  ( .D(n210), .CLK(n12), .Q(\fiforeg[6][0] ) );
  DFFPOSX1 \fiforeg_reg[5][0]  ( .D(n209), .CLK(n12), .Q(\fiforeg[5][0] ) );
  DFFPOSX1 \fiforeg_reg[4][0]  ( .D(n208), .CLK(n12), .Q(\fiforeg[4][0] ) );
  DFFPOSX1 \fiforeg_reg[3][0]  ( .D(n207), .CLK(n12), .Q(\fiforeg[3][0] ) );
  DFFPOSX1 \fiforeg_reg[2][0]  ( .D(n206), .CLK(n12), .Q(\fiforeg[2][0] ) );
  DFFPOSX1 \fiforeg_reg[1][0]  ( .D(n205), .CLK(n12), .Q(\fiforeg[1][0] ) );
  DFFPOSX1 \fiforeg_reg[0][0]  ( .D(n204), .CLK(n12), .Q(\fiforeg[0][0] ) );
  INVX1 U2 ( .A(n104), .Y(n1) );
  INVX2 U3 ( .A(n1), .Y(n2) );
  INVX1 U4 ( .A(n106), .Y(n3) );
  INVX2 U5 ( .A(n3), .Y(n4) );
  INVX1 U6 ( .A(n105), .Y(n5) );
  INVX2 U7 ( .A(n5), .Y(n6) );
  BUFX2 U8 ( .A(n103), .Y(n7) );
  BUFX2 U9 ( .A(wclk), .Y(n11) );
  BUFX2 U10 ( .A(wclk), .Y(n10) );
  BUFX2 U11 ( .A(wclk), .Y(n9) );
  BUFX2 U12 ( .A(wclk), .Y(n8) );
  BUFX2 U13 ( .A(wclk), .Y(n12) );
  NAND3X1 U14 ( .A(n13), .B(n14), .C(n15), .Y(rdata[7]) );
  NOR2X1 U15 ( .A(n16), .B(n17), .Y(n15) );
  OAI22X1 U16 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n17) );
  OAI22X1 U17 ( .A(n22), .B(n23), .C(n24), .D(n25), .Y(n16) );
  AOI22X1 U18 ( .A(\fiforeg[5][7] ), .B(n26), .C(\fiforeg[4][7] ), .D(n27), 
        .Y(n14) );
  AOI22X1 U19 ( .A(\fiforeg[7][7] ), .B(n28), .C(\fiforeg[6][7] ), .D(n29), 
        .Y(n13) );
  NAND3X1 U20 ( .A(n30), .B(n31), .C(n32), .Y(rdata[6]) );
  NOR2X1 U21 ( .A(n33), .B(n34), .Y(n32) );
  OAI22X1 U22 ( .A(n18), .B(n35), .C(n20), .D(n36), .Y(n34) );
  OAI22X1 U23 ( .A(n22), .B(n37), .C(n24), .D(n38), .Y(n33) );
  AOI22X1 U24 ( .A(\fiforeg[5][6] ), .B(n26), .C(\fiforeg[4][6] ), .D(n27), 
        .Y(n31) );
  AOI22X1 U25 ( .A(\fiforeg[7][6] ), .B(n28), .C(\fiforeg[6][6] ), .D(n29), 
        .Y(n30) );
  NAND3X1 U26 ( .A(n39), .B(n40), .C(n41), .Y(rdata[5]) );
  NOR2X1 U27 ( .A(n42), .B(n43), .Y(n41) );
  OAI22X1 U28 ( .A(n18), .B(n44), .C(n20), .D(n45), .Y(n43) );
  OAI22X1 U29 ( .A(n22), .B(n46), .C(n24), .D(n47), .Y(n42) );
  AOI22X1 U30 ( .A(\fiforeg[5][5] ), .B(n26), .C(\fiforeg[4][5] ), .D(n27), 
        .Y(n40) );
  AOI22X1 U31 ( .A(\fiforeg[7][5] ), .B(n28), .C(\fiforeg[6][5] ), .D(n29), 
        .Y(n39) );
  NAND3X1 U32 ( .A(n48), .B(n49), .C(n50), .Y(rdata[4]) );
  NOR2X1 U33 ( .A(n51), .B(n52), .Y(n50) );
  OAI22X1 U34 ( .A(n18), .B(n53), .C(n20), .D(n54), .Y(n52) );
  OAI22X1 U35 ( .A(n22), .B(n55), .C(n24), .D(n56), .Y(n51) );
  AOI22X1 U36 ( .A(\fiforeg[5][4] ), .B(n26), .C(\fiforeg[4][4] ), .D(n27), 
        .Y(n49) );
  AOI22X1 U37 ( .A(\fiforeg[7][4] ), .B(n28), .C(\fiforeg[6][4] ), .D(n29), 
        .Y(n48) );
  NAND3X1 U38 ( .A(n57), .B(n58), .C(n59), .Y(rdata[3]) );
  NOR2X1 U39 ( .A(n60), .B(n61), .Y(n59) );
  OAI22X1 U40 ( .A(n18), .B(n62), .C(n20), .D(n63), .Y(n61) );
  OAI22X1 U41 ( .A(n22), .B(n64), .C(n24), .D(n65), .Y(n60) );
  AOI22X1 U42 ( .A(\fiforeg[5][3] ), .B(n26), .C(\fiforeg[4][3] ), .D(n27), 
        .Y(n58) );
  AOI22X1 U43 ( .A(\fiforeg[7][3] ), .B(n28), .C(\fiforeg[6][3] ), .D(n29), 
        .Y(n57) );
  NAND3X1 U44 ( .A(n66), .B(n67), .C(n68), .Y(rdata[2]) );
  NOR2X1 U45 ( .A(n69), .B(n70), .Y(n68) );
  OAI22X1 U46 ( .A(n18), .B(n71), .C(n20), .D(n72), .Y(n70) );
  OAI22X1 U47 ( .A(n22), .B(n73), .C(n24), .D(n74), .Y(n69) );
  AOI22X1 U48 ( .A(\fiforeg[5][2] ), .B(n26), .C(\fiforeg[4][2] ), .D(n27), 
        .Y(n67) );
  AOI22X1 U49 ( .A(\fiforeg[7][2] ), .B(n28), .C(\fiforeg[6][2] ), .D(n29), 
        .Y(n66) );
  NAND3X1 U50 ( .A(n75), .B(n76), .C(n77), .Y(rdata[1]) );
  NOR2X1 U51 ( .A(n78), .B(n79), .Y(n77) );
  OAI22X1 U52 ( .A(n18), .B(n80), .C(n20), .D(n81), .Y(n79) );
  OAI22X1 U53 ( .A(n22), .B(n82), .C(n24), .D(n83), .Y(n78) );
  AOI22X1 U54 ( .A(\fiforeg[5][1] ), .B(n26), .C(\fiforeg[4][1] ), .D(n27), 
        .Y(n76) );
  AOI22X1 U55 ( .A(\fiforeg[7][1] ), .B(n28), .C(\fiforeg[6][1] ), .D(n29), 
        .Y(n75) );
  NAND3X1 U56 ( .A(n84), .B(n85), .C(n86), .Y(rdata[0]) );
  NOR2X1 U57 ( .A(n87), .B(n88), .Y(n86) );
  OAI22X1 U58 ( .A(n18), .B(n89), .C(n20), .D(n90), .Y(n88) );
  NAND3X1 U59 ( .A(n91), .B(n92), .C(n93), .Y(n20) );
  NAND3X1 U60 ( .A(n91), .B(n92), .C(raddr[0]), .Y(n18) );
  OAI22X1 U61 ( .A(n22), .B(n94), .C(n24), .D(n95), .Y(n87) );
  NAND3X1 U62 ( .A(n93), .B(n92), .C(raddr[1]), .Y(n24) );
  NAND3X1 U63 ( .A(raddr[0]), .B(n92), .C(raddr[1]), .Y(n22) );
  INVX1 U64 ( .A(raddr[2]), .Y(n92) );
  AOI22X1 U65 ( .A(\fiforeg[5][0] ), .B(n26), .C(\fiforeg[4][0] ), .D(n27), 
        .Y(n85) );
  INVX1 U66 ( .A(n96), .Y(n27) );
  NAND3X1 U67 ( .A(n93), .B(n91), .C(raddr[2]), .Y(n96) );
  INVX1 U68 ( .A(n97), .Y(n26) );
  NAND3X1 U69 ( .A(raddr[0]), .B(n91), .C(raddr[2]), .Y(n97) );
  INVX1 U70 ( .A(raddr[1]), .Y(n91) );
  AOI22X1 U71 ( .A(\fiforeg[7][0] ), .B(n28), .C(\fiforeg[6][0] ), .D(n29), 
        .Y(n84) );
  INVX1 U72 ( .A(n98), .Y(n29) );
  NAND3X1 U73 ( .A(raddr[2]), .B(n93), .C(raddr[1]), .Y(n98) );
  INVX1 U74 ( .A(raddr[0]), .Y(n93) );
  INVX1 U75 ( .A(n99), .Y(n28) );
  NAND3X1 U76 ( .A(raddr[2]), .B(raddr[0]), .C(raddr[1]), .Y(n99) );
  MUX2X1 U77 ( .B(n100), .A(n101), .S(n102), .Y(n203) );
  INVX1 U78 ( .A(\fiforeg[7][0] ), .Y(n101) );
  MUX2X1 U79 ( .B(n100), .A(n90), .S(n7), .Y(n204) );
  MUX2X1 U80 ( .B(n100), .A(n89), .S(n2), .Y(n205) );
  MUX2X1 U81 ( .B(n100), .A(n95), .S(n6), .Y(n206) );
  MUX2X1 U82 ( .B(n100), .A(n94), .S(n4), .Y(n207) );
  MUX2X1 U83 ( .B(n100), .A(n107), .S(n108), .Y(n208) );
  INVX1 U84 ( .A(\fiforeg[4][0] ), .Y(n107) );
  MUX2X1 U85 ( .B(n100), .A(n109), .S(n110), .Y(n209) );
  INVX1 U86 ( .A(\fiforeg[5][0] ), .Y(n109) );
  MUX2X1 U87 ( .B(n100), .A(n111), .S(n112), .Y(n210) );
  INVX1 U88 ( .A(\fiforeg[6][0] ), .Y(n111) );
  MUX2X1 U89 ( .B(n113), .A(wdata[0]), .S(wenable), .Y(n100) );
  NAND3X1 U90 ( .A(n114), .B(n115), .C(n116), .Y(n113) );
  NOR2X1 U91 ( .A(n117), .B(n118), .Y(n116) );
  OAI22X1 U92 ( .A(n89), .B(n2), .C(n90), .D(n7), .Y(n118) );
  INVX1 U93 ( .A(\fiforeg[0][0] ), .Y(n90) );
  INVX1 U94 ( .A(\fiforeg[1][0] ), .Y(n89) );
  OAI22X1 U95 ( .A(n94), .B(n4), .C(n95), .D(n6), .Y(n117) );
  INVX1 U96 ( .A(\fiforeg[2][0] ), .Y(n95) );
  INVX1 U97 ( .A(\fiforeg[3][0] ), .Y(n94) );
  AOI22X1 U98 ( .A(n119), .B(\fiforeg[6][0] ), .C(n120), .D(\fiforeg[4][0] ), 
        .Y(n115) );
  AOI22X1 U99 ( .A(n121), .B(\fiforeg[5][0] ), .C(n122), .D(\fiforeg[7][0] ), 
        .Y(n114) );
  MUX2X1 U100 ( .B(n123), .A(n81), .S(n7), .Y(n211) );
  MUX2X1 U101 ( .B(n123), .A(n80), .S(n2), .Y(n267) );
  MUX2X1 U102 ( .B(n123), .A(n83), .S(n6), .Y(n268) );
  MUX2X1 U103 ( .B(n123), .A(n82), .S(n4), .Y(n269) );
  MUX2X1 U104 ( .B(n123), .A(n124), .S(n108), .Y(n270) );
  INVX1 U105 ( .A(\fiforeg[4][1] ), .Y(n124) );
  MUX2X1 U106 ( .B(n123), .A(n125), .S(n110), .Y(n271) );
  INVX1 U107 ( .A(\fiforeg[5][1] ), .Y(n125) );
  MUX2X1 U108 ( .B(n123), .A(n126), .S(n112), .Y(n272) );
  INVX1 U109 ( .A(\fiforeg[6][1] ), .Y(n126) );
  MUX2X1 U110 ( .B(n123), .A(n127), .S(n102), .Y(n273) );
  INVX1 U111 ( .A(\fiforeg[7][1] ), .Y(n127) );
  MUX2X1 U112 ( .B(n128), .A(wdata[1]), .S(wenable), .Y(n123) );
  NAND3X1 U113 ( .A(n129), .B(n130), .C(n131), .Y(n128) );
  NOR2X1 U114 ( .A(n132), .B(n133), .Y(n131) );
  OAI22X1 U115 ( .A(n80), .B(n2), .C(n81), .D(n7), .Y(n133) );
  INVX1 U116 ( .A(\fiforeg[0][1] ), .Y(n81) );
  INVX1 U117 ( .A(\fiforeg[1][1] ), .Y(n80) );
  OAI22X1 U118 ( .A(n82), .B(n4), .C(n83), .D(n6), .Y(n132) );
  INVX1 U119 ( .A(\fiforeg[2][1] ), .Y(n83) );
  INVX1 U120 ( .A(\fiforeg[3][1] ), .Y(n82) );
  AOI22X1 U121 ( .A(n119), .B(\fiforeg[6][1] ), .C(n120), .D(\fiforeg[4][1] ), 
        .Y(n130) );
  AOI22X1 U122 ( .A(n121), .B(\fiforeg[5][1] ), .C(n122), .D(\fiforeg[7][1] ), 
        .Y(n129) );
  MUX2X1 U123 ( .B(n134), .A(n72), .S(n7), .Y(n274) );
  MUX2X1 U124 ( .B(n134), .A(n71), .S(n2), .Y(n275) );
  MUX2X1 U125 ( .B(n134), .A(n74), .S(n6), .Y(n276) );
  MUX2X1 U126 ( .B(n134), .A(n73), .S(n4), .Y(n277) );
  MUX2X1 U127 ( .B(n134), .A(n135), .S(n108), .Y(n278) );
  INVX1 U128 ( .A(\fiforeg[4][2] ), .Y(n135) );
  MUX2X1 U129 ( .B(n134), .A(n136), .S(n110), .Y(n279) );
  INVX1 U130 ( .A(\fiforeg[5][2] ), .Y(n136) );
  MUX2X1 U131 ( .B(n134), .A(n137), .S(n112), .Y(n280) );
  INVX1 U132 ( .A(\fiforeg[6][2] ), .Y(n137) );
  MUX2X1 U133 ( .B(n134), .A(n138), .S(n102), .Y(n281) );
  INVX1 U134 ( .A(\fiforeg[7][2] ), .Y(n138) );
  MUX2X1 U135 ( .B(n139), .A(wdata[2]), .S(wenable), .Y(n134) );
  NAND3X1 U136 ( .A(n140), .B(n141), .C(n142), .Y(n139) );
  NOR2X1 U137 ( .A(n143), .B(n144), .Y(n142) );
  OAI22X1 U138 ( .A(n71), .B(n2), .C(n72), .D(n7), .Y(n144) );
  INVX1 U139 ( .A(\fiforeg[0][2] ), .Y(n72) );
  INVX1 U140 ( .A(\fiforeg[1][2] ), .Y(n71) );
  OAI22X1 U141 ( .A(n73), .B(n4), .C(n74), .D(n6), .Y(n143) );
  INVX1 U142 ( .A(\fiforeg[2][2] ), .Y(n74) );
  INVX1 U143 ( .A(\fiforeg[3][2] ), .Y(n73) );
  AOI22X1 U144 ( .A(n119), .B(\fiforeg[6][2] ), .C(n120), .D(\fiforeg[4][2] ), 
        .Y(n141) );
  AOI22X1 U145 ( .A(n121), .B(\fiforeg[5][2] ), .C(n122), .D(\fiforeg[7][2] ), 
        .Y(n140) );
  MUX2X1 U146 ( .B(n145), .A(n63), .S(n7), .Y(n282) );
  MUX2X1 U147 ( .B(n145), .A(n62), .S(n2), .Y(n283) );
  MUX2X1 U148 ( .B(n145), .A(n65), .S(n6), .Y(n284) );
  MUX2X1 U149 ( .B(n145), .A(n64), .S(n4), .Y(n285) );
  MUX2X1 U150 ( .B(n145), .A(n146), .S(n108), .Y(n286) );
  INVX1 U151 ( .A(\fiforeg[4][3] ), .Y(n146) );
  MUX2X1 U152 ( .B(n145), .A(n147), .S(n110), .Y(n287) );
  INVX1 U153 ( .A(\fiforeg[5][3] ), .Y(n147) );
  MUX2X1 U154 ( .B(n145), .A(n148), .S(n112), .Y(n288) );
  INVX1 U155 ( .A(\fiforeg[6][3] ), .Y(n148) );
  MUX2X1 U156 ( .B(n145), .A(n149), .S(n102), .Y(n289) );
  INVX1 U157 ( .A(\fiforeg[7][3] ), .Y(n149) );
  MUX2X1 U158 ( .B(n150), .A(wdata[3]), .S(wenable), .Y(n145) );
  NAND3X1 U159 ( .A(n151), .B(n152), .C(n153), .Y(n150) );
  NOR2X1 U160 ( .A(n154), .B(n155), .Y(n153) );
  OAI22X1 U161 ( .A(n62), .B(n2), .C(n63), .D(n7), .Y(n155) );
  INVX1 U162 ( .A(\fiforeg[0][3] ), .Y(n63) );
  INVX1 U163 ( .A(\fiforeg[1][3] ), .Y(n62) );
  OAI22X1 U164 ( .A(n64), .B(n4), .C(n65), .D(n6), .Y(n154) );
  INVX1 U165 ( .A(\fiforeg[2][3] ), .Y(n65) );
  INVX1 U166 ( .A(\fiforeg[3][3] ), .Y(n64) );
  AOI22X1 U167 ( .A(n119), .B(\fiforeg[6][3] ), .C(n120), .D(\fiforeg[4][3] ), 
        .Y(n152) );
  AOI22X1 U168 ( .A(n121), .B(\fiforeg[5][3] ), .C(n122), .D(\fiforeg[7][3] ), 
        .Y(n151) );
  MUX2X1 U169 ( .B(n156), .A(n54), .S(n7), .Y(n290) );
  MUX2X1 U170 ( .B(n156), .A(n53), .S(n2), .Y(n291) );
  MUX2X1 U171 ( .B(n156), .A(n56), .S(n6), .Y(n292) );
  MUX2X1 U172 ( .B(n156), .A(n55), .S(n4), .Y(n293) );
  MUX2X1 U173 ( .B(n156), .A(n157), .S(n108), .Y(n294) );
  INVX1 U174 ( .A(\fiforeg[4][4] ), .Y(n157) );
  MUX2X1 U175 ( .B(n156), .A(n158), .S(n110), .Y(n295) );
  INVX1 U176 ( .A(\fiforeg[5][4] ), .Y(n158) );
  MUX2X1 U177 ( .B(n156), .A(n159), .S(n112), .Y(n296) );
  INVX1 U178 ( .A(\fiforeg[6][4] ), .Y(n159) );
  MUX2X1 U179 ( .B(n156), .A(n160), .S(n102), .Y(n297) );
  INVX1 U180 ( .A(\fiforeg[7][4] ), .Y(n160) );
  MUX2X1 U181 ( .B(n161), .A(wdata[4]), .S(wenable), .Y(n156) );
  NAND3X1 U182 ( .A(n162), .B(n163), .C(n164), .Y(n161) );
  NOR2X1 U183 ( .A(n165), .B(n166), .Y(n164) );
  OAI22X1 U184 ( .A(n53), .B(n2), .C(n54), .D(n7), .Y(n166) );
  INVX1 U185 ( .A(\fiforeg[0][4] ), .Y(n54) );
  INVX1 U186 ( .A(\fiforeg[1][4] ), .Y(n53) );
  OAI22X1 U187 ( .A(n55), .B(n4), .C(n56), .D(n6), .Y(n165) );
  INVX1 U188 ( .A(\fiforeg[2][4] ), .Y(n56) );
  INVX1 U189 ( .A(\fiforeg[3][4] ), .Y(n55) );
  AOI22X1 U190 ( .A(n119), .B(\fiforeg[6][4] ), .C(n120), .D(\fiforeg[4][4] ), 
        .Y(n163) );
  AOI22X1 U191 ( .A(n121), .B(\fiforeg[5][4] ), .C(n122), .D(\fiforeg[7][4] ), 
        .Y(n162) );
  MUX2X1 U192 ( .B(n167), .A(n45), .S(n7), .Y(n298) );
  MUX2X1 U193 ( .B(n167), .A(n44), .S(n2), .Y(n299) );
  MUX2X1 U194 ( .B(n167), .A(n47), .S(n6), .Y(n300) );
  MUX2X1 U195 ( .B(n167), .A(n46), .S(n4), .Y(n301) );
  MUX2X1 U196 ( .B(n167), .A(n168), .S(n108), .Y(n302) );
  INVX1 U197 ( .A(\fiforeg[4][5] ), .Y(n168) );
  MUX2X1 U198 ( .B(n167), .A(n169), .S(n110), .Y(n303) );
  INVX1 U199 ( .A(\fiforeg[5][5] ), .Y(n169) );
  MUX2X1 U200 ( .B(n167), .A(n170), .S(n112), .Y(n304) );
  INVX1 U201 ( .A(\fiforeg[6][5] ), .Y(n170) );
  MUX2X1 U202 ( .B(n167), .A(n171), .S(n102), .Y(n305) );
  INVX1 U203 ( .A(\fiforeg[7][5] ), .Y(n171) );
  MUX2X1 U204 ( .B(n172), .A(wdata[5]), .S(wenable), .Y(n167) );
  NAND3X1 U205 ( .A(n173), .B(n174), .C(n175), .Y(n172) );
  NOR2X1 U206 ( .A(n176), .B(n177), .Y(n175) );
  OAI22X1 U207 ( .A(n44), .B(n2), .C(n45), .D(n7), .Y(n177) );
  INVX1 U208 ( .A(\fiforeg[0][5] ), .Y(n45) );
  INVX1 U209 ( .A(\fiforeg[1][5] ), .Y(n44) );
  OAI22X1 U210 ( .A(n46), .B(n4), .C(n47), .D(n6), .Y(n176) );
  INVX1 U211 ( .A(\fiforeg[2][5] ), .Y(n47) );
  INVX1 U212 ( .A(\fiforeg[3][5] ), .Y(n46) );
  AOI22X1 U213 ( .A(n119), .B(\fiforeg[6][5] ), .C(n120), .D(\fiforeg[4][5] ), 
        .Y(n174) );
  AOI22X1 U214 ( .A(n121), .B(\fiforeg[5][5] ), .C(n122), .D(\fiforeg[7][5] ), 
        .Y(n173) );
  MUX2X1 U215 ( .B(n178), .A(n36), .S(n7), .Y(n306) );
  MUX2X1 U216 ( .B(n178), .A(n35), .S(n2), .Y(n307) );
  MUX2X1 U217 ( .B(n178), .A(n38), .S(n6), .Y(n308) );
  MUX2X1 U218 ( .B(n178), .A(n37), .S(n4), .Y(n309) );
  MUX2X1 U219 ( .B(n178), .A(n179), .S(n108), .Y(n310) );
  INVX1 U220 ( .A(\fiforeg[4][6] ), .Y(n179) );
  MUX2X1 U221 ( .B(n178), .A(n180), .S(n110), .Y(n311) );
  INVX1 U222 ( .A(\fiforeg[5][6] ), .Y(n180) );
  MUX2X1 U223 ( .B(n178), .A(n181), .S(n112), .Y(n312) );
  INVX1 U224 ( .A(\fiforeg[6][6] ), .Y(n181) );
  MUX2X1 U225 ( .B(n178), .A(n182), .S(n102), .Y(n313) );
  INVX1 U226 ( .A(\fiforeg[7][6] ), .Y(n182) );
  MUX2X1 U227 ( .B(n183), .A(wdata[6]), .S(wenable), .Y(n178) );
  NAND3X1 U228 ( .A(n184), .B(n185), .C(n186), .Y(n183) );
  NOR2X1 U229 ( .A(n187), .B(n188), .Y(n186) );
  OAI22X1 U230 ( .A(n35), .B(n2), .C(n36), .D(n7), .Y(n188) );
  INVX1 U231 ( .A(\fiforeg[0][6] ), .Y(n36) );
  INVX1 U232 ( .A(\fiforeg[1][6] ), .Y(n35) );
  OAI22X1 U233 ( .A(n37), .B(n4), .C(n38), .D(n6), .Y(n187) );
  INVX1 U234 ( .A(\fiforeg[2][6] ), .Y(n38) );
  INVX1 U235 ( .A(\fiforeg[3][6] ), .Y(n37) );
  AOI22X1 U236 ( .A(n119), .B(\fiforeg[6][6] ), .C(n120), .D(\fiforeg[4][6] ), 
        .Y(n185) );
  AOI22X1 U237 ( .A(n121), .B(\fiforeg[5][6] ), .C(n122), .D(\fiforeg[7][6] ), 
        .Y(n184) );
  MUX2X1 U238 ( .B(n189), .A(n21), .S(n7), .Y(n314) );
  MUX2X1 U239 ( .B(n189), .A(n19), .S(n2), .Y(n315) );
  MUX2X1 U240 ( .B(n189), .A(n25), .S(n6), .Y(n316) );
  MUX2X1 U241 ( .B(n189), .A(n23), .S(n4), .Y(n317) );
  MUX2X1 U242 ( .B(n189), .A(n190), .S(n108), .Y(n318) );
  INVX1 U243 ( .A(\fiforeg[4][7] ), .Y(n190) );
  MUX2X1 U244 ( .B(n189), .A(n191), .S(n110), .Y(n319) );
  INVX1 U245 ( .A(\fiforeg[5][7] ), .Y(n191) );
  MUX2X1 U246 ( .B(n189), .A(n192), .S(n112), .Y(n320) );
  INVX1 U247 ( .A(\fiforeg[6][7] ), .Y(n192) );
  MUX2X1 U248 ( .B(n189), .A(n193), .S(n102), .Y(n321) );
  INVX1 U249 ( .A(\fiforeg[7][7] ), .Y(n193) );
  MUX2X1 U250 ( .B(n194), .A(wdata[7]), .S(wenable), .Y(n189) );
  NAND3X1 U251 ( .A(n195), .B(n196), .C(n197), .Y(n194) );
  NOR2X1 U252 ( .A(n198), .B(n199), .Y(n197) );
  OAI22X1 U253 ( .A(n19), .B(n2), .C(n21), .D(n7), .Y(n199) );
  NAND3X1 U254 ( .A(n200), .B(n201), .C(n202), .Y(n103) );
  INVX1 U255 ( .A(\fiforeg[0][7] ), .Y(n21) );
  NAND3X1 U256 ( .A(n200), .B(n201), .C(waddr[0]), .Y(n104) );
  INVX1 U257 ( .A(\fiforeg[1][7] ), .Y(n19) );
  OAI22X1 U258 ( .A(n23), .B(n4), .C(n25), .D(n6), .Y(n198) );
  NAND3X1 U259 ( .A(n202), .B(n201), .C(waddr[1]), .Y(n105) );
  INVX1 U260 ( .A(\fiforeg[2][7] ), .Y(n25) );
  NAND3X1 U261 ( .A(waddr[0]), .B(n201), .C(waddr[1]), .Y(n106) );
  INVX1 U262 ( .A(waddr[2]), .Y(n201) );
  INVX1 U263 ( .A(\fiforeg[3][7] ), .Y(n23) );
  AOI22X1 U264 ( .A(n119), .B(\fiforeg[6][7] ), .C(n120), .D(\fiforeg[4][7] ), 
        .Y(n196) );
  INVX1 U265 ( .A(n108), .Y(n120) );
  NAND3X1 U266 ( .A(n202), .B(n200), .C(waddr[2]), .Y(n108) );
  INVX1 U267 ( .A(n112), .Y(n119) );
  NAND3X1 U268 ( .A(waddr[1]), .B(n202), .C(waddr[2]), .Y(n112) );
  INVX1 U269 ( .A(waddr[0]), .Y(n202) );
  AOI22X1 U270 ( .A(n121), .B(\fiforeg[5][7] ), .C(n122), .D(\fiforeg[7][7] ), 
        .Y(n195) );
  INVX1 U271 ( .A(n102), .Y(n122) );
  NAND3X1 U272 ( .A(waddr[1]), .B(waddr[0]), .C(waddr[2]), .Y(n102) );
  INVX1 U273 ( .A(n110), .Y(n121) );
  NAND3X1 U274 ( .A(waddr[0]), .B(n200), .C(waddr[2]), .Y(n110) );
  INVX1 U275 ( .A(waddr[1]), .Y(n200) );
endmodule


module write_ptr_1 ( wclk, rst_n, wenable, wptr, wptr_nxt );
  output [3:0] wptr;
  output [3:0] wptr_nxt;
  input wclk, rst_n, wenable;
  wire   n9, n10, n11, n12;
  wire   [2:0] binary_nxt;
  wire   [3:0] binary_r;

  DFFSR \binary_r_reg[0]  ( .D(binary_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[0]) );
  DFFSR \binary_r_reg[1]  ( .D(binary_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[1]) );
  DFFSR \binary_r_reg[2]  ( .D(binary_nxt[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[2]) );
  DFFSR \binary_r_reg[3]  ( .D(wptr_nxt[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[3]) );
  DFFSR \gray_r_reg[3]  ( .D(wptr_nxt[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[3]) );
  DFFSR \gray_r_reg[2]  ( .D(wptr_nxt[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[2]) );
  DFFSR \gray_r_reg[1]  ( .D(wptr_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[1]) );
  DFFSR \gray_r_reg[0]  ( .D(wptr_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[0]) );
  XOR2X1 U11 ( .A(wptr_nxt[3]), .B(binary_nxt[2]), .Y(wptr_nxt[2]) );
  XNOR2X1 U12 ( .A(n9), .B(binary_r[3]), .Y(wptr_nxt[3]) );
  NAND2X1 U13 ( .A(binary_r[2]), .B(n10), .Y(n9) );
  XOR2X1 U14 ( .A(binary_nxt[2]), .B(binary_nxt[1]), .Y(wptr_nxt[1]) );
  XOR2X1 U15 ( .A(binary_nxt[1]), .B(binary_nxt[0]), .Y(wptr_nxt[0]) );
  XOR2X1 U16 ( .A(n10), .B(binary_r[2]), .Y(binary_nxt[2]) );
  INVX1 U17 ( .A(n11), .Y(n10) );
  NAND3X1 U18 ( .A(binary_r[1]), .B(binary_r[0]), .C(wenable), .Y(n11) );
  XNOR2X1 U19 ( .A(n12), .B(binary_r[1]), .Y(binary_nxt[1]) );
  NAND2X1 U20 ( .A(wenable), .B(binary_r[0]), .Y(n12) );
  XOR2X1 U21 ( .A(binary_r[0]), .B(wenable), .Y(binary_nxt[0]) );
endmodule


module write_fifo_ctrl_1 ( wclk, rst_n, wenable, rptr, wenable_fifo, wptr, 
        waddr, full_flag );
  input [3:0] rptr;
  output [3:0] wptr;
  output [2:0] waddr;
  input wclk, rst_n, wenable;
  output wenable_fifo, full_flag;
  wire   \gray_wptr[2] , N5, n1, n15, n16, n17, n18, n19, n20, n21, n22;
  wire   [3:0] wptr_nxt;
  wire   [3:0] wrptr_r2;
  wire   [3:0] wrptr_r1;

  DFFSR \wrptr_r1_reg[3]  ( .D(rptr[3]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[3]) );
  DFFSR \wrptr_r1_reg[2]  ( .D(rptr[2]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[2]) );
  DFFSR \wrptr_r1_reg[1]  ( .D(rptr[1]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[1]) );
  DFFSR \wrptr_r1_reg[0]  ( .D(rptr[0]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[0]) );
  DFFSR \wrptr_r2_reg[3]  ( .D(wrptr_r1[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[3]) );
  DFFSR \wrptr_r2_reg[2]  ( .D(wrptr_r1[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[2]) );
  DFFSR \wrptr_r2_reg[1]  ( .D(wrptr_r1[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[1]) );
  DFFSR \wrptr_r2_reg[0]  ( .D(wrptr_r1[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[0]) );
  DFFSR full_flag_r_reg ( .D(N5), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        full_flag) );
  DFFSR \waddr_reg[2]  ( .D(\gray_wptr[2] ), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(waddr[2]) );
  DFFSR \waddr_reg[1]  ( .D(wptr_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        waddr[1]) );
  DFFSR \waddr_reg[0]  ( .D(wptr_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        waddr[0]) );
  write_ptr_1 WPU1 ( .wclk(wclk), .rst_n(rst_n), .wenable(wenable_fifo), 
        .wptr(wptr), .wptr_nxt(wptr_nxt) );
  OR2X2 U15 ( .A(full_flag), .B(n15), .Y(n1) );
  INVX1 U16 ( .A(n1), .Y(wenable_fifo) );
  INVX1 U17 ( .A(wenable), .Y(n15) );
  NOR2X1 U18 ( .A(n16), .B(n17), .Y(N5) );
  NAND2X1 U19 ( .A(n18), .B(n19), .Y(n17) );
  XOR2X1 U20 ( .A(n20), .B(\gray_wptr[2] ), .Y(n19) );
  XOR2X1 U21 ( .A(wptr_nxt[3]), .B(wptr_nxt[2]), .Y(\gray_wptr[2] ) );
  XNOR2X1 U22 ( .A(wrptr_r2[3]), .B(wrptr_r2[2]), .Y(n20) );
  XNOR2X1 U23 ( .A(wrptr_r2[1]), .B(wptr_nxt[1]), .Y(n18) );
  NAND2X1 U24 ( .A(n21), .B(n22), .Y(n16) );
  XOR2X1 U25 ( .A(wrptr_r2[3]), .B(wptr_nxt[3]), .Y(n22) );
  XNOR2X1 U26 ( .A(wrptr_r2[0]), .B(wptr_nxt[0]), .Y(n21) );
endmodule


module read_ptr_1 ( rclk, rst_n, renable, rptr, rptr_nxt );
  output [3:0] rptr;
  output [3:0] rptr_nxt;
  input rclk, rst_n, renable;
  wire   n9, n10, n11, n12;
  wire   [2:0] binary_nxt;
  wire   [3:0] binary_r;

  DFFSR \binary_r_reg[0]  ( .D(binary_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[0]) );
  DFFSR \binary_r_reg[1]  ( .D(binary_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[1]) );
  DFFSR \binary_r_reg[2]  ( .D(binary_nxt[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[2]) );
  DFFSR \binary_r_reg[3]  ( .D(rptr_nxt[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[3]) );
  DFFSR \gray_r_reg[3]  ( .D(rptr_nxt[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[3]) );
  DFFSR \gray_r_reg[2]  ( .D(rptr_nxt[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[2]) );
  DFFSR \gray_r_reg[1]  ( .D(rptr_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[1]) );
  DFFSR \gray_r_reg[0]  ( .D(rptr_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[0]) );
  XOR2X1 U11 ( .A(rptr_nxt[3]), .B(binary_nxt[2]), .Y(rptr_nxt[2]) );
  XNOR2X1 U12 ( .A(n9), .B(binary_r[3]), .Y(rptr_nxt[3]) );
  NAND2X1 U13 ( .A(binary_r[2]), .B(n10), .Y(n9) );
  XOR2X1 U14 ( .A(binary_nxt[2]), .B(binary_nxt[1]), .Y(rptr_nxt[1]) );
  XOR2X1 U15 ( .A(binary_nxt[1]), .B(binary_nxt[0]), .Y(rptr_nxt[0]) );
  XOR2X1 U16 ( .A(n10), .B(binary_r[2]), .Y(binary_nxt[2]) );
  INVX1 U17 ( .A(n11), .Y(n10) );
  NAND3X1 U18 ( .A(binary_r[1]), .B(binary_r[0]), .C(renable), .Y(n11) );
  XNOR2X1 U19 ( .A(n12), .B(binary_r[1]), .Y(binary_nxt[1]) );
  NAND2X1 U20 ( .A(renable), .B(binary_r[0]), .Y(n12) );
  XOR2X1 U21 ( .A(binary_r[0]), .B(renable), .Y(binary_nxt[0]) );
endmodule


module read_fifo_ctrl_1 ( rclk, rst_n, renable, wptr, rptr, raddr, empty_flag
 );
  input [3:0] wptr;
  output [3:0] rptr;
  output [2:0] raddr;
  input rclk, rst_n, renable;
  output empty_flag;
  wire   renable_p2, \gray_rptr[2] , N3, n1, n2, n15, n16, n17, n18, n19, n20;
  wire   [3:0] rptr_nxt;
  wire   [3:0] rwptr_r2;
  wire   [3:0] rwptr_r1;

  DFFSR \rwptr_r1_reg[3]  ( .D(wptr[3]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[3]) );
  DFFSR \rwptr_r1_reg[2]  ( .D(wptr[2]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[2]) );
  DFFSR \rwptr_r1_reg[1]  ( .D(wptr[1]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[1]) );
  DFFSR \rwptr_r1_reg[0]  ( .D(wptr[0]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[0]) );
  DFFSR \rwptr_r2_reg[3]  ( .D(rwptr_r1[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[3]) );
  DFFSR \rwptr_r2_reg[2]  ( .D(rwptr_r1[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[2]) );
  DFFSR \rwptr_r2_reg[1]  ( .D(rwptr_r1[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[1]) );
  DFFSR \rwptr_r2_reg[0]  ( .D(rwptr_r1[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[0]) );
  DFFSR empty_flag_r_reg ( .D(N3), .CLK(rclk), .R(1'b1), .S(rst_n), .Q(
        empty_flag) );
  DFFSR \raddr_reg[2]  ( .D(\gray_rptr[2] ), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(raddr[2]) );
  DFFSR \raddr_reg[1]  ( .D(rptr_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        raddr[1]) );
  DFFSR \raddr_reg[0]  ( .D(rptr_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        raddr[0]) );
  read_ptr_1 RPU1 ( .rclk(rclk), .rst_n(rst_n), .renable(renable_p2), .rptr(
        rptr), .rptr_nxt(rptr_nxt) );
  NOR2X1 U15 ( .A(empty_flag), .B(n1), .Y(renable_p2) );
  INVX1 U16 ( .A(renable), .Y(n1) );
  NOR2X1 U17 ( .A(n2), .B(n15), .Y(N3) );
  NAND2X1 U18 ( .A(n16), .B(n17), .Y(n15) );
  XOR2X1 U19 ( .A(n18), .B(\gray_rptr[2] ), .Y(n17) );
  XOR2X1 U20 ( .A(rptr_nxt[3]), .B(rptr_nxt[2]), .Y(\gray_rptr[2] ) );
  XNOR2X1 U21 ( .A(rwptr_r2[3]), .B(rwptr_r2[2]), .Y(n18) );
  XNOR2X1 U22 ( .A(rwptr_r2[1]), .B(rptr_nxt[1]), .Y(n16) );
  NAND2X1 U23 ( .A(n19), .B(n20), .Y(n2) );
  XNOR2X1 U24 ( .A(rwptr_r2[0]), .B(rptr_nxt[0]), .Y(n20) );
  XNOR2X1 U25 ( .A(rptr_nxt[3]), .B(rwptr_r2[3]), .Y(n19) );
endmodule


module fifo_1 ( rclk, wclk, rst_n, renable, wenable, wdata, rdata, empty, full
 );
  input [7:0] wdata;
  output [7:0] rdata;
  input rclk, wclk, rst_n, renable, wenable;
  output empty, full;
  wire   wenable_fifo;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] rptr;
  wire   [3:0] wptr;

  fiforam_1 UFIFORAM ( .wclk(wclk), .wenable(wenable_fifo), .waddr(waddr), 
        .raddr(raddr), .wdata(wdata), .rdata(rdata) );
  write_fifo_ctrl_1 UWFC ( .wclk(wclk), .rst_n(rst_n), .wenable(wenable), 
        .rptr(rptr), .wenable_fifo(wenable_fifo), .wptr(wptr), .waddr(waddr), 
        .full_flag(full) );
  read_fifo_ctrl_1 URFC ( .rclk(rclk), .rst_n(rst_n), .renable(renable), 
        .wptr(wptr), .rptr(rptr), .raddr(raddr), .empty_flag(empty) );
endmodule


module RCV_FIFO_1 ( CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE, WDATA, R_DATA, 
        EMPTY, FULL );
  input [7:0] WDATA;
  output [7:0] R_DATA;
  input CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE;
  output EMPTY, FULL;


  fifo_1 MAPPING ( .rclk(CLK), .wclk(D_CLK), .rst_n(RST_N), .renable(R_ENABLE), 
        .wenable(W_ENABLE), .wdata(WDATA), .rdata(R_DATA), .empty(EMPTY), 
        .full(FULL) );
endmodule


module fiforam_0 ( wclk, wenable, waddr, raddr, wdata, rdata );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wenable;
  wire   \fiforeg[0][7] , \fiforeg[0][6] , \fiforeg[0][5] , \fiforeg[0][4] ,
         \fiforeg[0][3] , \fiforeg[0][2] , \fiforeg[0][1] , \fiforeg[0][0] ,
         \fiforeg[1][7] , \fiforeg[1][6] , \fiforeg[1][5] , \fiforeg[1][4] ,
         \fiforeg[1][3] , \fiforeg[1][2] , \fiforeg[1][1] , \fiforeg[1][0] ,
         \fiforeg[2][7] , \fiforeg[2][6] , \fiforeg[2][5] , \fiforeg[2][4] ,
         \fiforeg[2][3] , \fiforeg[2][2] , \fiforeg[2][1] , \fiforeg[2][0] ,
         \fiforeg[3][7] , \fiforeg[3][6] , \fiforeg[3][5] , \fiforeg[3][4] ,
         \fiforeg[3][3] , \fiforeg[3][2] , \fiforeg[3][1] , \fiforeg[3][0] ,
         \fiforeg[4][7] , \fiforeg[4][6] , \fiforeg[4][5] , \fiforeg[4][4] ,
         \fiforeg[4][3] , \fiforeg[4][2] , \fiforeg[4][1] , \fiforeg[4][0] ,
         \fiforeg[5][7] , \fiforeg[5][6] , \fiforeg[5][5] , \fiforeg[5][4] ,
         \fiforeg[5][3] , \fiforeg[5][2] , \fiforeg[5][1] , \fiforeg[5][0] ,
         \fiforeg[6][7] , \fiforeg[6][6] , \fiforeg[6][5] , \fiforeg[6][4] ,
         \fiforeg[6][3] , \fiforeg[6][2] , \fiforeg[6][1] , \fiforeg[6][0] ,
         \fiforeg[7][7] , \fiforeg[7][6] , \fiforeg[7][5] , \fiforeg[7][4] ,
         \fiforeg[7][3] , \fiforeg[7][2] , \fiforeg[7][1] , \fiforeg[7][0] ,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321;

  DFFPOSX1 \fiforeg_reg[7][7]  ( .D(n321), .CLK(n8), .Q(\fiforeg[7][7] ) );
  DFFPOSX1 \fiforeg_reg[6][7]  ( .D(n320), .CLK(n8), .Q(\fiforeg[6][7] ) );
  DFFPOSX1 \fiforeg_reg[5][7]  ( .D(n319), .CLK(n8), .Q(\fiforeg[5][7] ) );
  DFFPOSX1 \fiforeg_reg[4][7]  ( .D(n318), .CLK(n8), .Q(\fiforeg[4][7] ) );
  DFFPOSX1 \fiforeg_reg[3][7]  ( .D(n317), .CLK(n8), .Q(\fiforeg[3][7] ) );
  DFFPOSX1 \fiforeg_reg[2][7]  ( .D(n316), .CLK(n8), .Q(\fiforeg[2][7] ) );
  DFFPOSX1 \fiforeg_reg[1][7]  ( .D(n315), .CLK(n8), .Q(\fiforeg[1][7] ) );
  DFFPOSX1 \fiforeg_reg[0][7]  ( .D(n314), .CLK(n8), .Q(\fiforeg[0][7] ) );
  DFFPOSX1 \fiforeg_reg[7][6]  ( .D(n313), .CLK(n9), .Q(\fiforeg[7][6] ) );
  DFFPOSX1 \fiforeg_reg[6][6]  ( .D(n312), .CLK(n9), .Q(\fiforeg[6][6] ) );
  DFFPOSX1 \fiforeg_reg[5][6]  ( .D(n311), .CLK(n9), .Q(\fiforeg[5][6] ) );
  DFFPOSX1 \fiforeg_reg[4][6]  ( .D(n310), .CLK(n8), .Q(\fiforeg[4][6] ) );
  DFFPOSX1 \fiforeg_reg[3][6]  ( .D(n309), .CLK(n8), .Q(\fiforeg[3][6] ) );
  DFFPOSX1 \fiforeg_reg[2][6]  ( .D(n308), .CLK(n8), .Q(\fiforeg[2][6] ) );
  DFFPOSX1 \fiforeg_reg[1][6]  ( .D(n307), .CLK(n8), .Q(\fiforeg[1][6] ) );
  DFFPOSX1 \fiforeg_reg[0][6]  ( .D(n306), .CLK(n8), .Q(\fiforeg[0][6] ) );
  DFFPOSX1 \fiforeg_reg[7][5]  ( .D(n305), .CLK(n9), .Q(\fiforeg[7][5] ) );
  DFFPOSX1 \fiforeg_reg[6][5]  ( .D(n304), .CLK(n9), .Q(\fiforeg[6][5] ) );
  DFFPOSX1 \fiforeg_reg[5][5]  ( .D(n303), .CLK(n9), .Q(\fiforeg[5][5] ) );
  DFFPOSX1 \fiforeg_reg[4][5]  ( .D(n302), .CLK(n9), .Q(\fiforeg[4][5] ) );
  DFFPOSX1 \fiforeg_reg[3][5]  ( .D(n301), .CLK(n9), .Q(\fiforeg[3][5] ) );
  DFFPOSX1 \fiforeg_reg[2][5]  ( .D(n300), .CLK(n9), .Q(\fiforeg[2][5] ) );
  DFFPOSX1 \fiforeg_reg[1][5]  ( .D(n299), .CLK(n9), .Q(\fiforeg[1][5] ) );
  DFFPOSX1 \fiforeg_reg[0][5]  ( .D(n298), .CLK(n9), .Q(\fiforeg[0][5] ) );
  DFFPOSX1 \fiforeg_reg[7][4]  ( .D(n297), .CLK(n10), .Q(\fiforeg[7][4] ) );
  DFFPOSX1 \fiforeg_reg[6][4]  ( .D(n296), .CLK(n10), .Q(\fiforeg[6][4] ) );
  DFFPOSX1 \fiforeg_reg[5][4]  ( .D(n295), .CLK(n10), .Q(\fiforeg[5][4] ) );
  DFFPOSX1 \fiforeg_reg[4][4]  ( .D(n294), .CLK(n10), .Q(\fiforeg[4][4] ) );
  DFFPOSX1 \fiforeg_reg[3][4]  ( .D(n293), .CLK(n10), .Q(\fiforeg[3][4] ) );
  DFFPOSX1 \fiforeg_reg[2][4]  ( .D(n292), .CLK(n10), .Q(\fiforeg[2][4] ) );
  DFFPOSX1 \fiforeg_reg[1][4]  ( .D(n291), .CLK(n9), .Q(\fiforeg[1][4] ) );
  DFFPOSX1 \fiforeg_reg[0][4]  ( .D(n290), .CLK(n9), .Q(\fiforeg[0][4] ) );
  DFFPOSX1 \fiforeg_reg[7][3]  ( .D(n289), .CLK(n11), .Q(\fiforeg[7][3] ) );
  DFFPOSX1 \fiforeg_reg[6][3]  ( .D(n288), .CLK(n10), .Q(\fiforeg[6][3] ) );
  DFFPOSX1 \fiforeg_reg[5][3]  ( .D(n287), .CLK(n10), .Q(\fiforeg[5][3] ) );
  DFFPOSX1 \fiforeg_reg[4][3]  ( .D(n286), .CLK(n10), .Q(\fiforeg[4][3] ) );
  DFFPOSX1 \fiforeg_reg[3][3]  ( .D(n285), .CLK(n10), .Q(\fiforeg[3][3] ) );
  DFFPOSX1 \fiforeg_reg[2][3]  ( .D(n284), .CLK(n10), .Q(\fiforeg[2][3] ) );
  DFFPOSX1 \fiforeg_reg[1][3]  ( .D(n283), .CLK(n10), .Q(\fiforeg[1][3] ) );
  DFFPOSX1 \fiforeg_reg[0][3]  ( .D(n282), .CLK(n10), .Q(\fiforeg[0][3] ) );
  DFFPOSX1 \fiforeg_reg[7][2]  ( .D(n281), .CLK(n11), .Q(\fiforeg[7][2] ) );
  DFFPOSX1 \fiforeg_reg[6][2]  ( .D(n280), .CLK(n11), .Q(\fiforeg[6][2] ) );
  DFFPOSX1 \fiforeg_reg[5][2]  ( .D(n279), .CLK(n11), .Q(\fiforeg[5][2] ) );
  DFFPOSX1 \fiforeg_reg[4][2]  ( .D(n278), .CLK(n11), .Q(\fiforeg[4][2] ) );
  DFFPOSX1 \fiforeg_reg[3][2]  ( .D(n277), .CLK(n11), .Q(\fiforeg[3][2] ) );
  DFFPOSX1 \fiforeg_reg[2][2]  ( .D(n276), .CLK(n11), .Q(\fiforeg[2][2] ) );
  DFFPOSX1 \fiforeg_reg[1][2]  ( .D(n275), .CLK(n11), .Q(\fiforeg[1][2] ) );
  DFFPOSX1 \fiforeg_reg[0][2]  ( .D(n274), .CLK(n11), .Q(\fiforeg[0][2] ) );
  DFFPOSX1 \fiforeg_reg[7][1]  ( .D(n273), .CLK(n12), .Q(\fiforeg[7][1] ) );
  DFFPOSX1 \fiforeg_reg[6][1]  ( .D(n272), .CLK(n12), .Q(\fiforeg[6][1] ) );
  DFFPOSX1 \fiforeg_reg[5][1]  ( .D(n271), .CLK(n12), .Q(\fiforeg[5][1] ) );
  DFFPOSX1 \fiforeg_reg[4][1]  ( .D(n270), .CLK(n12), .Q(\fiforeg[4][1] ) );
  DFFPOSX1 \fiforeg_reg[3][1]  ( .D(n269), .CLK(n11), .Q(\fiforeg[3][1] ) );
  DFFPOSX1 \fiforeg_reg[2][1]  ( .D(n268), .CLK(n11), .Q(\fiforeg[2][1] ) );
  DFFPOSX1 \fiforeg_reg[1][1]  ( .D(n267), .CLK(n11), .Q(\fiforeg[1][1] ) );
  DFFPOSX1 \fiforeg_reg[0][1]  ( .D(n211), .CLK(n11), .Q(\fiforeg[0][1] ) );
  DFFPOSX1 \fiforeg_reg[7][0]  ( .D(n203), .CLK(n12), .Q(\fiforeg[7][0] ) );
  DFFPOSX1 \fiforeg_reg[6][0]  ( .D(n210), .CLK(n12), .Q(\fiforeg[6][0] ) );
  DFFPOSX1 \fiforeg_reg[5][0]  ( .D(n209), .CLK(n12), .Q(\fiforeg[5][0] ) );
  DFFPOSX1 \fiforeg_reg[4][0]  ( .D(n208), .CLK(n12), .Q(\fiforeg[4][0] ) );
  DFFPOSX1 \fiforeg_reg[3][0]  ( .D(n207), .CLK(n12), .Q(\fiforeg[3][0] ) );
  DFFPOSX1 \fiforeg_reg[2][0]  ( .D(n206), .CLK(n12), .Q(\fiforeg[2][0] ) );
  DFFPOSX1 \fiforeg_reg[1][0]  ( .D(n205), .CLK(n12), .Q(\fiforeg[1][0] ) );
  DFFPOSX1 \fiforeg_reg[0][0]  ( .D(n204), .CLK(n12), .Q(\fiforeg[0][0] ) );
  INVX1 U2 ( .A(n104), .Y(n1) );
  INVX2 U3 ( .A(n1), .Y(n2) );
  INVX1 U4 ( .A(n106), .Y(n3) );
  INVX2 U5 ( .A(n3), .Y(n4) );
  INVX1 U6 ( .A(n105), .Y(n5) );
  INVX2 U7 ( .A(n5), .Y(n6) );
  BUFX2 U8 ( .A(n103), .Y(n7) );
  BUFX2 U9 ( .A(wclk), .Y(n11) );
  BUFX2 U10 ( .A(wclk), .Y(n10) );
  BUFX2 U11 ( .A(wclk), .Y(n9) );
  BUFX2 U12 ( .A(wclk), .Y(n8) );
  BUFX2 U13 ( .A(wclk), .Y(n12) );
  NAND3X1 U14 ( .A(n13), .B(n14), .C(n15), .Y(rdata[7]) );
  NOR2X1 U15 ( .A(n16), .B(n17), .Y(n15) );
  OAI22X1 U16 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n17) );
  OAI22X1 U17 ( .A(n22), .B(n23), .C(n24), .D(n25), .Y(n16) );
  AOI22X1 U18 ( .A(\fiforeg[5][7] ), .B(n26), .C(\fiforeg[4][7] ), .D(n27), 
        .Y(n14) );
  AOI22X1 U19 ( .A(\fiforeg[7][7] ), .B(n28), .C(\fiforeg[6][7] ), .D(n29), 
        .Y(n13) );
  NAND3X1 U20 ( .A(n30), .B(n31), .C(n32), .Y(rdata[6]) );
  NOR2X1 U21 ( .A(n33), .B(n34), .Y(n32) );
  OAI22X1 U22 ( .A(n18), .B(n35), .C(n20), .D(n36), .Y(n34) );
  OAI22X1 U23 ( .A(n22), .B(n37), .C(n24), .D(n38), .Y(n33) );
  AOI22X1 U24 ( .A(\fiforeg[5][6] ), .B(n26), .C(\fiforeg[4][6] ), .D(n27), 
        .Y(n31) );
  AOI22X1 U25 ( .A(\fiforeg[7][6] ), .B(n28), .C(\fiforeg[6][6] ), .D(n29), 
        .Y(n30) );
  NAND3X1 U26 ( .A(n39), .B(n40), .C(n41), .Y(rdata[5]) );
  NOR2X1 U27 ( .A(n42), .B(n43), .Y(n41) );
  OAI22X1 U28 ( .A(n18), .B(n44), .C(n20), .D(n45), .Y(n43) );
  OAI22X1 U29 ( .A(n22), .B(n46), .C(n24), .D(n47), .Y(n42) );
  AOI22X1 U30 ( .A(\fiforeg[5][5] ), .B(n26), .C(\fiforeg[4][5] ), .D(n27), 
        .Y(n40) );
  AOI22X1 U31 ( .A(\fiforeg[7][5] ), .B(n28), .C(\fiforeg[6][5] ), .D(n29), 
        .Y(n39) );
  NAND3X1 U32 ( .A(n48), .B(n49), .C(n50), .Y(rdata[4]) );
  NOR2X1 U33 ( .A(n51), .B(n52), .Y(n50) );
  OAI22X1 U34 ( .A(n18), .B(n53), .C(n20), .D(n54), .Y(n52) );
  OAI22X1 U35 ( .A(n22), .B(n55), .C(n24), .D(n56), .Y(n51) );
  AOI22X1 U36 ( .A(\fiforeg[5][4] ), .B(n26), .C(\fiforeg[4][4] ), .D(n27), 
        .Y(n49) );
  AOI22X1 U37 ( .A(\fiforeg[7][4] ), .B(n28), .C(\fiforeg[6][4] ), .D(n29), 
        .Y(n48) );
  NAND3X1 U38 ( .A(n57), .B(n58), .C(n59), .Y(rdata[3]) );
  NOR2X1 U39 ( .A(n60), .B(n61), .Y(n59) );
  OAI22X1 U40 ( .A(n18), .B(n62), .C(n20), .D(n63), .Y(n61) );
  OAI22X1 U41 ( .A(n22), .B(n64), .C(n24), .D(n65), .Y(n60) );
  AOI22X1 U42 ( .A(\fiforeg[5][3] ), .B(n26), .C(\fiforeg[4][3] ), .D(n27), 
        .Y(n58) );
  AOI22X1 U43 ( .A(\fiforeg[7][3] ), .B(n28), .C(\fiforeg[6][3] ), .D(n29), 
        .Y(n57) );
  NAND3X1 U44 ( .A(n66), .B(n67), .C(n68), .Y(rdata[2]) );
  NOR2X1 U45 ( .A(n69), .B(n70), .Y(n68) );
  OAI22X1 U46 ( .A(n18), .B(n71), .C(n20), .D(n72), .Y(n70) );
  OAI22X1 U47 ( .A(n22), .B(n73), .C(n24), .D(n74), .Y(n69) );
  AOI22X1 U48 ( .A(\fiforeg[5][2] ), .B(n26), .C(\fiforeg[4][2] ), .D(n27), 
        .Y(n67) );
  AOI22X1 U49 ( .A(\fiforeg[7][2] ), .B(n28), .C(\fiforeg[6][2] ), .D(n29), 
        .Y(n66) );
  NAND3X1 U50 ( .A(n75), .B(n76), .C(n77), .Y(rdata[1]) );
  NOR2X1 U51 ( .A(n78), .B(n79), .Y(n77) );
  OAI22X1 U52 ( .A(n18), .B(n80), .C(n20), .D(n81), .Y(n79) );
  OAI22X1 U53 ( .A(n22), .B(n82), .C(n24), .D(n83), .Y(n78) );
  AOI22X1 U54 ( .A(\fiforeg[5][1] ), .B(n26), .C(\fiforeg[4][1] ), .D(n27), 
        .Y(n76) );
  AOI22X1 U55 ( .A(\fiforeg[7][1] ), .B(n28), .C(\fiforeg[6][1] ), .D(n29), 
        .Y(n75) );
  NAND3X1 U56 ( .A(n84), .B(n85), .C(n86), .Y(rdata[0]) );
  NOR2X1 U57 ( .A(n87), .B(n88), .Y(n86) );
  OAI22X1 U58 ( .A(n18), .B(n89), .C(n20), .D(n90), .Y(n88) );
  NAND3X1 U59 ( .A(n91), .B(n92), .C(n93), .Y(n20) );
  NAND3X1 U60 ( .A(n91), .B(n92), .C(raddr[0]), .Y(n18) );
  OAI22X1 U61 ( .A(n22), .B(n94), .C(n24), .D(n95), .Y(n87) );
  NAND3X1 U62 ( .A(n93), .B(n92), .C(raddr[1]), .Y(n24) );
  NAND3X1 U63 ( .A(raddr[0]), .B(n92), .C(raddr[1]), .Y(n22) );
  INVX1 U64 ( .A(raddr[2]), .Y(n92) );
  AOI22X1 U65 ( .A(\fiforeg[5][0] ), .B(n26), .C(\fiforeg[4][0] ), .D(n27), 
        .Y(n85) );
  INVX1 U66 ( .A(n96), .Y(n27) );
  NAND3X1 U67 ( .A(n93), .B(n91), .C(raddr[2]), .Y(n96) );
  INVX1 U68 ( .A(n97), .Y(n26) );
  NAND3X1 U69 ( .A(raddr[0]), .B(n91), .C(raddr[2]), .Y(n97) );
  INVX1 U70 ( .A(raddr[1]), .Y(n91) );
  AOI22X1 U71 ( .A(\fiforeg[7][0] ), .B(n28), .C(\fiforeg[6][0] ), .D(n29), 
        .Y(n84) );
  INVX1 U72 ( .A(n98), .Y(n29) );
  NAND3X1 U73 ( .A(raddr[2]), .B(n93), .C(raddr[1]), .Y(n98) );
  INVX1 U74 ( .A(raddr[0]), .Y(n93) );
  INVX1 U75 ( .A(n99), .Y(n28) );
  NAND3X1 U76 ( .A(raddr[2]), .B(raddr[0]), .C(raddr[1]), .Y(n99) );
  MUX2X1 U77 ( .B(n100), .A(n101), .S(n102), .Y(n203) );
  INVX1 U78 ( .A(\fiforeg[7][0] ), .Y(n101) );
  MUX2X1 U79 ( .B(n100), .A(n90), .S(n7), .Y(n204) );
  MUX2X1 U80 ( .B(n100), .A(n89), .S(n2), .Y(n205) );
  MUX2X1 U81 ( .B(n100), .A(n95), .S(n6), .Y(n206) );
  MUX2X1 U82 ( .B(n100), .A(n94), .S(n4), .Y(n207) );
  MUX2X1 U83 ( .B(n100), .A(n107), .S(n108), .Y(n208) );
  INVX1 U84 ( .A(\fiforeg[4][0] ), .Y(n107) );
  MUX2X1 U85 ( .B(n100), .A(n109), .S(n110), .Y(n209) );
  INVX1 U86 ( .A(\fiforeg[5][0] ), .Y(n109) );
  MUX2X1 U87 ( .B(n100), .A(n111), .S(n112), .Y(n210) );
  INVX1 U88 ( .A(\fiforeg[6][0] ), .Y(n111) );
  MUX2X1 U89 ( .B(n113), .A(wdata[0]), .S(wenable), .Y(n100) );
  NAND3X1 U90 ( .A(n114), .B(n115), .C(n116), .Y(n113) );
  NOR2X1 U91 ( .A(n117), .B(n118), .Y(n116) );
  OAI22X1 U92 ( .A(n89), .B(n2), .C(n90), .D(n7), .Y(n118) );
  INVX1 U93 ( .A(\fiforeg[0][0] ), .Y(n90) );
  INVX1 U94 ( .A(\fiforeg[1][0] ), .Y(n89) );
  OAI22X1 U95 ( .A(n94), .B(n4), .C(n95), .D(n6), .Y(n117) );
  INVX1 U96 ( .A(\fiforeg[2][0] ), .Y(n95) );
  INVX1 U97 ( .A(\fiforeg[3][0] ), .Y(n94) );
  AOI22X1 U98 ( .A(n119), .B(\fiforeg[6][0] ), .C(n120), .D(\fiforeg[4][0] ), 
        .Y(n115) );
  AOI22X1 U99 ( .A(n121), .B(\fiforeg[5][0] ), .C(n122), .D(\fiforeg[7][0] ), 
        .Y(n114) );
  MUX2X1 U100 ( .B(n123), .A(n81), .S(n7), .Y(n211) );
  MUX2X1 U101 ( .B(n123), .A(n80), .S(n2), .Y(n267) );
  MUX2X1 U102 ( .B(n123), .A(n83), .S(n6), .Y(n268) );
  MUX2X1 U103 ( .B(n123), .A(n82), .S(n4), .Y(n269) );
  MUX2X1 U104 ( .B(n123), .A(n124), .S(n108), .Y(n270) );
  INVX1 U105 ( .A(\fiforeg[4][1] ), .Y(n124) );
  MUX2X1 U106 ( .B(n123), .A(n125), .S(n110), .Y(n271) );
  INVX1 U107 ( .A(\fiforeg[5][1] ), .Y(n125) );
  MUX2X1 U108 ( .B(n123), .A(n126), .S(n112), .Y(n272) );
  INVX1 U109 ( .A(\fiforeg[6][1] ), .Y(n126) );
  MUX2X1 U110 ( .B(n123), .A(n127), .S(n102), .Y(n273) );
  INVX1 U111 ( .A(\fiforeg[7][1] ), .Y(n127) );
  MUX2X1 U112 ( .B(n128), .A(wdata[1]), .S(wenable), .Y(n123) );
  NAND3X1 U113 ( .A(n129), .B(n130), .C(n131), .Y(n128) );
  NOR2X1 U114 ( .A(n132), .B(n133), .Y(n131) );
  OAI22X1 U115 ( .A(n80), .B(n2), .C(n81), .D(n7), .Y(n133) );
  INVX1 U116 ( .A(\fiforeg[0][1] ), .Y(n81) );
  INVX1 U117 ( .A(\fiforeg[1][1] ), .Y(n80) );
  OAI22X1 U118 ( .A(n82), .B(n4), .C(n83), .D(n6), .Y(n132) );
  INVX1 U119 ( .A(\fiforeg[2][1] ), .Y(n83) );
  INVX1 U120 ( .A(\fiforeg[3][1] ), .Y(n82) );
  AOI22X1 U121 ( .A(n119), .B(\fiforeg[6][1] ), .C(n120), .D(\fiforeg[4][1] ), 
        .Y(n130) );
  AOI22X1 U122 ( .A(n121), .B(\fiforeg[5][1] ), .C(n122), .D(\fiforeg[7][1] ), 
        .Y(n129) );
  MUX2X1 U123 ( .B(n134), .A(n72), .S(n7), .Y(n274) );
  MUX2X1 U124 ( .B(n134), .A(n71), .S(n2), .Y(n275) );
  MUX2X1 U125 ( .B(n134), .A(n74), .S(n6), .Y(n276) );
  MUX2X1 U126 ( .B(n134), .A(n73), .S(n4), .Y(n277) );
  MUX2X1 U127 ( .B(n134), .A(n135), .S(n108), .Y(n278) );
  INVX1 U128 ( .A(\fiforeg[4][2] ), .Y(n135) );
  MUX2X1 U129 ( .B(n134), .A(n136), .S(n110), .Y(n279) );
  INVX1 U130 ( .A(\fiforeg[5][2] ), .Y(n136) );
  MUX2X1 U131 ( .B(n134), .A(n137), .S(n112), .Y(n280) );
  INVX1 U132 ( .A(\fiforeg[6][2] ), .Y(n137) );
  MUX2X1 U133 ( .B(n134), .A(n138), .S(n102), .Y(n281) );
  INVX1 U134 ( .A(\fiforeg[7][2] ), .Y(n138) );
  MUX2X1 U135 ( .B(n139), .A(wdata[2]), .S(wenable), .Y(n134) );
  NAND3X1 U136 ( .A(n140), .B(n141), .C(n142), .Y(n139) );
  NOR2X1 U137 ( .A(n143), .B(n144), .Y(n142) );
  OAI22X1 U138 ( .A(n71), .B(n2), .C(n72), .D(n7), .Y(n144) );
  INVX1 U139 ( .A(\fiforeg[0][2] ), .Y(n72) );
  INVX1 U140 ( .A(\fiforeg[1][2] ), .Y(n71) );
  OAI22X1 U141 ( .A(n73), .B(n4), .C(n74), .D(n6), .Y(n143) );
  INVX1 U142 ( .A(\fiforeg[2][2] ), .Y(n74) );
  INVX1 U143 ( .A(\fiforeg[3][2] ), .Y(n73) );
  AOI22X1 U144 ( .A(n119), .B(\fiforeg[6][2] ), .C(n120), .D(\fiforeg[4][2] ), 
        .Y(n141) );
  AOI22X1 U145 ( .A(n121), .B(\fiforeg[5][2] ), .C(n122), .D(\fiforeg[7][2] ), 
        .Y(n140) );
  MUX2X1 U146 ( .B(n145), .A(n63), .S(n7), .Y(n282) );
  MUX2X1 U147 ( .B(n145), .A(n62), .S(n2), .Y(n283) );
  MUX2X1 U148 ( .B(n145), .A(n65), .S(n6), .Y(n284) );
  MUX2X1 U149 ( .B(n145), .A(n64), .S(n4), .Y(n285) );
  MUX2X1 U150 ( .B(n145), .A(n146), .S(n108), .Y(n286) );
  INVX1 U151 ( .A(\fiforeg[4][3] ), .Y(n146) );
  MUX2X1 U152 ( .B(n145), .A(n147), .S(n110), .Y(n287) );
  INVX1 U153 ( .A(\fiforeg[5][3] ), .Y(n147) );
  MUX2X1 U154 ( .B(n145), .A(n148), .S(n112), .Y(n288) );
  INVX1 U155 ( .A(\fiforeg[6][3] ), .Y(n148) );
  MUX2X1 U156 ( .B(n145), .A(n149), .S(n102), .Y(n289) );
  INVX1 U157 ( .A(\fiforeg[7][3] ), .Y(n149) );
  MUX2X1 U158 ( .B(n150), .A(wdata[3]), .S(wenable), .Y(n145) );
  NAND3X1 U159 ( .A(n151), .B(n152), .C(n153), .Y(n150) );
  NOR2X1 U160 ( .A(n154), .B(n155), .Y(n153) );
  OAI22X1 U161 ( .A(n62), .B(n2), .C(n63), .D(n7), .Y(n155) );
  INVX1 U162 ( .A(\fiforeg[0][3] ), .Y(n63) );
  INVX1 U163 ( .A(\fiforeg[1][3] ), .Y(n62) );
  OAI22X1 U164 ( .A(n64), .B(n4), .C(n65), .D(n6), .Y(n154) );
  INVX1 U165 ( .A(\fiforeg[2][3] ), .Y(n65) );
  INVX1 U166 ( .A(\fiforeg[3][3] ), .Y(n64) );
  AOI22X1 U167 ( .A(n119), .B(\fiforeg[6][3] ), .C(n120), .D(\fiforeg[4][3] ), 
        .Y(n152) );
  AOI22X1 U168 ( .A(n121), .B(\fiforeg[5][3] ), .C(n122), .D(\fiforeg[7][3] ), 
        .Y(n151) );
  MUX2X1 U169 ( .B(n156), .A(n54), .S(n7), .Y(n290) );
  MUX2X1 U170 ( .B(n156), .A(n53), .S(n2), .Y(n291) );
  MUX2X1 U171 ( .B(n156), .A(n56), .S(n6), .Y(n292) );
  MUX2X1 U172 ( .B(n156), .A(n55), .S(n4), .Y(n293) );
  MUX2X1 U173 ( .B(n156), .A(n157), .S(n108), .Y(n294) );
  INVX1 U174 ( .A(\fiforeg[4][4] ), .Y(n157) );
  MUX2X1 U175 ( .B(n156), .A(n158), .S(n110), .Y(n295) );
  INVX1 U176 ( .A(\fiforeg[5][4] ), .Y(n158) );
  MUX2X1 U177 ( .B(n156), .A(n159), .S(n112), .Y(n296) );
  INVX1 U178 ( .A(\fiforeg[6][4] ), .Y(n159) );
  MUX2X1 U179 ( .B(n156), .A(n160), .S(n102), .Y(n297) );
  INVX1 U180 ( .A(\fiforeg[7][4] ), .Y(n160) );
  MUX2X1 U181 ( .B(n161), .A(wdata[4]), .S(wenable), .Y(n156) );
  NAND3X1 U182 ( .A(n162), .B(n163), .C(n164), .Y(n161) );
  NOR2X1 U183 ( .A(n165), .B(n166), .Y(n164) );
  OAI22X1 U184 ( .A(n53), .B(n2), .C(n54), .D(n7), .Y(n166) );
  INVX1 U185 ( .A(\fiforeg[0][4] ), .Y(n54) );
  INVX1 U186 ( .A(\fiforeg[1][4] ), .Y(n53) );
  OAI22X1 U187 ( .A(n55), .B(n4), .C(n56), .D(n6), .Y(n165) );
  INVX1 U188 ( .A(\fiforeg[2][4] ), .Y(n56) );
  INVX1 U189 ( .A(\fiforeg[3][4] ), .Y(n55) );
  AOI22X1 U190 ( .A(n119), .B(\fiforeg[6][4] ), .C(n120), .D(\fiforeg[4][4] ), 
        .Y(n163) );
  AOI22X1 U191 ( .A(n121), .B(\fiforeg[5][4] ), .C(n122), .D(\fiforeg[7][4] ), 
        .Y(n162) );
  MUX2X1 U192 ( .B(n167), .A(n45), .S(n7), .Y(n298) );
  MUX2X1 U193 ( .B(n167), .A(n44), .S(n2), .Y(n299) );
  MUX2X1 U194 ( .B(n167), .A(n47), .S(n6), .Y(n300) );
  MUX2X1 U195 ( .B(n167), .A(n46), .S(n4), .Y(n301) );
  MUX2X1 U196 ( .B(n167), .A(n168), .S(n108), .Y(n302) );
  INVX1 U197 ( .A(\fiforeg[4][5] ), .Y(n168) );
  MUX2X1 U198 ( .B(n167), .A(n169), .S(n110), .Y(n303) );
  INVX1 U199 ( .A(\fiforeg[5][5] ), .Y(n169) );
  MUX2X1 U200 ( .B(n167), .A(n170), .S(n112), .Y(n304) );
  INVX1 U201 ( .A(\fiforeg[6][5] ), .Y(n170) );
  MUX2X1 U202 ( .B(n167), .A(n171), .S(n102), .Y(n305) );
  INVX1 U203 ( .A(\fiforeg[7][5] ), .Y(n171) );
  MUX2X1 U204 ( .B(n172), .A(wdata[5]), .S(wenable), .Y(n167) );
  NAND3X1 U205 ( .A(n173), .B(n174), .C(n175), .Y(n172) );
  NOR2X1 U206 ( .A(n176), .B(n177), .Y(n175) );
  OAI22X1 U207 ( .A(n44), .B(n2), .C(n45), .D(n7), .Y(n177) );
  INVX1 U208 ( .A(\fiforeg[0][5] ), .Y(n45) );
  INVX1 U209 ( .A(\fiforeg[1][5] ), .Y(n44) );
  OAI22X1 U210 ( .A(n46), .B(n4), .C(n47), .D(n6), .Y(n176) );
  INVX1 U211 ( .A(\fiforeg[2][5] ), .Y(n47) );
  INVX1 U212 ( .A(\fiforeg[3][5] ), .Y(n46) );
  AOI22X1 U213 ( .A(n119), .B(\fiforeg[6][5] ), .C(n120), .D(\fiforeg[4][5] ), 
        .Y(n174) );
  AOI22X1 U214 ( .A(n121), .B(\fiforeg[5][5] ), .C(n122), .D(\fiforeg[7][5] ), 
        .Y(n173) );
  MUX2X1 U215 ( .B(n178), .A(n36), .S(n7), .Y(n306) );
  MUX2X1 U216 ( .B(n178), .A(n35), .S(n2), .Y(n307) );
  MUX2X1 U217 ( .B(n178), .A(n38), .S(n6), .Y(n308) );
  MUX2X1 U218 ( .B(n178), .A(n37), .S(n4), .Y(n309) );
  MUX2X1 U219 ( .B(n178), .A(n179), .S(n108), .Y(n310) );
  INVX1 U220 ( .A(\fiforeg[4][6] ), .Y(n179) );
  MUX2X1 U221 ( .B(n178), .A(n180), .S(n110), .Y(n311) );
  INVX1 U222 ( .A(\fiforeg[5][6] ), .Y(n180) );
  MUX2X1 U223 ( .B(n178), .A(n181), .S(n112), .Y(n312) );
  INVX1 U224 ( .A(\fiforeg[6][6] ), .Y(n181) );
  MUX2X1 U225 ( .B(n178), .A(n182), .S(n102), .Y(n313) );
  INVX1 U226 ( .A(\fiforeg[7][6] ), .Y(n182) );
  MUX2X1 U227 ( .B(n183), .A(wdata[6]), .S(wenable), .Y(n178) );
  NAND3X1 U228 ( .A(n184), .B(n185), .C(n186), .Y(n183) );
  NOR2X1 U229 ( .A(n187), .B(n188), .Y(n186) );
  OAI22X1 U230 ( .A(n35), .B(n2), .C(n36), .D(n7), .Y(n188) );
  INVX1 U231 ( .A(\fiforeg[0][6] ), .Y(n36) );
  INVX1 U232 ( .A(\fiforeg[1][6] ), .Y(n35) );
  OAI22X1 U233 ( .A(n37), .B(n4), .C(n38), .D(n6), .Y(n187) );
  INVX1 U234 ( .A(\fiforeg[2][6] ), .Y(n38) );
  INVX1 U235 ( .A(\fiforeg[3][6] ), .Y(n37) );
  AOI22X1 U236 ( .A(n119), .B(\fiforeg[6][6] ), .C(n120), .D(\fiforeg[4][6] ), 
        .Y(n185) );
  AOI22X1 U237 ( .A(n121), .B(\fiforeg[5][6] ), .C(n122), .D(\fiforeg[7][6] ), 
        .Y(n184) );
  MUX2X1 U238 ( .B(n189), .A(n21), .S(n7), .Y(n314) );
  MUX2X1 U239 ( .B(n189), .A(n19), .S(n2), .Y(n315) );
  MUX2X1 U240 ( .B(n189), .A(n25), .S(n6), .Y(n316) );
  MUX2X1 U241 ( .B(n189), .A(n23), .S(n4), .Y(n317) );
  MUX2X1 U242 ( .B(n189), .A(n190), .S(n108), .Y(n318) );
  INVX1 U243 ( .A(\fiforeg[4][7] ), .Y(n190) );
  MUX2X1 U244 ( .B(n189), .A(n191), .S(n110), .Y(n319) );
  INVX1 U245 ( .A(\fiforeg[5][7] ), .Y(n191) );
  MUX2X1 U246 ( .B(n189), .A(n192), .S(n112), .Y(n320) );
  INVX1 U247 ( .A(\fiforeg[6][7] ), .Y(n192) );
  MUX2X1 U248 ( .B(n189), .A(n193), .S(n102), .Y(n321) );
  INVX1 U249 ( .A(\fiforeg[7][7] ), .Y(n193) );
  MUX2X1 U250 ( .B(n194), .A(wdata[7]), .S(wenable), .Y(n189) );
  NAND3X1 U251 ( .A(n195), .B(n196), .C(n197), .Y(n194) );
  NOR2X1 U252 ( .A(n198), .B(n199), .Y(n197) );
  OAI22X1 U253 ( .A(n19), .B(n2), .C(n21), .D(n7), .Y(n199) );
  NAND3X1 U254 ( .A(n200), .B(n201), .C(n202), .Y(n103) );
  INVX1 U255 ( .A(\fiforeg[0][7] ), .Y(n21) );
  NAND3X1 U256 ( .A(n200), .B(n201), .C(waddr[0]), .Y(n104) );
  INVX1 U257 ( .A(\fiforeg[1][7] ), .Y(n19) );
  OAI22X1 U258 ( .A(n23), .B(n4), .C(n25), .D(n6), .Y(n198) );
  NAND3X1 U259 ( .A(n202), .B(n201), .C(waddr[1]), .Y(n105) );
  INVX1 U260 ( .A(\fiforeg[2][7] ), .Y(n25) );
  NAND3X1 U261 ( .A(waddr[0]), .B(n201), .C(waddr[1]), .Y(n106) );
  INVX1 U262 ( .A(waddr[2]), .Y(n201) );
  INVX1 U263 ( .A(\fiforeg[3][7] ), .Y(n23) );
  AOI22X1 U264 ( .A(n119), .B(\fiforeg[6][7] ), .C(n120), .D(\fiforeg[4][7] ), 
        .Y(n196) );
  INVX1 U265 ( .A(n108), .Y(n120) );
  NAND3X1 U266 ( .A(n202), .B(n200), .C(waddr[2]), .Y(n108) );
  INVX1 U267 ( .A(n112), .Y(n119) );
  NAND3X1 U268 ( .A(waddr[1]), .B(n202), .C(waddr[2]), .Y(n112) );
  INVX1 U269 ( .A(waddr[0]), .Y(n202) );
  AOI22X1 U270 ( .A(n121), .B(\fiforeg[5][7] ), .C(n122), .D(\fiforeg[7][7] ), 
        .Y(n195) );
  INVX1 U271 ( .A(n102), .Y(n122) );
  NAND3X1 U272 ( .A(waddr[1]), .B(waddr[0]), .C(waddr[2]), .Y(n102) );
  INVX1 U273 ( .A(n110), .Y(n121) );
  NAND3X1 U274 ( .A(waddr[0]), .B(n200), .C(waddr[2]), .Y(n110) );
  INVX1 U275 ( .A(waddr[1]), .Y(n200) );
endmodule


module write_ptr_0 ( wclk, rst_n, wenable, wptr, wptr_nxt );
  output [3:0] wptr;
  output [3:0] wptr_nxt;
  input wclk, rst_n, wenable;
  wire   n9, n10, n11, n12;
  wire   [2:0] binary_nxt;
  wire   [3:0] binary_r;

  DFFSR \binary_r_reg[0]  ( .D(binary_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[0]) );
  DFFSR \binary_r_reg[1]  ( .D(binary_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[1]) );
  DFFSR \binary_r_reg[2]  ( .D(binary_nxt[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[2]) );
  DFFSR \binary_r_reg[3]  ( .D(wptr_nxt[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[3]) );
  DFFSR \gray_r_reg[3]  ( .D(wptr_nxt[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[3]) );
  DFFSR \gray_r_reg[2]  ( .D(wptr_nxt[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[2]) );
  DFFSR \gray_r_reg[1]  ( .D(wptr_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[1]) );
  DFFSR \gray_r_reg[0]  ( .D(wptr_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[0]) );
  XOR2X1 U11 ( .A(wptr_nxt[3]), .B(binary_nxt[2]), .Y(wptr_nxt[2]) );
  XNOR2X1 U12 ( .A(n9), .B(binary_r[3]), .Y(wptr_nxt[3]) );
  NAND2X1 U13 ( .A(binary_r[2]), .B(n10), .Y(n9) );
  XOR2X1 U14 ( .A(binary_nxt[2]), .B(binary_nxt[1]), .Y(wptr_nxt[1]) );
  XOR2X1 U15 ( .A(binary_nxt[1]), .B(binary_nxt[0]), .Y(wptr_nxt[0]) );
  XOR2X1 U16 ( .A(n10), .B(binary_r[2]), .Y(binary_nxt[2]) );
  INVX1 U17 ( .A(n11), .Y(n10) );
  NAND3X1 U18 ( .A(binary_r[1]), .B(binary_r[0]), .C(wenable), .Y(n11) );
  XNOR2X1 U19 ( .A(n12), .B(binary_r[1]), .Y(binary_nxt[1]) );
  NAND2X1 U20 ( .A(wenable), .B(binary_r[0]), .Y(n12) );
  XOR2X1 U21 ( .A(binary_r[0]), .B(wenable), .Y(binary_nxt[0]) );
endmodule


module write_fifo_ctrl_0 ( wclk, rst_n, wenable, rptr, wenable_fifo, wptr, 
        waddr, full_flag );
  input [3:0] rptr;
  output [3:0] wptr;
  output [2:0] waddr;
  input wclk, rst_n, wenable;
  output wenable_fifo, full_flag;
  wire   \gray_wptr[2] , N5, n1, n15, n16, n17, n18, n19, n20, n21, n22;
  wire   [3:0] wptr_nxt;
  wire   [3:0] wrptr_r2;
  wire   [3:0] wrptr_r1;

  DFFSR \wrptr_r1_reg[3]  ( .D(rptr[3]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[3]) );
  DFFSR \wrptr_r1_reg[2]  ( .D(rptr[2]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[2]) );
  DFFSR \wrptr_r1_reg[1]  ( .D(rptr[1]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[1]) );
  DFFSR \wrptr_r1_reg[0]  ( .D(rptr[0]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[0]) );
  DFFSR \wrptr_r2_reg[3]  ( .D(wrptr_r1[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[3]) );
  DFFSR \wrptr_r2_reg[2]  ( .D(wrptr_r1[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[2]) );
  DFFSR \wrptr_r2_reg[1]  ( .D(wrptr_r1[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[1]) );
  DFFSR \wrptr_r2_reg[0]  ( .D(wrptr_r1[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[0]) );
  DFFSR full_flag_r_reg ( .D(N5), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        full_flag) );
  DFFSR \waddr_reg[2]  ( .D(\gray_wptr[2] ), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(waddr[2]) );
  DFFSR \waddr_reg[1]  ( .D(wptr_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        waddr[1]) );
  DFFSR \waddr_reg[0]  ( .D(wptr_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        waddr[0]) );
  write_ptr_0 WPU1 ( .wclk(wclk), .rst_n(rst_n), .wenable(wenable_fifo), 
        .wptr(wptr), .wptr_nxt(wptr_nxt) );
  OR2X2 U15 ( .A(full_flag), .B(n15), .Y(n1) );
  INVX1 U16 ( .A(n1), .Y(wenable_fifo) );
  INVX1 U17 ( .A(wenable), .Y(n15) );
  NOR2X1 U18 ( .A(n16), .B(n17), .Y(N5) );
  NAND2X1 U19 ( .A(n18), .B(n19), .Y(n17) );
  XOR2X1 U20 ( .A(n20), .B(\gray_wptr[2] ), .Y(n19) );
  XOR2X1 U21 ( .A(wptr_nxt[3]), .B(wptr_nxt[2]), .Y(\gray_wptr[2] ) );
  XNOR2X1 U22 ( .A(wrptr_r2[3]), .B(wrptr_r2[2]), .Y(n20) );
  XNOR2X1 U23 ( .A(wrptr_r2[1]), .B(wptr_nxt[1]), .Y(n18) );
  NAND2X1 U24 ( .A(n21), .B(n22), .Y(n16) );
  XOR2X1 U25 ( .A(wrptr_r2[3]), .B(wptr_nxt[3]), .Y(n22) );
  XNOR2X1 U26 ( .A(wrptr_r2[0]), .B(wptr_nxt[0]), .Y(n21) );
endmodule


module read_ptr_0 ( rclk, rst_n, renable, rptr, rptr_nxt );
  output [3:0] rptr;
  output [3:0] rptr_nxt;
  input rclk, rst_n, renable;
  wire   n9, n10, n11, n12;
  wire   [2:0] binary_nxt;
  wire   [3:0] binary_r;

  DFFSR \binary_r_reg[0]  ( .D(binary_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[0]) );
  DFFSR \binary_r_reg[1]  ( .D(binary_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[1]) );
  DFFSR \binary_r_reg[2]  ( .D(binary_nxt[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[2]) );
  DFFSR \binary_r_reg[3]  ( .D(rptr_nxt[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[3]) );
  DFFSR \gray_r_reg[3]  ( .D(rptr_nxt[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[3]) );
  DFFSR \gray_r_reg[2]  ( .D(rptr_nxt[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[2]) );
  DFFSR \gray_r_reg[1]  ( .D(rptr_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[1]) );
  DFFSR \gray_r_reg[0]  ( .D(rptr_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[0]) );
  XOR2X1 U11 ( .A(rptr_nxt[3]), .B(binary_nxt[2]), .Y(rptr_nxt[2]) );
  XNOR2X1 U12 ( .A(n9), .B(binary_r[3]), .Y(rptr_nxt[3]) );
  NAND2X1 U13 ( .A(binary_r[2]), .B(n10), .Y(n9) );
  XOR2X1 U14 ( .A(binary_nxt[2]), .B(binary_nxt[1]), .Y(rptr_nxt[1]) );
  XOR2X1 U15 ( .A(binary_nxt[1]), .B(binary_nxt[0]), .Y(rptr_nxt[0]) );
  XOR2X1 U16 ( .A(n10), .B(binary_r[2]), .Y(binary_nxt[2]) );
  INVX1 U17 ( .A(n11), .Y(n10) );
  NAND3X1 U18 ( .A(binary_r[1]), .B(binary_r[0]), .C(renable), .Y(n11) );
  XNOR2X1 U19 ( .A(n12), .B(binary_r[1]), .Y(binary_nxt[1]) );
  NAND2X1 U20 ( .A(renable), .B(binary_r[0]), .Y(n12) );
  XOR2X1 U21 ( .A(binary_r[0]), .B(renable), .Y(binary_nxt[0]) );
endmodule


module read_fifo_ctrl_0 ( rclk, rst_n, renable, wptr, rptr, raddr, empty_flag
 );
  input [3:0] wptr;
  output [3:0] rptr;
  output [2:0] raddr;
  input rclk, rst_n, renable;
  output empty_flag;
  wire   renable_p2, \gray_rptr[2] , N3, n1, n2, n15, n16, n17, n18, n19, n20;
  wire   [3:0] rptr_nxt;
  wire   [3:0] rwptr_r2;
  wire   [3:0] rwptr_r1;

  DFFSR \rwptr_r1_reg[3]  ( .D(wptr[3]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[3]) );
  DFFSR \rwptr_r1_reg[2]  ( .D(wptr[2]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[2]) );
  DFFSR \rwptr_r1_reg[1]  ( .D(wptr[1]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[1]) );
  DFFSR \rwptr_r1_reg[0]  ( .D(wptr[0]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[0]) );
  DFFSR \rwptr_r2_reg[3]  ( .D(rwptr_r1[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[3]) );
  DFFSR \rwptr_r2_reg[2]  ( .D(rwptr_r1[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[2]) );
  DFFSR \rwptr_r2_reg[1]  ( .D(rwptr_r1[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[1]) );
  DFFSR \rwptr_r2_reg[0]  ( .D(rwptr_r1[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[0]) );
  DFFSR empty_flag_r_reg ( .D(N3), .CLK(rclk), .R(1'b1), .S(rst_n), .Q(
        empty_flag) );
  DFFSR \raddr_reg[2]  ( .D(\gray_rptr[2] ), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(raddr[2]) );
  DFFSR \raddr_reg[1]  ( .D(rptr_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        raddr[1]) );
  DFFSR \raddr_reg[0]  ( .D(rptr_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        raddr[0]) );
  read_ptr_0 RPU1 ( .rclk(rclk), .rst_n(rst_n), .renable(renable_p2), .rptr(
        rptr), .rptr_nxt(rptr_nxt) );
  NOR2X1 U15 ( .A(empty_flag), .B(n1), .Y(renable_p2) );
  INVX1 U16 ( .A(renable), .Y(n1) );
  NOR2X1 U17 ( .A(n2), .B(n15), .Y(N3) );
  NAND2X1 U18 ( .A(n16), .B(n17), .Y(n15) );
  XOR2X1 U19 ( .A(n18), .B(\gray_rptr[2] ), .Y(n17) );
  XOR2X1 U20 ( .A(rptr_nxt[3]), .B(rptr_nxt[2]), .Y(\gray_rptr[2] ) );
  XNOR2X1 U21 ( .A(rwptr_r2[3]), .B(rwptr_r2[2]), .Y(n18) );
  XNOR2X1 U22 ( .A(rwptr_r2[1]), .B(rptr_nxt[1]), .Y(n16) );
  NAND2X1 U23 ( .A(n19), .B(n20), .Y(n2) );
  XNOR2X1 U24 ( .A(rwptr_r2[0]), .B(rptr_nxt[0]), .Y(n20) );
  XNOR2X1 U25 ( .A(rptr_nxt[3]), .B(rwptr_r2[3]), .Y(n19) );
endmodule


module fifo_0 ( rclk, wclk, rst_n, renable, wenable, wdata, rdata, empty, full
 );
  input [7:0] wdata;
  output [7:0] rdata;
  input rclk, wclk, rst_n, renable, wenable;
  output empty, full;
  wire   wenable_fifo;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] rptr;
  wire   [3:0] wptr;

  fiforam_0 UFIFORAM ( .wclk(wclk), .wenable(wenable_fifo), .waddr(waddr), 
        .raddr(raddr), .wdata(wdata), .rdata(rdata) );
  write_fifo_ctrl_0 UWFC ( .wclk(wclk), .rst_n(rst_n), .wenable(wenable), 
        .rptr(rptr), .wenable_fifo(wenable_fifo), .wptr(wptr), .waddr(waddr), 
        .full_flag(full) );
  read_fifo_ctrl_0 URFC ( .rclk(rclk), .rst_n(rst_n), .renable(renable), 
        .wptr(wptr), .rptr(rptr), .raddr(raddr), .empty_flag(empty) );
endmodule


module RCV_FIFO_0 ( CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE, WDATA, R_DATA, 
        EMPTY, FULL );
  input [7:0] WDATA;
  output [7:0] R_DATA;
  input CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE;
  output EMPTY, FULL;


  fifo_0 MAPPING ( .rclk(CLK), .wclk(D_CLK), .rst_n(RST_N), .renable(R_ENABLE), 
        .wenable(W_ENABLE), .wdata(WDATA), .rdata(R_DATA), .empty(EMPTY), 
        .full(FULL) );
endmodule


module USB_SHIFT ( D_CLK, RST, EOP, SHIFT_ENABLE, D_ORIG, RCV_DATA, CRC_SHIFT, 
        STUFF_ERROR );
  output [7:0] RCV_DATA;
  input D_CLK, RST, EOP, SHIFT_ENABLE, D_ORIG;
  output CRC_SHIFT, STUFF_ERROR;
  wire   N43, N44, N45, N52, n42, n43, n44, n45, n46, n47, n54, n55, n56, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;
  wire   [1:0] state;
  wire   [2:0] ctr;
  wire   [1:0] nextstate;

  LATCH \nextstate_reg[0]  ( .CLK(N43), .D(N44), .Q(nextstate[0]) );
  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(D_CLK), .R(1'b1), .S(n36), .Q(
        state[0]) );
  LATCH \nextstate_reg[1]  ( .CLK(N43), .D(N45), .Q(nextstate[1]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(D_CLK), .R(1'b1), .S(n36), .Q(
        state[1]) );
  DFFPOSX1 \current_reg[7]  ( .D(n33), .CLK(D_CLK), .Q(RCV_DATA[7]) );
  DFFPOSX1 \current_reg[6]  ( .D(n34), .CLK(D_CLK), .Q(RCV_DATA[6]) );
  DFFPOSX1 \current_reg[5]  ( .D(n47), .CLK(D_CLK), .Q(RCV_DATA[5]) );
  DFFPOSX1 \current_reg[4]  ( .D(n46), .CLK(D_CLK), .Q(RCV_DATA[4]) );
  DFFPOSX1 \current_reg[3]  ( .D(n45), .CLK(D_CLK), .Q(RCV_DATA[3]) );
  DFFPOSX1 \current_reg[2]  ( .D(n44), .CLK(D_CLK), .Q(RCV_DATA[2]) );
  DFFPOSX1 \current_reg[1]  ( .D(n43), .CLK(D_CLK), .Q(RCV_DATA[1]) );
  DFFPOSX1 \current_reg[0]  ( .D(n42), .CLK(D_CLK), .Q(RCV_DATA[0]) );
  DFFSR \ctr_reg[0]  ( .D(n56), .CLK(D_CLK), .R(n36), .S(1'b1), .Q(ctr[0]) );
  DFFSR \ctr_reg[1]  ( .D(n55), .CLK(D_CLK), .R(n36), .S(1'b1), .Q(ctr[1]) );
  DFFSR \ctr_reg[2]  ( .D(n54), .CLK(D_CLK), .R(n36), .S(1'b1), .Q(ctr[2]) );
  LATCH STUFF_ERROR_reg ( .CLK(N52), .D(n35), .Q(STUFF_ERROR) );
  AND2X2 U3 ( .A(SHIFT_ENABLE), .B(n32), .Y(CRC_SHIFT) );
  MUX2X1 U4 ( .B(n1), .A(n2), .S(n3), .Y(n33) );
  MUX2X1 U5 ( .B(n2), .A(n4), .S(n3), .Y(n34) );
  INVX1 U6 ( .A(RCV_DATA[7]), .Y(n2) );
  INVX1 U7 ( .A(n5), .Y(n35) );
  MUX2X1 U8 ( .B(n6), .A(n7), .S(ctr[0]), .Y(n56) );
  NAND2X1 U9 ( .A(n8), .B(n7), .Y(n6) );
  MUX2X1 U10 ( .B(n9), .A(n10), .S(ctr[1]), .Y(n55) );
  INVX1 U11 ( .A(n11), .Y(n10) );
  NAND3X1 U12 ( .A(ctr[0]), .B(n7), .C(n8), .Y(n9) );
  MUX2X1 U13 ( .B(n12), .A(n13), .S(ctr[2]), .Y(n54) );
  AOI21X1 U14 ( .A(n8), .B(n14), .C(n11), .Y(n13) );
  OAI21X1 U15 ( .A(ctr[0]), .B(n15), .C(n7), .Y(n11) );
  NAND2X1 U16 ( .A(n16), .B(n17), .Y(n7) );
  INVX1 U17 ( .A(n15), .Y(n8) );
  NAND3X1 U18 ( .A(ctr[0]), .B(SHIFT_ENABLE), .C(n18), .Y(n12) );
  NOR2X1 U19 ( .A(n15), .B(n14), .Y(n18) );
  INVX1 U20 ( .A(ctr[1]), .Y(n14) );
  NAND2X1 U21 ( .A(D_ORIG), .B(n16), .Y(n15) );
  MUX2X1 U22 ( .B(n4), .A(n19), .S(n3), .Y(n47) );
  INVX1 U23 ( .A(RCV_DATA[6]), .Y(n4) );
  MUX2X1 U24 ( .B(n19), .A(n20), .S(n3), .Y(n46) );
  INVX1 U25 ( .A(RCV_DATA[4]), .Y(n20) );
  INVX1 U26 ( .A(RCV_DATA[5]), .Y(n19) );
  INVX1 U27 ( .A(n21), .Y(n45) );
  MUX2X1 U28 ( .B(RCV_DATA[4]), .A(RCV_DATA[3]), .S(n3), .Y(n21) );
  INVX1 U29 ( .A(n22), .Y(n44) );
  MUX2X1 U30 ( .B(RCV_DATA[3]), .A(RCV_DATA[2]), .S(n3), .Y(n22) );
  INVX1 U31 ( .A(n23), .Y(n43) );
  MUX2X1 U32 ( .B(RCV_DATA[2]), .A(RCV_DATA[1]), .S(n3), .Y(n23) );
  INVX1 U33 ( .A(n24), .Y(n42) );
  MUX2X1 U34 ( .B(RCV_DATA[1]), .A(RCV_DATA[0]), .S(n3), .Y(n24) );
  NAND3X1 U35 ( .A(n16), .B(n36), .C(SHIFT_ENABLE), .Y(n3) );
  INVX1 U36 ( .A(RST), .Y(n36) );
  INVX1 U37 ( .A(N52), .Y(n16) );
  OAI21X1 U38 ( .A(EOP), .B(n5), .C(n25), .Y(N45) );
  AOI21X1 U39 ( .A(n26), .B(state[0]), .C(n27), .Y(n25) );
  INVX1 U40 ( .A(N43), .Y(n27) );
  NOR2X1 U41 ( .A(state[1]), .B(n1), .Y(n26) );
  INVX1 U42 ( .A(D_ORIG), .Y(n1) );
  NAND2X1 U43 ( .A(state[1]), .B(n28), .Y(n5) );
  NOR2X1 U44 ( .A(n29), .B(n30), .Y(N44) );
  NAND2X1 U45 ( .A(ctr[2]), .B(ctr[1]), .Y(n30) );
  OR2X1 U46 ( .A(N52), .B(ctr[0]), .Y(n29) );
  NAND3X1 U47 ( .A(n17), .B(n31), .C(state[0]), .Y(N43) );
  INVX1 U48 ( .A(SHIFT_ENABLE), .Y(n17) );
  OAI21X1 U49 ( .A(n31), .B(n28), .C(N52), .Y(n32) );
  NAND2X1 U50 ( .A(n31), .B(n28), .Y(N52) );
  INVX1 U51 ( .A(state[0]), .Y(n28) );
  INVX1 U52 ( .A(state[1]), .Y(n31) );
endmodule


module U_BUFFER ( D_CLK, RST, W_ENABLE, EOP, W_ENABLE_OUT, RCV_DATA, W_DATA );
  input [7:0] RCV_DATA;
  output [7:0] W_DATA;
  input D_CLK, RST, W_ENABLE, EOP;
  output W_ENABLE_OUT;
  wire   n44, n48, n50, n52, n54, n56, n58, n60, n62, n64, n66, n68, n70, n72,
         n74, n76, n78, n79, n80, n81, n82, n83, n84, n85, n86, n88, n89, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33;
  wire   [7:0] Byte0;
  wire   [7:0] Byte1;
  wire   [1:0] ctr;

  DFFSR \Byte0_reg[7]  ( .D(n78), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte0[7])
         );
  DFFSR \Byte0_reg[6]  ( .D(n76), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte0[6])
         );
  DFFSR \Byte0_reg[5]  ( .D(n74), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte0[5])
         );
  DFFSR \Byte0_reg[4]  ( .D(n72), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte0[4])
         );
  DFFSR \Byte0_reg[3]  ( .D(n70), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte0[3])
         );
  DFFSR \Byte0_reg[2]  ( .D(n68), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte0[2])
         );
  DFFSR \Byte0_reg[1]  ( .D(n66), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte0[1])
         );
  DFFSR \Byte0_reg[0]  ( .D(n64), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte0[0])
         );
  DFFSR \Byte1_reg[7]  ( .D(n62), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte1[7])
         );
  DFFSR \Byte1_reg[6]  ( .D(n60), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte1[6])
         );
  DFFSR \Byte1_reg[5]  ( .D(n58), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte1[5])
         );
  DFFSR \Byte1_reg[4]  ( .D(n56), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte1[4])
         );
  DFFSR \Byte1_reg[3]  ( .D(n54), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte1[3])
         );
  DFFSR \Byte1_reg[2]  ( .D(n52), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte1[2])
         );
  DFFSR \Byte1_reg[1]  ( .D(n50), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte1[1])
         );
  DFFSR \Byte1_reg[0]  ( .D(n48), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(Byte1[0])
         );
  DFFSR \ctr_reg[0]  ( .D(n89), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(ctr[0]) );
  DFFSR \ctr_reg[1]  ( .D(n88), .CLK(D_CLK), .R(n33), .S(1'b1), .Q(ctr[1]) );
  DFFPOSX1 W_ENABLE_OUT_reg ( .D(n44), .CLK(D_CLK), .Q(W_ENABLE_OUT) );
  DFFPOSX1 \W_DATA_reg[7]  ( .D(n79), .CLK(D_CLK), .Q(W_DATA[7]) );
  DFFPOSX1 \W_DATA_reg[6]  ( .D(n80), .CLK(D_CLK), .Q(W_DATA[6]) );
  DFFPOSX1 \W_DATA_reg[5]  ( .D(n81), .CLK(D_CLK), .Q(W_DATA[5]) );
  DFFPOSX1 \W_DATA_reg[4]  ( .D(n82), .CLK(D_CLK), .Q(W_DATA[4]) );
  DFFPOSX1 \W_DATA_reg[3]  ( .D(n83), .CLK(D_CLK), .Q(W_DATA[3]) );
  DFFPOSX1 \W_DATA_reg[2]  ( .D(n84), .CLK(D_CLK), .Q(W_DATA[2]) );
  DFFPOSX1 \W_DATA_reg[1]  ( .D(n85), .CLK(D_CLK), .Q(W_DATA[1]) );
  DFFPOSX1 \W_DATA_reg[0]  ( .D(n86), .CLK(D_CLK), .Q(W_DATA[0]) );
  INVX2 U3 ( .A(W_ENABLE), .Y(n6) );
  INVX2 U4 ( .A(RST), .Y(n33) );
  MUX2X1 U5 ( .B(n1), .A(n2), .S(ctr[0]), .Y(n89) );
  NAND2X1 U6 ( .A(n2), .B(n3), .Y(n1) );
  MUX2X1 U7 ( .B(n4), .A(n5), .S(n2), .Y(n88) );
  OAI21X1 U8 ( .A(ctr[1]), .B(n6), .C(n3), .Y(n2) );
  NAND2X1 U9 ( .A(ctr[0]), .B(n3), .Y(n5) );
  INVX1 U10 ( .A(EOP), .Y(n3) );
  INVX1 U11 ( .A(ctr[1]), .Y(n4) );
  INVX1 U12 ( .A(n7), .Y(n86) );
  MUX2X1 U13 ( .B(Byte1[0]), .A(W_DATA[0]), .S(n8), .Y(n7) );
  INVX1 U14 ( .A(n9), .Y(n85) );
  MUX2X1 U15 ( .B(Byte1[1]), .A(W_DATA[1]), .S(n8), .Y(n9) );
  INVX1 U16 ( .A(n10), .Y(n84) );
  MUX2X1 U17 ( .B(Byte1[2]), .A(W_DATA[2]), .S(n8), .Y(n10) );
  INVX1 U18 ( .A(n11), .Y(n83) );
  MUX2X1 U19 ( .B(Byte1[3]), .A(W_DATA[3]), .S(n8), .Y(n11) );
  INVX1 U20 ( .A(n12), .Y(n82) );
  MUX2X1 U21 ( .B(Byte1[4]), .A(W_DATA[4]), .S(n8), .Y(n12) );
  INVX1 U22 ( .A(n13), .Y(n81) );
  MUX2X1 U23 ( .B(Byte1[5]), .A(W_DATA[5]), .S(n8), .Y(n13) );
  INVX1 U24 ( .A(n14), .Y(n80) );
  MUX2X1 U25 ( .B(Byte1[6]), .A(W_DATA[6]), .S(n8), .Y(n14) );
  INVX1 U26 ( .A(n15), .Y(n79) );
  MUX2X1 U27 ( .B(Byte1[7]), .A(W_DATA[7]), .S(n8), .Y(n15) );
  INVX1 U28 ( .A(n16), .Y(n78) );
  MUX2X1 U29 ( .B(RCV_DATA[7]), .A(Byte0[7]), .S(n6), .Y(n16) );
  INVX1 U30 ( .A(n17), .Y(n76) );
  MUX2X1 U31 ( .B(RCV_DATA[6]), .A(Byte0[6]), .S(n6), .Y(n17) );
  INVX1 U32 ( .A(n18), .Y(n74) );
  MUX2X1 U33 ( .B(RCV_DATA[5]), .A(Byte0[5]), .S(n6), .Y(n18) );
  INVX1 U34 ( .A(n19), .Y(n72) );
  MUX2X1 U35 ( .B(RCV_DATA[4]), .A(Byte0[4]), .S(n6), .Y(n19) );
  INVX1 U36 ( .A(n20), .Y(n70) );
  MUX2X1 U37 ( .B(RCV_DATA[3]), .A(Byte0[3]), .S(n6), .Y(n20) );
  INVX1 U38 ( .A(n21), .Y(n68) );
  MUX2X1 U39 ( .B(RCV_DATA[2]), .A(Byte0[2]), .S(n6), .Y(n21) );
  INVX1 U40 ( .A(n22), .Y(n66) );
  MUX2X1 U41 ( .B(RCV_DATA[1]), .A(Byte0[1]), .S(n6), .Y(n22) );
  INVX1 U42 ( .A(n23), .Y(n64) );
  MUX2X1 U43 ( .B(RCV_DATA[0]), .A(Byte0[0]), .S(n6), .Y(n23) );
  INVX1 U44 ( .A(n24), .Y(n62) );
  MUX2X1 U45 ( .B(Byte0[7]), .A(Byte1[7]), .S(n6), .Y(n24) );
  INVX1 U46 ( .A(n25), .Y(n60) );
  MUX2X1 U47 ( .B(Byte0[6]), .A(Byte1[6]), .S(n6), .Y(n25) );
  INVX1 U48 ( .A(n26), .Y(n58) );
  MUX2X1 U49 ( .B(Byte0[5]), .A(Byte1[5]), .S(n6), .Y(n26) );
  INVX1 U50 ( .A(n27), .Y(n56) );
  MUX2X1 U51 ( .B(Byte0[4]), .A(Byte1[4]), .S(n6), .Y(n27) );
  INVX1 U52 ( .A(n28), .Y(n54) );
  MUX2X1 U53 ( .B(Byte0[3]), .A(Byte1[3]), .S(n6), .Y(n28) );
  INVX1 U54 ( .A(n29), .Y(n52) );
  MUX2X1 U55 ( .B(Byte0[2]), .A(Byte1[2]), .S(n6), .Y(n29) );
  INVX1 U56 ( .A(n30), .Y(n50) );
  MUX2X1 U57 ( .B(Byte0[1]), .A(Byte1[1]), .S(n6), .Y(n30) );
  INVX1 U58 ( .A(n31), .Y(n48) );
  MUX2X1 U59 ( .B(Byte0[0]), .A(Byte1[0]), .S(n6), .Y(n31) );
  OAI21X1 U60 ( .A(ctr[0]), .B(n8), .C(n32), .Y(n44) );
  NAND2X1 U61 ( .A(W_ENABLE_OUT), .B(RST), .Y(n32) );
  NAND3X1 U62 ( .A(W_ENABLE), .B(n33), .C(ctr[1]), .Y(n8) );
endmodule


module U_CLKDIV ( CLK, RST, D_CLK );
  input CLK, RST;
  output D_CLK;
  wire   N8, N9, N13, N14, N15, n2, n4, n5, n6;
  wire   [1:0] ctr1;
  wire   [1:0] ctr0;
  assign D_CLK = N15;

  DFFSR \ctr1_reg[0]  ( .D(N8), .CLK(CLK), .R(n6), .S(1'b1), .Q(ctr1[0]) );
  DFFSR \ctr1_reg[1]  ( .D(N9), .CLK(CLK), .R(n6), .S(1'b1), .Q(ctr1[1]) );
  \**SEQGEN**  \ctr0_reg[0]  ( .clear(RST), .preset(1'b0), .next_state(N13), 
        .clocked_on(n5), .data_in(1'b0), .enable(1'b0), .Q(ctr0[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ctr0_reg[1]  ( .clear(RST), .preset(1'b0), .next_state(N14), 
        .clocked_on(n5), .data_in(1'b0), .enable(1'b0), .Q(ctr0[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  INVX1 U4 ( .A(CLK), .Y(n5) );
  INVX1 U6 ( .A(RST), .Y(n6) );
  NOR2X1 U7 ( .A(ctr1[1]), .B(n2), .Y(N9) );
  NOR2X1 U8 ( .A(ctr1[1]), .B(ctr1[0]), .Y(N8) );
  AOI22X1 U9 ( .A(ctr0[1]), .B(n4), .C(ctr1[1]), .D(n2), .Y(N15) );
  INVX1 U10 ( .A(ctr1[0]), .Y(n2) );
  NOR2X1 U11 ( .A(ctr0[1]), .B(n4), .Y(N14) );
  INVX1 U12 ( .A(ctr0[0]), .Y(n4) );
  NOR2X1 U13 ( .A(ctr0[1]), .B(ctr0[0]), .Y(N13) );
endmodule


module U_CRC ( D_CLK, RST_N, CRC_SHIFT, D_ORIG, CRC_EN, CRC_ERROR );
  input D_CLK, RST_N, CRC_SHIFT, D_ORIG, CRC_EN;
  output CRC_ERROR;
  wire   n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60;
  wire   [15:0] present_val;

  DFFSR \present_val_reg[0]  ( .D(n80), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[0]) );
  DFFSR \present_val_reg[1]  ( .D(n79), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[1]) );
  DFFSR \present_val_reg[2]  ( .D(n78), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[2]) );
  DFFSR \present_val_reg[3]  ( .D(n77), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[3]) );
  DFFSR \present_val_reg[4]  ( .D(n76), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[4]) );
  DFFSR \present_val_reg[5]  ( .D(n75), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[5]) );
  DFFSR \present_val_reg[6]  ( .D(n74), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[6]) );
  DFFSR \present_val_reg[7]  ( .D(n73), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[7]) );
  DFFSR \present_val_reg[8]  ( .D(n72), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[8]) );
  DFFSR \present_val_reg[9]  ( .D(n71), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[9]) );
  DFFSR \present_val_reg[10]  ( .D(n70), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[10]) );
  DFFSR \present_val_reg[11]  ( .D(n69), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[11]) );
  DFFSR \present_val_reg[12]  ( .D(n68), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[12]) );
  DFFSR \present_val_reg[13]  ( .D(n67), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[13]) );
  DFFSR \present_val_reg[14]  ( .D(n66), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[14]) );
  DFFSR \present_val_reg[15]  ( .D(n65), .CLK(D_CLK), .R(1'b1), .S(n60), .Q(
        present_val[15]) );
  INVX2 U18 ( .A(RST_N), .Y(n60) );
  NAND2X1 U20 ( .A(CRC_EN), .B(n16), .Y(n80) );
  INVX1 U21 ( .A(n18), .Y(n16) );
  OAI21X1 U22 ( .A(CRC_SHIFT), .B(n19), .C(n20), .Y(n18) );
  NAND2X1 U23 ( .A(n21), .B(CRC_EN), .Y(n79) );
  MUX2X1 U24 ( .B(present_val[1]), .A(present_val[0]), .S(CRC_SHIFT), .Y(n21)
         );
  OR2X1 U25 ( .A(n22), .B(n23), .Y(n78) );
  OAI21X1 U26 ( .A(present_val[1]), .B(n20), .C(CRC_EN), .Y(n23) );
  MUX2X1 U27 ( .B(n24), .A(n25), .S(CRC_SHIFT), .Y(n22) );
  NAND2X1 U28 ( .A(present_val[1]), .B(n26), .Y(n25) );
  INVX1 U29 ( .A(present_val[2]), .Y(n24) );
  NAND2X1 U30 ( .A(n27), .B(CRC_EN), .Y(n77) );
  MUX2X1 U31 ( .B(present_val[3]), .A(present_val[2]), .S(CRC_SHIFT), .Y(n27)
         );
  NAND2X1 U32 ( .A(n28), .B(CRC_EN), .Y(n76) );
  MUX2X1 U33 ( .B(present_val[4]), .A(present_val[3]), .S(CRC_SHIFT), .Y(n28)
         );
  NAND2X1 U34 ( .A(n29), .B(CRC_EN), .Y(n75) );
  MUX2X1 U35 ( .B(present_val[5]), .A(present_val[4]), .S(CRC_SHIFT), .Y(n29)
         );
  NAND2X1 U36 ( .A(n30), .B(CRC_EN), .Y(n74) );
  MUX2X1 U37 ( .B(present_val[6]), .A(present_val[5]), .S(CRC_SHIFT), .Y(n30)
         );
  NAND2X1 U38 ( .A(n31), .B(CRC_EN), .Y(n73) );
  MUX2X1 U39 ( .B(present_val[7]), .A(present_val[6]), .S(CRC_SHIFT), .Y(n31)
         );
  NAND2X1 U40 ( .A(n32), .B(CRC_EN), .Y(n72) );
  MUX2X1 U41 ( .B(present_val[8]), .A(present_val[7]), .S(CRC_SHIFT), .Y(n32)
         );
  NAND2X1 U42 ( .A(n33), .B(CRC_EN), .Y(n71) );
  MUX2X1 U43 ( .B(present_val[9]), .A(present_val[8]), .S(CRC_SHIFT), .Y(n33)
         );
  NAND2X1 U44 ( .A(n34), .B(CRC_EN), .Y(n70) );
  MUX2X1 U45 ( .B(present_val[10]), .A(present_val[9]), .S(CRC_SHIFT), .Y(n34)
         );
  NAND2X1 U46 ( .A(n35), .B(CRC_EN), .Y(n69) );
  MUX2X1 U47 ( .B(present_val[11]), .A(present_val[10]), .S(CRC_SHIFT), .Y(n35) );
  NAND2X1 U48 ( .A(n36), .B(CRC_EN), .Y(n68) );
  MUX2X1 U49 ( .B(present_val[12]), .A(present_val[11]), .S(CRC_SHIFT), .Y(n36) );
  NAND2X1 U50 ( .A(n37), .B(CRC_EN), .Y(n67) );
  MUX2X1 U51 ( .B(present_val[13]), .A(present_val[12]), .S(CRC_SHIFT), .Y(n37) );
  NAND2X1 U52 ( .A(n38), .B(CRC_EN), .Y(n66) );
  MUX2X1 U53 ( .B(present_val[14]), .A(present_val[13]), .S(CRC_SHIFT), .Y(n38) );
  OR2X1 U54 ( .A(n39), .B(n40), .Y(n65) );
  OAI21X1 U55 ( .A(present_val[14]), .B(n20), .C(CRC_EN), .Y(n40) );
  NAND2X1 U56 ( .A(CRC_SHIFT), .B(n41), .Y(n20) );
  MUX2X1 U57 ( .B(n42), .A(n43), .S(CRC_SHIFT), .Y(n39) );
  NAND2X1 U58 ( .A(present_val[14]), .B(n26), .Y(n43) );
  INVX1 U59 ( .A(n41), .Y(n26) );
  XOR2X1 U60 ( .A(present_val[15]), .B(D_ORIG), .Y(n41) );
  NAND2X1 U61 ( .A(n44), .B(n45), .Y(CRC_ERROR) );
  NOR2X1 U62 ( .A(n46), .B(n47), .Y(n45) );
  NAND3X1 U63 ( .A(n48), .B(n49), .C(n50), .Y(n47) );
  NOR2X1 U64 ( .A(present_val[1]), .B(present_val[14]), .Y(n50) );
  INVX1 U65 ( .A(present_val[5]), .Y(n49) );
  INVX1 U66 ( .A(present_val[4]), .Y(n48) );
  NAND3X1 U67 ( .A(n51), .B(n52), .C(n53), .Y(n46) );
  NOR2X1 U68 ( .A(present_val[9]), .B(present_val[8]), .Y(n53) );
  INVX1 U69 ( .A(present_val[7]), .Y(n52) );
  INVX1 U70 ( .A(present_val[6]), .Y(n51) );
  NOR2X1 U71 ( .A(n54), .B(n55), .Y(n44) );
  NAND3X1 U72 ( .A(present_val[3]), .B(present_val[2]), .C(n56), .Y(n55) );
  NOR2X1 U73 ( .A(n42), .B(n19), .Y(n56) );
  INVX1 U74 ( .A(present_val[0]), .Y(n19) );
  INVX1 U75 ( .A(present_val[15]), .Y(n42) );
  NAND3X1 U76 ( .A(n57), .B(n58), .C(n59), .Y(n54) );
  NOR2X1 U77 ( .A(present_val[13]), .B(present_val[12]), .Y(n59) );
  INVX1 U78 ( .A(present_val[11]), .Y(n58) );
  INVX1 U79 ( .A(present_val[10]), .Y(n57) );
endmodule


module U_DECODE ( D_CLK, rst_n, d_plus, shift_enable, eop, d_orig );
  input D_CLK, rst_n, d_plus, shift_enable, eop;
  output d_orig;
  wire   prevbit, currentbit, N32, N34, N35, n2, n4, n5, n6, n7, n8, n9, n10,
         n11;
  wire   [1:0] state;
  wire   [1:0] nextstate;

  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(D_CLK), .R(1'b1), .S(n11), .Q(
        state[0]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(
        state[1]) );
  LATCH prevbit_reg ( .CLK(N34), .D(N35), .Q(prevbit) );
  LATCH currentbit_reg ( .CLK(n10), .D(d_plus), .Q(currentbit) );
  LATCH d_orig_reg ( .CLK(n10), .D(N32), .Q(d_orig) );
  NOR2X1 U4 ( .A(n2), .B(n4), .Y(nextstate[1]) );
  NAND2X1 U6 ( .A(shift_enable), .B(n5), .Y(n4) );
  NAND2X1 U7 ( .A(n6), .B(n10), .Y(n2) );
  NOR2X1 U8 ( .A(state[1]), .B(n5), .Y(nextstate[0]) );
  INVX1 U9 ( .A(eop), .Y(n5) );
  INVX1 U10 ( .A(rst_n), .Y(n11) );
  MUX2X1 U11 ( .B(state[1]), .A(n7), .S(n6), .Y(N35) );
  NAND2X1 U12 ( .A(d_plus), .B(state[1]), .Y(n7) );
  MUX2X1 U13 ( .B(state[1]), .A(n8), .S(n6), .Y(N34) );
  OR2X1 U14 ( .A(n10), .B(shift_enable), .Y(n8) );
  INVX1 U15 ( .A(state[1]), .Y(n10) );
  AOI21X1 U16 ( .A(n9), .B(n6), .C(state[1]), .Y(N32) );
  INVX1 U17 ( .A(state[0]), .Y(n6) );
  XOR2X1 U18 ( .A(prevbit), .B(currentbit), .Y(n9) );
endmodule


module U_EDGE_DETECT ( D_CLK, rst_n, d_plus, d_edge );
  input D_CLK, rst_n, d_plus;
  output d_edge;
  wire   current, previous, N0, n3;

  DFFSR current_reg ( .D(d_plus), .CLK(D_CLK), .R(1'b1), .S(n3), .Q(current)
         );
  DFFSR previous_reg ( .D(current), .CLK(D_CLK), .R(1'b1), .S(n3), .Q(previous) );
  DFFSR d_edge_reg ( .D(N0), .CLK(D_CLK), .R(n3), .S(1'b1), .Q(d_edge) );
  INVX1 U5 ( .A(rst_n), .Y(n3) );
  XOR2X1 U7 ( .A(previous), .B(current), .Y(N0) );
endmodule


module U_EOP_DETECT ( D_PLUS, D_MINUS, EOP );
  input D_PLUS, D_MINUS;
  output EOP;
  wire   N0;
  assign EOP = N0;

  NOR2X1 U1 ( .A(D_PLUS), .B(D_MINUS), .Y(N0) );
endmodule


module U_FCU ( D_CLK, RST, EOP, CRC_ERROR, R_ERROR, W_ENABLE1, R_ENABLE0, 
        EMPTY0, FULL0, FULL1 );
  input D_CLK, RST, EOP, CRC_ERROR, R_ERROR, EMPTY0, FULL0, FULL1;
  output W_ENABLE1, R_ENABLE0;
  wire   n40, n1, n2, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n38;
  wire   [2:0] state;
  wire   [2:0] nextstate;
  wire   [1:0] ctr;

  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(D_CLK), .R(1'b1), .S(n38), .Q(
        state[0]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(D_CLK), .R(1'b1), .S(n38), .Q(
        state[1]) );
  DFFSR \state_reg[2]  ( .D(nextstate[2]), .CLK(D_CLK), .R(n38), .S(1'b1), .Q(
        state[2]) );
  DFFPOSX1 \ctr_reg[1]  ( .D(n40), .CLK(D_CLK), .Q(ctr[1]) );
  DFFPOSX1 \ctr_reg[0]  ( .D(n36), .CLK(D_CLK), .Q(ctr[0]) );
  NAND3X1 U5 ( .A(n1), .B(n2), .C(n5), .Y(nextstate[2]) );
  AOI22X1 U7 ( .A(W_ENABLE1), .B(FULL1), .C(EMPTY0), .D(R_ENABLE0), .Y(n5) );
  NAND3X1 U8 ( .A(ctr[0]), .B(n7), .C(n8), .Y(n2) );
  NOR2X1 U9 ( .A(CRC_ERROR), .B(n9), .Y(n8) );
  NAND2X1 U10 ( .A(n10), .B(n11), .Y(n9) );
  NAND3X1 U11 ( .A(n12), .B(n13), .C(state[2]), .Y(n1) );
  INVX1 U12 ( .A(n14), .Y(n12) );
  OAI21X1 U13 ( .A(n15), .B(n16), .C(n17), .Y(nextstate[1]) );
  AOI21X1 U14 ( .A(n18), .B(n14), .C(n19), .Y(n17) );
  INVX1 U15 ( .A(n20), .Y(n19) );
  MUX2X1 U16 ( .B(EOP), .A(FULL1), .S(n21), .Y(n14) );
  NOR2X1 U17 ( .A(state[1]), .B(n22), .Y(n18) );
  OR2X1 U18 ( .A(n21), .B(EMPTY0), .Y(n16) );
  INVX1 U19 ( .A(R_ENABLE0), .Y(n15) );
  OR2X1 U20 ( .A(n23), .B(n24), .Y(nextstate[0]) );
  OAI21X1 U21 ( .A(FULL1), .B(n25), .C(n20), .Y(n24) );
  NAND3X1 U22 ( .A(n26), .B(state[1]), .C(n27), .Y(n20) );
  NOR2X1 U23 ( .A(n21), .B(n28), .Y(n27) );
  NAND2X1 U24 ( .A(n10), .B(n22), .Y(n28) );
  INVX1 U25 ( .A(R_ERROR), .Y(n10) );
  MUX2X1 U26 ( .B(FULL0), .A(n29), .S(EOP), .Y(n26) );
  NOR2X1 U27 ( .A(ctr[1]), .B(n30), .Y(n29) );
  MUX2X1 U28 ( .B(n31), .A(n32), .S(n21), .Y(n23) );
  NAND2X1 U29 ( .A(EMPTY0), .B(n22), .Y(n32) );
  OAI21X1 U30 ( .A(EMPTY0), .B(state[2]), .C(n13), .Y(n31) );
  INVX1 U31 ( .A(state[1]), .Y(n13) );
  MUX2X1 U32 ( .B(n30), .A(n33), .S(n34), .Y(n36) );
  INVX1 U33 ( .A(ctr[0]), .Y(n30) );
  NOR2X1 U34 ( .A(state[1]), .B(state[2]), .Y(R_ENABLE0) );
  INVX1 U35 ( .A(RST), .Y(n38) );
  NOR2X1 U36 ( .A(n34), .B(n11), .Y(n40) );
  INVX1 U37 ( .A(ctr[1]), .Y(n11) );
  AOI21X1 U38 ( .A(n7), .B(ctr[1]), .C(RST), .Y(n34) );
  INVX1 U39 ( .A(n33), .Y(n7) );
  NAND3X1 U40 ( .A(state[1]), .B(state[0]), .C(n35), .Y(n33) );
  AND2X1 U41 ( .A(n22), .B(EOP), .Y(n35) );
  INVX1 U42 ( .A(n25), .Y(W_ENABLE1) );
  NAND3X1 U43 ( .A(n21), .B(n22), .C(state[1]), .Y(n25) );
  INVX1 U44 ( .A(state[2]), .Y(n22) );
  INVX1 U45 ( .A(state[0]), .Y(n21) );
endmodule


module U_RCU ( D_CLK, rst_n, d_edge, eop, CRC_ERROR, STUFF_ERROR, shift_enable, 
        rcv_data, rcving, w_enable, r_error, CRC_EN );
  input [7:0] rcv_data;
  input D_CLK, rst_n, d_edge, eop, CRC_ERROR, STUFF_ERROR, shift_enable;
  output rcving, w_enable, r_error, CRC_EN;
  wire   N153, N154, N155, N156, N157, N159, n106, n107, n108, n109, n1, n2,
         n7, n11, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98;
  wire   [3:0] state;
  wire   [3:0] nextstate;
  wire   [3:0] shift_ctr;

  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(D_CLK), .R(n98), .S(1'b1), .Q(
        state[0]) );
  DFFSR \state_reg[3]  ( .D(nextstate[3]), .CLK(D_CLK), .R(n98), .S(1'b1), .Q(
        state[3]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(D_CLK), .R(n98), .S(1'b1), .Q(
        state[1]) );
  DFFSR \shift_ctr_reg[0]  ( .D(n108), .CLK(D_CLK), .R(n97), .S(1'b1), .Q(
        shift_ctr[0]) );
  DFFSR \shift_ctr_reg[1]  ( .D(n107), .CLK(D_CLK), .R(n97), .S(1'b1), .Q(
        shift_ctr[1]) );
  DFFSR \shift_ctr_reg[2]  ( .D(n106), .CLK(D_CLK), .R(n97), .S(1'b1), .Q(
        shift_ctr[2]) );
  DFFSR \shift_ctr_reg[3]  ( .D(n109), .CLK(D_CLK), .R(n97), .S(1'b1), .Q(
        shift_ctr[3]) );
  DFFSR \state_reg[2]  ( .D(nextstate[2]), .CLK(D_CLK), .R(n98), .S(1'b1), .Q(
        state[2]) );
  LATCH CRC_EN_reg ( .CLK(n96), .D(N159), .Q(CRC_EN) );
  LATCH rcving_reg ( .CLK(N153), .D(N154), .Q(rcving) );
  LATCH w_enable_reg ( .CLK(N155), .D(n95), .Q(w_enable) );
  LATCH r_error_reg ( .CLK(N156), .D(N157), .Q(r_error) );
  OR2X1 U7 ( .A(n1), .B(n2), .Y(nextstate[3]) );
  OAI21X1 U11 ( .A(n7), .B(n11), .C(n13), .Y(n2) );
  MUX2X1 U13 ( .B(n14), .A(n15), .S(d_edge), .Y(n13) );
  NOR2X1 U14 ( .A(n16), .B(n17), .Y(n14) );
  OAI21X1 U15 ( .A(n18), .B(n19), .C(n20), .Y(n1) );
  OAI21X1 U16 ( .A(n21), .B(n19), .C(n22), .Y(n20) );
  NAND3X1 U17 ( .A(n23), .B(n24), .C(n25), .Y(nextstate[2]) );
  AOI21X1 U18 ( .A(eop), .B(n26), .C(n27), .Y(n25) );
  OAI21X1 U19 ( .A(n28), .B(n29), .C(n30), .Y(n27) );
  NAND2X1 U20 ( .A(n31), .B(n32), .Y(n29) );
  OAI22X1 U21 ( .A(n33), .B(n34), .C(n35), .D(n21), .Y(n26) );
  INVX1 U22 ( .A(n36), .Y(n24) );
  AOI22X1 U23 ( .A(n21), .B(n37), .C(n38), .D(n11), .Y(n23) );
  INVX1 U24 ( .A(n39), .Y(n11) );
  NAND3X1 U25 ( .A(n40), .B(n18), .C(n41), .Y(nextstate[1]) );
  AOI21X1 U26 ( .A(n21), .B(n42), .C(n43), .Y(n41) );
  OAI21X1 U27 ( .A(n44), .B(n28), .C(n45), .Y(n43) );
  OAI21X1 U28 ( .A(n46), .B(n47), .C(n19), .Y(n45) );
  INVX1 U29 ( .A(eop), .Y(n19) );
  AOI21X1 U30 ( .A(n48), .B(n49), .C(n31), .Y(n44) );
  INVX1 U31 ( .A(CRC_ERROR), .Y(n48) );
  AOI21X1 U32 ( .A(n33), .B(n46), .C(n95), .Y(n18) );
  INVX1 U33 ( .A(n50), .Y(n40) );
  OAI22X1 U34 ( .A(n7), .B(n39), .C(n51), .D(d_edge), .Y(n50) );
  NAND3X1 U35 ( .A(n52), .B(n53), .C(n54), .Y(nextstate[0]) );
  NOR2X1 U36 ( .A(n55), .B(n56), .Y(n54) );
  OAI21X1 U37 ( .A(n32), .B(n57), .C(n58), .Y(n56) );
  OAI21X1 U38 ( .A(n38), .B(n47), .C(eop), .Y(n58) );
  NAND2X1 U39 ( .A(n59), .B(n31), .Y(n57) );
  NAND3X1 U40 ( .A(n60), .B(rcv_data[0]), .C(n61), .Y(n32) );
  NOR2X1 U41 ( .A(n62), .B(n63), .Y(n61) );
  NOR2X1 U42 ( .A(n64), .B(n65), .Y(n60) );
  INVX1 U43 ( .A(n66), .Y(n65) );
  XNOR2X1 U44 ( .A(rcv_data[3]), .B(rcv_data[7]), .Y(n64) );
  OR2X1 U45 ( .A(n95), .B(n46), .Y(n55) );
  NOR2X1 U46 ( .A(n34), .B(n21), .Y(n46) );
  INVX1 U47 ( .A(n67), .Y(n21) );
  AOI22X1 U48 ( .A(n68), .B(d_edge), .C(n67), .D(n42), .Y(n53) );
  NAND2X1 U49 ( .A(shift_ctr[3]), .B(n33), .Y(n67) );
  NOR3X1 U50 ( .A(shift_ctr[1]), .B(shift_ctr[2]), .C(shift_ctr[0]), .Y(n33)
         );
  INVX1 U51 ( .A(n17), .Y(n68) );
  AOI21X1 U52 ( .A(n39), .B(n38), .C(n36), .Y(n52) );
  OAI21X1 U53 ( .A(d_edge), .B(n69), .C(n70), .Y(n36) );
  INVX1 U54 ( .A(n7), .Y(n38) );
  NAND2X1 U55 ( .A(n31), .B(n71), .Y(n7) );
  NOR2X1 U56 ( .A(n72), .B(n73), .Y(n39) );
  NAND3X1 U57 ( .A(n66), .B(n74), .C(rcv_data[7]), .Y(n73) );
  INVX1 U58 ( .A(rcv_data[0]), .Y(n74) );
  NOR2X1 U59 ( .A(rcv_data[2]), .B(n75), .Y(n66) );
  OR2X1 U60 ( .A(rcv_data[5]), .B(rcv_data[4]), .Y(n75) );
  NAND3X1 U61 ( .A(n76), .B(n63), .C(n62), .Y(n72) );
  INVX1 U62 ( .A(rcv_data[1]), .Y(n62) );
  INVX1 U63 ( .A(rcv_data[6]), .Y(n63) );
  INVX1 U64 ( .A(rcv_data[3]), .Y(n76) );
  XOR2X1 U65 ( .A(shift_ctr[3]), .B(n77), .Y(n109) );
  NOR2X1 U66 ( .A(n78), .B(n79), .Y(n77) );
  INVX1 U67 ( .A(shift_ctr[2]), .Y(n79) );
  XNOR2X1 U68 ( .A(shift_ctr[0]), .B(n80), .Y(n108) );
  XOR2X1 U69 ( .A(shift_ctr[1]), .B(n81), .Y(n107) );
  XNOR2X1 U70 ( .A(shift_ctr[2]), .B(n78), .Y(n106) );
  NAND2X1 U71 ( .A(shift_ctr[1]), .B(n81), .Y(n78) );
  NOR2X1 U72 ( .A(n82), .B(n80), .Y(n81) );
  NAND3X1 U73 ( .A(n97), .B(n98), .C(shift_enable), .Y(n80) );
  INVX1 U74 ( .A(rst_n), .Y(n98) );
  AND2X1 U75 ( .A(n49), .B(n28), .Y(n97) );
  INVX1 U76 ( .A(n59), .Y(n28) );
  INVX1 U77 ( .A(shift_ctr[0]), .Y(n82) );
  INVX1 U78 ( .A(n83), .Y(N159) );
  OAI21X1 U79 ( .A(n16), .B(n17), .C(n84), .Y(N157) );
  NOR2X1 U80 ( .A(n15), .B(n47), .Y(n84) );
  INVX1 U81 ( .A(n30), .Y(n47) );
  INVX1 U82 ( .A(n85), .Y(n15) );
  OR2X1 U83 ( .A(n42), .B(N155), .Y(N156) );
  NAND2X1 U84 ( .A(n86), .B(n70), .Y(N155) );
  NAND2X1 U85 ( .A(n59), .B(n49), .Y(n70) );
  NOR2X1 U86 ( .A(n87), .B(n16), .Y(n59) );
  INVX1 U87 ( .A(state[3]), .Y(n16) );
  NAND3X1 U88 ( .A(n30), .B(n83), .C(n88), .Y(N154) );
  AOI21X1 U89 ( .A(n31), .B(state[1]), .C(n42), .Y(n88) );
  INVX1 U90 ( .A(n35), .Y(n42) );
  OR2X1 U91 ( .A(n31), .B(n96), .Y(N153) );
  NAND2X1 U92 ( .A(n35), .B(n86), .Y(n96) );
  INVX1 U93 ( .A(n89), .Y(n86) );
  NAND3X1 U94 ( .A(n17), .B(n83), .C(n90), .Y(n89) );
  AND2X1 U95 ( .A(n30), .B(n69), .Y(n90) );
  AND2X1 U96 ( .A(n85), .B(n51), .Y(n69) );
  NAND3X1 U97 ( .A(n71), .B(state[0]), .C(state[2]), .Y(n51) );
  NAND3X1 U98 ( .A(n91), .B(state[0]), .C(state[2]), .Y(n85) );
  NAND3X1 U99 ( .A(n71), .B(n92), .C(state[2]), .Y(n30) );
  NOR2X1 U100 ( .A(n37), .B(n95), .Y(n83) );
  INVX1 U101 ( .A(n93), .Y(n95) );
  NAND3X1 U102 ( .A(n91), .B(n92), .C(state[2]), .Y(n93) );
  INVX1 U103 ( .A(n34), .Y(n37) );
  NAND2X1 U104 ( .A(n71), .B(n49), .Y(n34) );
  NOR2X1 U105 ( .A(n87), .B(state[3]), .Y(n71) );
  NAND2X1 U106 ( .A(n31), .B(n87), .Y(n17) );
  AOI21X1 U107 ( .A(n49), .B(n91), .C(n22), .Y(n35) );
  INVX1 U108 ( .A(n94), .Y(n22) );
  NAND3X1 U109 ( .A(n49), .B(n87), .C(state[3]), .Y(n94) );
  INVX1 U110 ( .A(state[1]), .Y(n87) );
  NOR2X1 U111 ( .A(state[3]), .B(state[1]), .Y(n91) );
  NOR2X1 U112 ( .A(n92), .B(state[2]), .Y(n49) );
  INVX1 U113 ( .A(state[0]), .Y(n92) );
  NOR2X1 U114 ( .A(state[0]), .B(state[2]), .Y(n31) );
endmodule


module U_TIMER ( D_CLK, RST_N, D_EDGE, RCVING, SHIFT_ENABLE );
  input D_CLK, RST_N, D_EDGE, RCVING;
  output SHIFT_ENABLE;
  wire   n35, n62, n63, n64, n65, n66, n67, n68, n69, n11, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54;
  wire   [2:0] state;
  wire   [2:0] nextstate;
  wire   [3:0] ctr2;
  wire   [3:0] ctr8;

  DFFSR \state_reg[2]  ( .D(nextstate[2]), .CLK(D_CLK), .R(n54), .S(1'b1), .Q(
        state[2]) );
  DFFSR \ctr8_reg[0]  ( .D(n69), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(ctr8[0])
         );
  DFFSR \ctr8_reg[3]  ( .D(n68), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(ctr8[3])
         );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(D_CLK), .R(n54), .S(1'b1), .Q(
        state[1]) );
  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(D_CLK), .R(n54), .S(1'b1), .Q(
        state[0]) );
  DFFSR \ctr2_reg[0]  ( .D(n66), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(ctr2[0])
         );
  DFFSR \ctr8_reg[1]  ( .D(n63), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(ctr8[1])
         );
  DFFSR \ctr8_reg[2]  ( .D(n62), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(ctr8[2])
         );
  DFFSR \ctr2_reg[1]  ( .D(n65), .CLK(D_CLK), .R(1'b1), .S(n11), .Q(ctr2[1])
         );
  DFFSR \ctr2_reg[2]  ( .D(n64), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(ctr2[2])
         );
  DFFSR \ctr2_reg[3]  ( .D(n67), .CLK(D_CLK), .R(n11), .S(1'b1), .Q(ctr2[3])
         );
  BUFX2 U13 ( .A(n35), .Y(n11) );
  NOR2X1 U15 ( .A(n13), .B(n14), .Y(nextstate[2]) );
  OAI21X1 U16 ( .A(n15), .B(n16), .C(n11), .Y(nextstate[1]) );
  MUX2X1 U17 ( .B(n17), .A(n18), .S(state[0]), .Y(n16) );
  OR2X1 U18 ( .A(n19), .B(ctr8[0]), .Y(n18) );
  NOR2X1 U19 ( .A(n15), .B(n20), .Y(nextstate[0]) );
  INVX1 U20 ( .A(n21), .Y(n20) );
  OAI21X1 U21 ( .A(n17), .B(n22), .C(n23), .Y(n21) );
  NAND3X1 U22 ( .A(ctr2[1]), .B(n24), .C(n25), .Y(n17) );
  NOR2X1 U23 ( .A(ctr2[3]), .B(ctr2[2]), .Y(n25) );
  NAND3X1 U24 ( .A(n13), .B(n26), .C(RCVING), .Y(n15) );
  INVX1 U25 ( .A(RST_N), .Y(n54) );
  MUX2X1 U26 ( .B(ctr8[0]), .A(n27), .S(n28), .Y(n69) );
  NAND2X1 U27 ( .A(ctr8[0]), .B(n11), .Y(n27) );
  OAI21X1 U28 ( .A(n19), .B(n29), .C(n30), .Y(n68) );
  OAI21X1 U29 ( .A(n31), .B(n32), .C(ctr8[3]), .Y(n30) );
  NOR2X1 U30 ( .A(ctr8[2]), .B(n28), .Y(n31) );
  NAND3X1 U31 ( .A(ctr8[1]), .B(n33), .C(ctr8[2]), .Y(n19) );
  INVX1 U32 ( .A(ctr8[3]), .Y(n33) );
  MUX2X1 U33 ( .B(n34), .A(n36), .S(ctr2[3]), .Y(n67) );
  INVX1 U34 ( .A(n37), .Y(n36) );
  OAI21X1 U35 ( .A(n38), .B(ctr2[2]), .C(n39), .Y(n37) );
  NAND2X1 U36 ( .A(ctr2[2]), .B(n40), .Y(n34) );
  INVX1 U37 ( .A(n41), .Y(n40) );
  MUX2X1 U38 ( .B(n42), .A(ctr2[0]), .S(n43), .Y(n66) );
  NAND2X1 U39 ( .A(ctr2[0]), .B(n11), .Y(n42) );
  NAND2X1 U40 ( .A(n44), .B(n11), .Y(n65) );
  XNOR2X1 U41 ( .A(ctr2[1]), .B(n45), .Y(n44) );
  NOR2X1 U42 ( .A(n38), .B(n24), .Y(n45) );
  INVX1 U43 ( .A(ctr2[0]), .Y(n24) );
  MUX2X1 U44 ( .B(n41), .A(n39), .S(ctr2[2]), .Y(n64) );
  MUX2X1 U45 ( .B(n11), .A(n46), .S(n43), .Y(n39) );
  NAND2X1 U46 ( .A(ctr2[0]), .B(ctr2[1]), .Y(n46) );
  NAND3X1 U47 ( .A(n43), .B(ctr2[1]), .C(ctr2[0]), .Y(n41) );
  INVX1 U48 ( .A(n38), .Y(n43) );
  MUX2X1 U49 ( .B(n29), .A(n47), .S(ctr8[1]), .Y(n63) );
  INVX1 U50 ( .A(n48), .Y(n29) );
  MUX2X1 U51 ( .B(n49), .A(n50), .S(ctr8[2]), .Y(n62) );
  INVX1 U52 ( .A(n32), .Y(n50) );
  OAI21X1 U53 ( .A(ctr8[1]), .B(n28), .C(n47), .Y(n32) );
  MUX2X1 U54 ( .B(n51), .A(n11), .S(n28), .Y(n47) );
  NAND2X1 U55 ( .A(n48), .B(ctr8[1]), .Y(n49) );
  NOR2X1 U56 ( .A(n51), .B(n28), .Y(n48) );
  NAND3X1 U57 ( .A(n38), .B(n26), .C(state[1]), .Y(n28) );
  NAND3X1 U58 ( .A(n23), .B(n26), .C(state[1]), .Y(n38) );
  INVX1 U59 ( .A(ctr8[0]), .Y(n51) );
  NAND3X1 U60 ( .A(n13), .B(n22), .C(n52), .Y(n35) );
  AOI21X1 U61 ( .A(state[2]), .B(state[0]), .C(n14), .Y(n52) );
  INVX1 U62 ( .A(RCVING), .Y(n14) );
  INVX1 U63 ( .A(D_EDGE), .Y(n13) );
  NOR2X1 U64 ( .A(n23), .B(n53), .Y(SHIFT_ENABLE) );
  NAND2X1 U65 ( .A(n22), .B(n26), .Y(n53) );
  INVX1 U66 ( .A(state[2]), .Y(n26) );
  INVX1 U67 ( .A(state[1]), .Y(n22) );
  INVX1 U68 ( .A(state[0]), .Y(n23) );
endmodule


module USB_RCVR ( CLK, D_MINUS, D_PLUS, RST, R_ENABLE, EMPTY, FULL, R_DATA, 
        r_error, rcving );
  output [7:0] R_DATA;
  input CLK, D_MINUS, D_PLUS, RST, R_ENABLE;
  output EMPTY, FULL, r_error, rcving;
  wire   D_CLK, W_ENABLE1, R_ENABLE0, W_ENABLE_OUT, EMPTY1, FULL1, d_orig, EOP,
         SHIFT_ENABLE, CRC_SHIFT, STUFF_ERROR, w_enable, CRC_EN, CRC_ERROR,
         d_edge, n1, n2, n3;
  wire   [7:0] R_DATA1;
  wire   [7:0] W_DATA;
  wire   [7:0] RCV_DATA;

  RCV_FIFO_1 U_5 ( .CLK(CLK), .D_CLK(n2), .RST_N(n3), .R_ENABLE(R_ENABLE), 
        .W_ENABLE(W_ENABLE1), .WDATA(R_DATA1), .R_DATA(R_DATA), .EMPTY(EMPTY), 
        .FULL(FULL) );
  RCV_FIFO_0 U_11 ( .CLK(n1), .D_CLK(n2), .RST_N(n3), .R_ENABLE(R_ENABLE0), 
        .W_ENABLE(W_ENABLE_OUT), .WDATA(W_DATA), .R_DATA(R_DATA1), .EMPTY(
        EMPTY1), .FULL(FULL1) );
  USB_SHIFT U_7 ( .D_CLK(n1), .RST(RST), .EOP(EOP), .SHIFT_ENABLE(SHIFT_ENABLE), .D_ORIG(d_orig), .RCV_DATA(RCV_DATA), .CRC_SHIFT(CRC_SHIFT), .STUFF_ERROR(
        STUFF_ERROR) );
  U_BUFFER U_10 ( .D_CLK(n1), .RST(RST), .W_ENABLE(w_enable), .EOP(EOP), 
        .W_ENABLE_OUT(W_ENABLE_OUT), .RCV_DATA(RCV_DATA), .W_DATA(W_DATA) );
  U_CLKDIV U_8 ( .CLK(CLK), .RST(RST), .D_CLK(D_CLK) );
  U_CRC U_0 ( .D_CLK(n2), .RST_N(RST), .CRC_SHIFT(CRC_SHIFT), .D_ORIG(d_orig), 
        .CRC_EN(CRC_EN), .CRC_ERROR(CRC_ERROR) );
  U_DECODE U_1 ( .D_CLK(n1), .rst_n(RST), .d_plus(D_PLUS), .shift_enable(
        SHIFT_ENABLE), .eop(EOP), .d_orig(d_orig) );
  U_EDGE_DETECT U_2 ( .D_CLK(n1), .rst_n(RST), .d_plus(D_PLUS), .d_edge(d_edge) );
  U_EOP_DETECT U_3 ( .D_PLUS(D_PLUS), .D_MINUS(D_MINUS), .EOP(EOP) );
  U_FCU U_12 ( .D_CLK(n2), .RST(RST), .EOP(EOP), .CRC_ERROR(CRC_ERROR), 
        .R_ERROR(r_error), .W_ENABLE1(W_ENABLE1), .R_ENABLE0(R_ENABLE0), 
        .EMPTY0(EMPTY1), .FULL0(FULL1), .FULL1(FULL) );
  U_RCU U_4 ( .D_CLK(n2), .rst_n(RST), .d_edge(d_edge), .eop(EOP), .CRC_ERROR(
        CRC_ERROR), .STUFF_ERROR(STUFF_ERROR), .shift_enable(CRC_SHIFT), 
        .rcv_data(RCV_DATA), .rcving(rcving), .w_enable(w_enable), .r_error(
        r_error), .CRC_EN(CRC_EN) );
  U_TIMER U_6 ( .D_CLK(n2), .RST_N(RST), .D_EDGE(d_edge), .RCVING(rcving), 
        .SHIFT_ENABLE(SHIFT_ENABLE) );
  INVX8 U1 ( .A(RST), .Y(n3) );
  BUFX4 U2 ( .A(D_CLK), .Y(n1) );
  BUFX4 U3 ( .A(D_CLK), .Y(n2) );
endmodule


module B_AppendAccessCode ( CLK, RST, TRANS_EN, ACESS_CODE, HEADER_EN );
  output [71:0] ACESS_CODE;
  input CLK, RST, TRANS_EN;
  output HEADER_EN;
  wire   n72, n2, n4, n6, n8, n10, n12, n14, n16, n18, n20, n22, n24, n26, n28,
         n30, n32, n34, n36, n38, n40, n42, n44, n46, n48, n50, n52, n54, n56,
         n58, n60, n62, n64, n66, n68, n71;
  assign ACESS_CODE[70] = 1'b0;
  assign ACESS_CODE[68] = 1'b0;
  assign ACESS_CODE[64] = 1'b0;
  assign ACESS_CODE[62] = 1'b0;
  assign ACESS_CODE[59] = 1'b0;
  assign ACESS_CODE[56] = 1'b0;
  assign ACESS_CODE[55] = 1'b0;
  assign ACESS_CODE[52] = 1'b0;
  assign ACESS_CODE[49] = 1'b0;
  assign ACESS_CODE[48] = 1'b0;
  assign ACESS_CODE[47] = 1'b0;
  assign ACESS_CODE[40] = 1'b0;
  assign ACESS_CODE[38] = 1'b0;
  assign ACESS_CODE[35] = 1'b0;
  assign ACESS_CODE[32] = 1'b0;
  assign ACESS_CODE[31] = 1'b0;
  assign ACESS_CODE[28] = 1'b0;
  assign ACESS_CODE[25] = 1'b0;
  assign ACESS_CODE[24] = 1'b0;
  assign ACESS_CODE[23] = 1'b0;
  assign ACESS_CODE[19] = 1'b0;
  assign ACESS_CODE[18] = 1'b0;
  assign ACESS_CODE[17] = 1'b0;
  assign ACESS_CODE[16] = 1'b0;
  assign ACESS_CODE[15] = 1'b0;
  assign ACESS_CODE[14] = 1'b0;
  assign ACESS_CODE[13] = 1'b0;
  assign ACESS_CODE[12] = 1'b0;
  assign ACESS_CODE[11] = 1'b0;
  assign ACESS_CODE[10] = 1'b0;
  assign ACESS_CODE[9] = 1'b0;
  assign ACESS_CODE[8] = 1'b0;
  assign ACESS_CODE[7] = 1'b0;
  assign ACESS_CODE[6] = 1'b0;
  assign ACESS_CODE[5] = 1'b0;
  assign ACESS_CODE[4] = 1'b0;
  assign ACESS_CODE[2] = 1'b0;
  assign ACESS_CODE[0] = 1'b0;

  DFFSR HEADER_EN_reg ( .D(TRANS_EN), .CLK(CLK), .R(n71), .S(1'b1), .Q(n72) );
  DFFSR \ACESS_CODE_reg[71]  ( .D(n68), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[71]) );
  DFFSR \ACESS_CODE_reg[69]  ( .D(n66), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[69]) );
  DFFSR \ACESS_CODE_reg[67]  ( .D(n64), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[67]) );
  DFFSR \ACESS_CODE_reg[66]  ( .D(n62), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[66]) );
  DFFSR \ACESS_CODE_reg[65]  ( .D(n60), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[65]) );
  DFFSR \ACESS_CODE_reg[63]  ( .D(n58), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[63]) );
  DFFSR \ACESS_CODE_reg[61]  ( .D(n56), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[61]) );
  DFFSR \ACESS_CODE_reg[60]  ( .D(n54), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[60]) );
  DFFSR \ACESS_CODE_reg[58]  ( .D(n52), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[58]) );
  DFFSR \ACESS_CODE_reg[57]  ( .D(n50), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[57]) );
  DFFSR \ACESS_CODE_reg[54]  ( .D(n48), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[54]) );
  DFFSR \ACESS_CODE_reg[53]  ( .D(n46), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[53]) );
  DFFSR \ACESS_CODE_reg[51]  ( .D(n44), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[51]) );
  DFFSR \ACESS_CODE_reg[50]  ( .D(n42), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[50]) );
  DFFSR \ACESS_CODE_reg[46]  ( .D(n40), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[46]) );
  DFFSR \ACESS_CODE_reg[45]  ( .D(n38), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[45]) );
  DFFSR \ACESS_CODE_reg[44]  ( .D(n36), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[44]) );
  DFFSR \ACESS_CODE_reg[43]  ( .D(n34), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[43]) );
  DFFSR \ACESS_CODE_reg[42]  ( .D(n32), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[42]) );
  DFFSR \ACESS_CODE_reg[41]  ( .D(n30), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[41]) );
  DFFSR \ACESS_CODE_reg[39]  ( .D(n28), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[39]) );
  DFFSR \ACESS_CODE_reg[37]  ( .D(n26), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[37]) );
  DFFSR \ACESS_CODE_reg[36]  ( .D(n24), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[36]) );
  DFFSR \ACESS_CODE_reg[34]  ( .D(n22), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[34]) );
  DFFSR \ACESS_CODE_reg[33]  ( .D(n20), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[33]) );
  DFFSR \ACESS_CODE_reg[30]  ( .D(n18), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[30]) );
  DFFSR \ACESS_CODE_reg[29]  ( .D(n16), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[29]) );
  DFFSR \ACESS_CODE_reg[27]  ( .D(n14), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[27]) );
  DFFSR \ACESS_CODE_reg[26]  ( .D(n12), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[26]) );
  DFFSR \ACESS_CODE_reg[22]  ( .D(n10), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[22]) );
  DFFSR \ACESS_CODE_reg[21]  ( .D(n8), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[21]) );
  DFFSR \ACESS_CODE_reg[20]  ( .D(n6), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[20]) );
  DFFSR \ACESS_CODE_reg[3]  ( .D(n4), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[3]) );
  DFFSR \ACESS_CODE_reg[1]  ( .D(n2), .CLK(CLK), .R(n71), .S(1'b1), .Q(
        ACESS_CODE[1]) );
  INVX4 U3 ( .A(RST), .Y(n71) );
  BUFX4 U4 ( .A(n72), .Y(HEADER_EN) );
  OR2X1 U5 ( .A(ACESS_CODE[21]), .B(TRANS_EN), .Y(n8) );
  OR2X1 U6 ( .A(ACESS_CODE[71]), .B(TRANS_EN), .Y(n68) );
  OR2X1 U7 ( .A(ACESS_CODE[69]), .B(TRANS_EN), .Y(n66) );
  OR2X1 U8 ( .A(ACESS_CODE[67]), .B(TRANS_EN), .Y(n64) );
  OR2X1 U9 ( .A(ACESS_CODE[66]), .B(TRANS_EN), .Y(n62) );
  OR2X1 U10 ( .A(ACESS_CODE[65]), .B(TRANS_EN), .Y(n60) );
  OR2X1 U11 ( .A(ACESS_CODE[20]), .B(TRANS_EN), .Y(n6) );
  OR2X1 U12 ( .A(ACESS_CODE[63]), .B(TRANS_EN), .Y(n58) );
  OR2X1 U13 ( .A(ACESS_CODE[61]), .B(TRANS_EN), .Y(n56) );
  OR2X1 U14 ( .A(ACESS_CODE[60]), .B(TRANS_EN), .Y(n54) );
  OR2X1 U15 ( .A(ACESS_CODE[58]), .B(TRANS_EN), .Y(n52) );
  OR2X1 U16 ( .A(ACESS_CODE[57]), .B(TRANS_EN), .Y(n50) );
  OR2X1 U17 ( .A(ACESS_CODE[54]), .B(TRANS_EN), .Y(n48) );
  OR2X1 U18 ( .A(ACESS_CODE[53]), .B(TRANS_EN), .Y(n46) );
  OR2X1 U19 ( .A(ACESS_CODE[51]), .B(TRANS_EN), .Y(n44) );
  OR2X1 U20 ( .A(ACESS_CODE[50]), .B(TRANS_EN), .Y(n42) );
  OR2X1 U21 ( .A(ACESS_CODE[46]), .B(TRANS_EN), .Y(n40) );
  OR2X1 U22 ( .A(ACESS_CODE[3]), .B(TRANS_EN), .Y(n4) );
  OR2X1 U23 ( .A(ACESS_CODE[45]), .B(TRANS_EN), .Y(n38) );
  OR2X1 U24 ( .A(ACESS_CODE[44]), .B(TRANS_EN), .Y(n36) );
  OR2X1 U25 ( .A(ACESS_CODE[43]), .B(TRANS_EN), .Y(n34) );
  OR2X1 U26 ( .A(ACESS_CODE[42]), .B(TRANS_EN), .Y(n32) );
  OR2X1 U27 ( .A(ACESS_CODE[41]), .B(TRANS_EN), .Y(n30) );
  OR2X1 U28 ( .A(ACESS_CODE[39]), .B(TRANS_EN), .Y(n28) );
  OR2X1 U29 ( .A(ACESS_CODE[37]), .B(TRANS_EN), .Y(n26) );
  OR2X1 U30 ( .A(ACESS_CODE[36]), .B(TRANS_EN), .Y(n24) );
  OR2X1 U31 ( .A(ACESS_CODE[34]), .B(TRANS_EN), .Y(n22) );
  OR2X1 U32 ( .A(ACESS_CODE[33]), .B(TRANS_EN), .Y(n20) );
  OR2X1 U33 ( .A(ACESS_CODE[1]), .B(TRANS_EN), .Y(n2) );
  OR2X1 U34 ( .A(ACESS_CODE[30]), .B(TRANS_EN), .Y(n18) );
  OR2X1 U35 ( .A(ACESS_CODE[29]), .B(TRANS_EN), .Y(n16) );
  OR2X1 U36 ( .A(ACESS_CODE[27]), .B(TRANS_EN), .Y(n14) );
  OR2X1 U37 ( .A(ACESS_CODE[26]), .B(TRANS_EN), .Y(n12) );
  OR2X1 U111 ( .A(ACESS_CODE[22]), .B(TRANS_EN), .Y(n10) );
endmodule


module B_Controller_WAITSRAM24_WAITREG5264_WAITBAK49 ( CLK, RST, NEXT_EN, 
        ANT_LIN, EMPTY, RESEND_EN, TRANS_EN );
  input CLK, RST, NEXT_EN, ANT_LIN, EMPTY;
  output RESEND_EN, TRANS_EN;
  wire   n133, \bluewait[5] , \bluewait[4] , \bluewait[3] , \bluewait[2] ,
         \bluewait[1] , \bluewait[0] , \nbluewait[5] , \nbluewait[4] ,
         \nbluewait[3] , \nbluewait[2] , \nbluewait[1] , \nbluewait[0] ,
         \edge , N60, N61, N62, N63, N64, N65, N66, N67, N68, ebit,
         latch_not_empty, N270, N271, N272, N274, N275, N276, N277, N278, N279,
         N280, N281, N282, N283, N284, N285, N286, N287, N288, N289, N290,
         N291, N292, N293, N300, N303, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n126, n127, n128, n129, n130, n131,
         n132;
  wire   [2:0] state;
  wire   [2:0] cnt4;
  wire   [1:0] cnt2;
  wire   [2:0] ncnt4;
  wire   [1:0] ncnt2;
  wire   [2:0] resynstate;
  wire   [2:0] nnstate;

  LATCH latch_not_empty_reg ( .CLK(N300), .D(n132), .Q(latch_not_empty) );
  DFFSR \bluewait_reg[0]  ( .D(N60), .CLK(CLK), .R(n132), .S(1'b1), .Q(
        \bluewait[0] ) );
  LATCH \ncnt4_reg[2]  ( .CLK(N274), .D(N277), .Q(ncnt4[2]) );
  DFFSR \cnt4_reg[2]  ( .D(ncnt4[2]), .CLK(CLK), .R(n132), .S(1'b1), .Q(
        cnt4[2]) );
  DFFSR \state_reg[0]  ( .D(N66), .CLK(CLK), .R(n132), .S(1'b1), .Q(state[0])
         );
  LATCH \nnstate_reg[2]  ( .CLK(N290), .D(N293), .Q(nnstate[2]) );
  LATCH \resynstate_reg[2]  ( .CLK(N270), .D(n131), .Q(resynstate[2]) );
  DFFSR \state_reg[2]  ( .D(N68), .CLK(CLK), .R(n132), .S(1'b1), .Q(state[2])
         );
  LATCH \nnstate_reg[1]  ( .CLK(N290), .D(N292), .Q(nnstate[1]) );
  LATCH \resynstate_reg[1]  ( .CLK(N270), .D(N272), .Q(resynstate[1]) );
  DFFSR \state_reg[1]  ( .D(N67), .CLK(CLK), .R(n132), .S(1'b1), .Q(state[1])
         );
  LATCH ebit_reg ( .CLK(N285), .D(N286), .Q(ebit) );
  LATCH \ncnt2_reg[0]  ( .CLK(N287), .D(N288), .Q(ncnt2[0]) );
  DFFSR \cnt2_reg[0]  ( .D(ncnt2[0]), .CLK(CLK), .R(n132), .S(1'b1), .Q(
        cnt2[0]) );
  LATCH \ncnt2_reg[1]  ( .CLK(N287), .D(N289), .Q(ncnt2[1]) );
  DFFSR \cnt2_reg[1]  ( .D(ncnt2[1]), .CLK(CLK), .R(n132), .S(1'b1), .Q(
        cnt2[1]) );
  LATCH \nbluewait_reg[1]  ( .CLK(N278), .D(N280), .Q(\nbluewait[1] ) );
  DFFSR \bluewait_reg[1]  ( .D(N61), .CLK(CLK), .R(n132), .S(1'b1), .Q(
        \bluewait[1] ) );
  LATCH \nbluewait_reg[2]  ( .CLK(N278), .D(N281), .Q(\nbluewait[2] ) );
  DFFSR \bluewait_reg[2]  ( .D(N62), .CLK(CLK), .R(n132), .S(1'b1), .Q(
        \bluewait[2] ) );
  LATCH \nbluewait_reg[3]  ( .CLK(N278), .D(N282), .Q(\nbluewait[3] ) );
  DFFSR \bluewait_reg[3]  ( .D(N63), .CLK(CLK), .R(n132), .S(1'b1), .Q(
        \bluewait[3] ) );
  LATCH \nbluewait_reg[4]  ( .CLK(N278), .D(N283), .Q(\nbluewait[4] ) );
  DFFSR \bluewait_reg[4]  ( .D(N64), .CLK(CLK), .R(n132), .S(1'b1), .Q(
        \bluewait[4] ) );
  LATCH \nbluewait_reg[5]  ( .CLK(N278), .D(N284), .Q(\nbluewait[5] ) );
  DFFSR \bluewait_reg[5]  ( .D(N65), .CLK(CLK), .R(n132), .S(1'b1), .Q(
        \bluewait[5] ) );
  LATCH \nbluewait_reg[0]  ( .CLK(N278), .D(N279), .Q(\nbluewait[0] ) );
  LATCH \nnstate_reg[0]  ( .CLK(N290), .D(N291), .Q(nnstate[0]) );
  LATCH \resynstate_reg[0]  ( .CLK(N270), .D(N271), .Q(resynstate[0]) );
  LATCH \ncnt4_reg[1]  ( .CLK(N274), .D(N276), .Q(ncnt4[1]) );
  DFFSR \cnt4_reg[1]  ( .D(ncnt4[1]), .CLK(CLK), .R(n132), .S(1'b1), .Q(
        cnt4[1]) );
  LATCH \ncnt4_reg[0]  ( .CLK(N274), .D(N275), .Q(ncnt4[0]) );
  DFFSR \cnt4_reg[0]  ( .D(ncnt4[0]), .CLK(CLK), .R(n132), .S(1'b1), .Q(
        cnt4[0]) );
  LATCH edge_reg ( .CLK(N303), .D(n130), .Q(\edge ) );
  INVX2 U3 ( .A(RST), .Y(n132) );
  BUFX4 U4 ( .A(n133), .Y(TRANS_EN) );
  INVX1 U5 ( .A(N303), .Y(n130) );
  INVX1 U6 ( .A(n2), .Y(n131) );
  AOI22X1 U7 ( .A(n3), .B(nnstate[2]), .C(n4), .D(n5), .Y(n2) );
  OAI21X1 U8 ( .A(EMPTY), .B(n6), .C(n7), .Y(n133) );
  INVX1 U9 ( .A(RESEND_EN), .Y(n7) );
  NOR2X1 U10 ( .A(n8), .B(n6), .Y(RESEND_EN) );
  INVX1 U11 ( .A(n9), .Y(N68) );
  MUX2X1 U12 ( .B(resynstate[2]), .A(n5), .S(n10), .Y(n9) );
  OAI21X1 U13 ( .A(n11), .B(n12), .C(n13), .Y(n5) );
  AOI21X1 U14 ( .A(nnstate[2]), .B(n14), .C(n15), .Y(n13) );
  INVX1 U15 ( .A(n16), .Y(n15) );
  OAI21X1 U16 ( .A(n17), .B(n18), .C(n12), .Y(n14) );
  INVX1 U17 ( .A(n19), .Y(N67) );
  MUX2X1 U18 ( .B(resynstate[1]), .A(n20), .S(n10), .Y(n19) );
  INVX1 U19 ( .A(n21), .Y(N66) );
  MUX2X1 U20 ( .B(resynstate[0]), .A(n22), .S(n10), .Y(n21) );
  AND2X1 U21 ( .A(\nbluewait[5] ), .B(n10), .Y(N65) );
  AND2X1 U22 ( .A(\nbluewait[4] ), .B(n10), .Y(N64) );
  AND2X1 U23 ( .A(\nbluewait[3] ), .B(n10), .Y(N63) );
  AND2X1 U24 ( .A(\nbluewait[2] ), .B(n10), .Y(N62) );
  AND2X1 U25 ( .A(\nbluewait[1] ), .B(n10), .Y(N61) );
  AND2X1 U26 ( .A(\nbluewait[0] ), .B(n10), .Y(N60) );
  INVX1 U27 ( .A(\edge ), .Y(n10) );
  OAI21X1 U28 ( .A(\bluewait[5] ), .B(n23), .C(n132), .Y(N303) );
  NAND2X1 U29 ( .A(EMPTY), .B(n132), .Y(N300) );
  MUX2X1 U30 ( .B(n24), .A(n25), .S(n26), .Y(N293) );
  MUX2X1 U31 ( .B(n27), .A(n28), .S(n26), .Y(N292) );
  OR2X1 U32 ( .A(n8), .B(n18), .Y(n27) );
  OAI21X1 U33 ( .A(n25), .B(n26), .C(n24), .Y(N291) );
  OAI21X1 U34 ( .A(n29), .B(n30), .C(n31), .Y(N290) );
  MUX2X1 U35 ( .B(n32), .A(n33), .S(cnt2[1]), .Y(N289) );
  NAND2X1 U36 ( .A(n34), .B(cnt2[0]), .Y(n32) );
  NAND2X1 U37 ( .A(n31), .B(n6), .Y(N287) );
  NOR2X1 U38 ( .A(n35), .B(n36), .Y(N286) );
  OAI21X1 U39 ( .A(n35), .B(n30), .C(n31), .Y(N285) );
  NOR2X1 U40 ( .A(n37), .B(n38), .Y(N284) );
  XNOR2X1 U41 ( .A(n39), .B(n40), .Y(n37) );
  NAND2X1 U42 ( .A(n41), .B(\bluewait[4] ), .Y(n39) );
  NOR2X1 U43 ( .A(n42), .B(n38), .Y(N283) );
  XNOR2X1 U44 ( .A(\bluewait[4] ), .B(n41), .Y(n42) );
  NOR2X1 U45 ( .A(n43), .B(n44), .Y(n41) );
  NOR2X1 U46 ( .A(n45), .B(n38), .Y(N282) );
  XNOR2X1 U47 ( .A(n43), .B(n44), .Y(n45) );
  NAND3X1 U48 ( .A(\bluewait[1] ), .B(\bluewait[0] ), .C(\bluewait[2] ), .Y(
        n43) );
  MUX2X1 U49 ( .B(n46), .A(n47), .S(n48), .Y(N281) );
  NAND3X1 U50 ( .A(\bluewait[1] ), .B(\bluewait[0] ), .C(n49), .Y(n47) );
  AOI21X1 U51 ( .A(n49), .B(n50), .C(N279), .Y(n46) );
  MUX2X1 U52 ( .B(n51), .A(n52), .S(n50), .Y(N280) );
  NAND2X1 U53 ( .A(n49), .B(\bluewait[0] ), .Y(n52) );
  INVX1 U54 ( .A(n38), .Y(n49) );
  INVX1 U55 ( .A(N279), .Y(n51) );
  NOR2X1 U56 ( .A(n38), .B(\bluewait[0] ), .Y(N279) );
  OAI21X1 U57 ( .A(n53), .B(n54), .C(n17), .Y(n38) );
  NAND2X1 U58 ( .A(n29), .B(n55), .Y(n54) );
  NAND2X1 U59 ( .A(n35), .B(n56), .Y(n53) );
  NAND3X1 U60 ( .A(n29), .B(n31), .C(n57), .Y(N278) );
  NOR2X1 U61 ( .A(n58), .B(n59), .Y(n57) );
  OAI22X1 U62 ( .A(n11), .B(n56), .C(n55), .D(n60), .Y(N277) );
  MUX2X1 U63 ( .B(n61), .A(n62), .S(n63), .Y(n60) );
  NOR2X1 U64 ( .A(n64), .B(n65), .Y(n62) );
  NAND2X1 U65 ( .A(n66), .B(n67), .Y(n65) );
  OAI21X1 U66 ( .A(cnt4[1]), .B(n36), .C(n68), .Y(n61) );
  INVX1 U67 ( .A(n69), .Y(n68) );
  NOR2X1 U68 ( .A(n70), .B(n71), .Y(N276) );
  MUX2X1 U69 ( .B(n69), .A(n72), .S(n64), .Y(n71) );
  AND2X1 U70 ( .A(n67), .B(n66), .Y(n72) );
  OAI21X1 U71 ( .A(n66), .B(n36), .C(n67), .Y(n69) );
  INVX1 U72 ( .A(n30), .Y(n67) );
  OAI21X1 U73 ( .A(n55), .B(n73), .C(n74), .Y(N275) );
  MUX2X1 U74 ( .B(n75), .A(n76), .S(n8), .Y(n74) );
  MUX2X1 U75 ( .B(n77), .A(cnt4[0]), .S(n30), .Y(n73) );
  OAI21X1 U76 ( .A(n66), .B(n64), .C(ANT_LIN), .Y(n77) );
  NOR2X1 U77 ( .A(n78), .B(n36), .Y(n66) );
  INVX1 U78 ( .A(ANT_LIN), .Y(n36) );
  OAI21X1 U79 ( .A(n30), .B(n79), .C(n80), .Y(N274) );
  NOR2X1 U80 ( .A(n59), .B(n81), .Y(n80) );
  MUX2X1 U81 ( .B(n76), .A(n75), .S(n26), .Y(n79) );
  XNOR2X1 U82 ( .A(n8), .B(ANT_LIN), .Y(n26) );
  INVX1 U83 ( .A(ebit), .Y(n8) );
  NAND3X1 U84 ( .A(\bluewait[3] ), .B(\bluewait[4] ), .C(n82), .Y(n30) );
  NOR2X1 U85 ( .A(\bluewait[5] ), .B(n83), .Y(n82) );
  NAND3X1 U86 ( .A(n35), .B(n56), .C(n84), .Y(N272) );
  AOI22X1 U87 ( .A(n20), .B(n4), .C(nnstate[1]), .D(n3), .Y(n84) );
  NAND3X1 U88 ( .A(n35), .B(n16), .C(n85), .Y(n20) );
  AOI22X1 U89 ( .A(n86), .B(n87), .C(n88), .D(n11), .Y(n85) );
  INVX1 U90 ( .A(n56), .Y(n88) );
  OAI21X1 U91 ( .A(n12), .B(n17), .C(n18), .Y(n87) );
  AND2X1 U92 ( .A(n28), .B(n24), .Y(n12) );
  OR2X1 U93 ( .A(n17), .B(nnstate[1]), .Y(n86) );
  OAI21X1 U94 ( .A(n89), .B(n90), .C(n4), .Y(n16) );
  OR2X1 U95 ( .A(n91), .B(cnt2[1]), .Y(n90) );
  INVX1 U96 ( .A(cnt2[0]), .Y(n89) );
  NAND3X1 U97 ( .A(n78), .B(n64), .C(n92), .Y(n56) );
  NOR2X1 U98 ( .A(n70), .B(n63), .Y(n92) );
  NAND2X1 U99 ( .A(n93), .B(n94), .Y(N271) );
  AOI21X1 U100 ( .A(n3), .B(nnstate[0]), .C(n95), .Y(n94) );
  INVX1 U101 ( .A(n29), .Y(n3) );
  NOR2X1 U102 ( .A(n76), .B(n75), .Y(n29) );
  AOI21X1 U103 ( .A(n4), .B(n22), .C(n58), .Y(n93) );
  NAND3X1 U104 ( .A(n96), .B(n97), .C(n98), .Y(n22) );
  AOI21X1 U105 ( .A(NEXT_EN), .B(n91), .C(n99), .Y(n98) );
  OAI21X1 U106 ( .A(n100), .B(n101), .C(n33), .Y(n99) );
  INVX1 U107 ( .A(N288), .Y(n33) );
  NOR2X1 U108 ( .A(n6), .B(cnt2[0]), .Y(N288) );
  INVX1 U109 ( .A(nnstate[0]), .Y(n101) );
  AOI21X1 U110 ( .A(n75), .B(n11), .C(n76), .Y(n100) );
  INVX1 U111 ( .A(n24), .Y(n75) );
  NAND3X1 U112 ( .A(n102), .B(n103), .C(state[2]), .Y(n24) );
  INVX1 U113 ( .A(n104), .Y(n91) );
  MUX2X1 U114 ( .B(n58), .A(n105), .S(n17), .Y(n97) );
  INVX1 U115 ( .A(n11), .Y(n17) );
  NOR2X1 U116 ( .A(n106), .B(n107), .Y(n11) );
  NAND3X1 U117 ( .A(\bluewait[4] ), .B(\bluewait[0] ), .C(\bluewait[5] ), .Y(
        n107) );
  NAND3X1 U118 ( .A(n48), .B(n44), .C(n50), .Y(n106) );
  NAND2X1 U119 ( .A(n25), .B(n70), .Y(n105) );
  INVX1 U120 ( .A(n76), .Y(n25) );
  NAND2X1 U121 ( .A(n18), .B(n28), .Y(n76) );
  NAND3X1 U122 ( .A(state[0]), .B(n103), .C(state[2]), .Y(n28) );
  NAND3X1 U123 ( .A(state[0]), .B(n108), .C(state[1]), .Y(n18) );
  INVX1 U124 ( .A(n35), .Y(n58) );
  NAND3X1 U125 ( .A(n102), .B(n108), .C(state[1]), .Y(n35) );
  AOI21X1 U126 ( .A(cnt2[1]), .B(n34), .C(n95), .Y(n96) );
  NAND2X1 U127 ( .A(n55), .B(n109), .Y(n95) );
  OAI21X1 U128 ( .A(latch_not_empty), .B(n110), .C(n81), .Y(n109) );
  INVX1 U129 ( .A(n31), .Y(n81) );
  INVX1 U130 ( .A(EMPTY), .Y(n110) );
  OAI21X1 U131 ( .A(n63), .B(n111), .C(n59), .Y(n55) );
  INVX1 U132 ( .A(n70), .Y(n59) );
  NAND3X1 U133 ( .A(n103), .B(n108), .C(state[0]), .Y(n70) );
  NAND2X1 U134 ( .A(n78), .B(n64), .Y(n111) );
  INVX1 U135 ( .A(cnt4[1]), .Y(n64) );
  INVX1 U136 ( .A(cnt4[0]), .Y(n78) );
  INVX1 U137 ( .A(cnt4[2]), .Y(n63) );
  INVX1 U138 ( .A(n6), .Y(n34) );
  OR2X1 U139 ( .A(n4), .B(n126), .Y(N270) );
  OAI21X1 U140 ( .A(n23), .B(n40), .C(n31), .Y(n126) );
  NAND3X1 U141 ( .A(n103), .B(n108), .C(n102), .Y(n31) );
  INVX1 U142 ( .A(state[2]), .Y(n108) );
  INVX1 U143 ( .A(state[1]), .Y(n103) );
  INVX1 U144 ( .A(\bluewait[5] ), .Y(n40) );
  NAND3X1 U145 ( .A(n44), .B(n127), .C(n128), .Y(n23) );
  INVX1 U146 ( .A(n83), .Y(n128) );
  NAND3X1 U147 ( .A(n50), .B(n48), .C(n129), .Y(n83) );
  INVX1 U148 ( .A(\bluewait[0] ), .Y(n129) );
  INVX1 U149 ( .A(\bluewait[2] ), .Y(n48) );
  INVX1 U164 ( .A(\bluewait[1] ), .Y(n50) );
  INVX1 U165 ( .A(\bluewait[4] ), .Y(n127) );
  INVX1 U166 ( .A(\bluewait[3] ), .Y(n44) );
  NAND2X1 U167 ( .A(n104), .B(n6), .Y(n4) );
  NAND3X1 U168 ( .A(state[1]), .B(state[0]), .C(state[2]), .Y(n6) );
  NAND3X1 U169 ( .A(state[1]), .B(n102), .C(state[2]), .Y(n104) );
  INVX1 U170 ( .A(state[0]), .Y(n102) );
endmodule


module B_EncodePacket_STROBCYC15_WAITSRAM24_WAITREG5264 ( CLK, RST, ENCODE_EN, 
        DATA, PAYLOAD, ESTORE_EN, NEXT_EN, READ_EN );
  input [7:0] DATA;
  output [7:0] PAYLOAD;
  input CLK, RST, ENCODE_EN;
  output ESTORE_EN, NEXT_EN, READ_EN;
  wire   \swcnt[14] , \swcnt[13] , \swcnt[12] , \swcnt[11] , \swcnt[10] ,
         \swcnt[9] , \swcnt[8] , \swcnt[7] , \swcnt[6] , \swcnt[5] ,
         \swcnt[4] , \swcnt[3] , \swcnt[2] , \swcnt[1] , \swcnt[0] ,
         nestore_en, nread_en, \nswcnt[14] , \nswcnt[13] , \nswcnt[12] ,
         \nswcnt[11] , \nswcnt[10] , \nswcnt[9] , \nswcnt[8] , \nswcnt[7] ,
         \nswcnt[6] , \nswcnt[5] , \nswcnt[4] , \nswcnt[3] , \nswcnt[2] ,
         \nswcnt[1] , \nswcnt[0] , txwait, N363, N364, N365, N366, N367, N368,
         N369, N370, N371, N372, N373, N374, N375, N376, N377, N378, N379,
         N380, N381, N382, N383, N384, N385, N386, N387, N388, N389, N390,
         N391, N392, N394, N395, N396, N397, N398, N399, N400, N401, N402,
         N403, N404, N405, N406, N407, N408, N409, N410, N411, N412, N413,
         N414, N415, N416, N417, N418, N419, N420, N421, N422, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n55, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245;
  wire   [2:0] state;
  wire   [5:0] cnt32;
  wire   [3:0] cnt8;
  wire   [15:0] lfsr;
  wire   [2:0] nstate;
  wire   [5:0] ncnt32;
  wire   [3:0] ncnt8;
  wire   [15:0] nlfsr;
  tri   [7:0] DATA;

  LATCH \nswcnt_reg[0]  ( .CLK(N406), .D(N407), .Q(\nswcnt[0] ) );
  DFFSR \swcnt_reg[0]  ( .D(\nswcnt[0] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[0] ) );
  LATCH \nswcnt_reg[1]  ( .CLK(N406), .D(N408), .Q(\nswcnt[1] ) );
  DFFSR \swcnt_reg[1]  ( .D(\nswcnt[1] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[1] ) );
  LATCH \nswcnt_reg[14]  ( .CLK(N406), .D(N421), .Q(\nswcnt[14] ) );
  DFFSR \swcnt_reg[14]  ( .D(\nswcnt[14] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[14] ) );
  DFFSR \state_reg[0]  ( .D(nstate[0]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        state[0]) );
  LATCH \nswcnt_reg[2]  ( .CLK(N406), .D(N409), .Q(\nswcnt[2] ) );
  DFFSR \swcnt_reg[2]  ( .D(\nswcnt[2] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[2] ) );
  LATCH \nswcnt_reg[3]  ( .CLK(N406), .D(N410), .Q(\nswcnt[3] ) );
  DFFSR \swcnt_reg[3]  ( .D(\nswcnt[3] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[3] ) );
  LATCH \nswcnt_reg[4]  ( .CLK(N406), .D(N411), .Q(\nswcnt[4] ) );
  DFFSR \swcnt_reg[4]  ( .D(\nswcnt[4] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[4] ) );
  LATCH \nswcnt_reg[5]  ( .CLK(N406), .D(N412), .Q(\nswcnt[5] ) );
  DFFSR \swcnt_reg[5]  ( .D(\nswcnt[5] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[5] ) );
  LATCH \nswcnt_reg[6]  ( .CLK(N406), .D(N413), .Q(\nswcnt[6] ) );
  DFFSR \swcnt_reg[6]  ( .D(\nswcnt[6] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[6] ) );
  LATCH \nswcnt_reg[7]  ( .CLK(N406), .D(N414), .Q(\nswcnt[7] ) );
  DFFSR \swcnt_reg[7]  ( .D(\nswcnt[7] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[7] ) );
  LATCH \nswcnt_reg[8]  ( .CLK(N406), .D(N415), .Q(\nswcnt[8] ) );
  DFFSR \swcnt_reg[8]  ( .D(\nswcnt[8] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[8] ) );
  LATCH \nswcnt_reg[9]  ( .CLK(N406), .D(N416), .Q(\nswcnt[9] ) );
  DFFSR \swcnt_reg[9]  ( .D(\nswcnt[9] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[9] ) );
  LATCH \nswcnt_reg[10]  ( .CLK(N406), .D(N417), .Q(\nswcnt[10] ) );
  DFFSR \swcnt_reg[10]  ( .D(\nswcnt[10] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[10] ) );
  LATCH \nswcnt_reg[11]  ( .CLK(N406), .D(N418), .Q(\nswcnt[11] ) );
  DFFSR \swcnt_reg[11]  ( .D(\nswcnt[11] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[11] ) );
  LATCH \nswcnt_reg[12]  ( .CLK(N406), .D(N419), .Q(\nswcnt[12] ) );
  DFFSR \swcnt_reg[12]  ( .D(\nswcnt[12] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[12] ) );
  LATCH \nswcnt_reg[13]  ( .CLK(N406), .D(N420), .Q(\nswcnt[13] ) );
  DFFSR \swcnt_reg[13]  ( .D(\nswcnt[13] ), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        \swcnt[13] ) );
  LATCH \ncnt32_reg[0]  ( .CLK(N394), .D(N395), .Q(ncnt32[0]) );
  DFFSR \cnt32_reg[0]  ( .D(ncnt32[0]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        cnt32[0]) );
  LATCH \ncnt8_reg[3]  ( .CLK(N401), .D(N405), .Q(ncnt8[3]) );
  DFFSR \cnt8_reg[3]  ( .D(ncnt8[3]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        cnt8[3]) );
  DFFSR \state_reg[2]  ( .D(nstate[2]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        state[2]) );
  DFFSR \state_reg[1]  ( .D(nstate[1]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        state[1]) );
  LATCH \ncnt8_reg[0]  ( .CLK(N401), .D(N402), .Q(ncnt8[0]) );
  DFFSR \cnt8_reg[0]  ( .D(ncnt8[0]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        cnt8[0]) );
  LATCH \ncnt8_reg[1]  ( .CLK(N401), .D(N403), .Q(ncnt8[1]) );
  DFFSR \cnt8_reg[1]  ( .D(ncnt8[1]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        cnt8[1]) );
  LATCH \ncnt8_reg[2]  ( .CLK(N401), .D(N404), .Q(ncnt8[2]) );
  DFFSR \cnt8_reg[2]  ( .D(ncnt8[2]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        cnt8[2]) );
  LATCH NEXT_EN_reg ( .CLK(N372), .D(n243), .Q(NEXT_EN) );
  LATCH txwait_reg ( .CLK(N422), .D(n244), .Q(txwait) );
  LATCH \ncnt32_reg[5]  ( .CLK(N394), .D(N400), .Q(ncnt32[5]) );
  DFFSR \cnt32_reg[5]  ( .D(ncnt32[5]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        cnt32[5]) );
  LATCH \ncnt32_reg[1]  ( .CLK(N394), .D(N396), .Q(ncnt32[1]) );
  DFFSR \cnt32_reg[1]  ( .D(ncnt32[1]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        cnt32[1]) );
  LATCH \ncnt32_reg[2]  ( .CLK(N394), .D(N397), .Q(ncnt32[2]) );
  DFFSR \cnt32_reg[2]  ( .D(ncnt32[2]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        cnt32[2]) );
  LATCH \ncnt32_reg[3]  ( .CLK(N394), .D(N398), .Q(ncnt32[3]) );
  DFFSR \cnt32_reg[3]  ( .D(ncnt32[3]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        cnt32[3]) );
  LATCH \ncnt32_reg[4]  ( .CLK(N394), .D(N399), .Q(ncnt32[4]) );
  DFFSR \cnt32_reg[4]  ( .D(ncnt32[4]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        cnt32[4]) );
  LATCH \nlfsr_reg[0]  ( .CLK(n2), .D(N374), .Q(nlfsr[0]) );
  DFFSR \lfsr_reg[0]  ( .D(nlfsr[0]), .CLK(CLK), .R(1'b1), .S(n245), .Q(
        lfsr[0]) );
  LATCH \nlfsr_reg[1]  ( .CLK(N373), .D(N375), .Q(nlfsr[1]) );
  DFFSR \lfsr_reg[1]  ( .D(nlfsr[1]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        lfsr[1]) );
  LATCH \nlfsr_reg[2]  ( .CLK(n2), .D(N376), .Q(nlfsr[2]) );
  DFFSR \lfsr_reg[2]  ( .D(nlfsr[2]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        lfsr[2]) );
  LATCH \nlfsr_reg[3]  ( .CLK(N373), .D(N377), .Q(nlfsr[3]) );
  DFFSR \lfsr_reg[3]  ( .D(nlfsr[3]), .CLK(CLK), .R(1'b1), .S(n245), .Q(
        lfsr[3]) );
  LATCH \nlfsr_reg[4]  ( .CLK(n2), .D(N378), .Q(nlfsr[4]) );
  DFFSR \lfsr_reg[4]  ( .D(nlfsr[4]), .CLK(CLK), .R(1'b1), .S(n245), .Q(
        lfsr[4]) );
  LATCH \nlfsr_reg[5]  ( .CLK(N373), .D(N379), .Q(nlfsr[5]) );
  DFFSR \lfsr_reg[5]  ( .D(nlfsr[5]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        lfsr[5]) );
  LATCH \nlfsr_reg[6]  ( .CLK(n2), .D(N380), .Q(nlfsr[6]) );
  DFFSR \lfsr_reg[6]  ( .D(nlfsr[6]), .CLK(CLK), .R(1'b1), .S(n245), .Q(
        lfsr[6]) );
  LATCH \nlfsr_reg[7]  ( .CLK(N373), .D(N381), .Q(nlfsr[7]) );
  DFFSR \lfsr_reg[7]  ( .D(nlfsr[7]), .CLK(CLK), .R(1'b1), .S(n245), .Q(
        lfsr[7]) );
  LATCH \nlfsr_reg[8]  ( .CLK(n2), .D(N382), .Q(nlfsr[8]) );
  DFFSR \lfsr_reg[8]  ( .D(nlfsr[8]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        lfsr[8]) );
  LATCH \nlfsr_reg[9]  ( .CLK(N373), .D(N383), .Q(nlfsr[9]) );
  DFFSR \lfsr_reg[9]  ( .D(nlfsr[9]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        lfsr[9]) );
  LATCH \nlfsr_reg[10]  ( .CLK(n2), .D(N384), .Q(nlfsr[10]) );
  DFFSR \lfsr_reg[10]  ( .D(nlfsr[10]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        lfsr[10]) );
  LATCH \nlfsr_reg[11]  ( .CLK(N373), .D(N385), .Q(nlfsr[11]) );
  DFFSR \lfsr_reg[11]  ( .D(nlfsr[11]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        lfsr[11]) );
  LATCH \nlfsr_reg[12]  ( .CLK(n2), .D(N386), .Q(nlfsr[12]) );
  DFFSR \lfsr_reg[12]  ( .D(nlfsr[12]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        lfsr[12]) );
  LATCH \nlfsr_reg[13]  ( .CLK(N373), .D(N387), .Q(nlfsr[13]) );
  DFFSR \lfsr_reg[13]  ( .D(nlfsr[13]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        lfsr[13]) );
  LATCH \nlfsr_reg[14]  ( .CLK(n2), .D(N388), .Q(nlfsr[14]) );
  DFFSR \lfsr_reg[14]  ( .D(nlfsr[14]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        lfsr[14]) );
  LATCH \nlfsr_reg[15]  ( .CLK(N373), .D(N389), .Q(nlfsr[15]) );
  DFFSR \lfsr_reg[15]  ( .D(nlfsr[15]), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        lfsr[15]) );
  LATCH nread_en_reg ( .CLK(N392), .D(n242), .Q(nread_en) );
  DFFSR READ_EN_reg ( .D(nread_en), .CLK(CLK), .R(n245), .S(1'b1), .Q(READ_EN)
         );
  LATCH \PAYLOAD_reg[0]  ( .CLK(N363), .D(N364), .Q(PAYLOAD[0]) );
  LATCH \PAYLOAD_reg[1]  ( .CLK(N363), .D(N365), .Q(PAYLOAD[1]) );
  LATCH \PAYLOAD_reg[2]  ( .CLK(N363), .D(N366), .Q(PAYLOAD[2]) );
  LATCH \PAYLOAD_reg[3]  ( .CLK(N363), .D(N367), .Q(PAYLOAD[3]) );
  LATCH \PAYLOAD_reg[4]  ( .CLK(N363), .D(N368), .Q(PAYLOAD[4]) );
  LATCH \PAYLOAD_reg[5]  ( .CLK(N363), .D(N369), .Q(PAYLOAD[5]) );
  LATCH \PAYLOAD_reg[6]  ( .CLK(N363), .D(N370), .Q(PAYLOAD[6]) );
  LATCH \PAYLOAD_reg[7]  ( .CLK(N363), .D(N371), .Q(PAYLOAD[7]) );
  LATCH nestore_en_reg ( .CLK(N390), .D(N391), .Q(nestore_en) );
  DFFSR ESTORE_EN_reg ( .D(nestore_en), .CLK(CLK), .R(n245), .S(1'b1), .Q(
        ESTORE_EN) );
  INVX8 U18 ( .A(RST), .Y(n245) );
  BUFX2 U19 ( .A(n76), .Y(n1) );
  OR2X2 U20 ( .A(n114), .B(N372), .Y(N406) );
  OAI21X1 U29 ( .A(n65), .B(n136), .C(n132), .Y(n2) );
  INVX2 U30 ( .A(n58), .Y(n3) );
  OAI21X1 U31 ( .A(n4), .B(n5), .C(n6), .Y(nstate[2]) );
  NAND3X1 U32 ( .A(n7), .B(n8), .C(n9), .Y(nstate[1]) );
  AOI22X1 U33 ( .A(n55), .B(n57), .C(n58), .D(n59), .Y(n9) );
  NAND2X1 U34 ( .A(n60), .B(n61), .Y(nstate[0]) );
  INVX1 U35 ( .A(n62), .Y(n61) );
  AOI22X1 U36 ( .A(n58), .B(n63), .C(ENCODE_EN), .D(n243), .Y(n60) );
  OAI21X1 U37 ( .A(n64), .B(n65), .C(n66), .Y(n63) );
  NOR2X1 U38 ( .A(n8), .B(n67), .Y(n242) );
  NAND2X1 U39 ( .A(n68), .B(n69), .Y(n67) );
  INVX1 U40 ( .A(n70), .Y(n69) );
  OAI21X1 U41 ( .A(n8), .B(n71), .C(n72), .Y(N422) );
  AOI21X1 U42 ( .A(n73), .B(n74), .C(n243), .Y(n72) );
  INVX1 U43 ( .A(n75), .Y(n71) );
  NOR2X1 U44 ( .A(n1), .B(n77), .Y(N421) );
  XNOR2X1 U67 ( .A(\swcnt[14] ), .B(n78), .Y(n77) );
  NOR2X1 U69 ( .A(n79), .B(n80), .Y(n78) );
  NOR2X1 U70 ( .A(n1), .B(n81), .Y(N420) );
  XNOR2X1 U71 ( .A(n80), .B(n79), .Y(n81) );
  NAND2X1 U72 ( .A(n82), .B(\swcnt[12] ), .Y(n80) );
  NOR2X1 U73 ( .A(n1), .B(n83), .Y(N419) );
  XNOR2X1 U74 ( .A(\swcnt[12] ), .B(n82), .Y(n83) );
  NOR2X1 U75 ( .A(n84), .B(n85), .Y(n82) );
  NOR2X1 U76 ( .A(n1), .B(n86), .Y(N418) );
  XNOR2X1 U77 ( .A(n84), .B(n85), .Y(n86) );
  NAND2X1 U78 ( .A(n87), .B(\swcnt[10] ), .Y(n84) );
  NOR2X1 U79 ( .A(n1), .B(n88), .Y(N417) );
  XNOR2X1 U80 ( .A(\swcnt[10] ), .B(n87), .Y(n88) );
  NOR2X1 U81 ( .A(n89), .B(n90), .Y(n87) );
  NOR2X1 U82 ( .A(n1), .B(n91), .Y(N416) );
  XNOR2X1 U83 ( .A(n89), .B(n90), .Y(n91) );
  INVX1 U84 ( .A(\swcnt[9] ), .Y(n90) );
  NAND2X1 U85 ( .A(n92), .B(\swcnt[8] ), .Y(n89) );
  NOR2X1 U86 ( .A(n1), .B(n93), .Y(N415) );
  XNOR2X1 U87 ( .A(\swcnt[8] ), .B(n92), .Y(n93) );
  NOR2X1 U88 ( .A(n94), .B(n95), .Y(n92) );
  NOR2X1 U89 ( .A(n1), .B(n96), .Y(N414) );
  XNOR2X1 U90 ( .A(n94), .B(n95), .Y(n96) );
  NAND2X1 U91 ( .A(n97), .B(\swcnt[6] ), .Y(n94) );
  NOR2X1 U92 ( .A(n1), .B(n98), .Y(N413) );
  XNOR2X1 U93 ( .A(\swcnt[6] ), .B(n97), .Y(n98) );
  NOR2X1 U94 ( .A(n99), .B(n100), .Y(n97) );
  NOR2X1 U95 ( .A(n1), .B(n101), .Y(N412) );
  XNOR2X1 U96 ( .A(n99), .B(n100), .Y(n101) );
  NAND2X1 U97 ( .A(n102), .B(\swcnt[4] ), .Y(n99) );
  NOR2X1 U98 ( .A(n1), .B(n103), .Y(N411) );
  XNOR2X1 U99 ( .A(\swcnt[4] ), .B(n102), .Y(n103) );
  NOR2X1 U100 ( .A(n104), .B(n105), .Y(n102) );
  NOR2X1 U101 ( .A(n1), .B(n106), .Y(N410) );
  XNOR2X1 U102 ( .A(n104), .B(n105), .Y(n106) );
  NAND2X1 U103 ( .A(\swcnt[2] ), .B(n107), .Y(n104) );
  NOR2X1 U104 ( .A(n1), .B(n108), .Y(N409) );
  XNOR2X1 U105 ( .A(\swcnt[2] ), .B(n107), .Y(n108) );
  AOI21X1 U106 ( .A(n109), .B(n110), .C(n111), .Y(n107) );
  NOR2X1 U107 ( .A(n1), .B(n112), .Y(N408) );
  XNOR2X1 U108 ( .A(n113), .B(n110), .Y(n112) );
  XNOR2X1 U109 ( .A(n109), .B(n111), .Y(n113) );
  NAND2X1 U110 ( .A(\swcnt[0] ), .B(n114), .Y(n109) );
  NOR2X1 U111 ( .A(n1), .B(n115), .Y(N407) );
  XNOR2X1 U112 ( .A(\swcnt[0] ), .B(n114), .Y(n115) );
  NOR2X1 U113 ( .A(n116), .B(n62), .Y(n76) );
  OAI22X1 U114 ( .A(n75), .B(n8), .C(n55), .D(n110), .Y(n62) );
  NOR2X1 U115 ( .A(n117), .B(n118), .Y(n55) );
  NAND3X1 U116 ( .A(\swcnt[6] ), .B(\swcnt[14] ), .C(\swcnt[9] ), .Y(n118) );
  NAND3X1 U117 ( .A(\swcnt[12] ), .B(n68), .C(n119), .Y(n117) );
  NOR2X1 U118 ( .A(\swcnt[0] ), .B(n120), .Y(n119) );
  OAI22X1 U119 ( .A(n5), .B(n4), .C(n121), .D(n73), .Y(n116) );
  NAND3X1 U120 ( .A(n5), .B(n122), .C(n8), .Y(n114) );
  NOR2X1 U121 ( .A(n123), .B(n7), .Y(N405) );
  XNOR2X1 U122 ( .A(cnt8[3]), .B(n124), .Y(n123) );
  NOR2X1 U123 ( .A(n125), .B(n126), .Y(n124) );
  NOR2X1 U124 ( .A(n127), .B(n7), .Y(N404) );
  XNOR2X1 U125 ( .A(n125), .B(n126), .Y(n127) );
  INVX1 U126 ( .A(n128), .Y(N403) );
  AOI22X1 U127 ( .A(cnt8[1]), .B(N402), .C(n129), .D(n130), .Y(n128) );
  NOR2X1 U128 ( .A(n7), .B(cnt8[0]), .Y(N402) );
  INVX1 U129 ( .A(n129), .Y(n7) );
  NOR2X1 U130 ( .A(n3), .B(n131), .Y(n129) );
  NAND2X1 U131 ( .A(n132), .B(n133), .Y(N401) );
  OAI21X1 U132 ( .A(n73), .B(n134), .C(n135), .Y(n133) );
  INVX1 U133 ( .A(n136), .Y(n135) );
  MUX2X1 U134 ( .B(n137), .A(n138), .S(cnt32[5]), .Y(N400) );
  AOI21X1 U135 ( .A(n139), .B(n140), .C(n141), .Y(n138) );
  OR2X1 U136 ( .A(n140), .B(n142), .Y(n137) );
  MUX2X1 U137 ( .B(n143), .A(n142), .S(n140), .Y(N399) );
  INVX1 U138 ( .A(cnt32[4]), .Y(n140) );
  NAND3X1 U139 ( .A(n139), .B(n144), .C(cnt32[3]), .Y(n142) );
  INVX1 U140 ( .A(n141), .Y(n143) );
  OAI21X1 U141 ( .A(cnt32[3]), .B(n145), .C(n146), .Y(n141) );
  MUX2X1 U142 ( .B(n147), .A(n146), .S(cnt32[3]), .Y(N398) );
  INVX1 U143 ( .A(n148), .Y(n146) );
  OAI21X1 U144 ( .A(n144), .B(n145), .C(n149), .Y(n148) );
  NAND2X1 U145 ( .A(n139), .B(n144), .Y(n147) );
  INVX1 U146 ( .A(n150), .Y(n144) );
  NAND3X1 U147 ( .A(cnt32[1]), .B(cnt32[0]), .C(cnt32[2]), .Y(n150) );
  MUX2X1 U148 ( .B(n151), .A(n152), .S(n153), .Y(N397) );
  NAND3X1 U149 ( .A(cnt32[1]), .B(cnt32[0]), .C(n139), .Y(n152) );
  INVX1 U150 ( .A(n154), .Y(n151) );
  OAI21X1 U151 ( .A(n145), .B(cnt32[1]), .C(n155), .Y(n154) );
  MUX2X1 U152 ( .B(n156), .A(n155), .S(cnt32[1]), .Y(N396) );
  INVX1 U153 ( .A(n157), .Y(n155) );
  OAI21X1 U154 ( .A(cnt32[0]), .B(n145), .C(n149), .Y(n157) );
  NAND2X1 U155 ( .A(n139), .B(cnt32[0]), .Y(n156) );
  MUX2X1 U156 ( .B(n145), .A(n149), .S(cnt32[0]), .Y(N395) );
  NAND2X1 U157 ( .A(n244), .B(n158), .Y(n149) );
  INVX1 U158 ( .A(n8), .Y(n244) );
  INVX1 U159 ( .A(n139), .Y(n145) );
  NOR2X1 U160 ( .A(n158), .B(n8), .Y(n139) );
  NAND3X1 U161 ( .A(n8), .B(n6), .C(n132), .Y(N394) );
  NAND3X1 U162 ( .A(n58), .B(n131), .C(n64), .Y(n6) );
  INVX1 U163 ( .A(n59), .Y(n64) );
  NAND2X1 U164 ( .A(cnt32[5]), .B(n159), .Y(n59) );
  INVX1 U165 ( .A(n160), .Y(n159) );
  INVX1 U166 ( .A(n65), .Y(n131) );
  OAI21X1 U167 ( .A(n75), .B(n8), .C(n132), .Y(N392) );
  NAND3X1 U168 ( .A(state[1]), .B(n161), .C(state[0]), .Y(n8) );
  NOR2X1 U169 ( .A(n162), .B(n163), .Y(n75) );
  NAND3X1 U170 ( .A(\swcnt[3] ), .B(n164), .C(\swcnt[4] ), .Y(n163) );
  NAND3X1 U171 ( .A(n165), .B(n95), .C(n166), .Y(n162) );
  INVX1 U172 ( .A(\swcnt[7] ), .Y(n95) );
  OAI21X1 U173 ( .A(n122), .B(n158), .C(n167), .Y(N391) );
  INVX1 U174 ( .A(n74), .Y(n122) );
  NOR2X1 U175 ( .A(n134), .B(n136), .Y(n74) );
  NAND3X1 U176 ( .A(n5), .B(n168), .C(n3), .Y(N390) );
  AND2X1 U177 ( .A(n58), .B(lfsr[14]), .Y(N389) );
  AND2X1 U178 ( .A(n58), .B(lfsr[13]), .Y(N388) );
  AND2X1 U179 ( .A(n58), .B(lfsr[12]), .Y(N387) );
  MUX2X1 U180 ( .B(n169), .A(n170), .S(lfsr[11]), .Y(N386) );
  NOR2X1 U181 ( .A(n3), .B(n171), .Y(N385) );
  NOR2X1 U182 ( .A(n3), .B(n172), .Y(N384) );
  NOR2X1 U183 ( .A(n3), .B(n173), .Y(N383) );
  AND2X1 U184 ( .A(n58), .B(lfsr[7]), .Y(N382) );
  OAI21X1 U185 ( .A(n121), .B(n174), .C(n132), .Y(N381) );
  INVX1 U186 ( .A(lfsr[6]), .Y(n174) );
  OAI21X1 U187 ( .A(n121), .B(n175), .C(n132), .Y(N380) );
  INVX1 U188 ( .A(lfsr[5]), .Y(n175) );
  MUX2X1 U189 ( .B(n169), .A(n170), .S(lfsr[4]), .Y(N379) );
  NAND2X1 U190 ( .A(n58), .B(n176), .Y(n170) );
  OAI21X1 U191 ( .A(n121), .B(n177), .C(n132), .Y(N378) );
  INVX1 U192 ( .A(lfsr[3]), .Y(n177) );
  OAI21X1 U193 ( .A(n121), .B(n178), .C(n132), .Y(N377) );
  NOR2X1 U194 ( .A(n3), .B(n179), .Y(N376) );
  NOR2X1 U195 ( .A(n3), .B(n180), .Y(N375) );
  NAND2X1 U196 ( .A(n132), .B(n169), .Y(N374) );
  OR2X1 U197 ( .A(n176), .B(n3), .Y(n169) );
  XNOR2X1 U198 ( .A(n181), .B(lfsr[15]), .Y(n176) );
  MUX2X1 U199 ( .B(n182), .A(n183), .S(n184), .Y(n181) );
  NOR2X1 U200 ( .A(cnt8[3]), .B(n185), .Y(n184) );
  MUX2X1 U201 ( .B(n186), .A(n187), .S(n126), .Y(n182) );
  OAI21X1 U202 ( .A(n125), .B(n188), .C(n189), .Y(n187) );
  AOI22X1 U203 ( .A(n190), .B(n191), .C(DATA[0]), .D(n130), .Y(n189) );
  MUX2X1 U204 ( .B(n192), .A(n193), .S(n194), .Y(n190) );
  OAI21X1 U205 ( .A(n125), .B(n195), .C(n196), .Y(n186) );
  AOI22X1 U206 ( .A(n197), .B(n191), .C(DATA[4]), .D(n130), .Y(n196) );
  NOR2X1 U207 ( .A(n191), .B(cnt8[1]), .Y(n130) );
  INVX1 U208 ( .A(n198), .Y(n197) );
  MUX2X1 U209 ( .B(DATA[5]), .A(DATA[3]), .S(n194), .Y(n198) );
  NAND2X1 U210 ( .A(cnt8[1]), .B(cnt8[0]), .Y(n125) );
  OAI21X1 U211 ( .A(n65), .B(n136), .C(n132), .Y(N373) );
  NAND3X1 U212 ( .A(n199), .B(n134), .C(cnt8[3]), .Y(n65) );
  INVX1 U213 ( .A(txwait), .Y(n134) );
  INVX1 U214 ( .A(n185), .Y(n199) );
  NAND3X1 U215 ( .A(n194), .B(n126), .C(n191), .Y(n185) );
  INVX1 U216 ( .A(cnt8[0]), .Y(n191) );
  INVX1 U217 ( .A(cnt8[2]), .Y(n126) );
  INVX1 U218 ( .A(cnt8[1]), .Y(n194) );
  INVX1 U219 ( .A(n168), .Y(N372) );
  NOR2X1 U220 ( .A(n243), .B(n57), .Y(n168) );
  INVX1 U221 ( .A(n132), .Y(n243) );
  OAI21X1 U222 ( .A(n121), .B(n193), .C(n200), .Y(N371) );
  AOI22X1 U223 ( .A(n201), .B(lfsr[15]), .C(n202), .D(lfsr[7]), .Y(n200) );
  INVX1 U224 ( .A(DATA[7]), .Y(n193) );
  OAI21X1 U225 ( .A(n121), .B(n195), .C(n203), .Y(N370) );
  AOI22X1 U226 ( .A(n201), .B(lfsr[14]), .C(n202), .D(lfsr[6]), .Y(n203) );
  INVX1 U227 ( .A(DATA[6]), .Y(n195) );
  OAI21X1 U228 ( .A(n121), .B(n204), .C(n205), .Y(N369) );
  AOI22X1 U229 ( .A(n201), .B(lfsr[13]), .C(n202), .D(lfsr[5]), .Y(n205) );
  INVX1 U230 ( .A(DATA[5]), .Y(n204) );
  OAI21X1 U231 ( .A(n121), .B(n206), .C(n207), .Y(N368) );
  AOI22X1 U232 ( .A(n201), .B(lfsr[12]), .C(n202), .D(lfsr[4]), .Y(n207) );
  INVX1 U233 ( .A(DATA[4]), .Y(n206) );
  NAND2X1 U234 ( .A(n208), .B(n209), .Y(N367) );
  AOI22X1 U235 ( .A(n201), .B(lfsr[11]), .C(n202), .D(lfsr[3]), .Y(n209) );
  AOI22X1 U236 ( .A(n57), .B(n158), .C(DATA[3]), .D(n58), .Y(n208) );
  OR2X1 U237 ( .A(n210), .B(n211), .Y(N366) );
  OAI22X1 U238 ( .A(n121), .B(n188), .C(n178), .D(n212), .Y(n211) );
  INVX1 U239 ( .A(lfsr[2]), .Y(n178) );
  INVX1 U240 ( .A(DATA[2]), .Y(n188) );
  OAI21X1 U241 ( .A(n171), .B(n213), .C(n214), .Y(n210) );
  INVX1 U242 ( .A(lfsr[10]), .Y(n171) );
  OR2X1 U243 ( .A(n215), .B(n216), .Y(N365) );
  OAI22X1 U244 ( .A(n121), .B(n192), .C(n179), .D(n212), .Y(n216) );
  INVX1 U245 ( .A(lfsr[1]), .Y(n179) );
  INVX1 U246 ( .A(DATA[1]), .Y(n192) );
  OAI21X1 U247 ( .A(n172), .B(n213), .C(n214), .Y(n215) );
  INVX1 U248 ( .A(lfsr[9]), .Y(n172) );
  OR2X1 U249 ( .A(n217), .B(n218), .Y(N364) );
  OAI22X1 U250 ( .A(n121), .B(n183), .C(n180), .D(n212), .Y(n218) );
  INVX1 U251 ( .A(lfsr[0]), .Y(n180) );
  INVX1 U252 ( .A(DATA[0]), .Y(n183) );
  OAI21X1 U253 ( .A(n173), .B(n213), .C(n214), .Y(n217) );
  INVX1 U254 ( .A(n201), .Y(n213) );
  NOR2X1 U255 ( .A(n5), .B(n219), .Y(n201) );
  INVX1 U256 ( .A(lfsr[8]), .Y(n173) );
  NAND3X1 U257 ( .A(n136), .B(n132), .C(n167), .Y(N363) );
  INVX1 U258 ( .A(n220), .Y(n167) );
  NAND3X1 U259 ( .A(n214), .B(n212), .C(n221), .Y(n220) );
  AOI22X1 U260 ( .A(n73), .B(n222), .C(n4), .D(n57), .Y(n221) );
  NOR2X1 U261 ( .A(n223), .B(n224), .Y(n4) );
  NAND3X1 U262 ( .A(\swcnt[8] ), .B(\swcnt[5] ), .C(n225), .Y(n224) );
  NOR2X1 U263 ( .A(n85), .B(n79), .Y(n225) );
  NAND3X1 U264 ( .A(n111), .B(n226), .C(n227), .Y(n223) );
  NOR2X1 U265 ( .A(\swcnt[0] ), .B(n70), .Y(n227) );
  NAND3X1 U266 ( .A(n228), .B(n165), .C(n229), .Y(n70) );
  INVX1 U267 ( .A(n5), .Y(n222) );
  NOR2X1 U268 ( .A(n230), .B(n231), .Y(n73) );
  NAND3X1 U269 ( .A(\swcnt[10] ), .B(\swcnt[4] ), .C(\swcnt[7] ), .Y(n231) );
  NAND3X1 U270 ( .A(\swcnt[12] ), .B(n105), .C(n164), .Y(n230) );
  INVX1 U271 ( .A(n202), .Y(n212) );
  NOR2X1 U272 ( .A(n158), .B(n5), .Y(n202) );
  NAND3X1 U273 ( .A(n232), .B(n233), .C(state[2]), .Y(n5) );
  NAND2X1 U274 ( .A(n219), .B(n57), .Y(n214) );
  INVX1 U275 ( .A(n110), .Y(n57) );
  NAND3X1 U276 ( .A(n233), .B(n161), .C(state[0]), .Y(n110) );
  INVX1 U277 ( .A(n158), .Y(n219) );
  NAND3X1 U278 ( .A(n228), .B(n165), .C(n164), .Y(n158) );
  INVX1 U279 ( .A(n234), .Y(n164) );
  NAND3X1 U280 ( .A(n229), .B(n235), .C(n68), .Y(n234) );
  NOR2X1 U281 ( .A(n236), .B(n237), .Y(n68) );
  NAND3X1 U282 ( .A(n79), .B(n111), .C(n85), .Y(n237) );
  INVX1 U283 ( .A(\swcnt[11] ), .Y(n85) );
  INVX1 U284 ( .A(\swcnt[1] ), .Y(n111) );
  INVX1 U285 ( .A(\swcnt[13] ), .Y(n79) );
  NAND3X1 U286 ( .A(n100), .B(n238), .C(n226), .Y(n236) );
  INVX1 U287 ( .A(\swcnt[2] ), .Y(n226) );
  INVX1 U288 ( .A(\swcnt[8] ), .Y(n238) );
  INVX1 U289 ( .A(\swcnt[5] ), .Y(n100) );
  INVX1 U290 ( .A(\swcnt[0] ), .Y(n235) );
  NOR3X1 U291 ( .A(\swcnt[6] ), .B(\swcnt[9] ), .C(\swcnt[14] ), .Y(n229) );
  INVX1 U292 ( .A(\swcnt[12] ), .Y(n165) );
  INVX1 U293 ( .A(n120), .Y(n228) );
  NAND3X1 U294 ( .A(n166), .B(n105), .C(n239), .Y(n120) );
  NOR2X1 U295 ( .A(\swcnt[7] ), .B(\swcnt[4] ), .Y(n239) );
  INVX1 U296 ( .A(\swcnt[3] ), .Y(n105) );
  INVX1 U297 ( .A(\swcnt[10] ), .Y(n166) );
  NAND3X1 U298 ( .A(n233), .B(n161), .C(n232), .Y(n132) );
  INVX1 U299 ( .A(state[1]), .Y(n233) );
  NAND2X1 U300 ( .A(n58), .B(n66), .Y(n136) );
  OR2X1 U301 ( .A(n160), .B(cnt32[5]), .Y(n66) );
  NAND3X1 U302 ( .A(n240), .B(n153), .C(n241), .Y(n160) );
  NOR2X1 U303 ( .A(cnt32[1]), .B(cnt32[0]), .Y(n241) );
  INVX1 U304 ( .A(cnt32[2]), .Y(n153) );
  NOR2X1 U305 ( .A(cnt32[4]), .B(cnt32[3]), .Y(n240) );
  INVX1 U306 ( .A(n121), .Y(n58) );
  NAND3X1 U307 ( .A(n232), .B(n161), .C(state[1]), .Y(n121) );
  INVX1 U308 ( .A(state[2]), .Y(n161) );
  INVX1 U309 ( .A(state[0]), .Y(n232) );
endmodule


module B_Header_WAITREG5264_DW01_inc_0 ( A, SUM );
  input [16:0] A;
  output [16:0] SUM;

  wire   [16:2] carry;

  HAX1 U1_1_15 ( .A(A[15]), .B(carry[15]), .YC(carry[16]), .YS(SUM[15]) );
  HAX1 U1_1_14 ( .A(A[14]), .B(carry[14]), .YC(carry[15]), .YS(SUM[14]) );
  HAX1 U1_1_13 ( .A(A[13]), .B(carry[13]), .YC(carry[14]), .YS(SUM[13]) );
  HAX1 U1_1_12 ( .A(A[12]), .B(carry[12]), .YC(carry[13]), .YS(SUM[12]) );
  HAX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .YC(carry[12]), .YS(SUM[11]) );
  HAX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .YC(carry[11]), .YS(SUM[10]) );
  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[16]), .B(A[16]), .Y(SUM[16]) );
endmodule


module B_Header_WAITREG5264 ( CLK, RST, HEADER_EN, HEADER, TRANS_EN, ENCODE_EN
 );
  output [53:0] HEADER;
  input CLK, RST, HEADER_EN;
  output TRANS_EN, ENCODE_EN;
  wire   \D[9] , \waitcnt[16] , \waitcnt[15] , \waitcnt[14] , \waitcnt[13] ,
         \waitcnt[12] , \waitcnt[11] , \waitcnt[10] , \waitcnt[9] ,
         \waitcnt[8] , \waitcnt[7] , \waitcnt[6] , \waitcnt[5] , \waitcnt[4] ,
         \waitcnt[3] , \waitcnt[2] , \waitcnt[1] , \waitcnt[0] , waittx, N14,
         N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28,
         N29, N30, B, A, n71, n73, n75, n77, n79, n81, n83, n85, n87, n89, n91,
         n93, n118, n120, n122, n124, n126, n128, n130, n132, n134, n136, n138,
         n140, n142, n144, n146, n148, n150, n152, n154, n156, n158, n160,
         n162, n164, n166, n168, n170, n172, n174, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n175, n198;
  assign HEADER[50] = 1'b0;
  assign HEADER[49] = 1'b0;
  assign HEADER[48] = 1'b0;
  assign HEADER[47] = 1'b0;
  assign HEADER[46] = 1'b0;
  assign HEADER[45] = 1'b0;
  assign HEADER[8] = 1'b0;
  assign HEADER[7] = 1'b0;
  assign HEADER[6] = 1'b0;
  assign HEADER[5] = 1'b0;
  assign HEADER[4] = 1'b0;
  assign HEADER[3] = 1'b0;

  DFFSR \HEADER_reg[53]  ( .D(n177), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[53]) );
  DFFSR \HEADER_reg[52]  ( .D(n174), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[52]) );
  DFFSR \HEADER_reg[51]  ( .D(n172), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[51]) );
  DFFSR \HEADER_reg[41]  ( .D(n170), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[41]) );
  DFFSR \HEADER_reg[40]  ( .D(n168), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[40]) );
  DFFSR \HEADER_reg[39]  ( .D(n166), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[39]) );
  DFFSR \HEADER_reg[32]  ( .D(n164), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[32]) );
  DFFSR \HEADER_reg[31]  ( .D(n162), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[31]) );
  DFFSR \HEADER_reg[30]  ( .D(n160), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[30]) );
  DFFSR \HEADER_reg[26]  ( .D(n158), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[26]) );
  DFFSR \HEADER_reg[25]  ( .D(n156), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[25]) );
  DFFSR \HEADER_reg[24]  ( .D(n154), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[24]) );
  DFFSR \HEADER_reg[23]  ( .D(n152), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[23]) );
  DFFSR \HEADER_reg[22]  ( .D(n150), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[22]) );
  DFFSR \HEADER_reg[21]  ( .D(n148), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[21]) );
  DFFSR \HEADER_reg[20]  ( .D(n146), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[20]) );
  DFFSR \HEADER_reg[19]  ( .D(n144), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[19]) );
  DFFSR \HEADER_reg[18]  ( .D(n142), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[18]) );
  DFFSR \HEADER_reg[17]  ( .D(n140), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[17]) );
  DFFSR \HEADER_reg[16]  ( .D(n138), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[16]) );
  DFFSR \HEADER_reg[15]  ( .D(n136), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[15]) );
  DFFSR \HEADER_reg[14]  ( .D(n134), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[14]) );
  DFFSR \HEADER_reg[13]  ( .D(n132), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[13]) );
  DFFSR \HEADER_reg[12]  ( .D(n130), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[12]) );
  DFFSR \HEADER_reg[11]  ( .D(n128), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[11]) );
  DFFSR \HEADER_reg[10]  ( .D(n126), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[10]) );
  DFFSR \HEADER_reg[9]  ( .D(n124), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[9]) );
  DFFSR \HEADER_reg[2]  ( .D(n122), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[2]) );
  DFFSR \HEADER_reg[1]  ( .D(n120), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[1]) );
  DFFSR \HEADER_reg[0]  ( .D(n118), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[0]) );
  DFFSR TRANS_EN_reg ( .D(HEADER_EN), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        TRANS_EN) );
  DFFSR \waitcnt_reg[0]  ( .D(n197), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[0] ) );
  DFFSR waittx_reg ( .D(n195), .CLK(CLK), .R(n198), .S(1'b1), .Q(waittx) );
  DFFSR \waitcnt_reg[16]  ( .D(n196), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[16] ) );
  DFFSR \waitcnt_reg[1]  ( .D(n194), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[1] ) );
  DFFSR \waitcnt_reg[2]  ( .D(n193), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[2] ) );
  DFFSR \waitcnt_reg[3]  ( .D(n192), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[3] ) );
  DFFSR \waitcnt_reg[4]  ( .D(n191), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[4] ) );
  DFFSR \waitcnt_reg[5]  ( .D(n190), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[5] ) );
  DFFSR \waitcnt_reg[6]  ( .D(n189), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[6] ) );
  DFFSR \waitcnt_reg[7]  ( .D(n188), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[7] ) );
  DFFSR \waitcnt_reg[8]  ( .D(n187), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[8] ) );
  DFFSR \waitcnt_reg[9]  ( .D(n186), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[9] ) );
  DFFSR \waitcnt_reg[10]  ( .D(n185), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[10] ) );
  DFFSR \waitcnt_reg[11]  ( .D(n184), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[11] ) );
  DFFSR \waitcnt_reg[12]  ( .D(n183), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[12] ) );
  DFFSR \waitcnt_reg[13]  ( .D(n182), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[13] ) );
  DFFSR \waitcnt_reg[14]  ( .D(n181), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[14] ) );
  DFFSR \waitcnt_reg[15]  ( .D(n180), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        \waitcnt[15] ) );
  DFFSR ENCODE_EN_reg ( .D(n179), .CLK(CLK), .R(n198), .S(1'b1), .Q(ENCODE_EN)
         );
  DFFSR A_reg ( .D(HEADER_EN), .CLK(CLK), .R(n198), .S(1'b1), .Q(A) );
  DFFSR B_reg ( .D(A), .CLK(CLK), .R(n198), .S(1'b1), .Q(B) );
  DFFSR SEQN_reg ( .D(n178), .CLK(CLK), .R(n198), .S(1'b1), .Q(\D[9] ) );
  DFFSR \HEADER_reg[29]  ( .D(n93), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[29]) );
  DFFSR \HEADER_reg[28]  ( .D(n91), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[28]) );
  DFFSR \HEADER_reg[27]  ( .D(n89), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[27]) );
  DFFSR \HEADER_reg[36]  ( .D(n87), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[36]) );
  DFFSR \HEADER_reg[37]  ( .D(n85), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[37]) );
  DFFSR \HEADER_reg[38]  ( .D(n83), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[38]) );
  DFFSR \HEADER_reg[42]  ( .D(n81), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[42]) );
  DFFSR \HEADER_reg[43]  ( .D(n79), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[43]) );
  DFFSR \HEADER_reg[44]  ( .D(n77), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[44]) );
  DFFSR \HEADER_reg[35]  ( .D(n75), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[35]) );
  DFFSR \HEADER_reg[34]  ( .D(n73), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[34]) );
  DFFSR \HEADER_reg[33]  ( .D(n71), .CLK(CLK), .R(n198), .S(1'b1), .Q(
        HEADER[33]) );
  B_Header_WAITREG5264_DW01_inc_0 add_80 ( .A({\waitcnt[16] , \waitcnt[15] , 
        \waitcnt[14] , \waitcnt[13] , \waitcnt[12] , \waitcnt[11] , 
        \waitcnt[10] , \waitcnt[9] , \waitcnt[8] , \waitcnt[7] , \waitcnt[6] , 
        \waitcnt[5] , \waitcnt[4] , \waitcnt[3] , \waitcnt[2] , \waitcnt[1] , 
        \waitcnt[0] }), .SUM({N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, 
        N20, N19, N18, N17, N16, N15, N14}) );
  INVX8 U3 ( .A(RST), .Y(n198) );
  INVX2 U4 ( .A(n55), .Y(n1) );
  OAI21X1 U5 ( .A(HEADER_EN), .B(n2), .C(n3), .Y(n93) );
  INVX1 U6 ( .A(HEADER[29]), .Y(n2) );
  OAI21X1 U7 ( .A(HEADER_EN), .B(n4), .C(n3), .Y(n91) );
  INVX1 U8 ( .A(HEADER[28]), .Y(n4) );
  OAI21X1 U9 ( .A(HEADER_EN), .B(n5), .C(n3), .Y(n89) );
  INVX1 U10 ( .A(HEADER[27]), .Y(n5) );
  OAI21X1 U11 ( .A(HEADER_EN), .B(n6), .C(n3), .Y(n87) );
  INVX1 U12 ( .A(HEADER[36]), .Y(n6) );
  OAI21X1 U13 ( .A(HEADER_EN), .B(n7), .C(n3), .Y(n85) );
  INVX1 U14 ( .A(HEADER[37]), .Y(n7) );
  OAI21X1 U15 ( .A(HEADER_EN), .B(n8), .C(n3), .Y(n83) );
  INVX1 U16 ( .A(HEADER[38]), .Y(n8) );
  OAI21X1 U17 ( .A(HEADER_EN), .B(n9), .C(n3), .Y(n81) );
  INVX1 U18 ( .A(HEADER[42]), .Y(n9) );
  OAI21X1 U19 ( .A(HEADER_EN), .B(n10), .C(n3), .Y(n79) );
  INVX1 U20 ( .A(HEADER[43]), .Y(n10) );
  OAI21X1 U21 ( .A(HEADER_EN), .B(n11), .C(n3), .Y(n77) );
  NAND2X1 U22 ( .A(HEADER_EN), .B(\D[9] ), .Y(n3) );
  INVX1 U23 ( .A(HEADER[44]), .Y(n11) );
  OAI21X1 U24 ( .A(HEADER_EN), .B(n12), .C(n13), .Y(n75) );
  INVX1 U25 ( .A(HEADER[35]), .Y(n12) );
  OAI21X1 U26 ( .A(HEADER_EN), .B(n14), .C(n13), .Y(n73) );
  INVX1 U27 ( .A(HEADER[34]), .Y(n14) );
  OAI21X1 U28 ( .A(HEADER_EN), .B(n15), .C(n13), .Y(n71) );
  OR2X1 U29 ( .A(n16), .B(\D[9] ), .Y(n13) );
  INVX1 U30 ( .A(HEADER[33]), .Y(n15) );
  OAI21X1 U31 ( .A(n1), .B(n18), .C(n19), .Y(n197) );
  NAND2X1 U32 ( .A(N14), .B(n20), .Y(n19) );
  OAI21X1 U33 ( .A(n1), .B(n21), .C(n22), .Y(n196) );
  NAND2X1 U34 ( .A(N30), .B(n20), .Y(n22) );
  INVX1 U35 ( .A(\waitcnt[16] ), .Y(n21) );
  OAI21X1 U36 ( .A(n23), .B(n24), .C(n16), .Y(n195) );
  INVX1 U37 ( .A(HEADER_EN), .Y(n16) );
  OAI21X1 U38 ( .A(n1), .B(n25), .C(n26), .Y(n194) );
  NAND2X1 U39 ( .A(N15), .B(n20), .Y(n26) );
  OAI21X1 U40 ( .A(n1), .B(n27), .C(n28), .Y(n193) );
  NAND2X1 U41 ( .A(N16), .B(n20), .Y(n28) );
  INVX1 U42 ( .A(\waitcnt[2] ), .Y(n27) );
  OAI21X1 U43 ( .A(n1), .B(n29), .C(n30), .Y(n192) );
  NAND2X1 U44 ( .A(N17), .B(n20), .Y(n30) );
  INVX1 U45 ( .A(\waitcnt[3] ), .Y(n29) );
  OAI21X1 U46 ( .A(n1), .B(n31), .C(n32), .Y(n191) );
  NAND2X1 U47 ( .A(N18), .B(n20), .Y(n32) );
  INVX1 U48 ( .A(\waitcnt[4] ), .Y(n31) );
  OAI21X1 U49 ( .A(n17), .B(n33), .C(n34), .Y(n190) );
  NAND2X1 U50 ( .A(N19), .B(n20), .Y(n34) );
  INVX1 U51 ( .A(\waitcnt[5] ), .Y(n33) );
  OAI21X1 U52 ( .A(n17), .B(n35), .C(n36), .Y(n189) );
  NAND2X1 U53 ( .A(N20), .B(n20), .Y(n36) );
  OAI21X1 U54 ( .A(n17), .B(n37), .C(n38), .Y(n188) );
  NAND2X1 U55 ( .A(N21), .B(n20), .Y(n38) );
  INVX1 U56 ( .A(\waitcnt[7] ), .Y(n37) );
  OAI21X1 U57 ( .A(n17), .B(n39), .C(n40), .Y(n187) );
  NAND2X1 U58 ( .A(N22), .B(n20), .Y(n40) );
  INVX1 U59 ( .A(\waitcnt[8] ), .Y(n39) );
  OAI21X1 U60 ( .A(n17), .B(n41), .C(n42), .Y(n186) );
  NAND2X1 U61 ( .A(N23), .B(n20), .Y(n42) );
  INVX1 U62 ( .A(\waitcnt[9] ), .Y(n41) );
  OAI21X1 U63 ( .A(n17), .B(n43), .C(n44), .Y(n185) );
  NAND2X1 U64 ( .A(N24), .B(n20), .Y(n44) );
  OAI21X1 U65 ( .A(n17), .B(n45), .C(n46), .Y(n184) );
  NAND2X1 U66 ( .A(N25), .B(n20), .Y(n46) );
  OAI21X1 U67 ( .A(n17), .B(n47), .C(n48), .Y(n183) );
  NAND2X1 U68 ( .A(N26), .B(n20), .Y(n48) );
  INVX1 U69 ( .A(\waitcnt[12] ), .Y(n47) );
  OAI21X1 U70 ( .A(n17), .B(n49), .C(n50), .Y(n182) );
  NAND2X1 U71 ( .A(N27), .B(n20), .Y(n50) );
  INVX1 U72 ( .A(\waitcnt[13] ), .Y(n49) );
  OAI21X1 U73 ( .A(n17), .B(n51), .C(n52), .Y(n181) );
  NAND2X1 U74 ( .A(N28), .B(n20), .Y(n52) );
  OAI21X1 U75 ( .A(n17), .B(n53), .C(n54), .Y(n180) );
  NAND2X1 U76 ( .A(N29), .B(n20), .Y(n54) );
  NOR2X1 U77 ( .A(n55), .B(n23), .Y(n20) );
  INVX1 U78 ( .A(n56), .Y(n23) );
  OAI21X1 U79 ( .A(n55), .B(n56), .C(n57), .Y(n179) );
  OAI21X1 U80 ( .A(HEADER_EN), .B(waittx), .C(ENCODE_EN), .Y(n57) );
  NAND2X1 U81 ( .A(n58), .B(n59), .Y(n56) );
  NOR2X1 U82 ( .A(n60), .B(n61), .Y(n59) );
  NAND3X1 U83 ( .A(n53), .B(n25), .C(n62), .Y(n61) );
  NOR2X1 U84 ( .A(\waitcnt[3] ), .B(\waitcnt[2] ), .Y(n62) );
  INVX1 U85 ( .A(\waitcnt[1] ), .Y(n25) );
  INVX1 U86 ( .A(\waitcnt[15] ), .Y(n53) );
  NAND3X1 U87 ( .A(n63), .B(n35), .C(n64), .Y(n60) );
  NOR2X1 U88 ( .A(\waitcnt[5] ), .B(\waitcnt[4] ), .Y(n64) );
  INVX1 U89 ( .A(\waitcnt[6] ), .Y(n35) );
  NOR2X1 U90 ( .A(\waitcnt[9] ), .B(\waitcnt[7] ), .Y(n63) );
  NOR2X1 U91 ( .A(n65), .B(n66), .Y(n58) );
  NAND3X1 U92 ( .A(\waitcnt[8] ), .B(\waitcnt[16] ), .C(n67), .Y(n66) );
  NOR2X1 U93 ( .A(n45), .B(n51), .Y(n67) );
  INVX1 U94 ( .A(\waitcnt[14] ), .Y(n51) );
  INVX1 U95 ( .A(\waitcnt[11] ), .Y(n45) );
  NAND3X1 U96 ( .A(n18), .B(n43), .C(n68), .Y(n65) );
  NOR2X1 U97 ( .A(\waitcnt[13] ), .B(\waitcnt[12] ), .Y(n68) );
  INVX1 U98 ( .A(\waitcnt[10] ), .Y(n43) );
  INVX1 U99 ( .A(\waitcnt[0] ), .Y(n18) );
  INVX1 U100 ( .A(n17), .Y(n55) );
  NOR2X1 U101 ( .A(n24), .B(HEADER_EN), .Y(n17) );
  INVX1 U102 ( .A(waittx), .Y(n24) );
  XOR2X1 U103 ( .A(\D[9] ), .B(n69), .Y(n178) );
  NOR2X1 U104 ( .A(A), .B(n175), .Y(n69) );
  INVX1 U105 ( .A(B), .Y(n175) );
  OR2X1 U106 ( .A(HEADER[53]), .B(HEADER_EN), .Y(n177) );
  OR2X1 U107 ( .A(HEADER[52]), .B(HEADER_EN), .Y(n174) );
  OR2X1 U108 ( .A(HEADER[51]), .B(HEADER_EN), .Y(n172) );
  OR2X1 U109 ( .A(HEADER[41]), .B(HEADER_EN), .Y(n170) );
  OR2X1 U110 ( .A(HEADER[40]), .B(HEADER_EN), .Y(n168) );
  OR2X1 U111 ( .A(HEADER[39]), .B(HEADER_EN), .Y(n166) );
  OR2X1 U112 ( .A(HEADER[32]), .B(HEADER_EN), .Y(n164) );
  OR2X1 U113 ( .A(HEADER[31]), .B(HEADER_EN), .Y(n162) );
  OR2X1 U114 ( .A(HEADER[30]), .B(HEADER_EN), .Y(n160) );
  OR2X1 U115 ( .A(HEADER[26]), .B(HEADER_EN), .Y(n158) );
  OR2X1 U116 ( .A(HEADER[25]), .B(HEADER_EN), .Y(n156) );
  OR2X1 U117 ( .A(HEADER[24]), .B(HEADER_EN), .Y(n154) );
  OR2X1 U118 ( .A(HEADER[23]), .B(HEADER_EN), .Y(n152) );
  OR2X1 U119 ( .A(HEADER[22]), .B(HEADER_EN), .Y(n150) );
  OR2X1 U120 ( .A(HEADER[21]), .B(HEADER_EN), .Y(n148) );
  OR2X1 U121 ( .A(HEADER[20]), .B(HEADER_EN), .Y(n146) );
  OR2X1 U122 ( .A(HEADER[19]), .B(HEADER_EN), .Y(n144) );
  OR2X1 U123 ( .A(HEADER[18]), .B(HEADER_EN), .Y(n142) );
  OR2X1 U124 ( .A(HEADER[17]), .B(HEADER_EN), .Y(n140) );
  OR2X1 U125 ( .A(HEADER[16]), .B(HEADER_EN), .Y(n138) );
  OR2X1 U126 ( .A(HEADER[15]), .B(HEADER_EN), .Y(n136) );
  OR2X1 U127 ( .A(HEADER[14]), .B(HEADER_EN), .Y(n134) );
  OR2X1 U128 ( .A(HEADER[13]), .B(HEADER_EN), .Y(n132) );
  OR2X1 U129 ( .A(HEADER[12]), .B(HEADER_EN), .Y(n130) );
  OR2X1 U130 ( .A(HEADER[11]), .B(HEADER_EN), .Y(n128) );
  OR2X1 U131 ( .A(HEADER[10]), .B(HEADER_EN), .Y(n126) );
  OR2X1 U132 ( .A(HEADER[9]), .B(HEADER_EN), .Y(n124) );
  OR2X1 U133 ( .A(HEADER[2]), .B(HEADER_EN), .Y(n122) );
  OR2X1 U134 ( .A(HEADER[1]), .B(HEADER_EN), .Y(n120) );
  OR2X1 U212 ( .A(HEADER[0]), .B(HEADER_EN), .Y(n118) );
endmodule


module B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869_DW01_inc_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;

  wire   [12:2] carry;

  HAX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .YC(carry[12]), .YS(SUM[11]) );
  HAX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .YC(carry[11]), .YS(SUM[10]) );
  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[12]), .B(A[12]), .Y(SUM[12]) );
endmodule


module B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869 ( CLK, RST, REPLY_EN, 
        ERR, DATAOUT );
  input CLK, RST, REPLY_EN, ERR;
  output DATAOUT;
  wire   \bluewait[12] , \bluewait[11] , \bluewait[10] , \bluewait[9] ,
         \bluewait[8] , \bluewait[7] , \bluewait[6] , \bluewait[5] ,
         \bluewait[4] , \bluewait[3] , \bluewait[2] , \bluewait[1] ,
         \bluewait[0] , stop, run, N33, N34, N35, N36, N37, N38, N39, N40, N41,
         N42, N43, N44, N45, b, a, N125, N126, N127, N128, N129, n78, n80, n82,
         n84, n86, n88, n90, n92, n94, n96, n98, n100, n102, n104, n106, n109,
         n110, n111, n112, n113, n118, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67;
  wire   [3:0] cnt8;
  wire   [7:0] txbuff;

  LATCH b_reg ( .CLK(N128), .D(N127), .Q(b) );
  LATCH run_reg ( .CLK(N125), .D(N126), .Q(run) );
  DFFSR \bluewait_reg[12]  ( .D(n109), .CLK(CLK), .R(n67), .S(1'b1), .Q(
        \bluewait[12] ) );
  DFFSR \bluewait_reg[3]  ( .D(n106), .CLK(CLK), .R(n67), .S(1'b1), .Q(
        \bluewait[3] ) );
  DFFSR \bluewait_reg[0]  ( .D(n104), .CLK(CLK), .R(n67), .S(1'b1), .Q(
        \bluewait[0] ) );
  DFFSR \bluewait_reg[1]  ( .D(n102), .CLK(CLK), .R(n67), .S(1'b1), .Q(
        \bluewait[1] ) );
  DFFSR \bluewait_reg[2]  ( .D(n100), .CLK(CLK), .R(n67), .S(1'b1), .Q(
        \bluewait[2] ) );
  DFFSR \bluewait_reg[4]  ( .D(n98), .CLK(CLK), .R(n67), .S(1'b1), .Q(
        \bluewait[4] ) );
  DFFSR \bluewait_reg[5]  ( .D(n96), .CLK(CLK), .R(n67), .S(1'b1), .Q(
        \bluewait[5] ) );
  DFFSR \bluewait_reg[6]  ( .D(n94), .CLK(CLK), .R(n67), .S(1'b1), .Q(
        \bluewait[6] ) );
  DFFSR \bluewait_reg[7]  ( .D(n92), .CLK(CLK), .R(n67), .S(1'b1), .Q(
        \bluewait[7] ) );
  DFFSR \bluewait_reg[8]  ( .D(n90), .CLK(CLK), .R(n67), .S(1'b1), .Q(
        \bluewait[8] ) );
  DFFSR \bluewait_reg[9]  ( .D(n88), .CLK(CLK), .R(n67), .S(1'b1), .Q(
        \bluewait[9] ) );
  DFFSR \bluewait_reg[10]  ( .D(n86), .CLK(CLK), .R(n67), .S(1'b1), .Q(
        \bluewait[10] ) );
  DFFSR \bluewait_reg[11]  ( .D(n84), .CLK(CLK), .R(n67), .S(1'b1), .Q(
        \bluewait[11] ) );
  DFFSR \txbuff_reg[1]  ( .D(n82), .CLK(CLK), .R(n67), .S(1'b1), .Q(txbuff[1])
         );
  DFFSR \txbuff_reg[2]  ( .D(n80), .CLK(CLK), .R(n67), .S(1'b1), .Q(txbuff[2])
         );
  DFFSR \txbuff_reg[3]  ( .D(n78), .CLK(CLK), .R(n67), .S(1'b1), .Q(txbuff[3])
         );
  DFFSR \txbuff_reg[4]  ( .D(n63), .CLK(CLK), .R(n67), .S(1'b1), .Q(txbuff[4])
         );
  DFFSR \txbuff_reg[5]  ( .D(n64), .CLK(CLK), .R(n67), .S(1'b1), .Q(txbuff[5])
         );
  DFFSR \txbuff_reg[6]  ( .D(n65), .CLK(CLK), .R(n67), .S(1'b1), .Q(txbuff[6])
         );
  DFFSR \txbuff_reg[7]  ( .D(n66), .CLK(CLK), .R(n67), .S(1'b1), .Q(txbuff[7])
         );
  DFFSR DATAOUT_reg ( .D(n118), .CLK(CLK), .R(n67), .S(1'b1), .Q(DATAOUT) );
  DFFSR \cnt8_reg[0]  ( .D(n113), .CLK(CLK), .R(n67), .S(1'b1), .Q(cnt8[0]) );
  DFFSR \cnt8_reg[1]  ( .D(n112), .CLK(CLK), .R(n67), .S(1'b1), .Q(cnt8[1]) );
  DFFSR \cnt8_reg[2]  ( .D(n111), .CLK(CLK), .R(n67), .S(1'b1), .Q(cnt8[2]) );
  DFFSR stop_reg ( .D(n110), .CLK(CLK), .R(n67), .S(1'b1), .Q(stop) );
  LATCH a_reg ( .CLK(N128), .D(N129), .Q(a) );
  B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869_DW01_inc_0 r78 ( .A({
        \bluewait[12] , \bluewait[11] , \bluewait[10] , \bluewait[9] , 
        \bluewait[8] , \bluewait[7] , \bluewait[6] , \bluewait[5] , 
        \bluewait[4] , \bluewait[3] , \bluewait[2] , \bluewait[1] , 
        \bluewait[0] }), .SUM({N45, N44, N43, N42, N41, N40, N39, N38, N37, 
        N36, N35, N34, N33}) );
  INVX4 U3 ( .A(RST), .Y(n67) );
  INVX1 U4 ( .A(n1), .Y(n63) );
  MUX2X1 U5 ( .B(txbuff[4]), .A(ERR), .S(n2), .Y(n1) );
  INVX1 U6 ( .A(n3), .Y(n64) );
  MUX2X1 U7 ( .B(txbuff[5]), .A(n4), .S(n2), .Y(n3) );
  INVX1 U8 ( .A(n5), .Y(n65) );
  MUX2X1 U9 ( .B(txbuff[6]), .A(ERR), .S(n2), .Y(n5) );
  INVX1 U10 ( .A(n6), .Y(n66) );
  MUX2X1 U11 ( .B(txbuff[7]), .A(n4), .S(n2), .Y(n6) );
  INVX1 U12 ( .A(ERR), .Y(n4) );
  OAI21X1 U13 ( .A(run), .B(n7), .C(n8), .Y(n98) );
  NAND2X1 U14 ( .A(N37), .B(n9), .Y(n8) );
  OAI21X1 U15 ( .A(run), .B(n10), .C(n11), .Y(n96) );
  NAND2X1 U16 ( .A(N38), .B(n9), .Y(n11) );
  OAI21X1 U17 ( .A(run), .B(n12), .C(n13), .Y(n94) );
  NAND2X1 U18 ( .A(N39), .B(n9), .Y(n13) );
  INVX1 U19 ( .A(\bluewait[6] ), .Y(n12) );
  OAI21X1 U20 ( .A(run), .B(n14), .C(n15), .Y(n92) );
  NAND2X1 U21 ( .A(N40), .B(n9), .Y(n15) );
  INVX1 U22 ( .A(\bluewait[7] ), .Y(n14) );
  OAI21X1 U23 ( .A(run), .B(n16), .C(n17), .Y(n90) );
  NAND2X1 U24 ( .A(N41), .B(n9), .Y(n17) );
  INVX1 U25 ( .A(\bluewait[8] ), .Y(n16) );
  OAI21X1 U26 ( .A(run), .B(n18), .C(n19), .Y(n88) );
  NAND2X1 U27 ( .A(N42), .B(n9), .Y(n19) );
  INVX1 U28 ( .A(\bluewait[9] ), .Y(n18) );
  OAI21X1 U29 ( .A(run), .B(n20), .C(n21), .Y(n86) );
  NAND2X1 U30 ( .A(N43), .B(n9), .Y(n21) );
  OAI21X1 U31 ( .A(run), .B(n22), .C(n23), .Y(n84) );
  NAND2X1 U32 ( .A(N44), .B(n9), .Y(n23) );
  OR2X1 U33 ( .A(txbuff[1]), .B(n2), .Y(n82) );
  OR2X1 U34 ( .A(txbuff[2]), .B(n2), .Y(n80) );
  OR2X1 U35 ( .A(txbuff[3]), .B(n2), .Y(n78) );
  NOR2X1 U36 ( .A(n24), .B(n25), .Y(n2) );
  NAND3X1 U37 ( .A(n26), .B(n27), .C(run), .Y(n25) );
  NAND3X1 U38 ( .A(n28), .B(n29), .C(n30), .Y(n24) );
  NOR2X1 U39 ( .A(\bluewait[9] ), .B(\bluewait[8] ), .Y(n30) );
  MUX2X1 U40 ( .B(n31), .A(n32), .S(run), .Y(n118) );
  MUX2X1 U41 ( .B(n33), .A(n34), .S(cnt8[2]), .Y(n32) );
  MUX2X1 U42 ( .B(n35), .A(n36), .S(cnt8[1]), .Y(n34) );
  MUX2X1 U43 ( .B(txbuff[6]), .A(txbuff[7]), .S(cnt8[0]), .Y(n36) );
  MUX2X1 U44 ( .B(txbuff[4]), .A(txbuff[5]), .S(cnt8[0]), .Y(n35) );
  MUX2X1 U45 ( .B(n37), .A(n38), .S(cnt8[1]), .Y(n33) );
  MUX2X1 U46 ( .B(txbuff[2]), .A(txbuff[3]), .S(cnt8[0]), .Y(n38) );
  NAND2X1 U47 ( .A(txbuff[1]), .B(cnt8[0]), .Y(n37) );
  NAND2X1 U48 ( .A(REPLY_EN), .B(DATAOUT), .Y(n31) );
  XOR2X1 U49 ( .A(cnt8[0]), .B(n39), .Y(n113) );
  XOR2X1 U50 ( .A(n40), .B(n41), .Y(n112) );
  XOR2X1 U51 ( .A(cnt8[2]), .B(n42), .Y(n111) );
  NOR2X1 U52 ( .A(n40), .B(n41), .Y(n42) );
  INVX1 U53 ( .A(cnt8[1]), .Y(n40) );
  INVX1 U54 ( .A(n43), .Y(n110) );
  MUX2X1 U55 ( .B(run), .A(stop), .S(n44), .Y(n43) );
  AOI22X1 U56 ( .A(n45), .B(n46), .C(REPLY_EN), .D(n47), .Y(n44) );
  INVX1 U57 ( .A(n41), .Y(n46) );
  NAND2X1 U58 ( .A(n39), .B(cnt8[0]), .Y(n41) );
  AND2X1 U59 ( .A(n48), .B(run), .Y(n39) );
  AND2X1 U60 ( .A(cnt8[1]), .B(cnt8[2]), .Y(n45) );
  OAI21X1 U61 ( .A(run), .B(n28), .C(n49), .Y(n109) );
  NAND2X1 U62 ( .A(N45), .B(n9), .Y(n49) );
  INVX1 U63 ( .A(\bluewait[12] ), .Y(n28) );
  OAI21X1 U64 ( .A(run), .B(n50), .C(n51), .Y(n106) );
  NAND2X1 U65 ( .A(N36), .B(n9), .Y(n51) );
  INVX1 U66 ( .A(\bluewait[3] ), .Y(n50) );
  OAI21X1 U67 ( .A(run), .B(n27), .C(n52), .Y(n104) );
  NAND2X1 U68 ( .A(N33), .B(n9), .Y(n52) );
  INVX1 U69 ( .A(\bluewait[0] ), .Y(n27) );
  OAI21X1 U70 ( .A(run), .B(n53), .C(n54), .Y(n102) );
  NAND2X1 U71 ( .A(N34), .B(n9), .Y(n54) );
  INVX1 U72 ( .A(\bluewait[1] ), .Y(n53) );
  OAI21X1 U73 ( .A(run), .B(n29), .C(n55), .Y(n100) );
  NAND2X1 U74 ( .A(N35), .B(n9), .Y(n55) );
  NOR2X1 U75 ( .A(n47), .B(n48), .Y(n9) );
  NOR2X1 U76 ( .A(n56), .B(n57), .Y(n48) );
  NAND3X1 U77 ( .A(\bluewait[8] ), .B(\bluewait[2] ), .C(\bluewait[9] ), .Y(
        n57) );
  NAND3X1 U78 ( .A(\bluewait[0] ), .B(n26), .C(\bluewait[12] ), .Y(n56) );
  NOR2X1 U79 ( .A(n58), .B(n59), .Y(n26) );
  NAND3X1 U80 ( .A(n20), .B(n22), .C(n60), .Y(n59) );
  NOR2X1 U81 ( .A(\bluewait[3] ), .B(\bluewait[1] ), .Y(n60) );
  INVX1 U82 ( .A(\bluewait[11] ), .Y(n22) );
  INVX1 U83 ( .A(\bluewait[10] ), .Y(n20) );
  NAND3X1 U84 ( .A(n7), .B(n10), .C(n61), .Y(n58) );
  NOR2X1 U85 ( .A(\bluewait[7] ), .B(\bluewait[6] ), .Y(n61) );
  INVX1 U86 ( .A(\bluewait[5] ), .Y(n10) );
  INVX1 U87 ( .A(\bluewait[4] ), .Y(n7) );
  INVX1 U88 ( .A(run), .Y(n47) );
  INVX1 U89 ( .A(\bluewait[2] ), .Y(n29) );
  AND2X1 U90 ( .A(n67), .B(REPLY_EN), .Y(N129) );
  NAND2X1 U91 ( .A(stop), .B(n67), .Y(N128) );
  NOR2X1 U92 ( .A(RST), .B(n62), .Y(N127) );
  OAI21X1 U93 ( .A(b), .B(n62), .C(N126), .Y(N125) );
  NOR2X1 U94 ( .A(RST), .B(stop), .Y(N126) );
  INVX1 U95 ( .A(a), .Y(n62) );
endmodule


module B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module B_UAT_WAITSRAM24_WAITREG5264 ( CLK, RST, ACCESS_CODE, HEADER, PAYLOAD, 
        TRAN_EN, ESTORE_EN, ANT_LOUT );
  input [71:0] ACCESS_CODE;
  input [53:0] HEADER;
  input [7:0] PAYLOAD;
  input CLK, RST, TRAN_EN, ESTORE_EN;
  output ANT_LOUT;
  wire   N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N79, N80, N81, N82,
         N83, N84, N85, N86, N118, N119, N120, N121, N122, N123, N125, N126,
         N127, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152,
         nxtANT, N527, N528, N529, N530, N531, N532, N533, N534, N535, N536,
         n675, n678, n681, n684, n687, n690, n693, n696, n699, n702, n705,
         n708, n711, n714, n717, n720, n723, n726, n729, n732, n735, n738,
         n741, n744, n747, n750, n753, n756, n759, n762, n765, n768, n771,
         n774, n777, n780, n783, n786, n789, n792, n795, n798, n801, n804,
         n807, n810, n813, n816, n819, n822, n825, n828, n831, n834, n837,
         n840, n843, n846, n849, n852, n855, n858, n861, n864, n867, n870,
         n873, n876, n879, n882, n885, n888, n891, n894, n897, n900, n903,
         n906, n909, n912, n915, n918, n921, n924, n927, n930, n933, n936,
         n939, n942, n945, n948, n951, n954, n957, n960, n963, n966, n969,
         n972, n975, n978, n981, n984, n987, n990, n993, n996, n999, n1002,
         n1005, n1008, n1011, n1014, n1017, n1020, n1023, n1026, n1029, n1032,
         n1035, n1038, n1041, n1044, n1047, n1050, n1053, n1056, n1059, n1062,
         n1065, n1068, n1071, n1074, n1075, n1076, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092,
         n1093, n1094, n1095, n1096, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n305, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n676,
         n677, n679, n680, n682, n683, n685, n686, n688, n689, n691, n692,
         n694, n695, n697, n698, n700, n701, n703, n704, n706, n707, n709,
         n710, n712, n713, n715, n716, n718, n719, n721, n722, n724, n725,
         n727, n728, n730, n731, n733, n734, n736;
  wire   [1:0] state;
  wire   [1:0] nxtstate;
  wire   [7:0] cnt128;
  wire   [9:0] cnt658;
  wire   [9:0] nxtcnt658;
  wire   [7:0] nxtcnt128;
  wire   [5:0] cnt34;
  wire   [5:0] nxtcnt34;
  wire   [3:0] cnt8;
  wire   [3:0] nxtcnt8;
  wire   [127:0] tHeader;
  wire   [7:0] pLoad;

  DFFSR \cnt128_reg[0]  ( .D(n1096), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt128[0]) );
  DFFSR \state_reg[0]  ( .D(nxtstate[0]), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        state[0]) );
  DFFSR \state_reg[1]  ( .D(nxtstate[1]), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        state[1]) );
  DFFSR \cnt658_reg[0]  ( .D(N527), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt658[0]) );
  LATCH \nxtcnt658_reg[1]  ( .CLK(n3), .D(N144), .Q(nxtcnt658[1]) );
  DFFSR \cnt658_reg[1]  ( .D(N528), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt658[1]) );
  LATCH \nxtcnt658_reg[2]  ( .CLK(n3), .D(N145), .Q(nxtcnt658[2]) );
  DFFSR \cnt658_reg[2]  ( .D(N529), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt658[2]) );
  LATCH \nxtcnt658_reg[3]  ( .CLK(n3), .D(N146), .Q(nxtcnt658[3]) );
  DFFSR \cnt658_reg[3]  ( .D(N530), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt658[3]) );
  LATCH \nxtcnt658_reg[4]  ( .CLK(n3), .D(N147), .Q(nxtcnt658[4]) );
  DFFSR \cnt658_reg[4]  ( .D(N531), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt658[4]) );
  LATCH \nxtcnt658_reg[5]  ( .CLK(n3), .D(N148), .Q(nxtcnt658[5]) );
  DFFSR \cnt658_reg[5]  ( .D(N532), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt658[5]) );
  LATCH \nxtcnt658_reg[6]  ( .CLK(n3), .D(N149), .Q(nxtcnt658[6]) );
  DFFSR \cnt658_reg[6]  ( .D(N533), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt658[6]) );
  LATCH \nxtcnt658_reg[7]  ( .CLK(n3), .D(N150), .Q(nxtcnt658[7]) );
  DFFSR \cnt658_reg[7]  ( .D(N534), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt658[7]) );
  LATCH \nxtcnt658_reg[8]  ( .CLK(n3), .D(N151), .Q(nxtcnt658[8]) );
  DFFSR \cnt658_reg[8]  ( .D(N535), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt658[8]) );
  LATCH \nxtcnt658_reg[9]  ( .CLK(n3), .D(N152), .Q(nxtcnt658[9]) );
  DFFSR \cnt658_reg[9]  ( .D(N536), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt658[9]) );
  DFFSR \tHeader_reg[1]  ( .D(n1074), .CLK(CLK), .R(1'b1), .S(n11), .Q(
        tHeader[1]) );
  DFFSR \tHeader_reg[0]  ( .D(n1075), .CLK(CLK), .R(1'b1), .S(n11), .Q(
        tHeader[0]) );
  DFFSR \tHeader_reg[127]  ( .D(n1076), .CLK(CLK), .R(n585), .S(n586), .Q(
        tHeader[127]) );
  DFFSR \tHeader_reg[126]  ( .D(n699), .CLK(CLK), .R(n460), .S(n730), .Q(
        tHeader[126]) );
  DFFSR \tHeader_reg[125]  ( .D(n702), .CLK(CLK), .R(n461), .S(n728), .Q(
        tHeader[125]) );
  DFFSR \tHeader_reg[124]  ( .D(n705), .CLK(CLK), .R(n462), .S(n727), .Q(
        tHeader[124]) );
  DFFSR \tHeader_reg[123]  ( .D(n708), .CLK(CLK), .R(n463), .S(n725), .Q(
        tHeader[123]) );
  DFFSR \tHeader_reg[122]  ( .D(n711), .CLK(CLK), .R(n464), .S(n724), .Q(
        tHeader[122]) );
  DFFSR \tHeader_reg[121]  ( .D(n714), .CLK(CLK), .R(n465), .S(n722), .Q(
        tHeader[121]) );
  DFFSR \tHeader_reg[120]  ( .D(n717), .CLK(CLK), .R(n466), .S(n721), .Q(
        tHeader[120]) );
  DFFSR \tHeader_reg[119]  ( .D(n720), .CLK(CLK), .R(n467), .S(n719), .Q(
        tHeader[119]) );
  DFFSR \tHeader_reg[118]  ( .D(n723), .CLK(CLK), .R(n468), .S(n718), .Q(
        tHeader[118]) );
  DFFSR \tHeader_reg[117]  ( .D(n726), .CLK(CLK), .R(n469), .S(n716), .Q(
        tHeader[117]) );
  DFFSR \tHeader_reg[116]  ( .D(n729), .CLK(CLK), .R(n470), .S(n715), .Q(
        tHeader[116]) );
  DFFSR \tHeader_reg[115]  ( .D(n732), .CLK(CLK), .R(n471), .S(n713), .Q(
        tHeader[115]) );
  DFFSR \tHeader_reg[114]  ( .D(n735), .CLK(CLK), .R(n472), .S(n712), .Q(
        tHeader[114]) );
  DFFSR \tHeader_reg[113]  ( .D(n738), .CLK(CLK), .R(n473), .S(n710), .Q(
        tHeader[113]) );
  DFFSR \tHeader_reg[112]  ( .D(n741), .CLK(CLK), .R(n474), .S(n709), .Q(
        tHeader[112]) );
  DFFSR \tHeader_reg[111]  ( .D(n744), .CLK(CLK), .R(n475), .S(n707), .Q(
        tHeader[111]) );
  DFFSR \tHeader_reg[110]  ( .D(n747), .CLK(CLK), .R(n476), .S(n706), .Q(
        tHeader[110]) );
  DFFSR \tHeader_reg[109]  ( .D(n750), .CLK(CLK), .R(n477), .S(n704), .Q(
        tHeader[109]) );
  DFFSR \tHeader_reg[108]  ( .D(n753), .CLK(CLK), .R(n478), .S(n703), .Q(
        tHeader[108]) );
  DFFSR \tHeader_reg[107]  ( .D(n756), .CLK(CLK), .R(n479), .S(n701), .Q(
        tHeader[107]) );
  DFFSR \tHeader_reg[106]  ( .D(n759), .CLK(CLK), .R(n480), .S(n700), .Q(
        tHeader[106]) );
  DFFSR \tHeader_reg[105]  ( .D(n762), .CLK(CLK), .R(n481), .S(n698), .Q(
        tHeader[105]) );
  DFFSR \tHeader_reg[104]  ( .D(n765), .CLK(CLK), .R(n482), .S(n697), .Q(
        tHeader[104]) );
  DFFSR \tHeader_reg[103]  ( .D(n768), .CLK(CLK), .R(n483), .S(n695), .Q(
        tHeader[103]) );
  DFFSR \tHeader_reg[102]  ( .D(n771), .CLK(CLK), .R(n484), .S(n694), .Q(
        tHeader[102]) );
  DFFSR \tHeader_reg[101]  ( .D(n774), .CLK(CLK), .R(n485), .S(n692), .Q(
        tHeader[101]) );
  DFFSR \tHeader_reg[100]  ( .D(n777), .CLK(CLK), .R(n486), .S(n691), .Q(
        tHeader[100]) );
  DFFSR \tHeader_reg[99]  ( .D(n780), .CLK(CLK), .R(n487), .S(n689), .Q(
        tHeader[99]) );
  DFFSR \tHeader_reg[98]  ( .D(n783), .CLK(CLK), .R(n488), .S(n688), .Q(
        tHeader[98]) );
  DFFSR \tHeader_reg[97]  ( .D(n786), .CLK(CLK), .R(n489), .S(n686), .Q(
        tHeader[97]) );
  DFFSR \tHeader_reg[96]  ( .D(n789), .CLK(CLK), .R(n490), .S(n685), .Q(
        tHeader[96]) );
  DFFSR \tHeader_reg[95]  ( .D(n792), .CLK(CLK), .R(n491), .S(n683), .Q(
        tHeader[95]) );
  DFFSR \tHeader_reg[94]  ( .D(n795), .CLK(CLK), .R(n492), .S(n682), .Q(
        tHeader[94]) );
  DFFSR \tHeader_reg[93]  ( .D(n798), .CLK(CLK), .R(n493), .S(n680), .Q(
        tHeader[93]) );
  DFFSR \tHeader_reg[92]  ( .D(n801), .CLK(CLK), .R(n494), .S(n679), .Q(
        tHeader[92]) );
  DFFSR \tHeader_reg[91]  ( .D(n804), .CLK(CLK), .R(n495), .S(n677), .Q(
        tHeader[91]) );
  DFFSR \tHeader_reg[90]  ( .D(n807), .CLK(CLK), .R(n496), .S(n676), .Q(
        tHeader[90]) );
  DFFSR \tHeader_reg[89]  ( .D(n810), .CLK(CLK), .R(n497), .S(n674), .Q(
        tHeader[89]) );
  DFFSR \tHeader_reg[88]  ( .D(n813), .CLK(CLK), .R(n498), .S(n673), .Q(
        tHeader[88]) );
  DFFSR \tHeader_reg[87]  ( .D(n816), .CLK(CLK), .R(n499), .S(n672), .Q(
        tHeader[87]) );
  DFFSR \tHeader_reg[86]  ( .D(n819), .CLK(CLK), .R(n500), .S(n671), .Q(
        tHeader[86]) );
  DFFSR \tHeader_reg[85]  ( .D(n822), .CLK(CLK), .R(n501), .S(n670), .Q(
        tHeader[85]) );
  DFFSR \tHeader_reg[84]  ( .D(n825), .CLK(CLK), .R(n502), .S(n669), .Q(
        tHeader[84]) );
  DFFSR \tHeader_reg[83]  ( .D(n828), .CLK(CLK), .R(n503), .S(n668), .Q(
        tHeader[83]) );
  DFFSR \tHeader_reg[82]  ( .D(n831), .CLK(CLK), .R(n504), .S(n667), .Q(
        tHeader[82]) );
  DFFSR \tHeader_reg[81]  ( .D(n834), .CLK(CLK), .R(n505), .S(n666), .Q(
        tHeader[81]) );
  DFFSR \tHeader_reg[80]  ( .D(n837), .CLK(CLK), .R(n506), .S(n665), .Q(
        tHeader[80]) );
  DFFSR \tHeader_reg[79]  ( .D(n840), .CLK(CLK), .R(n507), .S(n664), .Q(
        tHeader[79]) );
  DFFSR \tHeader_reg[78]  ( .D(n843), .CLK(CLK), .R(n508), .S(n663), .Q(
        tHeader[78]) );
  DFFSR \tHeader_reg[77]  ( .D(n846), .CLK(CLK), .R(n509), .S(n662), .Q(
        tHeader[77]) );
  DFFSR \tHeader_reg[76]  ( .D(n849), .CLK(CLK), .R(n510), .S(n661), .Q(
        tHeader[76]) );
  DFFSR \tHeader_reg[75]  ( .D(n852), .CLK(CLK), .R(n511), .S(n660), .Q(
        tHeader[75]) );
  DFFSR \tHeader_reg[74]  ( .D(n855), .CLK(CLK), .R(n512), .S(n659), .Q(
        tHeader[74]) );
  DFFSR \tHeader_reg[73]  ( .D(n858), .CLK(CLK), .R(n513), .S(n658), .Q(
        tHeader[73]) );
  DFFSR \tHeader_reg[72]  ( .D(n861), .CLK(CLK), .R(n514), .S(n657), .Q(
        tHeader[72]) );
  DFFSR \tHeader_reg[71]  ( .D(n864), .CLK(CLK), .R(n515), .S(n656), .Q(
        tHeader[71]) );
  DFFSR \tHeader_reg[70]  ( .D(n867), .CLK(CLK), .R(n516), .S(n655), .Q(
        tHeader[70]) );
  DFFSR \tHeader_reg[69]  ( .D(n870), .CLK(CLK), .R(n517), .S(n654), .Q(
        tHeader[69]) );
  DFFSR \tHeader_reg[68]  ( .D(n873), .CLK(CLK), .R(n518), .S(n653), .Q(
        tHeader[68]) );
  DFFSR \tHeader_reg[67]  ( .D(n876), .CLK(CLK), .R(n519), .S(n652), .Q(
        tHeader[67]) );
  DFFSR \tHeader_reg[66]  ( .D(n879), .CLK(CLK), .R(n520), .S(n651), .Q(
        tHeader[66]) );
  DFFSR \tHeader_reg[65]  ( .D(n882), .CLK(CLK), .R(n521), .S(n650), .Q(
        tHeader[65]) );
  DFFSR \tHeader_reg[64]  ( .D(n885), .CLK(CLK), .R(n522), .S(n649), .Q(
        tHeader[64]) );
  DFFSR \tHeader_reg[63]  ( .D(n888), .CLK(CLK), .R(n523), .S(n648), .Q(
        tHeader[63]) );
  DFFSR \tHeader_reg[62]  ( .D(n891), .CLK(CLK), .R(n524), .S(n647), .Q(
        tHeader[62]) );
  DFFSR \tHeader_reg[61]  ( .D(n894), .CLK(CLK), .R(n525), .S(n646), .Q(
        tHeader[61]) );
  DFFSR \tHeader_reg[60]  ( .D(n897), .CLK(CLK), .R(n526), .S(n645), .Q(
        tHeader[60]) );
  DFFSR \tHeader_reg[59]  ( .D(n900), .CLK(CLK), .R(n527), .S(n644), .Q(
        tHeader[59]) );
  DFFSR \tHeader_reg[58]  ( .D(n903), .CLK(CLK), .R(n528), .S(n643), .Q(
        tHeader[58]) );
  DFFSR \tHeader_reg[57]  ( .D(n906), .CLK(CLK), .R(n529), .S(n642), .Q(
        tHeader[57]) );
  DFFSR \tHeader_reg[56]  ( .D(n909), .CLK(CLK), .R(n530), .S(n641), .Q(
        tHeader[56]) );
  DFFSR \tHeader_reg[55]  ( .D(n912), .CLK(CLK), .R(n531), .S(n640), .Q(
        tHeader[55]) );
  DFFSR \tHeader_reg[54]  ( .D(n915), .CLK(CLK), .R(n532), .S(n639), .Q(
        tHeader[54]) );
  DFFSR \tHeader_reg[53]  ( .D(n918), .CLK(CLK), .R(n533), .S(n638), .Q(
        tHeader[53]) );
  DFFSR \tHeader_reg[52]  ( .D(n921), .CLK(CLK), .R(n534), .S(n637), .Q(
        tHeader[52]) );
  DFFSR \tHeader_reg[51]  ( .D(n924), .CLK(CLK), .R(n535), .S(n636), .Q(
        tHeader[51]) );
  DFFSR \tHeader_reg[50]  ( .D(n927), .CLK(CLK), .R(n536), .S(n635), .Q(
        tHeader[50]) );
  DFFSR \tHeader_reg[49]  ( .D(n930), .CLK(CLK), .R(n537), .S(n634), .Q(
        tHeader[49]) );
  DFFSR \tHeader_reg[48]  ( .D(n933), .CLK(CLK), .R(n538), .S(n633), .Q(
        tHeader[48]) );
  DFFSR \tHeader_reg[47]  ( .D(n936), .CLK(CLK), .R(n539), .S(n632), .Q(
        tHeader[47]) );
  DFFSR \tHeader_reg[46]  ( .D(n939), .CLK(CLK), .R(n540), .S(n631), .Q(
        tHeader[46]) );
  DFFSR \tHeader_reg[45]  ( .D(n942), .CLK(CLK), .R(n541), .S(n630), .Q(
        tHeader[45]) );
  DFFSR \tHeader_reg[44]  ( .D(n945), .CLK(CLK), .R(n542), .S(n629), .Q(
        tHeader[44]) );
  DFFSR \tHeader_reg[43]  ( .D(n948), .CLK(CLK), .R(n543), .S(n628), .Q(
        tHeader[43]) );
  DFFSR \tHeader_reg[42]  ( .D(n951), .CLK(CLK), .R(n544), .S(n627), .Q(
        tHeader[42]) );
  DFFSR \tHeader_reg[41]  ( .D(n954), .CLK(CLK), .R(n545), .S(n626), .Q(
        tHeader[41]) );
  DFFSR \tHeader_reg[40]  ( .D(n957), .CLK(CLK), .R(n546), .S(n625), .Q(
        tHeader[40]) );
  DFFSR \tHeader_reg[39]  ( .D(n960), .CLK(CLK), .R(n547), .S(n624), .Q(
        tHeader[39]) );
  DFFSR \tHeader_reg[38]  ( .D(n963), .CLK(CLK), .R(n548), .S(n623), .Q(
        tHeader[38]) );
  DFFSR \tHeader_reg[37]  ( .D(n966), .CLK(CLK), .R(n549), .S(n622), .Q(
        tHeader[37]) );
  DFFSR \tHeader_reg[36]  ( .D(n969), .CLK(CLK), .R(n550), .S(n621), .Q(
        tHeader[36]) );
  DFFSR \tHeader_reg[35]  ( .D(n972), .CLK(CLK), .R(n551), .S(n620), .Q(
        tHeader[35]) );
  DFFSR \tHeader_reg[34]  ( .D(n975), .CLK(CLK), .R(n552), .S(n619), .Q(
        tHeader[34]) );
  DFFSR \tHeader_reg[33]  ( .D(n978), .CLK(CLK), .R(n553), .S(n618), .Q(
        tHeader[33]) );
  DFFSR \tHeader_reg[32]  ( .D(n981), .CLK(CLK), .R(n554), .S(n617), .Q(
        tHeader[32]) );
  DFFSR \tHeader_reg[31]  ( .D(n984), .CLK(CLK), .R(n555), .S(n616), .Q(
        tHeader[31]) );
  DFFSR \tHeader_reg[30]  ( .D(n987), .CLK(CLK), .R(n556), .S(n615), .Q(
        tHeader[30]) );
  DFFSR \tHeader_reg[29]  ( .D(n990), .CLK(CLK), .R(n557), .S(n614), .Q(
        tHeader[29]) );
  DFFSR \tHeader_reg[28]  ( .D(n993), .CLK(CLK), .R(n558), .S(n613), .Q(
        tHeader[28]) );
  DFFSR \tHeader_reg[27]  ( .D(n996), .CLK(CLK), .R(n559), .S(n612), .Q(
        tHeader[27]) );
  DFFSR \tHeader_reg[26]  ( .D(n999), .CLK(CLK), .R(n560), .S(n611), .Q(
        tHeader[26]) );
  DFFSR \tHeader_reg[25]  ( .D(n1002), .CLK(CLK), .R(n561), .S(n610), .Q(
        tHeader[25]) );
  DFFSR \tHeader_reg[24]  ( .D(n1005), .CLK(CLK), .R(n562), .S(n609), .Q(
        tHeader[24]) );
  DFFSR \tHeader_reg[23]  ( .D(n1008), .CLK(CLK), .R(n563), .S(n608), .Q(
        tHeader[23]) );
  DFFSR \tHeader_reg[22]  ( .D(n1011), .CLK(CLK), .R(n564), .S(n607), .Q(
        tHeader[22]) );
  DFFSR \tHeader_reg[21]  ( .D(n1014), .CLK(CLK), .R(n565), .S(n606), .Q(
        tHeader[21]) );
  DFFSR \tHeader_reg[20]  ( .D(n1017), .CLK(CLK), .R(n566), .S(n605), .Q(
        tHeader[20]) );
  DFFSR \tHeader_reg[19]  ( .D(n1020), .CLK(CLK), .R(n567), .S(n604), .Q(
        tHeader[19]) );
  DFFSR \tHeader_reg[18]  ( .D(n1023), .CLK(CLK), .R(n568), .S(n603), .Q(
        tHeader[18]) );
  DFFSR \tHeader_reg[17]  ( .D(n1026), .CLK(CLK), .R(n569), .S(n602), .Q(
        tHeader[17]) );
  DFFSR \tHeader_reg[16]  ( .D(n1029), .CLK(CLK), .R(n570), .S(n601), .Q(
        tHeader[16]) );
  DFFSR \tHeader_reg[15]  ( .D(n1032), .CLK(CLK), .R(n571), .S(n600), .Q(
        tHeader[15]) );
  DFFSR \tHeader_reg[14]  ( .D(n1035), .CLK(CLK), .R(n572), .S(n599), .Q(
        tHeader[14]) );
  DFFSR \tHeader_reg[13]  ( .D(n1038), .CLK(CLK), .R(n573), .S(n598), .Q(
        tHeader[13]) );
  DFFSR \tHeader_reg[12]  ( .D(n1041), .CLK(CLK), .R(n574), .S(n597), .Q(
        tHeader[12]) );
  DFFSR \tHeader_reg[11]  ( .D(n1044), .CLK(CLK), .R(n575), .S(n596), .Q(
        tHeader[11]) );
  DFFSR \tHeader_reg[10]  ( .D(n1047), .CLK(CLK), .R(n576), .S(n595), .Q(
        tHeader[10]) );
  DFFSR \tHeader_reg[9]  ( .D(n1050), .CLK(CLK), .R(n577), .S(n594), .Q(
        tHeader[9]) );
  DFFSR \tHeader_reg[8]  ( .D(n1053), .CLK(CLK), .R(n578), .S(n593), .Q(
        tHeader[8]) );
  DFFSR \tHeader_reg[7]  ( .D(n1056), .CLK(CLK), .R(n579), .S(n592), .Q(
        tHeader[7]) );
  DFFSR \tHeader_reg[6]  ( .D(n1059), .CLK(CLK), .R(n580), .S(n591), .Q(
        tHeader[6]) );
  DFFSR \tHeader_reg[5]  ( .D(n1062), .CLK(CLK), .R(n581), .S(n590), .Q(
        tHeader[5]) );
  DFFSR \tHeader_reg[4]  ( .D(n1065), .CLK(CLK), .R(n582), .S(n589), .Q(
        tHeader[4]) );
  DFFSR \tHeader_reg[3]  ( .D(n1068), .CLK(CLK), .R(n583), .S(n588), .Q(
        tHeader[3]) );
  DFFSR \tHeader_reg[2]  ( .D(n1071), .CLK(CLK), .R(n584), .S(n587), .Q(
        tHeader[2]) );
  LATCH \nxtcnt658_reg[0]  ( .CLK(n3), .D(N143), .Q(nxtcnt658[0]) );
  DFFSR \cnt8_reg[0]  ( .D(n1094), .CLK(CLK), .R(n736), .S(1'b1), .Q(cnt8[0])
         );
  LATCH \nxtcnt8_reg[1]  ( .CLK(n731), .D(N125), .Q(nxtcnt8[1]) );
  DFFSR \cnt8_reg[1]  ( .D(n1093), .CLK(CLK), .R(n736), .S(1'b1), .Q(cnt8[1])
         );
  LATCH \nxtcnt8_reg[2]  ( .CLK(n731), .D(N126), .Q(nxtcnt8[2]) );
  DFFSR \cnt8_reg[2]  ( .D(n1092), .CLK(CLK), .R(n736), .S(1'b1), .Q(cnt8[2])
         );
  LATCH \nxtcnt8_reg[0]  ( .CLK(n731), .D(n734), .Q(nxtcnt8[0]) );
  DFFSR \cnt8_reg[3]  ( .D(n1095), .CLK(CLK), .R(n736), .S(1'b1), .Q(cnt8[3])
         );
  LATCH \nxtcnt8_reg[3]  ( .CLK(n731), .D(N127), .Q(nxtcnt8[3]) );
  DFFSR \cnt34_reg[5]  ( .D(n1091), .CLK(CLK), .R(n736), .S(1'b1), .Q(cnt34[5]) );
  LATCH \nxtcnt34_reg[0]  ( .CLK(n731), .D(N118), .Q(nxtcnt34[0]) );
  DFFSR \cnt34_reg[0]  ( .D(n1090), .CLK(CLK), .R(n736), .S(1'b1), .Q(cnt34[0]) );
  LATCH \nxtcnt34_reg[1]  ( .CLK(n731), .D(N119), .Q(nxtcnt34[1]) );
  DFFSR \cnt34_reg[1]  ( .D(n1089), .CLK(CLK), .R(n736), .S(1'b1), .Q(cnt34[1]) );
  LATCH \nxtcnt34_reg[2]  ( .CLK(n731), .D(N120), .Q(nxtcnt34[2]) );
  DFFSR \cnt34_reg[2]  ( .D(n1088), .CLK(CLK), .R(n736), .S(1'b1), .Q(cnt34[2]) );
  LATCH \nxtcnt34_reg[3]  ( .CLK(n731), .D(N121), .Q(nxtcnt34[3]) );
  DFFSR \cnt34_reg[3]  ( .D(n1087), .CLK(CLK), .R(n736), .S(1'b1), .Q(cnt34[3]) );
  LATCH \nxtcnt34_reg[4]  ( .CLK(n731), .D(N122), .Q(nxtcnt34[4]) );
  DFFSR \cnt34_reg[4]  ( .D(n1086), .CLK(CLK), .R(n736), .S(1'b1), .Q(cnt34[4]) );
  LATCH \nxtcnt34_reg[5]  ( .CLK(n731), .D(N123), .Q(nxtcnt34[5]) );
  DFFSR \cnt128_reg[1]  ( .D(n1085), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt128[1]) );
  LATCH \nxtcnt128_reg[0]  ( .CLK(n733), .D(N79), .Q(nxtcnt128[0]) );
  LATCH \nxtcnt128_reg[1]  ( .CLK(n733), .D(N80), .Q(nxtcnt128[1]) );
  LATCH \nxtcnt128_reg[2]  ( .CLK(n733), .D(N81), .Q(nxtcnt128[2]) );
  DFFSR \cnt128_reg[2]  ( .D(n1084), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt128[2]) );
  LATCH \nxtcnt128_reg[3]  ( .CLK(n733), .D(N82), .Q(nxtcnt128[3]) );
  DFFSR \cnt128_reg[3]  ( .D(n1083), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt128[3]) );
  LATCH \nxtcnt128_reg[4]  ( .CLK(n733), .D(N83), .Q(nxtcnt128[4]) );
  DFFSR \cnt128_reg[4]  ( .D(n1082), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt128[4]) );
  LATCH \nxtcnt128_reg[5]  ( .CLK(n733), .D(N84), .Q(nxtcnt128[5]) );
  DFFSR \cnt128_reg[5]  ( .D(n1081), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt128[5]) );
  LATCH \nxtcnt128_reg[6]  ( .CLK(n733), .D(N85), .Q(nxtcnt128[6]) );
  DFFSR \cnt128_reg[6]  ( .D(n1080), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt128[6]) );
  LATCH \nxtcnt128_reg[7]  ( .CLK(n733), .D(N86), .Q(nxtcnt128[7]) );
  DFFSR \cnt128_reg[7]  ( .D(n1079), .CLK(CLK), .R(n736), .S(1'b1), .Q(
        cnt128[7]) );
  DFFSR \pLoad_reg[0]  ( .D(n696), .CLK(CLK), .R(n451), .S(n452), .Q(pLoad[0])
         );
  DFFSR \pLoad_reg[7]  ( .D(n675), .CLK(CLK), .R(n444), .S(n459), .Q(pLoad[7])
         );
  DFFSR \pLoad_reg[6]  ( .D(n678), .CLK(CLK), .R(n445), .S(n458), .Q(pLoad[6])
         );
  DFFSR \pLoad_reg[5]  ( .D(n681), .CLK(CLK), .R(n446), .S(n457), .Q(pLoad[5])
         );
  DFFSR \pLoad_reg[4]  ( .D(n684), .CLK(CLK), .R(n447), .S(n456), .Q(pLoad[4])
         );
  DFFSR \pLoad_reg[3]  ( .D(n687), .CLK(CLK), .R(n448), .S(n455), .Q(pLoad[3])
         );
  DFFSR \pLoad_reg[2]  ( .D(n690), .CLK(CLK), .R(n449), .S(n454), .Q(pLoad[2])
         );
  DFFSR \pLoad_reg[1]  ( .D(n693), .CLK(CLK), .R(n450), .S(n453), .Q(pLoad[1])
         );
  DFFSR ANT_LOUT_reg ( .D(nxtANT), .CLK(CLK), .R(1'b1), .S(n736), .Q(ANT_LOUT)
         );
  B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_0 r117 ( .A(cnt658), .SUM({N68, N67, 
        N66, N65, N64, N63, N62, N61, N60, N59}) );
  B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_2 add_74 ( .A(cnt128), .SUM({N86, N85, 
        N84, N83, N82, N81, N80, N79}) );
  NAND2X1 U4 ( .A(n63), .B(n14), .Y(n1) );
  INVX1 U5 ( .A(state[0]), .Y(n2) );
  INVX2 U6 ( .A(n2), .Y(n3) );
  INVX4 U7 ( .A(RST), .Y(n736) );
  INVX4 U8 ( .A(n375), .Y(n4) );
  INVX4 U9 ( .A(n375), .Y(n6) );
  INVX4 U10 ( .A(n375), .Y(n7) );
  INVX4 U11 ( .A(n1), .Y(n8) );
  INVX4 U12 ( .A(n1), .Y(n9) );
  INVX4 U13 ( .A(n1), .Y(n10) );
  INVX2 U14 ( .A(n92), .Y(n731) );
  INVX2 U15 ( .A(n39), .Y(n11) );
  INVX2 U16 ( .A(n18), .Y(n12) );
  INVX2 U17 ( .A(n17), .Y(n13) );
  INVX2 U18 ( .A(n16), .Y(n14) );
  BUFX2 U19 ( .A(n52), .Y(n16) );
  BUFX2 U37 ( .A(n52), .Y(n17) );
  BUFX2 U38 ( .A(n52), .Y(n18) );
  BUFX2 U39 ( .A(n51), .Y(n19) );
  BUFX2 U40 ( .A(n51), .Y(n20) );
  BUFX2 U41 ( .A(n51), .Y(n21) );
  BUFX2 U42 ( .A(n50), .Y(n39) );
  BUFX2 U43 ( .A(n50), .Y(n40) );
  BUFX2 U44 ( .A(n50), .Y(n41) );
  BUFX2 U45 ( .A(n49), .Y(n42) );
  BUFX2 U46 ( .A(n49), .Y(n43) );
  BUFX2 U47 ( .A(n49), .Y(n44) );
  BUFX2 U48 ( .A(n48), .Y(n45) );
  BUFX2 U49 ( .A(n48), .Y(n46) );
  BUFX2 U50 ( .A(n48), .Y(n47) );
  BUFX2 U51 ( .A(n94), .Y(n54) );
  BUFX2 U52 ( .A(n94), .Y(n62) );
  BUFX2 U53 ( .A(n94), .Y(n55) );
  BUFX2 U54 ( .A(n94), .Y(n56) );
  BUFX2 U55 ( .A(n94), .Y(n57) );
  BUFX2 U56 ( .A(n94), .Y(n58) );
  BUFX2 U57 ( .A(n94), .Y(n59) );
  BUFX2 U58 ( .A(n94), .Y(n60) );
  BUFX2 U59 ( .A(n94), .Y(n61) );
  BUFX2 U60 ( .A(n53), .Y(n15) );
  BUFX2 U61 ( .A(n90), .Y(n53) );
  BUFX2 U62 ( .A(n94), .Y(n63) );
  BUFX2 U63 ( .A(n90), .Y(n52) );
  BUFX2 U64 ( .A(n90), .Y(n51) );
  BUFX2 U65 ( .A(n90), .Y(n49) );
  BUFX2 U66 ( .A(n90), .Y(n48) );
  BUFX2 U67 ( .A(n90), .Y(n50) );
  OAI21X1 U68 ( .A(n64), .B(n65), .C(n66), .Y(nxtstate[1]) );
  AND2X1 U69 ( .A(n67), .B(n68), .Y(n66) );
  OAI21X1 U70 ( .A(n69), .B(n70), .C(n731), .Y(n67) );
  INVX1 U71 ( .A(n71), .Y(n70) );
  NAND2X1 U72 ( .A(n72), .B(n73), .Y(nxtstate[0]) );
  AOI22X1 U73 ( .A(n74), .B(n731), .C(n733), .D(n64), .Y(n73) );
  OR2X1 U74 ( .A(n75), .B(n76), .Y(n64) );
  NAND3X1 U75 ( .A(cnt128[6]), .B(cnt128[5]), .C(n77), .Y(n76) );
  NOR2X1 U76 ( .A(n78), .B(n79), .Y(n77) );
  NAND3X1 U77 ( .A(cnt128[2]), .B(cnt128[1]), .C(n80), .Y(n75) );
  NOR2X1 U78 ( .A(cnt128[7]), .B(n81), .Y(n80) );
  NOR2X1 U79 ( .A(n71), .B(n69), .Y(n74) );
  INVX1 U80 ( .A(n82), .Y(n69) );
  NAND3X1 U81 ( .A(cnt8[3]), .B(n734), .C(n83), .Y(n82) );
  NOR2X1 U82 ( .A(cnt8[2]), .B(cnt8[1]), .Y(n83) );
  NOR2X1 U83 ( .A(n84), .B(n85), .Y(n71) );
  NAND3X1 U84 ( .A(cnt34[1]), .B(N118), .C(cnt34[5]), .Y(n85) );
  NAND3X1 U85 ( .A(n86), .B(n87), .C(n88), .Y(n84) );
  AOI22X1 U86 ( .A(ESTORE_EN), .B(n89), .C(TRAN_EN), .D(n15), .Y(n72) );
  OAI22X1 U87 ( .A(n65), .B(n91), .C(n92), .D(n93), .Y(nxtANT) );
  INVX1 U88 ( .A(tHeader[0]), .Y(n91) );
  OR2X1 U89 ( .A(n68), .B(PAYLOAD[7]), .Y(n444) );
  OR2X1 U90 ( .A(n68), .B(PAYLOAD[6]), .Y(n445) );
  OR2X1 U91 ( .A(n68), .B(PAYLOAD[5]), .Y(n446) );
  OR2X1 U92 ( .A(n68), .B(PAYLOAD[4]), .Y(n447) );
  OR2X1 U93 ( .A(n68), .B(PAYLOAD[3]), .Y(n448) );
  OR2X1 U94 ( .A(n68), .B(PAYLOAD[2]), .Y(n449) );
  OR2X1 U95 ( .A(n68), .B(PAYLOAD[1]), .Y(n450) );
  OR2X1 U96 ( .A(n68), .B(PAYLOAD[0]), .Y(n451) );
  NAND2X1 U97 ( .A(PAYLOAD[0]), .B(n89), .Y(n452) );
  NAND2X1 U98 ( .A(PAYLOAD[1]), .B(n89), .Y(n453) );
  NAND2X1 U99 ( .A(PAYLOAD[2]), .B(n89), .Y(n454) );
  NAND2X1 U100 ( .A(PAYLOAD[3]), .B(n89), .Y(n455) );
  NAND2X1 U101 ( .A(PAYLOAD[4]), .B(n89), .Y(n456) );
  NAND2X1 U102 ( .A(PAYLOAD[5]), .B(n89), .Y(n457) );
  NAND2X1 U103 ( .A(PAYLOAD[6]), .B(n89), .Y(n458) );
  NAND2X1 U104 ( .A(PAYLOAD[7]), .B(n89), .Y(n459) );
  OR2X1 U105 ( .A(n11), .B(ACCESS_CODE[70]), .Y(n460) );
  OR2X1 U106 ( .A(n14), .B(ACCESS_CODE[69]), .Y(n461) );
  OR2X1 U107 ( .A(n12), .B(ACCESS_CODE[68]), .Y(n462) );
  OR2X1 U108 ( .A(n13), .B(ACCESS_CODE[67]), .Y(n463) );
  OR2X1 U109 ( .A(n14), .B(ACCESS_CODE[66]), .Y(n464) );
  OR2X1 U110 ( .A(n12), .B(ACCESS_CODE[65]), .Y(n465) );
  OR2X1 U111 ( .A(n11), .B(ACCESS_CODE[64]), .Y(n466) );
  OR2X1 U112 ( .A(n12), .B(ACCESS_CODE[63]), .Y(n467) );
  OR2X1 U113 ( .A(n13), .B(ACCESS_CODE[62]), .Y(n468) );
  OR2X1 U114 ( .A(n14), .B(ACCESS_CODE[61]), .Y(n469) );
  OR2X1 U115 ( .A(n14), .B(ACCESS_CODE[60]), .Y(n470) );
  OR2X1 U116 ( .A(n14), .B(ACCESS_CODE[59]), .Y(n471) );
  OR2X1 U117 ( .A(n14), .B(ACCESS_CODE[58]), .Y(n472) );
  OR2X1 U118 ( .A(n14), .B(ACCESS_CODE[57]), .Y(n473) );
  OR2X1 U119 ( .A(n14), .B(ACCESS_CODE[56]), .Y(n474) );
  OR2X1 U120 ( .A(n14), .B(ACCESS_CODE[55]), .Y(n475) );
  OR2X1 U121 ( .A(n14), .B(ACCESS_CODE[54]), .Y(n476) );
  OR2X1 U122 ( .A(n14), .B(ACCESS_CODE[53]), .Y(n477) );
  OR2X1 U123 ( .A(n14), .B(ACCESS_CODE[52]), .Y(n478) );
  OR2X1 U124 ( .A(n14), .B(ACCESS_CODE[51]), .Y(n479) );
  OR2X1 U125 ( .A(n14), .B(ACCESS_CODE[50]), .Y(n480) );
  OR2X1 U126 ( .A(n14), .B(ACCESS_CODE[49]), .Y(n481) );
  OR2X1 U127 ( .A(n14), .B(ACCESS_CODE[48]), .Y(n482) );
  OR2X1 U128 ( .A(n14), .B(ACCESS_CODE[47]), .Y(n483) );
  OR2X1 U129 ( .A(n14), .B(ACCESS_CODE[46]), .Y(n484) );
  OR2X1 U130 ( .A(n14), .B(ACCESS_CODE[45]), .Y(n485) );
  OR2X1 U131 ( .A(n13), .B(ACCESS_CODE[44]), .Y(n486) );
  OR2X1 U132 ( .A(n14), .B(ACCESS_CODE[43]), .Y(n487) );
  OR2X1 U133 ( .A(n13), .B(ACCESS_CODE[42]), .Y(n488) );
  OR2X1 U134 ( .A(n13), .B(ACCESS_CODE[41]), .Y(n489) );
  OR2X1 U135 ( .A(n13), .B(ACCESS_CODE[40]), .Y(n490) );
  OR2X1 U136 ( .A(n13), .B(ACCESS_CODE[39]), .Y(n491) );
  OR2X1 U137 ( .A(n13), .B(ACCESS_CODE[38]), .Y(n492) );
  OR2X1 U138 ( .A(n13), .B(ACCESS_CODE[37]), .Y(n493) );
  OR2X1 U139 ( .A(n13), .B(ACCESS_CODE[36]), .Y(n494) );
  OR2X1 U140 ( .A(n13), .B(ACCESS_CODE[35]), .Y(n495) );
  OR2X1 U141 ( .A(n13), .B(ACCESS_CODE[34]), .Y(n496) );
  OR2X1 U142 ( .A(n13), .B(ACCESS_CODE[33]), .Y(n497) );
  OR2X1 U143 ( .A(n13), .B(ACCESS_CODE[32]), .Y(n498) );
  OR2X1 U144 ( .A(n13), .B(ACCESS_CODE[31]), .Y(n499) );
  OR2X1 U145 ( .A(n13), .B(ACCESS_CODE[30]), .Y(n500) );
  OR2X1 U146 ( .A(n13), .B(ACCESS_CODE[29]), .Y(n501) );
  OR2X1 U147 ( .A(n13), .B(ACCESS_CODE[28]), .Y(n502) );
  OR2X1 U148 ( .A(n13), .B(ACCESS_CODE[27]), .Y(n503) );
  OR2X1 U149 ( .A(n12), .B(ACCESS_CODE[26]), .Y(n504) );
  OR2X1 U150 ( .A(n12), .B(ACCESS_CODE[25]), .Y(n505) );
  OR2X1 U151 ( .A(n12), .B(ACCESS_CODE[24]), .Y(n506) );
  OR2X1 U152 ( .A(n12), .B(ACCESS_CODE[23]), .Y(n507) );
  OR2X1 U153 ( .A(n12), .B(ACCESS_CODE[22]), .Y(n508) );
  OR2X1 U154 ( .A(n12), .B(ACCESS_CODE[21]), .Y(n509) );
  OR2X1 U155 ( .A(n12), .B(ACCESS_CODE[20]), .Y(n510) );
  OR2X1 U156 ( .A(n12), .B(ACCESS_CODE[19]), .Y(n511) );
  OR2X1 U157 ( .A(n12), .B(ACCESS_CODE[18]), .Y(n512) );
  OR2X1 U158 ( .A(n12), .B(ACCESS_CODE[17]), .Y(n513) );
  OR2X1 U159 ( .A(n12), .B(ACCESS_CODE[16]), .Y(n514) );
  OR2X1 U160 ( .A(n12), .B(ACCESS_CODE[15]), .Y(n515) );
  OR2X1 U161 ( .A(n12), .B(ACCESS_CODE[14]), .Y(n516) );
  OR2X1 U162 ( .A(n12), .B(ACCESS_CODE[13]), .Y(n517) );
  OR2X1 U163 ( .A(n12), .B(ACCESS_CODE[12]), .Y(n518) );
  OR2X1 U164 ( .A(n12), .B(ACCESS_CODE[11]), .Y(n519) );
  OR2X1 U165 ( .A(n12), .B(ACCESS_CODE[10]), .Y(n520) );
  OR2X1 U166 ( .A(n11), .B(ACCESS_CODE[9]), .Y(n521) );
  OR2X1 U167 ( .A(n14), .B(ACCESS_CODE[8]), .Y(n522) );
  OR2X1 U168 ( .A(n12), .B(ACCESS_CODE[7]), .Y(n523) );
  OR2X1 U169 ( .A(n11), .B(ACCESS_CODE[6]), .Y(n524) );
  OR2X1 U170 ( .A(n14), .B(ACCESS_CODE[5]), .Y(n525) );
  OR2X1 U171 ( .A(n13), .B(ACCESS_CODE[4]), .Y(n526) );
  OR2X1 U172 ( .A(n12), .B(ACCESS_CODE[3]), .Y(n527) );
  OR2X1 U173 ( .A(n11), .B(ACCESS_CODE[2]), .Y(n528) );
  OR2X1 U174 ( .A(n14), .B(ACCESS_CODE[1]), .Y(n529) );
  OR2X1 U175 ( .A(n13), .B(ACCESS_CODE[0]), .Y(n530) );
  OR2X1 U176 ( .A(n12), .B(HEADER[53]), .Y(n531) );
  OR2X1 U177 ( .A(n11), .B(HEADER[52]), .Y(n532) );
  OR2X1 U178 ( .A(n14), .B(HEADER[51]), .Y(n533) );
  OR2X1 U179 ( .A(n13), .B(HEADER[50]), .Y(n534) );
  OR2X1 U180 ( .A(n12), .B(HEADER[49]), .Y(n535) );
  OR2X1 U181 ( .A(n11), .B(HEADER[48]), .Y(n536) );
  OR2X1 U182 ( .A(n13), .B(HEADER[47]), .Y(n537) );
  OR2X1 U183 ( .A(n12), .B(HEADER[46]), .Y(n538) );
  OR2X1 U184 ( .A(n14), .B(HEADER[45]), .Y(n539) );
  OR2X1 U185 ( .A(n11), .B(HEADER[44]), .Y(n540) );
  OR2X1 U186 ( .A(n14), .B(HEADER[43]), .Y(n541) );
  OR2X1 U187 ( .A(n13), .B(HEADER[42]), .Y(n542) );
  OR2X1 U188 ( .A(n12), .B(HEADER[41]), .Y(n543) );
  OR2X1 U189 ( .A(n13), .B(HEADER[40]), .Y(n544) );
  OR2X1 U190 ( .A(n11), .B(HEADER[39]), .Y(n545) );
  OR2X1 U191 ( .A(n14), .B(HEADER[38]), .Y(n546) );
  OR2X1 U192 ( .A(n13), .B(HEADER[37]), .Y(n547) );
  OR2X1 U193 ( .A(n12), .B(HEADER[36]), .Y(n548) );
  OR2X1 U194 ( .A(n12), .B(HEADER[35]), .Y(n549) );
  OR2X1 U195 ( .A(n11), .B(HEADER[34]), .Y(n550) );
  OR2X1 U196 ( .A(n14), .B(HEADER[33]), .Y(n551) );
  OR2X1 U197 ( .A(n13), .B(HEADER[32]), .Y(n552) );
  OR2X1 U198 ( .A(n12), .B(HEADER[31]), .Y(n553) );
  OR2X1 U199 ( .A(n12), .B(HEADER[30]), .Y(n554) );
  OR2X1 U200 ( .A(n13), .B(HEADER[29]), .Y(n555) );
  OR2X1 U201 ( .A(n11), .B(HEADER[28]), .Y(n556) );
  OR2X1 U202 ( .A(n11), .B(HEADER[27]), .Y(n557) );
  OR2X1 U203 ( .A(n14), .B(HEADER[26]), .Y(n558) );
  OR2X1 U204 ( .A(n13), .B(HEADER[25]), .Y(n559) );
  OR2X1 U205 ( .A(n11), .B(HEADER[24]), .Y(n560) );
  OR2X1 U206 ( .A(n12), .B(HEADER[23]), .Y(n561) );
  OR2X1 U207 ( .A(n14), .B(HEADER[22]), .Y(n562) );
  OR2X1 U208 ( .A(n11), .B(HEADER[21]), .Y(n563) );
  OR2X1 U209 ( .A(n14), .B(HEADER[20]), .Y(n564) );
  OR2X1 U210 ( .A(n13), .B(HEADER[19]), .Y(n565) );
  OR2X1 U211 ( .A(n11), .B(HEADER[18]), .Y(n566) );
  OR2X1 U212 ( .A(n12), .B(HEADER[17]), .Y(n567) );
  OR2X1 U213 ( .A(n13), .B(HEADER[16]), .Y(n568) );
  OR2X1 U214 ( .A(n11), .B(HEADER[15]), .Y(n569) );
  OR2X1 U215 ( .A(n14), .B(HEADER[14]), .Y(n570) );
  OR2X1 U216 ( .A(n13), .B(HEADER[13]), .Y(n571) );
  OR2X1 U217 ( .A(n11), .B(HEADER[12]), .Y(n572) );
  OR2X1 U218 ( .A(n11), .B(HEADER[11]), .Y(n573) );
  OR2X1 U219 ( .A(n11), .B(HEADER[10]), .Y(n574) );
  OR2X1 U220 ( .A(n11), .B(HEADER[9]), .Y(n575) );
  OR2X1 U221 ( .A(n11), .B(HEADER[8]), .Y(n576) );
  OR2X1 U222 ( .A(n11), .B(HEADER[7]), .Y(n577) );
  OR2X1 U223 ( .A(n11), .B(HEADER[6]), .Y(n578) );
  OR2X1 U224 ( .A(n11), .B(HEADER[5]), .Y(n579) );
  OR2X1 U225 ( .A(n11), .B(HEADER[4]), .Y(n580) );
  OR2X1 U226 ( .A(n11), .B(HEADER[3]), .Y(n581) );
  OR2X1 U227 ( .A(n11), .B(HEADER[2]), .Y(n582) );
  OR2X1 U228 ( .A(n11), .B(HEADER[1]), .Y(n583) );
  OR2X1 U229 ( .A(n11), .B(HEADER[0]), .Y(n584) );
  OR2X1 U230 ( .A(n11), .B(ACCESS_CODE[71]), .Y(n585) );
  NAND2X1 U231 ( .A(ACCESS_CODE[71]), .B(n15), .Y(n586) );
  NAND2X1 U232 ( .A(HEADER[0]), .B(n15), .Y(n587) );
  NAND2X1 U233 ( .A(HEADER[1]), .B(n15), .Y(n588) );
  NAND2X1 U234 ( .A(HEADER[2]), .B(n16), .Y(n589) );
  NAND2X1 U235 ( .A(HEADER[3]), .B(n16), .Y(n590) );
  NAND2X1 U236 ( .A(HEADER[4]), .B(n16), .Y(n591) );
  NAND2X1 U237 ( .A(HEADER[5]), .B(n16), .Y(n592) );
  NAND2X1 U238 ( .A(HEADER[6]), .B(n16), .Y(n593) );
  NAND2X1 U239 ( .A(HEADER[7]), .B(n17), .Y(n594) );
  NAND2X1 U240 ( .A(HEADER[8]), .B(n17), .Y(n595) );
  NAND2X1 U241 ( .A(HEADER[9]), .B(n17), .Y(n596) );
  NAND2X1 U242 ( .A(HEADER[10]), .B(n17), .Y(n597) );
  NAND2X1 U243 ( .A(HEADER[11]), .B(n17), .Y(n598) );
  NAND2X1 U244 ( .A(HEADER[12]), .B(n18), .Y(n599) );
  NAND2X1 U245 ( .A(HEADER[13]), .B(n18), .Y(n600) );
  NAND2X1 U246 ( .A(HEADER[14]), .B(n18), .Y(n601) );
  NAND2X1 U247 ( .A(HEADER[15]), .B(n18), .Y(n602) );
  NAND2X1 U248 ( .A(HEADER[16]), .B(n18), .Y(n603) );
  NAND2X1 U249 ( .A(HEADER[17]), .B(n19), .Y(n604) );
  NAND2X1 U250 ( .A(HEADER[18]), .B(n19), .Y(n605) );
  NAND2X1 U251 ( .A(HEADER[19]), .B(n19), .Y(n606) );
  NAND2X1 U252 ( .A(HEADER[20]), .B(n19), .Y(n607) );
  NAND2X1 U253 ( .A(HEADER[21]), .B(n19), .Y(n608) );
  NAND2X1 U254 ( .A(HEADER[22]), .B(n20), .Y(n609) );
  NAND2X1 U255 ( .A(HEADER[23]), .B(n20), .Y(n610) );
  NAND2X1 U256 ( .A(HEADER[24]), .B(n20), .Y(n611) );
  NAND2X1 U257 ( .A(HEADER[25]), .B(n20), .Y(n612) );
  NAND2X1 U258 ( .A(HEADER[26]), .B(n20), .Y(n613) );
  NAND2X1 U259 ( .A(HEADER[27]), .B(n21), .Y(n614) );
  NAND2X1 U260 ( .A(HEADER[28]), .B(n21), .Y(n615) );
  NAND2X1 U261 ( .A(HEADER[29]), .B(n21), .Y(n616) );
  NAND2X1 U262 ( .A(HEADER[30]), .B(n21), .Y(n617) );
  NAND2X1 U263 ( .A(HEADER[31]), .B(n21), .Y(n618) );
  NAND2X1 U264 ( .A(HEADER[32]), .B(n42), .Y(n619) );
  NAND2X1 U265 ( .A(HEADER[33]), .B(n39), .Y(n620) );
  NAND2X1 U266 ( .A(HEADER[34]), .B(n39), .Y(n621) );
  NAND2X1 U267 ( .A(HEADER[35]), .B(n39), .Y(n622) );
  NAND2X1 U268 ( .A(HEADER[36]), .B(n39), .Y(n623) );
  NAND2X1 U269 ( .A(HEADER[37]), .B(n39), .Y(n624) );
  NAND2X1 U270 ( .A(HEADER[38]), .B(n40), .Y(n625) );
  NAND2X1 U271 ( .A(HEADER[39]), .B(n40), .Y(n626) );
  NAND2X1 U272 ( .A(HEADER[40]), .B(n40), .Y(n627) );
  NAND2X1 U273 ( .A(HEADER[41]), .B(n40), .Y(n628) );
  NAND2X1 U274 ( .A(HEADER[42]), .B(n40), .Y(n629) );
  NAND2X1 U275 ( .A(HEADER[43]), .B(n40), .Y(n630) );
  NAND2X1 U276 ( .A(HEADER[44]), .B(n40), .Y(n631) );
  NAND2X1 U277 ( .A(HEADER[45]), .B(n40), .Y(n632) );
  NAND2X1 U278 ( .A(HEADER[46]), .B(n40), .Y(n633) );
  NAND2X1 U279 ( .A(HEADER[47]), .B(n40), .Y(n634) );
  NAND2X1 U280 ( .A(HEADER[48]), .B(n40), .Y(n635) );
  NAND2X1 U281 ( .A(HEADER[49]), .B(n41), .Y(n636) );
  NAND2X1 U282 ( .A(HEADER[50]), .B(n41), .Y(n637) );
  NAND2X1 U283 ( .A(HEADER[51]), .B(n41), .Y(n638) );
  NAND2X1 U284 ( .A(HEADER[52]), .B(n41), .Y(n639) );
  NAND2X1 U285 ( .A(HEADER[53]), .B(n41), .Y(n640) );
  NAND2X1 U286 ( .A(ACCESS_CODE[0]), .B(n41), .Y(n641) );
  NAND2X1 U287 ( .A(ACCESS_CODE[1]), .B(n41), .Y(n642) );
  NAND2X1 U288 ( .A(ACCESS_CODE[2]), .B(n41), .Y(n643) );
  NAND2X1 U303 ( .A(ACCESS_CODE[3]), .B(n41), .Y(n644) );
  NAND2X1 U305 ( .A(ACCESS_CODE[4]), .B(n41), .Y(n645) );
  NAND2X1 U306 ( .A(ACCESS_CODE[5]), .B(n41), .Y(n646) );
  NAND2X1 U307 ( .A(ACCESS_CODE[6]), .B(n42), .Y(n647) );
  NAND2X1 U308 ( .A(ACCESS_CODE[7]), .B(n42), .Y(n648) );
  NAND2X1 U309 ( .A(ACCESS_CODE[8]), .B(n42), .Y(n649) );
  NAND2X1 U310 ( .A(ACCESS_CODE[9]), .B(n42), .Y(n650) );
  NAND2X1 U311 ( .A(ACCESS_CODE[10]), .B(n42), .Y(n651) );
  NAND2X1 U312 ( .A(ACCESS_CODE[11]), .B(n42), .Y(n652) );
  NAND2X1 U313 ( .A(ACCESS_CODE[12]), .B(n42), .Y(n653) );
  NAND2X1 U314 ( .A(ACCESS_CODE[13]), .B(n42), .Y(n654) );
  NAND2X1 U315 ( .A(ACCESS_CODE[14]), .B(n42), .Y(n655) );
  NAND2X1 U316 ( .A(ACCESS_CODE[15]), .B(n42), .Y(n656) );
  NAND2X1 U317 ( .A(ACCESS_CODE[16]), .B(n43), .Y(n657) );
  NAND2X1 U318 ( .A(ACCESS_CODE[17]), .B(n43), .Y(n658) );
  NAND2X1 U319 ( .A(ACCESS_CODE[18]), .B(n43), .Y(n659) );
  NAND2X1 U320 ( .A(ACCESS_CODE[19]), .B(n43), .Y(n660) );
  NAND2X1 U321 ( .A(ACCESS_CODE[20]), .B(n43), .Y(n661) );
  NAND2X1 U322 ( .A(ACCESS_CODE[21]), .B(n43), .Y(n662) );
  NAND2X1 U323 ( .A(ACCESS_CODE[22]), .B(n43), .Y(n663) );
  NAND2X1 U324 ( .A(ACCESS_CODE[23]), .B(n43), .Y(n664) );
  NAND2X1 U325 ( .A(ACCESS_CODE[24]), .B(n43), .Y(n665) );
  NAND2X1 U326 ( .A(ACCESS_CODE[25]), .B(n43), .Y(n666) );
  NAND2X1 U327 ( .A(ACCESS_CODE[26]), .B(n43), .Y(n667) );
  NAND2X1 U328 ( .A(ACCESS_CODE[27]), .B(n44), .Y(n668) );
  NAND2X1 U329 ( .A(ACCESS_CODE[28]), .B(n44), .Y(n669) );
  NAND2X1 U330 ( .A(ACCESS_CODE[29]), .B(n44), .Y(n670) );
  NAND2X1 U331 ( .A(ACCESS_CODE[30]), .B(n44), .Y(n671) );
  NAND2X1 U332 ( .A(ACCESS_CODE[31]), .B(n44), .Y(n672) );
  NAND2X1 U333 ( .A(ACCESS_CODE[32]), .B(n44), .Y(n673) );
  NAND2X1 U334 ( .A(ACCESS_CODE[33]), .B(n44), .Y(n674) );
  NAND2X1 U335 ( .A(ACCESS_CODE[34]), .B(n44), .Y(n676) );
  NAND2X1 U336 ( .A(ACCESS_CODE[35]), .B(n44), .Y(n677) );
  NAND2X1 U337 ( .A(ACCESS_CODE[36]), .B(n44), .Y(n679) );
  NAND2X1 U338 ( .A(ACCESS_CODE[37]), .B(n44), .Y(n680) );
  NAND2X1 U339 ( .A(ACCESS_CODE[38]), .B(n45), .Y(n682) );
  NAND2X1 U340 ( .A(ACCESS_CODE[39]), .B(n45), .Y(n683) );
  NAND2X1 U341 ( .A(ACCESS_CODE[40]), .B(n45), .Y(n685) );
  NAND2X1 U342 ( .A(ACCESS_CODE[41]), .B(n45), .Y(n686) );
  NAND2X1 U343 ( .A(ACCESS_CODE[42]), .B(n45), .Y(n688) );
  NAND2X1 U344 ( .A(ACCESS_CODE[43]), .B(n45), .Y(n689) );
  NAND2X1 U345 ( .A(ACCESS_CODE[44]), .B(n45), .Y(n691) );
  NAND2X1 U346 ( .A(ACCESS_CODE[45]), .B(n45), .Y(n692) );
  NAND2X1 U347 ( .A(ACCESS_CODE[46]), .B(n45), .Y(n694) );
  NAND2X1 U348 ( .A(ACCESS_CODE[47]), .B(n45), .Y(n695) );
  NAND2X1 U349 ( .A(ACCESS_CODE[48]), .B(n45), .Y(n697) );
  NAND2X1 U350 ( .A(ACCESS_CODE[49]), .B(n46), .Y(n698) );
  NAND2X1 U351 ( .A(ACCESS_CODE[50]), .B(n46), .Y(n700) );
  NAND2X1 U352 ( .A(ACCESS_CODE[51]), .B(n46), .Y(n701) );
  NAND2X1 U353 ( .A(ACCESS_CODE[52]), .B(n46), .Y(n703) );
  NAND2X1 U354 ( .A(ACCESS_CODE[53]), .B(n46), .Y(n704) );
  NAND2X1 U355 ( .A(ACCESS_CODE[54]), .B(n46), .Y(n706) );
  NAND2X1 U356 ( .A(ACCESS_CODE[55]), .B(n46), .Y(n707) );
  NAND2X1 U357 ( .A(ACCESS_CODE[56]), .B(n46), .Y(n709) );
  NAND2X1 U358 ( .A(ACCESS_CODE[57]), .B(n46), .Y(n710) );
  NAND2X1 U359 ( .A(ACCESS_CODE[58]), .B(n46), .Y(n712) );
  NAND2X1 U360 ( .A(ACCESS_CODE[59]), .B(n46), .Y(n713) );
  NAND2X1 U361 ( .A(ACCESS_CODE[60]), .B(n47), .Y(n715) );
  NAND2X1 U362 ( .A(ACCESS_CODE[61]), .B(n47), .Y(n716) );
  NAND2X1 U363 ( .A(ACCESS_CODE[62]), .B(n47), .Y(n718) );
  NAND2X1 U364 ( .A(ACCESS_CODE[63]), .B(n47), .Y(n719) );
  NAND2X1 U365 ( .A(ACCESS_CODE[64]), .B(n47), .Y(n721) );
  NAND2X1 U366 ( .A(ACCESS_CODE[65]), .B(n47), .Y(n722) );
  NAND2X1 U367 ( .A(ACCESS_CODE[66]), .B(n47), .Y(n724) );
  NAND2X1 U368 ( .A(ACCESS_CODE[67]), .B(n47), .Y(n725) );
  NAND2X1 U369 ( .A(ACCESS_CODE[68]), .B(n47), .Y(n727) );
  NAND2X1 U370 ( .A(ACCESS_CODE[69]), .B(n47), .Y(n728) );
  NAND2X1 U371 ( .A(ACCESS_CODE[70]), .B(n47), .Y(n730) );
  OAI21X1 U372 ( .A(n58), .B(n95), .C(n96), .Y(n999) );
  AOI22X1 U373 ( .A(n4), .B(HEADER[24]), .C(tHeader[27]), .D(n9), .Y(n96) );
  INVX1 U374 ( .A(tHeader[26]), .Y(n95) );
  OAI21X1 U375 ( .A(n54), .B(n97), .C(n98), .Y(n996) );
  AOI22X1 U376 ( .A(n7), .B(HEADER[25]), .C(tHeader[28]), .D(n8), .Y(n98) );
  INVX1 U377 ( .A(tHeader[27]), .Y(n97) );
  OAI21X1 U378 ( .A(n54), .B(n99), .C(n100), .Y(n993) );
  AOI22X1 U379 ( .A(n6), .B(HEADER[26]), .C(tHeader[29]), .D(n10), .Y(n100) );
  INVX1 U380 ( .A(tHeader[28]), .Y(n99) );
  OAI21X1 U381 ( .A(n54), .B(n101), .C(n102), .Y(n990) );
  AOI22X1 U382 ( .A(n4), .B(HEADER[27]), .C(tHeader[30]), .D(n9), .Y(n102) );
  INVX1 U383 ( .A(tHeader[29]), .Y(n101) );
  OAI21X1 U384 ( .A(n54), .B(n103), .C(n104), .Y(n987) );
  AOI22X1 U385 ( .A(n7), .B(HEADER[28]), .C(tHeader[31]), .D(n8), .Y(n104) );
  INVX1 U386 ( .A(tHeader[30]), .Y(n103) );
  OAI21X1 U387 ( .A(n54), .B(n105), .C(n106), .Y(n984) );
  AOI22X1 U388 ( .A(n6), .B(HEADER[29]), .C(tHeader[32]), .D(n10), .Y(n106) );
  INVX1 U389 ( .A(tHeader[31]), .Y(n105) );
  OAI21X1 U390 ( .A(n54), .B(n107), .C(n108), .Y(n981) );
  AOI22X1 U391 ( .A(n4), .B(HEADER[30]), .C(tHeader[33]), .D(n9), .Y(n108) );
  INVX1 U392 ( .A(tHeader[32]), .Y(n107) );
  OAI21X1 U393 ( .A(n54), .B(n109), .C(n110), .Y(n978) );
  AOI22X1 U394 ( .A(n7), .B(HEADER[31]), .C(tHeader[34]), .D(n8), .Y(n110) );
  INVX1 U395 ( .A(tHeader[33]), .Y(n109) );
  OAI21X1 U396 ( .A(n54), .B(n111), .C(n112), .Y(n975) );
  AOI22X1 U397 ( .A(n6), .B(HEADER[32]), .C(tHeader[35]), .D(n10), .Y(n112) );
  INVX1 U398 ( .A(tHeader[34]), .Y(n111) );
  OAI21X1 U399 ( .A(n54), .B(n113), .C(n114), .Y(n972) );
  AOI22X1 U400 ( .A(n4), .B(HEADER[33]), .C(tHeader[36]), .D(n9), .Y(n114) );
  INVX1 U401 ( .A(tHeader[35]), .Y(n113) );
  OAI21X1 U402 ( .A(n54), .B(n115), .C(n116), .Y(n969) );
  AOI22X1 U403 ( .A(n7), .B(HEADER[34]), .C(tHeader[37]), .D(n8), .Y(n116) );
  INVX1 U404 ( .A(tHeader[36]), .Y(n115) );
  OAI21X1 U405 ( .A(n54), .B(n117), .C(n118), .Y(n966) );
  AOI22X1 U406 ( .A(n6), .B(HEADER[35]), .C(tHeader[38]), .D(n10), .Y(n118) );
  INVX1 U407 ( .A(tHeader[37]), .Y(n117) );
  OAI21X1 U408 ( .A(n54), .B(n119), .C(n120), .Y(n963) );
  AOI22X1 U409 ( .A(n4), .B(HEADER[36]), .C(tHeader[39]), .D(n9), .Y(n120) );
  INVX1 U410 ( .A(tHeader[38]), .Y(n119) );
  OAI21X1 U411 ( .A(n55), .B(n121), .C(n122), .Y(n960) );
  AOI22X1 U412 ( .A(n7), .B(HEADER[37]), .C(tHeader[40]), .D(n8), .Y(n122) );
  INVX1 U413 ( .A(tHeader[39]), .Y(n121) );
  OAI21X1 U414 ( .A(n55), .B(n123), .C(n124), .Y(n957) );
  AOI22X1 U415 ( .A(n6), .B(HEADER[38]), .C(tHeader[41]), .D(n10), .Y(n124) );
  INVX1 U416 ( .A(tHeader[40]), .Y(n123) );
  OAI21X1 U417 ( .A(n55), .B(n125), .C(n126), .Y(n954) );
  AOI22X1 U418 ( .A(n4), .B(HEADER[39]), .C(tHeader[42]), .D(n9), .Y(n126) );
  INVX1 U419 ( .A(tHeader[41]), .Y(n125) );
  OAI21X1 U420 ( .A(n55), .B(n127), .C(n128), .Y(n951) );
  AOI22X1 U421 ( .A(n7), .B(HEADER[40]), .C(tHeader[43]), .D(n8), .Y(n128) );
  INVX1 U422 ( .A(tHeader[42]), .Y(n127) );
  OAI21X1 U423 ( .A(n55), .B(n129), .C(n130), .Y(n948) );
  AOI22X1 U424 ( .A(n6), .B(HEADER[41]), .C(tHeader[44]), .D(n10), .Y(n130) );
  INVX1 U425 ( .A(tHeader[43]), .Y(n129) );
  OAI21X1 U426 ( .A(n55), .B(n131), .C(n132), .Y(n945) );
  AOI22X1 U427 ( .A(n4), .B(HEADER[42]), .C(tHeader[45]), .D(n9), .Y(n132) );
  INVX1 U428 ( .A(tHeader[44]), .Y(n131) );
  OAI21X1 U429 ( .A(n55), .B(n133), .C(n134), .Y(n942) );
  AOI22X1 U430 ( .A(n7), .B(HEADER[43]), .C(tHeader[46]), .D(n8), .Y(n134) );
  INVX1 U431 ( .A(tHeader[45]), .Y(n133) );
  OAI21X1 U432 ( .A(n55), .B(n135), .C(n136), .Y(n939) );
  AOI22X1 U433 ( .A(n6), .B(HEADER[44]), .C(tHeader[47]), .D(n10), .Y(n136) );
  INVX1 U434 ( .A(tHeader[46]), .Y(n135) );
  OAI21X1 U435 ( .A(n55), .B(n137), .C(n138), .Y(n936) );
  AOI22X1 U436 ( .A(n4), .B(HEADER[45]), .C(tHeader[48]), .D(n9), .Y(n138) );
  INVX1 U437 ( .A(tHeader[47]), .Y(n137) );
  OAI21X1 U438 ( .A(n55), .B(n139), .C(n140), .Y(n933) );
  AOI22X1 U439 ( .A(n7), .B(HEADER[46]), .C(tHeader[49]), .D(n8), .Y(n140) );
  INVX1 U440 ( .A(tHeader[48]), .Y(n139) );
  OAI21X1 U441 ( .A(n55), .B(n141), .C(n142), .Y(n930) );
  AOI22X1 U442 ( .A(n6), .B(HEADER[47]), .C(tHeader[50]), .D(n10), .Y(n142) );
  INVX1 U443 ( .A(tHeader[49]), .Y(n141) );
  OAI21X1 U444 ( .A(n55), .B(n143), .C(n144), .Y(n927) );
  AOI22X1 U445 ( .A(n4), .B(HEADER[48]), .C(tHeader[51]), .D(n9), .Y(n144) );
  INVX1 U446 ( .A(tHeader[50]), .Y(n143) );
  OAI21X1 U447 ( .A(n55), .B(n145), .C(n146), .Y(n924) );
  AOI22X1 U448 ( .A(n7), .B(HEADER[49]), .C(tHeader[52]), .D(n8), .Y(n146) );
  INVX1 U449 ( .A(tHeader[51]), .Y(n145) );
  OAI21X1 U450 ( .A(n55), .B(n147), .C(n148), .Y(n921) );
  AOI22X1 U451 ( .A(n6), .B(HEADER[50]), .C(tHeader[53]), .D(n10), .Y(n148) );
  INVX1 U452 ( .A(tHeader[52]), .Y(n147) );
  OAI21X1 U453 ( .A(n56), .B(n149), .C(n150), .Y(n918) );
  AOI22X1 U454 ( .A(n4), .B(HEADER[51]), .C(tHeader[54]), .D(n9), .Y(n150) );
  INVX1 U455 ( .A(tHeader[53]), .Y(n149) );
  OAI21X1 U456 ( .A(n56), .B(n151), .C(n152), .Y(n915) );
  AOI22X1 U457 ( .A(n7), .B(HEADER[52]), .C(tHeader[55]), .D(n8), .Y(n152) );
  INVX1 U458 ( .A(tHeader[54]), .Y(n151) );
  OAI21X1 U459 ( .A(n56), .B(n153), .C(n154), .Y(n912) );
  AOI22X1 U460 ( .A(n6), .B(HEADER[53]), .C(tHeader[56]), .D(n10), .Y(n154) );
  INVX1 U461 ( .A(tHeader[55]), .Y(n153) );
  OAI21X1 U462 ( .A(n56), .B(n155), .C(n156), .Y(n909) );
  AOI22X1 U463 ( .A(n4), .B(ACCESS_CODE[0]), .C(tHeader[57]), .D(n9), .Y(n156)
         );
  INVX1 U464 ( .A(tHeader[56]), .Y(n155) );
  OAI21X1 U465 ( .A(n56), .B(n157), .C(n158), .Y(n906) );
  AOI22X1 U466 ( .A(n7), .B(ACCESS_CODE[1]), .C(tHeader[58]), .D(n8), .Y(n158)
         );
  INVX1 U467 ( .A(tHeader[57]), .Y(n157) );
  OAI21X1 U468 ( .A(n56), .B(n159), .C(n160), .Y(n903) );
  AOI22X1 U469 ( .A(n6), .B(ACCESS_CODE[2]), .C(tHeader[59]), .D(n10), .Y(n160) );
  INVX1 U470 ( .A(tHeader[58]), .Y(n159) );
  OAI21X1 U471 ( .A(n56), .B(n161), .C(n162), .Y(n900) );
  AOI22X1 U472 ( .A(n4), .B(ACCESS_CODE[3]), .C(tHeader[60]), .D(n9), .Y(n162)
         );
  INVX1 U473 ( .A(tHeader[59]), .Y(n161) );
  OAI21X1 U474 ( .A(n56), .B(n163), .C(n164), .Y(n897) );
  AOI22X1 U475 ( .A(n7), .B(ACCESS_CODE[4]), .C(tHeader[61]), .D(n8), .Y(n164)
         );
  INVX1 U476 ( .A(tHeader[60]), .Y(n163) );
  OAI21X1 U477 ( .A(n56), .B(n165), .C(n166), .Y(n894) );
  AOI22X1 U478 ( .A(n6), .B(ACCESS_CODE[5]), .C(tHeader[62]), .D(n10), .Y(n166) );
  INVX1 U479 ( .A(tHeader[61]), .Y(n165) );
  OAI21X1 U480 ( .A(n56), .B(n167), .C(n168), .Y(n891) );
  AOI22X1 U481 ( .A(n4), .B(ACCESS_CODE[6]), .C(tHeader[63]), .D(n9), .Y(n168)
         );
  INVX1 U482 ( .A(tHeader[62]), .Y(n167) );
  OAI21X1 U483 ( .A(n56), .B(n169), .C(n170), .Y(n888) );
  AOI22X1 U484 ( .A(n7), .B(ACCESS_CODE[7]), .C(tHeader[64]), .D(n8), .Y(n170)
         );
  INVX1 U485 ( .A(tHeader[63]), .Y(n169) );
  OAI21X1 U486 ( .A(n56), .B(n171), .C(n172), .Y(n885) );
  AOI22X1 U487 ( .A(n6), .B(ACCESS_CODE[8]), .C(tHeader[65]), .D(n10), .Y(n172) );
  INVX1 U488 ( .A(tHeader[64]), .Y(n171) );
  OAI21X1 U489 ( .A(n56), .B(n173), .C(n174), .Y(n882) );
  AOI22X1 U490 ( .A(n4), .B(ACCESS_CODE[9]), .C(tHeader[66]), .D(n9), .Y(n174)
         );
  INVX1 U491 ( .A(tHeader[65]), .Y(n173) );
  OAI21X1 U492 ( .A(n56), .B(n175), .C(n176), .Y(n879) );
  AOI22X1 U493 ( .A(n7), .B(ACCESS_CODE[10]), .C(tHeader[67]), .D(n8), .Y(n176) );
  INVX1 U494 ( .A(tHeader[66]), .Y(n175) );
  OAI21X1 U495 ( .A(n57), .B(n177), .C(n178), .Y(n876) );
  AOI22X1 U496 ( .A(n6), .B(ACCESS_CODE[11]), .C(tHeader[68]), .D(n10), .Y(
        n178) );
  INVX1 U497 ( .A(tHeader[67]), .Y(n177) );
  OAI21X1 U498 ( .A(n57), .B(n179), .C(n180), .Y(n873) );
  AOI22X1 U499 ( .A(n4), .B(ACCESS_CODE[12]), .C(tHeader[69]), .D(n9), .Y(n180) );
  INVX1 U500 ( .A(tHeader[68]), .Y(n179) );
  OAI21X1 U501 ( .A(n57), .B(n181), .C(n182), .Y(n870) );
  AOI22X1 U502 ( .A(n7), .B(ACCESS_CODE[13]), .C(tHeader[70]), .D(n8), .Y(n182) );
  INVX1 U503 ( .A(tHeader[69]), .Y(n181) );
  OAI21X1 U504 ( .A(n57), .B(n183), .C(n184), .Y(n867) );
  AOI22X1 U505 ( .A(n6), .B(ACCESS_CODE[14]), .C(tHeader[71]), .D(n10), .Y(
        n184) );
  INVX1 U506 ( .A(tHeader[70]), .Y(n183) );
  OAI21X1 U507 ( .A(n57), .B(n185), .C(n186), .Y(n864) );
  AOI22X1 U508 ( .A(n4), .B(ACCESS_CODE[15]), .C(tHeader[72]), .D(n9), .Y(n186) );
  INVX1 U509 ( .A(tHeader[71]), .Y(n185) );
  OAI21X1 U510 ( .A(n57), .B(n187), .C(n188), .Y(n861) );
  AOI22X1 U511 ( .A(n7), .B(ACCESS_CODE[16]), .C(tHeader[73]), .D(n8), .Y(n188) );
  INVX1 U512 ( .A(tHeader[72]), .Y(n187) );
  OAI21X1 U513 ( .A(n57), .B(n189), .C(n190), .Y(n858) );
  AOI22X1 U514 ( .A(n6), .B(ACCESS_CODE[17]), .C(tHeader[74]), .D(n10), .Y(
        n190) );
  INVX1 U515 ( .A(tHeader[73]), .Y(n189) );
  OAI21X1 U516 ( .A(n57), .B(n191), .C(n192), .Y(n855) );
  AOI22X1 U517 ( .A(n4), .B(ACCESS_CODE[18]), .C(tHeader[75]), .D(n9), .Y(n192) );
  INVX1 U518 ( .A(tHeader[74]), .Y(n191) );
  OAI21X1 U519 ( .A(n57), .B(n193), .C(n194), .Y(n852) );
  AOI22X1 U520 ( .A(n7), .B(ACCESS_CODE[19]), .C(tHeader[76]), .D(n8), .Y(n194) );
  INVX1 U521 ( .A(tHeader[75]), .Y(n193) );
  OAI21X1 U522 ( .A(n57), .B(n195), .C(n196), .Y(n849) );
  AOI22X1 U523 ( .A(n6), .B(ACCESS_CODE[20]), .C(tHeader[77]), .D(n10), .Y(
        n196) );
  INVX1 U524 ( .A(tHeader[76]), .Y(n195) );
  OAI21X1 U525 ( .A(n57), .B(n197), .C(n198), .Y(n846) );
  AOI22X1 U526 ( .A(n4), .B(ACCESS_CODE[21]), .C(tHeader[78]), .D(n9), .Y(n198) );
  INVX1 U527 ( .A(tHeader[77]), .Y(n197) );
  OAI21X1 U528 ( .A(n57), .B(n199), .C(n200), .Y(n843) );
  AOI22X1 U529 ( .A(n7), .B(ACCESS_CODE[22]), .C(tHeader[79]), .D(n8), .Y(n200) );
  INVX1 U530 ( .A(tHeader[78]), .Y(n199) );
  OAI21X1 U531 ( .A(n57), .B(n201), .C(n202), .Y(n840) );
  AOI22X1 U532 ( .A(n6), .B(ACCESS_CODE[23]), .C(tHeader[80]), .D(n10), .Y(
        n202) );
  INVX1 U533 ( .A(tHeader[79]), .Y(n201) );
  OAI21X1 U534 ( .A(n57), .B(n203), .C(n204), .Y(n837) );
  AOI22X1 U535 ( .A(n4), .B(ACCESS_CODE[24]), .C(tHeader[81]), .D(n9), .Y(n204) );
  INVX1 U536 ( .A(tHeader[80]), .Y(n203) );
  OAI21X1 U537 ( .A(n58), .B(n205), .C(n206), .Y(n834) );
  AOI22X1 U538 ( .A(n7), .B(ACCESS_CODE[25]), .C(tHeader[82]), .D(n8), .Y(n206) );
  INVX1 U539 ( .A(tHeader[81]), .Y(n205) );
  OAI21X1 U540 ( .A(n58), .B(n207), .C(n208), .Y(n831) );
  AOI22X1 U541 ( .A(n6), .B(ACCESS_CODE[26]), .C(tHeader[83]), .D(n10), .Y(
        n208) );
  INVX1 U542 ( .A(tHeader[82]), .Y(n207) );
  OAI21X1 U543 ( .A(n58), .B(n209), .C(n210), .Y(n828) );
  AOI22X1 U544 ( .A(n4), .B(ACCESS_CODE[27]), .C(tHeader[84]), .D(n9), .Y(n210) );
  INVX1 U545 ( .A(tHeader[83]), .Y(n209) );
  OAI21X1 U546 ( .A(n58), .B(n211), .C(n212), .Y(n825) );
  AOI22X1 U547 ( .A(n7), .B(ACCESS_CODE[28]), .C(tHeader[85]), .D(n8), .Y(n212) );
  INVX1 U548 ( .A(tHeader[84]), .Y(n211) );
  OAI21X1 U549 ( .A(n58), .B(n213), .C(n214), .Y(n822) );
  AOI22X1 U550 ( .A(n6), .B(ACCESS_CODE[29]), .C(tHeader[86]), .D(n10), .Y(
        n214) );
  INVX1 U551 ( .A(tHeader[85]), .Y(n213) );
  OAI21X1 U552 ( .A(n58), .B(n215), .C(n216), .Y(n819) );
  AOI22X1 U553 ( .A(n4), .B(ACCESS_CODE[30]), .C(tHeader[87]), .D(n9), .Y(n216) );
  INVX1 U554 ( .A(tHeader[86]), .Y(n215) );
  OAI21X1 U555 ( .A(n58), .B(n217), .C(n218), .Y(n816) );
  AOI22X1 U556 ( .A(n7), .B(ACCESS_CODE[31]), .C(tHeader[88]), .D(n8), .Y(n218) );
  INVX1 U557 ( .A(tHeader[87]), .Y(n217) );
  OAI21X1 U558 ( .A(n58), .B(n219), .C(n220), .Y(n813) );
  AOI22X1 U559 ( .A(n6), .B(ACCESS_CODE[32]), .C(tHeader[89]), .D(n10), .Y(
        n220) );
  INVX1 U560 ( .A(tHeader[88]), .Y(n219) );
  OAI21X1 U561 ( .A(n58), .B(n221), .C(n222), .Y(n810) );
  AOI22X1 U562 ( .A(n4), .B(ACCESS_CODE[33]), .C(tHeader[90]), .D(n9), .Y(n222) );
  INVX1 U563 ( .A(tHeader[89]), .Y(n221) );
  OAI21X1 U564 ( .A(n58), .B(n223), .C(n224), .Y(n807) );
  AOI22X1 U565 ( .A(n7), .B(ACCESS_CODE[34]), .C(tHeader[91]), .D(n8), .Y(n224) );
  INVX1 U566 ( .A(tHeader[90]), .Y(n223) );
  OAI21X1 U567 ( .A(n58), .B(n225), .C(n226), .Y(n804) );
  AOI22X1 U568 ( .A(n6), .B(ACCESS_CODE[35]), .C(tHeader[92]), .D(n10), .Y(
        n226) );
  INVX1 U569 ( .A(tHeader[91]), .Y(n225) );
  OAI21X1 U570 ( .A(n58), .B(n227), .C(n228), .Y(n801) );
  AOI22X1 U571 ( .A(n4), .B(ACCESS_CODE[36]), .C(tHeader[93]), .D(n9), .Y(n228) );
  INVX1 U572 ( .A(tHeader[92]), .Y(n227) );
  OAI21X1 U573 ( .A(n58), .B(n229), .C(n230), .Y(n798) );
  AOI22X1 U574 ( .A(n7), .B(ACCESS_CODE[37]), .C(tHeader[94]), .D(n8), .Y(n230) );
  INVX1 U575 ( .A(tHeader[93]), .Y(n229) );
  OAI21X1 U576 ( .A(n59), .B(n231), .C(n232), .Y(n795) );
  AOI22X1 U577 ( .A(n6), .B(ACCESS_CODE[38]), .C(tHeader[95]), .D(n10), .Y(
        n232) );
  INVX1 U578 ( .A(tHeader[94]), .Y(n231) );
  OAI21X1 U579 ( .A(n59), .B(n233), .C(n234), .Y(n792) );
  AOI22X1 U580 ( .A(n4), .B(ACCESS_CODE[39]), .C(tHeader[96]), .D(n9), .Y(n234) );
  INVX1 U581 ( .A(tHeader[95]), .Y(n233) );
  OAI21X1 U582 ( .A(n59), .B(n235), .C(n236), .Y(n789) );
  AOI22X1 U583 ( .A(n7), .B(ACCESS_CODE[40]), .C(tHeader[97]), .D(n8), .Y(n236) );
  INVX1 U584 ( .A(tHeader[96]), .Y(n235) );
  OAI21X1 U585 ( .A(n59), .B(n237), .C(n238), .Y(n786) );
  AOI22X1 U586 ( .A(n6), .B(ACCESS_CODE[41]), .C(tHeader[98]), .D(n10), .Y(
        n238) );
  INVX1 U587 ( .A(tHeader[97]), .Y(n237) );
  OAI21X1 U588 ( .A(n59), .B(n239), .C(n240), .Y(n783) );
  AOI22X1 U589 ( .A(n4), .B(ACCESS_CODE[42]), .C(tHeader[99]), .D(n9), .Y(n240) );
  INVX1 U590 ( .A(tHeader[98]), .Y(n239) );
  OAI21X1 U591 ( .A(n59), .B(n241), .C(n242), .Y(n780) );
  AOI22X1 U592 ( .A(n7), .B(ACCESS_CODE[43]), .C(tHeader[100]), .D(n8), .Y(
        n242) );
  INVX1 U593 ( .A(tHeader[99]), .Y(n241) );
  OAI21X1 U594 ( .A(n59), .B(n243), .C(n244), .Y(n777) );
  AOI22X1 U595 ( .A(n6), .B(ACCESS_CODE[44]), .C(tHeader[101]), .D(n10), .Y(
        n244) );
  INVX1 U596 ( .A(tHeader[100]), .Y(n243) );
  OAI21X1 U597 ( .A(n59), .B(n245), .C(n246), .Y(n774) );
  AOI22X1 U598 ( .A(n4), .B(ACCESS_CODE[45]), .C(tHeader[102]), .D(n9), .Y(
        n246) );
  INVX1 U599 ( .A(tHeader[101]), .Y(n245) );
  OAI21X1 U600 ( .A(n59), .B(n247), .C(n248), .Y(n771) );
  AOI22X1 U601 ( .A(n7), .B(ACCESS_CODE[46]), .C(tHeader[103]), .D(n8), .Y(
        n248) );
  INVX1 U602 ( .A(tHeader[102]), .Y(n247) );
  OAI21X1 U603 ( .A(n59), .B(n249), .C(n250), .Y(n768) );
  AOI22X1 U604 ( .A(n6), .B(ACCESS_CODE[47]), .C(tHeader[104]), .D(n10), .Y(
        n250) );
  INVX1 U605 ( .A(tHeader[103]), .Y(n249) );
  OAI21X1 U606 ( .A(n59), .B(n251), .C(n252), .Y(n765) );
  AOI22X1 U607 ( .A(n4), .B(ACCESS_CODE[48]), .C(tHeader[105]), .D(n9), .Y(
        n252) );
  INVX1 U608 ( .A(tHeader[104]), .Y(n251) );
  OAI21X1 U609 ( .A(n59), .B(n253), .C(n254), .Y(n762) );
  AOI22X1 U610 ( .A(n7), .B(ACCESS_CODE[49]), .C(tHeader[106]), .D(n8), .Y(
        n254) );
  INVX1 U611 ( .A(tHeader[105]), .Y(n253) );
  OAI21X1 U612 ( .A(n59), .B(n255), .C(n256), .Y(n759) );
  AOI22X1 U613 ( .A(n6), .B(ACCESS_CODE[50]), .C(tHeader[107]), .D(n10), .Y(
        n256) );
  INVX1 U614 ( .A(tHeader[106]), .Y(n255) );
  OAI21X1 U615 ( .A(n59), .B(n257), .C(n258), .Y(n756) );
  AOI22X1 U616 ( .A(n4), .B(ACCESS_CODE[51]), .C(tHeader[108]), .D(n9), .Y(
        n258) );
  INVX1 U617 ( .A(tHeader[107]), .Y(n257) );
  OAI21X1 U618 ( .A(n60), .B(n259), .C(n260), .Y(n753) );
  AOI22X1 U619 ( .A(n7), .B(ACCESS_CODE[52]), .C(tHeader[109]), .D(n8), .Y(
        n260) );
  INVX1 U620 ( .A(tHeader[108]), .Y(n259) );
  OAI21X1 U621 ( .A(n60), .B(n261), .C(n262), .Y(n750) );
  AOI22X1 U622 ( .A(n6), .B(ACCESS_CODE[53]), .C(tHeader[110]), .D(n10), .Y(
        n262) );
  INVX1 U623 ( .A(tHeader[109]), .Y(n261) );
  OAI21X1 U624 ( .A(n60), .B(n263), .C(n264), .Y(n747) );
  AOI22X1 U625 ( .A(n4), .B(ACCESS_CODE[54]), .C(tHeader[111]), .D(n9), .Y(
        n264) );
  INVX1 U626 ( .A(tHeader[110]), .Y(n263) );
  OAI21X1 U627 ( .A(n60), .B(n265), .C(n266), .Y(n744) );
  AOI22X1 U628 ( .A(n7), .B(ACCESS_CODE[55]), .C(tHeader[112]), .D(n8), .Y(
        n266) );
  INVX1 U629 ( .A(tHeader[111]), .Y(n265) );
  OAI21X1 U630 ( .A(n60), .B(n267), .C(n268), .Y(n741) );
  AOI22X1 U631 ( .A(n6), .B(ACCESS_CODE[56]), .C(tHeader[113]), .D(n10), .Y(
        n268) );
  INVX1 U632 ( .A(tHeader[112]), .Y(n267) );
  OAI21X1 U633 ( .A(n60), .B(n269), .C(n270), .Y(n738) );
  AOI22X1 U634 ( .A(n4), .B(ACCESS_CODE[57]), .C(tHeader[114]), .D(n9), .Y(
        n270) );
  INVX1 U635 ( .A(tHeader[113]), .Y(n269) );
  OAI21X1 U636 ( .A(n60), .B(n271), .C(n272), .Y(n735) );
  AOI22X1 U637 ( .A(n7), .B(ACCESS_CODE[58]), .C(tHeader[115]), .D(n8), .Y(
        n272) );
  INVX1 U638 ( .A(tHeader[114]), .Y(n271) );
  OAI21X1 U639 ( .A(n60), .B(n273), .C(n274), .Y(n732) );
  AOI22X1 U640 ( .A(n6), .B(ACCESS_CODE[59]), .C(tHeader[116]), .D(n10), .Y(
        n274) );
  INVX1 U641 ( .A(tHeader[115]), .Y(n273) );
  OAI21X1 U642 ( .A(n60), .B(n275), .C(n276), .Y(n729) );
  AOI22X1 U643 ( .A(n4), .B(ACCESS_CODE[60]), .C(tHeader[117]), .D(n9), .Y(
        n276) );
  INVX1 U644 ( .A(tHeader[116]), .Y(n275) );
  OAI21X1 U645 ( .A(n60), .B(n277), .C(n278), .Y(n726) );
  AOI22X1 U646 ( .A(n7), .B(ACCESS_CODE[61]), .C(tHeader[118]), .D(n8), .Y(
        n278) );
  INVX1 U647 ( .A(tHeader[117]), .Y(n277) );
  OAI21X1 U648 ( .A(n60), .B(n279), .C(n280), .Y(n723) );
  AOI22X1 U649 ( .A(n6), .B(ACCESS_CODE[62]), .C(tHeader[119]), .D(n10), .Y(
        n280) );
  INVX1 U650 ( .A(tHeader[118]), .Y(n279) );
  OAI21X1 U651 ( .A(n60), .B(n281), .C(n282), .Y(n720) );
  AOI22X1 U652 ( .A(n4), .B(ACCESS_CODE[63]), .C(tHeader[120]), .D(n9), .Y(
        n282) );
  INVX1 U653 ( .A(tHeader[119]), .Y(n281) );
  OAI21X1 U654 ( .A(n60), .B(n283), .C(n284), .Y(n717) );
  AOI22X1 U655 ( .A(n7), .B(ACCESS_CODE[64]), .C(tHeader[121]), .D(n8), .Y(
        n284) );
  INVX1 U656 ( .A(tHeader[120]), .Y(n283) );
  OAI21X1 U657 ( .A(n60), .B(n285), .C(n286), .Y(n714) );
  AOI22X1 U658 ( .A(n6), .B(ACCESS_CODE[65]), .C(tHeader[122]), .D(n10), .Y(
        n286) );
  INVX1 U659 ( .A(tHeader[121]), .Y(n285) );
  OAI21X1 U660 ( .A(n61), .B(n287), .C(n288), .Y(n711) );
  AOI22X1 U661 ( .A(n4), .B(ACCESS_CODE[66]), .C(tHeader[123]), .D(n9), .Y(
        n288) );
  INVX1 U662 ( .A(tHeader[122]), .Y(n287) );
  OAI21X1 U663 ( .A(n61), .B(n289), .C(n290), .Y(n708) );
  AOI22X1 U664 ( .A(n7), .B(ACCESS_CODE[67]), .C(tHeader[124]), .D(n8), .Y(
        n290) );
  INVX1 U665 ( .A(tHeader[123]), .Y(n289) );
  OAI21X1 U666 ( .A(n61), .B(n305), .C(n307), .Y(n705) );
  AOI22X1 U667 ( .A(n6), .B(ACCESS_CODE[68]), .C(tHeader[125]), .D(n10), .Y(
        n307) );
  INVX1 U668 ( .A(tHeader[124]), .Y(n305) );
  OAI21X1 U669 ( .A(n61), .B(n308), .C(n309), .Y(n702) );
  AOI22X1 U670 ( .A(n4), .B(ACCESS_CODE[69]), .C(tHeader[126]), .D(n9), .Y(
        n309) );
  INVX1 U671 ( .A(tHeader[125]), .Y(n308) );
  OAI21X1 U672 ( .A(n61), .B(n310), .C(n311), .Y(n699) );
  AOI22X1 U673 ( .A(n7), .B(ACCESS_CODE[70]), .C(tHeader[127]), .D(n8), .Y(
        n311) );
  INVX1 U674 ( .A(tHeader[126]), .Y(n310) );
  OAI21X1 U675 ( .A(n312), .B(n93), .C(n313), .Y(n696) );
  AOI22X1 U676 ( .A(n314), .B(PAYLOAD[0]), .C(pLoad[1]), .D(n315), .Y(n313) );
  INVX1 U677 ( .A(pLoad[0]), .Y(n93) );
  OAI21X1 U678 ( .A(n312), .B(n316), .C(n317), .Y(n693) );
  AOI22X1 U679 ( .A(n314), .B(PAYLOAD[1]), .C(pLoad[2]), .D(n315), .Y(n317) );
  INVX1 U680 ( .A(pLoad[1]), .Y(n316) );
  OAI21X1 U681 ( .A(n312), .B(n318), .C(n319), .Y(n690) );
  AOI22X1 U682 ( .A(n314), .B(PAYLOAD[2]), .C(pLoad[3]), .D(n315), .Y(n319) );
  INVX1 U683 ( .A(pLoad[2]), .Y(n318) );
  OAI21X1 U684 ( .A(n312), .B(n320), .C(n321), .Y(n687) );
  AOI22X1 U685 ( .A(n314), .B(PAYLOAD[3]), .C(pLoad[4]), .D(n315), .Y(n321) );
  INVX1 U686 ( .A(pLoad[3]), .Y(n320) );
  OAI21X1 U687 ( .A(n312), .B(n322), .C(n323), .Y(n684) );
  AOI22X1 U688 ( .A(n314), .B(PAYLOAD[4]), .C(pLoad[5]), .D(n315), .Y(n323) );
  INVX1 U689 ( .A(pLoad[4]), .Y(n322) );
  OAI21X1 U690 ( .A(n312), .B(n324), .C(n325), .Y(n681) );
  AOI22X1 U691 ( .A(n314), .B(PAYLOAD[5]), .C(pLoad[6]), .D(n315), .Y(n325) );
  INVX1 U692 ( .A(pLoad[5]), .Y(n324) );
  OAI21X1 U693 ( .A(n312), .B(n326), .C(n327), .Y(n678) );
  AOI22X1 U694 ( .A(n314), .B(PAYLOAD[6]), .C(pLoad[7]), .D(n315), .Y(n327) );
  INVX1 U695 ( .A(pLoad[6]), .Y(n326) );
  OAI21X1 U696 ( .A(n312), .B(n328), .C(n329), .Y(n675) );
  AOI22X1 U697 ( .A(n314), .B(PAYLOAD[7]), .C(n315), .D(pLoad[0]), .Y(n329) );
  AND2X1 U698 ( .A(n312), .B(n731), .Y(n315) );
  AND2X1 U699 ( .A(n312), .B(n92), .Y(n314) );
  INVX1 U700 ( .A(pLoad[7]), .Y(n328) );
  AND2X1 U701 ( .A(n330), .B(n736), .Y(n312) );
  OAI21X1 U702 ( .A(n92), .B(n331), .C(n68), .Y(n330) );
  INVX1 U703 ( .A(n89), .Y(n68) );
  NOR2X1 U704 ( .A(n332), .B(n3), .Y(n89) );
  OAI21X1 U705 ( .A(n81), .B(n333), .C(n334), .Y(n1096) );
  NAND2X1 U706 ( .A(nxtcnt128[0]), .B(n335), .Y(n334) );
  INVX1 U707 ( .A(cnt128[0]), .Y(n81) );
  OAI21X1 U708 ( .A(n336), .B(n337), .C(n338), .Y(n1095) );
  NAND2X1 U709 ( .A(nxtcnt8[3]), .B(n339), .Y(n338) );
  INVX1 U710 ( .A(cnt8[3]), .Y(n336) );
  OAI21X1 U711 ( .A(n734), .B(n337), .C(n340), .Y(n1094) );
  NAND2X1 U712 ( .A(nxtcnt8[0]), .B(n339), .Y(n340) );
  INVX1 U713 ( .A(cnt8[0]), .Y(n734) );
  OAI21X1 U714 ( .A(n337), .B(n341), .C(n342), .Y(n1093) );
  NAND2X1 U715 ( .A(nxtcnt8[1]), .B(n339), .Y(n342) );
  OAI21X1 U716 ( .A(n337), .B(n343), .C(n344), .Y(n1092) );
  NAND2X1 U717 ( .A(nxtcnt8[2]), .B(n339), .Y(n344) );
  AND2X1 U718 ( .A(n731), .B(n337), .Y(n339) );
  OAI21X1 U719 ( .A(n733), .B(n331), .C(n345), .Y(n337) );
  OAI21X1 U720 ( .A(n346), .B(n347), .C(n348), .Y(n1091) );
  NAND2X1 U721 ( .A(nxtcnt34[5]), .B(n349), .Y(n348) );
  OAI21X1 U722 ( .A(N118), .B(n347), .C(n350), .Y(n1090) );
  NAND2X1 U723 ( .A(nxtcnt34[0]), .B(n349), .Y(n350) );
  OAI21X1 U724 ( .A(n351), .B(n347), .C(n352), .Y(n1089) );
  NAND2X1 U725 ( .A(nxtcnt34[1]), .B(n349), .Y(n352) );
  INVX1 U726 ( .A(cnt34[1]), .Y(n351) );
  OAI21X1 U727 ( .A(n347), .B(n88), .C(n353), .Y(n1088) );
  NAND2X1 U728 ( .A(nxtcnt34[2]), .B(n349), .Y(n353) );
  OAI21X1 U729 ( .A(n347), .B(n86), .C(n354), .Y(n1087) );
  NAND2X1 U730 ( .A(nxtcnt34[3]), .B(n349), .Y(n354) );
  OAI21X1 U731 ( .A(n347), .B(n87), .C(n355), .Y(n1086) );
  NAND2X1 U732 ( .A(nxtcnt34[4]), .B(n349), .Y(n355) );
  AND2X1 U733 ( .A(n731), .B(n347), .Y(n349) );
  INVX1 U734 ( .A(cnt34[4]), .Y(n87) );
  OAI21X1 U735 ( .A(n331), .B(n356), .C(n345), .Y(n347) );
  NAND2X1 U736 ( .A(n357), .B(n65), .Y(n356) );
  OAI21X1 U737 ( .A(cnt8[0]), .B(n358), .C(cnt8[3]), .Y(n357) );
  NAND2X1 U738 ( .A(n341), .B(n343), .Y(n358) );
  INVX1 U739 ( .A(cnt8[1]), .Y(n341) );
  OAI21X1 U740 ( .A(n359), .B(n333), .C(n360), .Y(n1085) );
  NAND2X1 U741 ( .A(nxtcnt128[1]), .B(n335), .Y(n360) );
  INVX1 U742 ( .A(cnt128[1]), .Y(n359) );
  OAI21X1 U743 ( .A(n361), .B(n333), .C(n362), .Y(n1084) );
  NAND2X1 U744 ( .A(nxtcnt128[2]), .B(n335), .Y(n362) );
  INVX1 U745 ( .A(cnt128[2]), .Y(n361) );
  OAI21X1 U746 ( .A(n78), .B(n333), .C(n363), .Y(n1083) );
  NAND2X1 U747 ( .A(nxtcnt128[3]), .B(n335), .Y(n363) );
  INVX1 U748 ( .A(cnt128[3]), .Y(n78) );
  OAI21X1 U749 ( .A(n79), .B(n333), .C(n364), .Y(n1082) );
  NAND2X1 U750 ( .A(nxtcnt128[4]), .B(n335), .Y(n364) );
  INVX1 U751 ( .A(cnt128[4]), .Y(n79) );
  OAI21X1 U752 ( .A(n365), .B(n333), .C(n366), .Y(n1081) );
  NAND2X1 U753 ( .A(nxtcnt128[5]), .B(n335), .Y(n366) );
  INVX1 U754 ( .A(cnt128[5]), .Y(n365) );
  OAI21X1 U755 ( .A(n367), .B(n333), .C(n368), .Y(n1080) );
  NAND2X1 U756 ( .A(nxtcnt128[6]), .B(n335), .Y(n368) );
  INVX1 U757 ( .A(cnt128[6]), .Y(n367) );
  OAI21X1 U758 ( .A(n333), .B(n369), .C(n370), .Y(n1079) );
  NAND2X1 U759 ( .A(nxtcnt128[7]), .B(n335), .Y(n370) );
  AND2X1 U760 ( .A(n733), .B(n333), .Y(n335) );
  INVX1 U761 ( .A(n65), .Y(n733) );
  INVX1 U762 ( .A(cnt128[7]), .Y(n369) );
  NAND2X1 U763 ( .A(n371), .B(n345), .Y(n333) );
  OAI21X1 U764 ( .A(n61), .B(n372), .C(n373), .Y(n1076) );
  AOI22X1 U765 ( .A(n6), .B(ACCESS_CODE[71]), .C(n10), .D(tHeader[0]), .Y(n373) );
  INVX1 U766 ( .A(tHeader[127]), .Y(n372) );
  NAND2X1 U767 ( .A(n374), .B(n375), .Y(n1075) );
  MUX2X1 U768 ( .B(tHeader[0]), .A(tHeader[1]), .S(n54), .Y(n374) );
  NAND2X1 U769 ( .A(n376), .B(n375), .Y(n1074) );
  MUX2X1 U770 ( .B(tHeader[1]), .A(tHeader[2]), .S(n54), .Y(n376) );
  OAI21X1 U771 ( .A(n61), .B(n377), .C(n378), .Y(n1071) );
  AOI22X1 U772 ( .A(n4), .B(HEADER[0]), .C(tHeader[3]), .D(n10), .Y(n378) );
  INVX1 U773 ( .A(tHeader[2]), .Y(n377) );
  OAI21X1 U774 ( .A(n61), .B(n379), .C(n380), .Y(n1068) );
  AOI22X1 U775 ( .A(n7), .B(HEADER[1]), .C(tHeader[4]), .D(n9), .Y(n380) );
  INVX1 U776 ( .A(tHeader[3]), .Y(n379) );
  OAI21X1 U777 ( .A(n61), .B(n381), .C(n382), .Y(n1065) );
  AOI22X1 U778 ( .A(n6), .B(HEADER[2]), .C(tHeader[5]), .D(n8), .Y(n382) );
  INVX1 U779 ( .A(tHeader[4]), .Y(n381) );
  OAI21X1 U780 ( .A(n61), .B(n383), .C(n384), .Y(n1062) );
  AOI22X1 U781 ( .A(n4), .B(HEADER[3]), .C(tHeader[6]), .D(n10), .Y(n384) );
  INVX1 U782 ( .A(tHeader[5]), .Y(n383) );
  OAI21X1 U783 ( .A(n61), .B(n385), .C(n386), .Y(n1059) );
  AOI22X1 U784 ( .A(n7), .B(HEADER[4]), .C(tHeader[7]), .D(n9), .Y(n386) );
  INVX1 U785 ( .A(tHeader[6]), .Y(n385) );
  OAI21X1 U786 ( .A(n61), .B(n387), .C(n388), .Y(n1056) );
  AOI22X1 U787 ( .A(n6), .B(HEADER[5]), .C(tHeader[8]), .D(n8), .Y(n388) );
  INVX1 U788 ( .A(tHeader[7]), .Y(n387) );
  OAI21X1 U789 ( .A(n61), .B(n389), .C(n390), .Y(n1053) );
  AOI22X1 U790 ( .A(n4), .B(HEADER[6]), .C(tHeader[9]), .D(n10), .Y(n390) );
  INVX1 U791 ( .A(tHeader[8]), .Y(n389) );
  OAI21X1 U792 ( .A(n61), .B(n391), .C(n392), .Y(n1050) );
  AOI22X1 U793 ( .A(n7), .B(HEADER[7]), .C(tHeader[10]), .D(n9), .Y(n392) );
  INVX1 U794 ( .A(tHeader[9]), .Y(n391) );
  OAI21X1 U795 ( .A(n62), .B(n393), .C(n394), .Y(n1047) );
  AOI22X1 U796 ( .A(n6), .B(HEADER[8]), .C(tHeader[11]), .D(n8), .Y(n394) );
  INVX1 U797 ( .A(tHeader[10]), .Y(n393) );
  OAI21X1 U798 ( .A(n62), .B(n395), .C(n396), .Y(n1044) );
  AOI22X1 U799 ( .A(n4), .B(HEADER[9]), .C(tHeader[12]), .D(n10), .Y(n396) );
  INVX1 U800 ( .A(tHeader[11]), .Y(n395) );
  OAI21X1 U801 ( .A(n62), .B(n397), .C(n398), .Y(n1041) );
  AOI22X1 U802 ( .A(n7), .B(HEADER[10]), .C(tHeader[13]), .D(n9), .Y(n398) );
  INVX1 U803 ( .A(tHeader[12]), .Y(n397) );
  OAI21X1 U804 ( .A(n62), .B(n399), .C(n400), .Y(n1038) );
  AOI22X1 U805 ( .A(n6), .B(HEADER[11]), .C(tHeader[14]), .D(n8), .Y(n400) );
  INVX1 U806 ( .A(tHeader[13]), .Y(n399) );
  OAI21X1 U807 ( .A(n62), .B(n401), .C(n402), .Y(n1035) );
  AOI22X1 U808 ( .A(n4), .B(HEADER[12]), .C(tHeader[15]), .D(n10), .Y(n402) );
  INVX1 U809 ( .A(tHeader[14]), .Y(n401) );
  OAI21X1 U810 ( .A(n62), .B(n403), .C(n404), .Y(n1032) );
  AOI22X1 U811 ( .A(n7), .B(HEADER[13]), .C(tHeader[16]), .D(n9), .Y(n404) );
  INVX1 U812 ( .A(tHeader[15]), .Y(n403) );
  OAI21X1 U813 ( .A(n62), .B(n405), .C(n406), .Y(n1029) );
  AOI22X1 U814 ( .A(n6), .B(HEADER[14]), .C(tHeader[17]), .D(n8), .Y(n406) );
  INVX1 U815 ( .A(tHeader[16]), .Y(n405) );
  OAI21X1 U816 ( .A(n62), .B(n407), .C(n408), .Y(n1026) );
  AOI22X1 U817 ( .A(n4), .B(HEADER[15]), .C(tHeader[18]), .D(n10), .Y(n408) );
  INVX1 U818 ( .A(tHeader[17]), .Y(n407) );
  OAI21X1 U819 ( .A(n62), .B(n409), .C(n410), .Y(n1023) );
  AOI22X1 U820 ( .A(n7), .B(HEADER[16]), .C(tHeader[19]), .D(n9), .Y(n410) );
  INVX1 U821 ( .A(tHeader[18]), .Y(n409) );
  OAI21X1 U822 ( .A(n62), .B(n411), .C(n412), .Y(n1020) );
  AOI22X1 U823 ( .A(n6), .B(HEADER[17]), .C(tHeader[20]), .D(n8), .Y(n412) );
  INVX1 U824 ( .A(tHeader[19]), .Y(n411) );
  OAI21X1 U825 ( .A(n62), .B(n413), .C(n414), .Y(n1017) );
  AOI22X1 U826 ( .A(n4), .B(HEADER[18]), .C(tHeader[21]), .D(n10), .Y(n414) );
  INVX1 U827 ( .A(tHeader[20]), .Y(n413) );
  OAI21X1 U828 ( .A(n62), .B(n415), .C(n416), .Y(n1014) );
  AOI22X1 U829 ( .A(n7), .B(HEADER[19]), .C(tHeader[22]), .D(n9), .Y(n416) );
  INVX1 U830 ( .A(tHeader[21]), .Y(n415) );
  OAI21X1 U831 ( .A(n62), .B(n417), .C(n418), .Y(n1011) );
  AOI22X1 U832 ( .A(n6), .B(HEADER[20]), .C(tHeader[23]), .D(n8), .Y(n418) );
  INVX1 U833 ( .A(tHeader[22]), .Y(n417) );
  OAI21X1 U834 ( .A(n62), .B(n419), .C(n420), .Y(n1008) );
  AOI22X1 U835 ( .A(n4), .B(HEADER[21]), .C(tHeader[24]), .D(n10), .Y(n420) );
  INVX1 U836 ( .A(tHeader[23]), .Y(n419) );
  OAI21X1 U837 ( .A(n63), .B(n421), .C(n422), .Y(n1005) );
  AOI22X1 U838 ( .A(n7), .B(HEADER[22]), .C(tHeader[25]), .D(n9), .Y(n422) );
  INVX1 U839 ( .A(tHeader[24]), .Y(n421) );
  OAI21X1 U840 ( .A(n63), .B(n423), .C(n424), .Y(n1002) );
  AOI22X1 U841 ( .A(n6), .B(HEADER[23]), .C(tHeader[26]), .D(n8), .Y(n424) );
  NAND2X1 U842 ( .A(n63), .B(n15), .Y(n375) );
  INVX1 U843 ( .A(tHeader[25]), .Y(n423) );
  NOR2X1 U844 ( .A(n371), .B(RST), .Y(n94) );
  INVX1 U845 ( .A(n425), .Y(n371) );
  OAI21X1 U846 ( .A(n65), .B(n331), .C(n12), .Y(n425) );
  NOR2X1 U847 ( .A(n3), .B(state[1]), .Y(n90) );
  NAND3X1 U848 ( .A(n426), .B(n427), .C(cnt658[0]), .Y(n331) );
  INVX1 U849 ( .A(n428), .Y(n426) );
  AND2X1 U850 ( .A(nxtcnt658[9]), .B(n345), .Y(N536) );
  AND2X1 U851 ( .A(nxtcnt658[8]), .B(n345), .Y(N535) );
  AND2X1 U852 ( .A(nxtcnt658[7]), .B(n345), .Y(N534) );
  AND2X1 U853 ( .A(nxtcnt658[6]), .B(n345), .Y(N533) );
  AND2X1 U854 ( .A(nxtcnt658[5]), .B(n345), .Y(N532) );
  AND2X1 U855 ( .A(nxtcnt658[4]), .B(n345), .Y(N531) );
  AND2X1 U856 ( .A(nxtcnt658[3]), .B(n345), .Y(N530) );
  AND2X1 U857 ( .A(nxtcnt658[2]), .B(n345), .Y(N529) );
  AND2X1 U858 ( .A(nxtcnt658[1]), .B(n345), .Y(N528) );
  AND2X1 U859 ( .A(nxtcnt658[0]), .B(n345), .Y(N527) );
  AND2X1 U860 ( .A(N68), .B(n429), .Y(N152) );
  AND2X1 U861 ( .A(N67), .B(n429), .Y(N151) );
  AND2X1 U862 ( .A(N66), .B(n429), .Y(N150) );
  AND2X1 U863 ( .A(N65), .B(n429), .Y(N149) );
  AND2X1 U864 ( .A(N64), .B(n429), .Y(N148) );
  AND2X1 U865 ( .A(N63), .B(n429), .Y(N147) );
  AND2X1 U866 ( .A(N62), .B(n429), .Y(N146) );
  AND2X1 U867 ( .A(N61), .B(n429), .Y(N145) );
  AND2X1 U868 ( .A(N60), .B(n429), .Y(N144) );
  AND2X1 U869 ( .A(N59), .B(n429), .Y(N143) );
  INVX1 U870 ( .A(n430), .Y(n429) );
  OAI21X1 U871 ( .A(n427), .B(n431), .C(n345), .Y(n430) );
  NAND2X1 U872 ( .A(n65), .B(n92), .Y(n345) );
  NAND2X1 U873 ( .A(n3), .B(state[1]), .Y(n92) );
  NAND2X1 U874 ( .A(n3), .B(n332), .Y(n65) );
  INVX1 U875 ( .A(state[1]), .Y(n332) );
  OR2X1 U876 ( .A(n428), .B(cnt658[0]), .Y(n431) );
  NAND3X1 U877 ( .A(n432), .B(n433), .C(n434), .Y(n428) );
  NOR2X1 U878 ( .A(n435), .B(n436), .Y(n434) );
  NAND2X1 U879 ( .A(cnt658[9]), .B(cnt658[7]), .Y(n436) );
  NAND2X1 U880 ( .A(cnt658[4]), .B(n437), .Y(n435) );
  INVX1 U881 ( .A(cnt658[2]), .Y(n437) );
  NOR2X1 U882 ( .A(cnt658[8]), .B(cnt658[6]), .Y(n433) );
  NOR2X1 U883 ( .A(cnt658[5]), .B(cnt658[3]), .Y(n432) );
  INVX1 U884 ( .A(cnt658[1]), .Y(n427) );
  XOR2X1 U885 ( .A(cnt8[3]), .B(n438), .Y(N127) );
  NOR2X1 U886 ( .A(n343), .B(n439), .Y(n438) );
  XOR2X1 U887 ( .A(n343), .B(n439), .Y(N126) );
  NAND2X1 U888 ( .A(cnt8[1]), .B(cnt8[0]), .Y(n439) );
  INVX1 U889 ( .A(cnt8[2]), .Y(n343) );
  XOR2X1 U890 ( .A(cnt8[1]), .B(cnt8[0]), .Y(N125) );
  XOR2X1 U891 ( .A(n346), .B(n440), .Y(N123) );
  NAND2X1 U892 ( .A(n441), .B(cnt34[4]), .Y(n440) );
  INVX1 U893 ( .A(cnt34[5]), .Y(n346) );
  XOR2X1 U894 ( .A(cnt34[4]), .B(n441), .Y(N122) );
  NOR2X1 U895 ( .A(n442), .B(n86), .Y(n441) );
  XOR2X1 U896 ( .A(n86), .B(n442), .Y(N121) );
  NAND3X1 U897 ( .A(cnt34[1]), .B(cnt34[0]), .C(cnt34[2]), .Y(n442) );
  INVX1 U898 ( .A(cnt34[3]), .Y(n86) );
  XOR2X1 U899 ( .A(n88), .B(n443), .Y(N120) );
  NAND2X1 U900 ( .A(cnt34[1]), .B(cnt34[0]), .Y(n443) );
  INVX1 U901 ( .A(cnt34[2]), .Y(n88) );
  XOR2X1 U902 ( .A(cnt34[1]), .B(cnt34[0]), .Y(N119) );
  INVX1 U903 ( .A(cnt34[0]), .Y(N118) );
endmodule


module bToothTop ( CLK, DATA, EMPTY, READ_EN1, RST, DATAOUT, EMPTY_SRAM, 
        READ_EN, RESEND_EN );
  input [7:0] DATA;
  output [7:0] DATAOUT;
  input CLK, EMPTY, READ_EN1, RST;
  output EMPTY_SRAM, READ_EN, RESEND_EN;
  wire   TRANS_EN, HEADER_EN, DATAOUT1, NEXT_EN, ENCODE_EN, ESTORE_EN,
         TRANS_EN1, ERR, REPLY_EN, ANTINR;
  wire   [71:0] ACESS_CODE;
  wire   [7:0] PAYLOAD;
  wire   [53:0] HEADER;
  tri   [7:0] DATA;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49;

  B_AppendAccessCode U_0 ( .CLK(CLK), .RST(RST), .TRANS_EN(TRANS_EN), 
        .ACESS_CODE({ACESS_CODE[71], SYNOPSYS_UNCONNECTED__0, ACESS_CODE[69], 
        SYNOPSYS_UNCONNECTED__1, ACESS_CODE[67:65], SYNOPSYS_UNCONNECTED__2, 
        ACESS_CODE[63], SYNOPSYS_UNCONNECTED__3, ACESS_CODE[61:60], 
        SYNOPSYS_UNCONNECTED__4, ACESS_CODE[58:57], SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, ACESS_CODE[54:53], SYNOPSYS_UNCONNECTED__7, 
        ACESS_CODE[51:50], SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, ACESS_CODE[46:41], SYNOPSYS_UNCONNECTED__11, 
        ACESS_CODE[39], SYNOPSYS_UNCONNECTED__12, ACESS_CODE[37:36], 
        SYNOPSYS_UNCONNECTED__13, ACESS_CODE[34:33], SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, ACESS_CODE[30:29], SYNOPSYS_UNCONNECTED__16, 
        ACESS_CODE[27:26], SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, ACESS_CODE[22:20], SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, ACESS_CODE[3], SYNOPSYS_UNCONNECTED__36, 
        ACESS_CODE[1], SYNOPSYS_UNCONNECTED__37}), .HEADER_EN(HEADER_EN) );
  B_Controller_WAITSRAM24_WAITREG5264_WAITBAK49 U_4 ( .CLK(CLK), .RST(RST), 
        .NEXT_EN(NEXT_EN), .ANT_LIN(DATAOUT1), .EMPTY(EMPTY), .RESEND_EN(
        RESEND_EN), .TRANS_EN(TRANS_EN) );
  B_EncodePacket_STROBCYC15_WAITSRAM24_WAITREG5264 U_2 ( .CLK(CLK), .RST(RST), 
        .ENCODE_EN(ENCODE_EN), .DATA(DATA), .PAYLOAD(PAYLOAD), .ESTORE_EN(
        ESTORE_EN), .NEXT_EN(NEXT_EN), .READ_EN(READ_EN) );
  B_Header_WAITREG5264 U_1 ( .CLK(CLK), .RST(RST), .HEADER_EN(HEADER_EN), 
        .HEADER({HEADER[53:51], SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, HEADER[44:9], SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, HEADER[2:0]}), .TRANS_EN(TRANS_EN1), 
        .ENCODE_EN(ENCODE_EN) );
  B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869 U_6 ( .CLK(CLK), .RST(RST), 
        .REPLY_EN(REPLY_EN), .ERR(ERR), .DATAOUT(DATAOUT1) );
  B_StripPayload U_5 ( .ANTINR(ANTINR), .CLK(CLK), .READ_EN(READ_EN1), .RST(
        RST), .DATAOUT(DATAOUT), .EMPTY_SRAM(EMPTY_SRAM), .ERR(ERR), 
        .REPLY_EN(REPLY_EN) );
  B_UAT_WAITSRAM24_WAITREG5264 U_3 ( .CLK(CLK), .RST(RST), .ACCESS_CODE({
        ACESS_CODE[71], 1'b0, ACESS_CODE[69], 1'b0, ACESS_CODE[67:65], 1'b0, 
        ACESS_CODE[63], 1'b0, ACESS_CODE[61:60], 1'b0, ACESS_CODE[58:57], 1'b0, 
        1'b0, ACESS_CODE[54:53], 1'b0, ACESS_CODE[51:50], 1'b0, 1'b0, 1'b0, 
        ACESS_CODE[46:41], 1'b0, ACESS_CODE[39], 1'b0, ACESS_CODE[37:36], 1'b0, 
        ACESS_CODE[34:33], 1'b0, 1'b0, ACESS_CODE[30:29], 1'b0, 
        ACESS_CODE[27:26], 1'b0, 1'b0, 1'b0, ACESS_CODE[22:20], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, ACESS_CODE[3], 1'b0, ACESS_CODE[1], 1'b0}), .HEADER({
        HEADER[53:51], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, HEADER[44:9], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, HEADER[2:0]}), .PAYLOAD(PAYLOAD), 
        .TRAN_EN(TRANS_EN1), .ESTORE_EN(ESTORE_EN), .ANT_LOUT(ANTINR) );
endmodule


module s_Control_DW01_dec_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24;

  INVX2 U1 ( .A(n13), .Y(SUM[8]) );
  INVX2 U2 ( .A(n16), .Y(SUM[6]) );
  INVX2 U3 ( .A(n19), .Y(SUM[4]) );
  INVX2 U4 ( .A(n22), .Y(SUM[2]) );
  INVX2 U5 ( .A(A[0]), .Y(n5) );
  INVX2 U6 ( .A(A[1]), .Y(n6) );
  INVX2 U7 ( .A(A[3]), .Y(n7) );
  INVX2 U8 ( .A(A[5]), .Y(n8) );
  INVX2 U9 ( .A(A[7]), .Y(n9) );
  INVX2 U10 ( .A(A[9]), .Y(n10) );
  OAI21X1 U11 ( .A(n11), .B(n10), .C(n12), .Y(SUM[9]) );
  AOI21X1 U12 ( .A(n14), .B(A[8]), .C(n11), .Y(n13) );
  OAI21X1 U13 ( .A(n15), .B(n9), .C(n14), .Y(SUM[7]) );
  AOI21X1 U14 ( .A(n17), .B(A[6]), .C(n15), .Y(n16) );
  OAI21X1 U15 ( .A(n18), .B(n8), .C(n17), .Y(SUM[5]) );
  AOI21X1 U16 ( .A(n20), .B(A[4]), .C(n18), .Y(n19) );
  OAI21X1 U17 ( .A(n21), .B(n7), .C(n20), .Y(SUM[3]) );
  AOI21X1 U18 ( .A(n23), .B(A[2]), .C(n21), .Y(n22) );
  OAI21X1 U19 ( .A(n5), .B(n6), .C(n23), .Y(SUM[1]) );
  XOR2X1 U20 ( .A(A[11]), .B(n24), .Y(SUM[11]) );
  NOR2X1 U21 ( .A(A[10]), .B(n12), .Y(n24) );
  XNOR2X1 U22 ( .A(A[10]), .B(n12), .Y(SUM[10]) );
  NAND2X1 U23 ( .A(n11), .B(n10), .Y(n12) );
  NOR2X1 U24 ( .A(n14), .B(A[8]), .Y(n11) );
  NAND2X1 U25 ( .A(n15), .B(n9), .Y(n14) );
  NOR2X1 U26 ( .A(n17), .B(A[6]), .Y(n15) );
  NAND2X1 U27 ( .A(n18), .B(n8), .Y(n17) );
  NOR2X1 U28 ( .A(n20), .B(A[4]), .Y(n18) );
  NAND2X1 U29 ( .A(n21), .B(n7), .Y(n20) );
  NOR2X1 U30 ( .A(n23), .B(A[2]), .Y(n21) );
  NAND2X1 U31 ( .A(n6), .B(n5), .Y(n23) );
endmodule


module s_Control_DW01_inc_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  HAX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .YC(carry[11]), .YS(SUM[10]) );
  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[11]), .B(A[11]), .Y(SUM[11]) );
endmodule


module s_Control_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  FAX1 U2_11 ( .A(A[11]), .B(n2), .C(carry[11]), .YS(DIFF[11]) );
  FAX1 U2_10 ( .A(A[10]), .B(n3), .C(carry[10]), .YC(carry[11]), .YS(DIFF[10])
         );
  FAX1 U2_9 ( .A(A[9]), .B(n12), .C(carry[9]), .YC(carry[10]), .YS(DIFF[9]) );
  FAX1 U2_8 ( .A(A[8]), .B(n11), .C(carry[8]), .YC(carry[9]), .YS(DIFF[8]) );
  FAX1 U2_7 ( .A(A[7]), .B(n10), .C(carry[7]), .YC(carry[8]), .YS(DIFF[7]) );
  FAX1 U2_6 ( .A(A[6]), .B(n9), .C(carry[6]), .YC(carry[7]), .YS(DIFF[6]) );
  FAX1 U2_5 ( .A(A[5]), .B(n8), .C(carry[5]), .YC(carry[6]), .YS(DIFF[5]) );
  FAX1 U2_4 ( .A(A[4]), .B(n7), .C(carry[4]), .YC(carry[5]), .YS(DIFF[4]) );
  FAX1 U2_3 ( .A(A[3]), .B(n6), .C(carry[3]), .YC(carry[4]), .YS(DIFF[3]) );
  FAX1 U2_2 ( .A(A[2]), .B(n5), .C(carry[2]), .YC(carry[3]), .YS(DIFF[2]) );
  FAX1 U2_1 ( .A(A[1]), .B(n4), .C(carry[1]), .YC(carry[2]), .YS(DIFF[1]) );
  OR2X2 U1 ( .A(A[0]), .B(n1), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n1), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U3 ( .A(B[0]), .Y(n1) );
  INVX2 U4 ( .A(B[11]), .Y(n2) );
  INVX2 U5 ( .A(B[10]), .Y(n3) );
  INVX2 U6 ( .A(B[1]), .Y(n4) );
  INVX2 U7 ( .A(B[2]), .Y(n5) );
  INVX2 U8 ( .A(B[3]), .Y(n6) );
  INVX2 U9 ( .A(B[4]), .Y(n7) );
  INVX2 U10 ( .A(B[5]), .Y(n8) );
  INVX2 U11 ( .A(B[6]), .Y(n9) );
  INVX2 U12 ( .A(B[7]), .Y(n10) );
  INVX2 U13 ( .A(B[8]), .Y(n11) );
  INVX2 U14 ( .A(B[9]), .Y(n12) );
endmodule


module s_Control ( clk, rst, full, resend, r_enable_in, IDATA, empty, 
        r_enable_out, r_enable_s, ADDR, ODATA, SDATA, w_enable_out );
  input [7:0] IDATA;
  output [11:0] ADDR;
  output [7:0] ODATA;
  inout [7:0] SDATA;
  input clk, rst, full, resend, r_enable_in;
  output empty, r_enable_out, r_enable_s, w_enable_out;
  wire   sWrite, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78,
         N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, N173,
         N174, N180, N181, N182, N183, N184, N185, N186, N187, N188, N189,
         N190, N231, N233, N234, N235, N236, N237, N238, N239, N240, N241,
         N242, N243, N244, N245, N246, N247, N248, N249, N250, N251, N252,
         N253, N254, N255, N256, N257, N258, N259, N260, N261, N262, N263,
         N264, N265, N266, N267, N268, N269, N270, N292, N293, N295, N296,
         N298, N299, N301, N302, N304, N305, N307, N308, N310, N311, N313,
         N314, N316, N317, N319, N320, N322, N323, N325, N326, N328, N329,
         N331, N332, N334, N335, N337, N338, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n197, n198, n199, n200,
         n201, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n119, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n195, n196, n202, n203;
  wire   [1:0] state;
  wire   [2:0] cnt8;
  wire   [2:0] icnt8;
  wire   [11:0] RADDR;
  wire   [11:0] PRADDR;
  wire   [11:0] WADDR;
  wire   [2:0] incnt8;
  wire   [11:0] nRADDR;
  wire   [11:0] nPRADDR;
  wire   [11:0] nWADDR;
  tri   [11:0] ADDR;
  tri   [7:0] ODATA;
  tri   [7:0] SDATA;
  wire   SYNOPSYS_UNCONNECTED__0;

  DFFSR \icnt8_reg[0]  ( .D(incnt8[0]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        icnt8[0]) );
  DFFSR \icnt8_reg[2]  ( .D(incnt8[2]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        icnt8[2]) );
  DFFSR \state_reg[1]  ( .D(n200), .CLK(clk), .R(n203), .S(1'b1), .Q(state[1])
         );
  DFFSR \state_reg[0]  ( .D(n201), .CLK(clk), .R(n203), .S(1'b1), .Q(state[0])
         );
  DFFSR \cnt8_reg[0]  ( .D(n199), .CLK(clk), .R(n203), .S(1'b1), .Q(cnt8[0])
         );
  DFFSR \cnt8_reg[1]  ( .D(n198), .CLK(clk), .R(n203), .S(1'b1), .Q(cnt8[1])
         );
  DFFSR \cnt8_reg[2]  ( .D(n197), .CLK(clk), .R(n203), .S(1'b1), .Q(cnt8[2])
         );
  DFFSR \icnt8_reg[1]  ( .D(incnt8[1]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        icnt8[1]) );
  LATCH sWrite_reg ( .CLK(N231), .D(n203), .Q(sWrite) );
  LATCH \nWADDR_reg[0]  ( .CLK(n5), .D(N233), .Q(nWADDR[0]) );
  DFFSR \WADDR_reg[0]  ( .D(nWADDR[0]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        WADDR[0]) );
  LATCH \nWADDR_reg[1]  ( .CLK(n5), .D(N234), .Q(nWADDR[1]) );
  DFFSR \WADDR_reg[1]  ( .D(nWADDR[1]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        WADDR[1]) );
  LATCH \nWADDR_reg[2]  ( .CLK(n5), .D(N235), .Q(nWADDR[2]) );
  DFFSR \WADDR_reg[2]  ( .D(nWADDR[2]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        WADDR[2]) );
  LATCH \nWADDR_reg[3]  ( .CLK(n5), .D(N236), .Q(nWADDR[3]) );
  DFFSR \WADDR_reg[3]  ( .D(nWADDR[3]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        WADDR[3]) );
  LATCH \nWADDR_reg[4]  ( .CLK(n5), .D(N237), .Q(nWADDR[4]) );
  DFFSR \WADDR_reg[4]  ( .D(nWADDR[4]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        WADDR[4]) );
  LATCH \nWADDR_reg[5]  ( .CLK(n5), .D(N238), .Q(nWADDR[5]) );
  DFFSR \WADDR_reg[5]  ( .D(nWADDR[5]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        WADDR[5]) );
  LATCH \nWADDR_reg[6]  ( .CLK(n5), .D(N239), .Q(nWADDR[6]) );
  DFFSR \WADDR_reg[6]  ( .D(nWADDR[6]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        WADDR[6]) );
  LATCH \nWADDR_reg[7]  ( .CLK(n5), .D(N240), .Q(nWADDR[7]) );
  DFFSR \WADDR_reg[7]  ( .D(nWADDR[7]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        WADDR[7]) );
  LATCH \nWADDR_reg[8]  ( .CLK(n5), .D(N241), .Q(nWADDR[8]) );
  DFFSR \WADDR_reg[8]  ( .D(nWADDR[8]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        WADDR[8]) );
  LATCH \nWADDR_reg[9]  ( .CLK(n5), .D(N242), .Q(nWADDR[9]) );
  DFFSR \WADDR_reg[9]  ( .D(nWADDR[9]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        WADDR[9]) );
  LATCH \nWADDR_reg[10]  ( .CLK(n5), .D(N243), .Q(nWADDR[10]) );
  DFFSR \WADDR_reg[10]  ( .D(nWADDR[10]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        WADDR[10]) );
  LATCH \nWADDR_reg[11]  ( .CLK(n5), .D(N244), .Q(nWADDR[11]) );
  DFFSR \WADDR_reg[11]  ( .D(nWADDR[11]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        WADDR[11]) );
  LATCH \nRADDR_reg[0]  ( .CLK(n6), .D(N246), .Q(nRADDR[0]) );
  DFFSR \RADDR_reg[0]  ( .D(nRADDR[0]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        RADDR[0]) );
  LATCH \nPRADDR_reg[0]  ( .CLK(N258), .D(N259), .Q(nPRADDR[0]) );
  DFFSR \PRADDR_reg[0]  ( .D(nPRADDR[0]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        PRADDR[0]) );
  LATCH \nPRADDR_reg[1]  ( .CLK(N258), .D(N260), .Q(nPRADDR[1]) );
  DFFSR \PRADDR_reg[1]  ( .D(nPRADDR[1]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        PRADDR[1]) );
  LATCH \nPRADDR_reg[2]  ( .CLK(N258), .D(N261), .Q(nPRADDR[2]) );
  DFFSR \PRADDR_reg[2]  ( .D(nPRADDR[2]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        PRADDR[2]) );
  LATCH \nPRADDR_reg[3]  ( .CLK(N258), .D(N262), .Q(nPRADDR[3]) );
  DFFSR \PRADDR_reg[3]  ( .D(nPRADDR[3]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        PRADDR[3]) );
  LATCH \nPRADDR_reg[4]  ( .CLK(N258), .D(N263), .Q(nPRADDR[4]) );
  DFFSR \PRADDR_reg[4]  ( .D(nPRADDR[4]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        PRADDR[4]) );
  LATCH \nPRADDR_reg[5]  ( .CLK(N258), .D(N264), .Q(nPRADDR[5]) );
  DFFSR \PRADDR_reg[5]  ( .D(nPRADDR[5]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        PRADDR[5]) );
  LATCH \nPRADDR_reg[6]  ( .CLK(N258), .D(N265), .Q(nPRADDR[6]) );
  DFFSR \PRADDR_reg[6]  ( .D(nPRADDR[6]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        PRADDR[6]) );
  LATCH \nPRADDR_reg[7]  ( .CLK(N258), .D(N266), .Q(nPRADDR[7]) );
  DFFSR \PRADDR_reg[7]  ( .D(nPRADDR[7]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        PRADDR[7]) );
  LATCH \nPRADDR_reg[8]  ( .CLK(N258), .D(N267), .Q(nPRADDR[8]) );
  DFFSR \PRADDR_reg[8]  ( .D(nPRADDR[8]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        PRADDR[8]) );
  LATCH \nPRADDR_reg[9]  ( .CLK(N258), .D(N268), .Q(nPRADDR[9]) );
  DFFSR \PRADDR_reg[9]  ( .D(nPRADDR[9]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        PRADDR[9]) );
  LATCH \nPRADDR_reg[10]  ( .CLK(N258), .D(N269), .Q(nPRADDR[10]) );
  DFFSR \PRADDR_reg[10]  ( .D(nPRADDR[10]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        PRADDR[10]) );
  LATCH \nPRADDR_reg[11]  ( .CLK(N258), .D(N270), .Q(nPRADDR[11]) );
  DFFSR \PRADDR_reg[11]  ( .D(nPRADDR[11]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        PRADDR[11]) );
  LATCH \nRADDR_reg[11]  ( .CLK(n6), .D(N257), .Q(nRADDR[11]) );
  DFFSR \RADDR_reg[11]  ( .D(nRADDR[11]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        RADDR[11]) );
  LATCH \nRADDR_reg[10]  ( .CLK(n6), .D(N256), .Q(nRADDR[10]) );
  DFFSR \RADDR_reg[10]  ( .D(nRADDR[10]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        RADDR[10]) );
  LATCH \nRADDR_reg[1]  ( .CLK(n6), .D(N247), .Q(nRADDR[1]) );
  DFFSR \RADDR_reg[1]  ( .D(nRADDR[1]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        RADDR[1]) );
  LATCH \nRADDR_reg[2]  ( .CLK(n6), .D(N248), .Q(nRADDR[2]) );
  DFFSR \RADDR_reg[2]  ( .D(nRADDR[2]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        RADDR[2]) );
  LATCH \nRADDR_reg[3]  ( .CLK(n6), .D(N249), .Q(nRADDR[3]) );
  DFFSR \RADDR_reg[3]  ( .D(nRADDR[3]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        RADDR[3]) );
  LATCH \nRADDR_reg[4]  ( .CLK(n6), .D(N250), .Q(nRADDR[4]) );
  DFFSR \RADDR_reg[4]  ( .D(nRADDR[4]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        RADDR[4]) );
  LATCH \nRADDR_reg[5]  ( .CLK(n6), .D(N251), .Q(nRADDR[5]) );
  DFFSR \RADDR_reg[5]  ( .D(nRADDR[5]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        RADDR[5]) );
  LATCH \nRADDR_reg[6]  ( .CLK(n6), .D(N252), .Q(nRADDR[6]) );
  DFFSR \RADDR_reg[6]  ( .D(nRADDR[6]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        RADDR[6]) );
  LATCH \nRADDR_reg[7]  ( .CLK(n6), .D(N253), .Q(nRADDR[7]) );
  DFFSR \RADDR_reg[7]  ( .D(nRADDR[7]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        RADDR[7]) );
  LATCH \nRADDR_reg[8]  ( .CLK(n6), .D(N254), .Q(nRADDR[8]) );
  DFFSR \RADDR_reg[8]  ( .D(nRADDR[8]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        RADDR[8]) );
  LATCH \nRADDR_reg[9]  ( .CLK(n6), .D(N255), .Q(nRADDR[9]) );
  DFFSR \RADDR_reg[9]  ( .D(nRADDR[9]), .CLK(clk), .R(n203), .S(1'b1), .Q(
        RADDR[9]) );
  LATCH \ODATA_tri_enable_reg[7]  ( .CLK(n8), .D(n119), .Q(N293) );
  LATCH \ODATA_tri_enable_reg[6]  ( .CLK(n8), .D(n119), .Q(N296) );
  LATCH \ODATA_tri_enable_reg[5]  ( .CLK(n8), .D(n119), .Q(N299) );
  LATCH \ODATA_tri_enable_reg[4]  ( .CLK(n8), .D(n119), .Q(N302) );
  LATCH \ODATA_tri_enable_reg[3]  ( .CLK(n8), .D(n119), .Q(N305) );
  LATCH \ODATA_tri_enable_reg[2]  ( .CLK(n8), .D(n119), .Q(N308) );
  LATCH \ODATA_tri_enable_reg[1]  ( .CLK(n8), .D(n119), .Q(N311) );
  LATCH \ODATA_tri_enable_reg[0]  ( .CLK(n8), .D(n119), .Q(N314) );
  LATCH \SDATA_reg[7]  ( .CLK(n8), .D(IDATA[7]), .Q(N316) );
  LATCH \SDATA_tri_enable_reg[7]  ( .CLK(state[0]), .D(n7), .Q(N317) );
  LATCH \ODATA_reg[7]  ( .CLK(state[0]), .D(SDATA[7]), .Q(N292) );
  LATCH \SDATA_reg[6]  ( .CLK(n8), .D(IDATA[6]), .Q(N319) );
  LATCH \SDATA_tri_enable_reg[6]  ( .CLK(state[0]), .D(n7), .Q(N320) );
  LATCH \ODATA_reg[6]  ( .CLK(state[0]), .D(SDATA[6]), .Q(N295) );
  LATCH \SDATA_reg[5]  ( .CLK(n8), .D(IDATA[5]), .Q(N322) );
  LATCH \SDATA_tri_enable_reg[5]  ( .CLK(state[0]), .D(n7), .Q(N323) );
  LATCH \ODATA_reg[5]  ( .CLK(state[0]), .D(SDATA[5]), .Q(N298) );
  LATCH \SDATA_reg[4]  ( .CLK(n8), .D(IDATA[4]), .Q(N325) );
  LATCH \SDATA_tri_enable_reg[4]  ( .CLK(state[0]), .D(n7), .Q(N326) );
  LATCH \ODATA_reg[4]  ( .CLK(state[0]), .D(SDATA[4]), .Q(N301) );
  LATCH \SDATA_reg[3]  ( .CLK(n8), .D(IDATA[3]), .Q(N328) );
  LATCH \SDATA_tri_enable_reg[3]  ( .CLK(n8), .D(n7), .Q(N329) );
  LATCH \ODATA_reg[3]  ( .CLK(state[0]), .D(SDATA[3]), .Q(N304) );
  LATCH \SDATA_reg[2]  ( .CLK(n8), .D(IDATA[2]), .Q(N331) );
  LATCH \SDATA_tri_enable_reg[2]  ( .CLK(n8), .D(n7), .Q(N332) );
  LATCH \ODATA_reg[2]  ( .CLK(n8), .D(SDATA[2]), .Q(N307) );
  LATCH \SDATA_reg[1]  ( .CLK(n8), .D(IDATA[1]), .Q(N334) );
  LATCH \SDATA_tri_enable_reg[1]  ( .CLK(n8), .D(n7), .Q(N335) );
  LATCH \ODATA_reg[1]  ( .CLK(n8), .D(SDATA[1]), .Q(N310) );
  LATCH \SDATA_reg[0]  ( .CLK(n8), .D(IDATA[0]), .Q(N337) );
  LATCH \SDATA_tri_enable_reg[0]  ( .CLK(n8), .D(n7), .Q(N338) );
  LATCH \ODATA_reg[0]  ( .CLK(n8), .D(SDATA[0]), .Q(N313) );
  s_Control_DW01_dec_0 sub_132 ( .A(RADDR), .SUM({N190, N189, N188, N187, N186, 
        N185, N184, N183, N182, N181, N180, SYNOPSYS_UNCONNECTED__0}) );
  s_Control_DW01_inc_0 add_123 ( .A(WADDR), .SUM({N174, N173, N172, N171, N170, 
        N169, N168, N167, N166, N165, N164, N163}) );
  s_Control_DW01_sub_0 sub_84 ( .A(PRADDR), .B(RADDR), .CI(1'b0), .DIFF({N78, 
        N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67}) );
  TBUFX1 \ODATA_tri[1]  ( .A(n150), .EN(n128), .Y(ODATA[1]) );
  TBUFX1 \ODATA_tri[2]  ( .A(n147), .EN(n127), .Y(ODATA[2]) );
  TBUFX1 \ODATA_tri[6]  ( .A(n135), .EN(n123), .Y(ODATA[6]) );
  TBUFX1 \ODATA_tri[7]  ( .A(n132), .EN(n122), .Y(ODATA[7]) );
  TBUFX1 \ODATA_tri[5]  ( .A(n138), .EN(n124), .Y(ODATA[5]) );
  TBUFX1 \ODATA_tri[0]  ( .A(n202), .EN(n129), .Y(ODATA[0]) );
  TBUFX1 \ODATA_tri[4]  ( .A(n141), .EN(n125), .Y(ODATA[4]) );
  TBUFX1 \ODATA_tri[3]  ( .A(n144), .EN(n126), .Y(ODATA[3]) );
  TBUFX1 \SDATA_tri[0]  ( .A(n195), .EN(n196), .Y(SDATA[0]) );
  TBUFX1 \SDATA_tri[1]  ( .A(n148), .EN(n149), .Y(SDATA[1]) );
  TBUFX1 \SDATA_tri[2]  ( .A(n145), .EN(n146), .Y(SDATA[2]) );
  TBUFX1 \SDATA_tri[3]  ( .A(n142), .EN(n143), .Y(SDATA[3]) );
  TBUFX1 \SDATA_tri[4]  ( .A(n139), .EN(n140), .Y(SDATA[4]) );
  TBUFX1 \SDATA_tri[5]  ( .A(n136), .EN(n137), .Y(SDATA[5]) );
  TBUFX1 \SDATA_tri[6]  ( .A(n133), .EN(n134), .Y(SDATA[6]) );
  TBUFX1 \SDATA_tri[7]  ( .A(n130), .EN(n131), .Y(SDATA[7]) );
  TBUFX1 \ADDR_tri[0]  ( .A(n118), .EN(n8), .Y(ADDR[0]) );
  TBUFX1 \ADDR_tri[1]  ( .A(n117), .EN(n8), .Y(ADDR[1]) );
  TBUFX1 \ADDR_tri[2]  ( .A(n116), .EN(n8), .Y(ADDR[2]) );
  TBUFX1 \ADDR_tri[3]  ( .A(n115), .EN(n8), .Y(ADDR[3]) );
  TBUFX1 \ADDR_tri[4]  ( .A(n114), .EN(n8), .Y(ADDR[4]) );
  TBUFX1 \ADDR_tri[5]  ( .A(n113), .EN(n8), .Y(ADDR[5]) );
  TBUFX1 \ADDR_tri[6]  ( .A(n112), .EN(n8), .Y(ADDR[6]) );
  TBUFX1 \ADDR_tri[7]  ( .A(n111), .EN(n8), .Y(ADDR[7]) );
  TBUFX1 \ADDR_tri[8]  ( .A(n110), .EN(n8), .Y(ADDR[8]) );
  TBUFX1 \ADDR_tri[9]  ( .A(n109), .EN(n8), .Y(ADDR[9]) );
  TBUFX1 \ADDR_tri[10]  ( .A(n108), .EN(n8), .Y(ADDR[10]) );
  TBUFX1 \ADDR_tri[11]  ( .A(n107), .EN(n8), .Y(ADDR[11]) );
  AND2X2 U3 ( .A(n203), .B(n10), .Y(n1) );
  INVX1 U4 ( .A(n67), .Y(n3) );
  INVX1 U5 ( .A(n3), .Y(n4) );
  INVX2 U6 ( .A(n1), .Y(n5) );
  INVX8 U7 ( .A(rst), .Y(n203) );
  BUFX2 U8 ( .A(N245), .Y(n6) );
  OR2X2 U9 ( .A(n60), .B(n61), .Y(N258) );
  INVX2 U11 ( .A(n119), .Y(n7) );
  INVX4 U12 ( .A(n9), .Y(n8) );
  OAI21X1 U13 ( .A(n7), .B(n9), .C(n10), .Y(w_enable_out) );
  INVX1 U14 ( .A(N293), .Y(n122) );
  INVX1 U15 ( .A(N296), .Y(n123) );
  INVX1 U16 ( .A(N299), .Y(n124) );
  INVX1 U17 ( .A(N302), .Y(n125) );
  INVX1 U18 ( .A(N305), .Y(n126) );
  INVX1 U19 ( .A(N308), .Y(n127) );
  INVX1 U20 ( .A(N311), .Y(n128) );
  INVX1 U21 ( .A(N314), .Y(n129) );
  INVX1 U22 ( .A(N316), .Y(n130) );
  INVX1 U23 ( .A(N317), .Y(n131) );
  INVX1 U24 ( .A(N292), .Y(n132) );
  INVX1 U25 ( .A(N319), .Y(n133) );
  INVX1 U26 ( .A(N320), .Y(n134) );
  INVX1 U27 ( .A(N295), .Y(n135) );
  INVX1 U28 ( .A(N322), .Y(n136) );
  INVX1 U29 ( .A(N323), .Y(n137) );
  INVX1 U30 ( .A(N298), .Y(n138) );
  INVX1 U31 ( .A(N325), .Y(n139) );
  INVX1 U32 ( .A(N326), .Y(n140) );
  INVX1 U33 ( .A(N301), .Y(n141) );
  INVX1 U34 ( .A(N328), .Y(n142) );
  INVX1 U35 ( .A(N329), .Y(n143) );
  INVX1 U36 ( .A(N304), .Y(n144) );
  INVX1 U37 ( .A(N331), .Y(n145) );
  INVX1 U38 ( .A(N332), .Y(n146) );
  INVX1 U39 ( .A(N307), .Y(n147) );
  INVX1 U40 ( .A(N334), .Y(n148) );
  INVX1 U41 ( .A(N335), .Y(n149) );
  INVX1 U42 ( .A(N310), .Y(n150) );
  INVX1 U43 ( .A(N337), .Y(n195) );
  INVX1 U44 ( .A(N338), .Y(n196) );
  INVX1 U45 ( .A(N313), .Y(n202) );
  OAI21X1 U46 ( .A(n11), .B(n12), .C(n13), .Y(n201) );
  OAI21X1 U47 ( .A(n11), .B(n14), .C(n8), .Y(n13) );
  AND2X1 U48 ( .A(n10), .B(n15), .Y(n12) );
  OAI21X1 U49 ( .A(full), .B(r_enable_in), .C(n9), .Y(n15) );
  MUX2X1 U50 ( .B(n16), .A(n119), .S(n11), .Y(n200) );
  INVX1 U51 ( .A(n17), .Y(n11) );
  OAI21X1 U52 ( .A(rst), .B(n14), .C(N231), .Y(n17) );
  AOI22X1 U53 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n16) );
  NOR2X1 U54 ( .A(n7), .B(n8), .Y(n19) );
  NOR2X1 U55 ( .A(full), .B(n22), .Y(n18) );
  INVX1 U56 ( .A(r_enable_in), .Y(n22) );
  MUX2X1 U57 ( .B(n23), .A(n24), .S(cnt8[0]), .Y(n199) );
  NAND2X1 U58 ( .A(n25), .B(n21), .Y(n23) );
  MUX2X1 U59 ( .B(n26), .A(n27), .S(cnt8[1]), .Y(n198) );
  INVX1 U60 ( .A(n28), .Y(n27) );
  OAI21X1 U61 ( .A(n29), .B(n26), .C(n30), .Y(n197) );
  OAI21X1 U62 ( .A(n25), .B(n28), .C(cnt8[2]), .Y(n30) );
  OAI21X1 U63 ( .A(cnt8[0]), .B(n31), .C(n24), .Y(n28) );
  AOI22X1 U64 ( .A(n203), .B(r_enable_out), .C(n14), .D(n25), .Y(n24) );
  INVX1 U65 ( .A(n10), .Y(r_enable_out) );
  NAND3X1 U66 ( .A(cnt8[0]), .B(n21), .C(n25), .Y(n26) );
  INVX1 U67 ( .A(n31), .Y(n25) );
  NAND2X1 U68 ( .A(n20), .B(n203), .Y(n31) );
  INVX1 U69 ( .A(cnt8[1]), .Y(n29) );
  MUX2X1 U70 ( .B(WADDR[0]), .A(RADDR[0]), .S(state[1]), .Y(n118) );
  MUX2X1 U71 ( .B(WADDR[1]), .A(RADDR[1]), .S(state[1]), .Y(n117) );
  MUX2X1 U72 ( .B(WADDR[2]), .A(RADDR[2]), .S(state[1]), .Y(n116) );
  MUX2X1 U73 ( .B(WADDR[3]), .A(RADDR[3]), .S(state[1]), .Y(n115) );
  MUX2X1 U74 ( .B(WADDR[4]), .A(RADDR[4]), .S(state[1]), .Y(n114) );
  MUX2X1 U75 ( .B(WADDR[5]), .A(RADDR[5]), .S(state[1]), .Y(n113) );
  MUX2X1 U76 ( .B(WADDR[6]), .A(RADDR[6]), .S(state[1]), .Y(n112) );
  MUX2X1 U77 ( .B(WADDR[7]), .A(RADDR[7]), .S(state[1]), .Y(n111) );
  MUX2X1 U78 ( .B(WADDR[8]), .A(RADDR[8]), .S(state[1]), .Y(n110) );
  MUX2X1 U79 ( .B(WADDR[9]), .A(RADDR[9]), .S(n7), .Y(n109) );
  MUX2X1 U80 ( .B(WADDR[10]), .A(RADDR[10]), .S(n7), .Y(n108) );
  MUX2X1 U81 ( .B(WADDR[11]), .A(RADDR[11]), .S(n7), .Y(n107) );
  MUX2X1 U82 ( .B(n32), .A(n33), .S(icnt8[2]), .Y(incnt8[2]) );
  INVX1 U83 ( .A(n34), .Y(n33) );
  OAI21X1 U84 ( .A(n35), .B(icnt8[1]), .C(n36), .Y(n34) );
  NAND3X1 U85 ( .A(icnt8[1]), .B(icnt8[0]), .C(n37), .Y(n32) );
  MUX2X1 U86 ( .B(n38), .A(n36), .S(icnt8[1]), .Y(incnt8[1]) );
  INVX1 U87 ( .A(incnt8[0]), .Y(n36) );
  NAND2X1 U88 ( .A(n37), .B(icnt8[0]), .Y(n38) );
  INVX1 U89 ( .A(n35), .Y(n37) );
  NOR2X1 U90 ( .A(n35), .B(icnt8[0]), .Y(incnt8[0]) );
  OAI21X1 U91 ( .A(n20), .B(r_enable_s), .C(n203), .Y(n35) );
  INVX1 U92 ( .A(n39), .Y(n20) );
  NAND3X1 U93 ( .A(n40), .B(n119), .C(n8), .Y(n39) );
  INVX1 U94 ( .A(state[1]), .Y(n119) );
  NAND3X1 U95 ( .A(cnt8[2]), .B(cnt8[1]), .C(n41), .Y(n40) );
  AND2X1 U96 ( .A(n21), .B(cnt8[0]), .Y(n41) );
  AND2X1 U97 ( .A(n42), .B(n43), .Y(empty) );
  NOR2X1 U98 ( .A(n44), .B(n45), .Y(n43) );
  NAND3X1 U99 ( .A(n46), .B(n47), .C(n48), .Y(n45) );
  NAND3X1 U100 ( .A(n49), .B(n50), .C(n51), .Y(n44) );
  NOR2X1 U101 ( .A(n52), .B(n53), .Y(n42) );
  NAND3X1 U102 ( .A(n54), .B(n55), .C(n56), .Y(n53) );
  NAND3X1 U103 ( .A(n57), .B(n58), .C(n59), .Y(n52) );
  NOR2X1 U104 ( .A(rst), .B(n55), .Y(N270) );
  INVX1 U105 ( .A(WADDR[11]), .Y(n55) );
  NOR2X1 U106 ( .A(rst), .B(n54), .Y(N269) );
  INVX1 U107 ( .A(WADDR[10]), .Y(n54) );
  NOR2X1 U108 ( .A(rst), .B(n50), .Y(N268) );
  INVX1 U109 ( .A(WADDR[9]), .Y(n50) );
  NOR2X1 U110 ( .A(rst), .B(n49), .Y(N267) );
  INVX1 U111 ( .A(WADDR[8]), .Y(n49) );
  NOR2X1 U112 ( .A(rst), .B(n51), .Y(N266) );
  INVX1 U113 ( .A(WADDR[7]), .Y(n51) );
  NOR2X1 U114 ( .A(rst), .B(n47), .Y(N265) );
  INVX1 U115 ( .A(WADDR[6]), .Y(n47) );
  NOR2X1 U116 ( .A(rst), .B(n46), .Y(N264) );
  INVX1 U117 ( .A(WADDR[5]), .Y(n46) );
  NOR2X1 U118 ( .A(rst), .B(n48), .Y(N263) );
  INVX1 U119 ( .A(WADDR[4]), .Y(n48) );
  NOR2X1 U120 ( .A(rst), .B(n58), .Y(N262) );
  INVX1 U121 ( .A(WADDR[3]), .Y(n58) );
  NOR2X1 U122 ( .A(rst), .B(n57), .Y(N261) );
  INVX1 U123 ( .A(WADDR[2]), .Y(n57) );
  NOR2X1 U124 ( .A(rst), .B(n59), .Y(N260) );
  INVX1 U125 ( .A(WADDR[1]), .Y(n59) );
  NOR2X1 U126 ( .A(rst), .B(n56), .Y(N259) );
  INVX1 U127 ( .A(WADDR[0]), .Y(n56) );
  OAI21X1 U128 ( .A(n62), .B(n63), .C(n203), .Y(n61) );
  OAI21X1 U129 ( .A(n64), .B(n65), .C(n66), .Y(N257) );
  AOI22X1 U130 ( .A(n4), .B(WADDR[11]), .C(nPRADDR[11]), .D(n68), .Y(n66) );
  INVX1 U131 ( .A(N190), .Y(n65) );
  OAI21X1 U132 ( .A(n64), .B(n69), .C(n70), .Y(N256) );
  AOI22X1 U133 ( .A(n4), .B(WADDR[10]), .C(nPRADDR[10]), .D(n68), .Y(n70) );
  INVX1 U134 ( .A(N189), .Y(n69) );
  OAI21X1 U135 ( .A(n64), .B(n71), .C(n72), .Y(N255) );
  AOI22X1 U136 ( .A(n4), .B(WADDR[9]), .C(nPRADDR[9]), .D(n68), .Y(n72) );
  INVX1 U137 ( .A(N188), .Y(n71) );
  OAI21X1 U138 ( .A(n64), .B(n73), .C(n74), .Y(N254) );
  AOI22X1 U139 ( .A(n4), .B(WADDR[8]), .C(nPRADDR[8]), .D(n68), .Y(n74) );
  INVX1 U140 ( .A(N187), .Y(n73) );
  OAI21X1 U141 ( .A(n64), .B(n75), .C(n76), .Y(N253) );
  AOI22X1 U142 ( .A(n4), .B(WADDR[7]), .C(nPRADDR[7]), .D(n68), .Y(n76) );
  INVX1 U143 ( .A(N186), .Y(n75) );
  OAI21X1 U144 ( .A(n64), .B(n77), .C(n78), .Y(N252) );
  AOI22X1 U145 ( .A(n4), .B(WADDR[6]), .C(nPRADDR[6]), .D(n68), .Y(n78) );
  INVX1 U146 ( .A(N185), .Y(n77) );
  OAI21X1 U147 ( .A(n64), .B(n79), .C(n80), .Y(N251) );
  AOI22X1 U148 ( .A(n4), .B(WADDR[5]), .C(nPRADDR[5]), .D(n68), .Y(n80) );
  INVX1 U149 ( .A(N184), .Y(n79) );
  OAI21X1 U150 ( .A(n64), .B(n81), .C(n82), .Y(N250) );
  AOI22X1 U151 ( .A(n4), .B(WADDR[4]), .C(nPRADDR[4]), .D(n68), .Y(n82) );
  INVX1 U152 ( .A(N183), .Y(n81) );
  OAI21X1 U153 ( .A(n64), .B(n83), .C(n84), .Y(N249) );
  AOI22X1 U154 ( .A(n4), .B(WADDR[3]), .C(nPRADDR[3]), .D(n68), .Y(n84) );
  INVX1 U155 ( .A(N182), .Y(n83) );
  OAI21X1 U156 ( .A(n64), .B(n85), .C(n86), .Y(N248) );
  AOI22X1 U157 ( .A(n4), .B(WADDR[2]), .C(nPRADDR[2]), .D(n68), .Y(n86) );
  INVX1 U158 ( .A(N181), .Y(n85) );
  OAI21X1 U159 ( .A(n64), .B(n87), .C(n88), .Y(N247) );
  AOI22X1 U160 ( .A(n4), .B(WADDR[1]), .C(nPRADDR[1]), .D(n68), .Y(n88) );
  INVX1 U161 ( .A(N180), .Y(n87) );
  OAI21X1 U162 ( .A(RADDR[0]), .B(n64), .C(n89), .Y(N246) );
  AOI22X1 U163 ( .A(n4), .B(WADDR[0]), .C(nPRADDR[0]), .D(n68), .Y(n89) );
  INVX1 U164 ( .A(n90), .Y(n68) );
  NAND3X1 U165 ( .A(resend), .B(n62), .C(n91), .Y(n90) );
  AOI21X1 U166 ( .A(n62), .B(resend), .C(n92), .Y(n67) );
  NAND2X1 U167 ( .A(n93), .B(n94), .Y(n62) );
  NOR2X1 U168 ( .A(n95), .B(n96), .Y(n94) );
  NAND3X1 U169 ( .A(N71), .B(N70), .C(N72), .Y(n96) );
  NAND3X1 U170 ( .A(N68), .B(N67), .C(N69), .Y(n95) );
  NOR2X1 U171 ( .A(n97), .B(n98), .Y(n93) );
  NAND3X1 U172 ( .A(N77), .B(N76), .C(N78), .Y(n98) );
  NAND3X1 U173 ( .A(N74), .B(N73), .C(N75), .Y(n97) );
  NAND3X1 U174 ( .A(n21), .B(n203), .C(r_enable_s), .Y(n64) );
  INVX1 U175 ( .A(n99), .Y(r_enable_s) );
  INVX1 U176 ( .A(n14), .Y(n21) );
  NAND3X1 U177 ( .A(n100), .B(n63), .C(n91), .Y(N245) );
  INVX1 U178 ( .A(n92), .Y(n91) );
  OAI21X1 U179 ( .A(n14), .B(n99), .C(n203), .Y(n92) );
  NAND3X1 U180 ( .A(icnt8[1]), .B(icnt8[0]), .C(icnt8[2]), .Y(n14) );
  INVX1 U181 ( .A(resend), .Y(n63) );
  INVX1 U182 ( .A(n60), .Y(n100) );
  OAI21X1 U183 ( .A(n101), .B(n102), .C(sWrite), .Y(n60) );
  NAND2X1 U184 ( .A(n103), .B(n104), .Y(n102) );
  NOR3X1 U185 ( .A(RADDR[10]), .B(RADDR[11]), .C(RADDR[0]), .Y(n104) );
  NOR3X1 U186 ( .A(RADDR[2]), .B(RADDR[3]), .C(RADDR[1]), .Y(n103) );
  NAND2X1 U187 ( .A(n105), .B(n106), .Y(n101) );
  NOR3X1 U188 ( .A(RADDR[5]), .B(RADDR[6]), .C(RADDR[4]), .Y(n106) );
  NOR3X1 U189 ( .A(RADDR[8]), .B(RADDR[9]), .C(RADDR[7]), .Y(n105) );
  AND2X1 U190 ( .A(N174), .B(n203), .Y(N244) );
  AND2X1 U191 ( .A(N173), .B(n203), .Y(N243) );
  AND2X1 U192 ( .A(N172), .B(n203), .Y(N242) );
  AND2X1 U193 ( .A(N171), .B(n203), .Y(N241) );
  AND2X1 U194 ( .A(N170), .B(n203), .Y(N240) );
  AND2X1 U195 ( .A(N169), .B(n203), .Y(N239) );
  AND2X1 U196 ( .A(N168), .B(n203), .Y(N238) );
  AND2X1 U197 ( .A(N167), .B(n203), .Y(N237) );
  AND2X1 U198 ( .A(N166), .B(n203), .Y(N236) );
  AND2X1 U199 ( .A(N165), .B(n203), .Y(N235) );
  AND2X1 U200 ( .A(N164), .B(n203), .Y(N234) );
  AND2X1 U201 ( .A(N163), .B(n203), .Y(N233) );
  NAND2X1 U202 ( .A(n7), .B(n9), .Y(n10) );
  INVX1 U203 ( .A(state[0]), .Y(n9) );
  NAND2X1 U248 ( .A(n203), .B(n99), .Y(N231) );
  NAND2X1 U249 ( .A(n8), .B(n7), .Y(n99) );
endmodule


module BENC_t ( CLK, D_MINUS, D_PLUS, READ_EN1, RST, ADDR, DATAOUT, EMPTY_SRAM, 
        SDATA, r_enable_s, r_error, rcving, w_enable_out );
  output [11:0] ADDR;
  output [7:0] DATAOUT;
  inout [7:0] SDATA;
  input CLK, D_MINUS, D_PLUS, READ_EN1, RST;
  output EMPTY_SRAM, r_enable_s, r_error, rcving, w_enable_out;
  wire   EMPTY, FULL, r_enable_out, FULL1, R_ENABLE, empty1, r_enable_in,
         resend;
  wire   [7:0] R_DATA;
  wire   [7:0] RDATA;
  tri   [11:0] ADDR;
  tri   [7:0] SDATA;
  tri   [7:0] DATA;

  ENCRYPTION U_0 ( .CLK(CLK), .DATA(R_DATA), .EMPTY(EMPTY), .FULL(FULL), 
        .RENABLE(r_enable_out), .RST(RST), .FULL1(FULL1), .RDATA(RDATA), 
        .R_ENABLE(R_ENABLE) );
  USB_RCVR U_1 ( .CLK(CLK), .D_MINUS(D_MINUS), .D_PLUS(D_PLUS), .RST(RST), 
        .R_ENABLE(R_ENABLE), .EMPTY(EMPTY), .FULL(FULL), .R_DATA(R_DATA), 
        .r_error(r_error), .rcving(rcving) );
  bToothTop U_2 ( .CLK(CLK), .DATA(DATA), .EMPTY(empty1), .READ_EN1(READ_EN1), 
        .RST(RST), .DATAOUT(DATAOUT), .EMPTY_SRAM(EMPTY_SRAM), .READ_EN(
        r_enable_in), .RESEND_EN(resend) );
  s_Control U_3 ( .clk(CLK), .rst(RST), .full(FULL1), .resend(resend), 
        .r_enable_in(r_enable_in), .IDATA(RDATA), .empty(empty1), 
        .r_enable_out(r_enable_out), .r_enable_s(r_enable_s), .ADDR(ADDR), 
        .ODATA(DATA), .SDATA(SDATA), .w_enable_out(w_enable_out) );
endmodule

module  BENC ( CLK, D_MINUS, D_PLUS, READ_EN1, RST, ADDR, DATAOUT, EMPTY_SRAM, SDATA, 
	r_enable_s, r_error, rcving, w_enable_out );

input   CLK, D_MINUS, D_PLUS, READ_EN1, RST;
inout   [7:0] SDATA;
output  [11:0] ADDR;
output  [7:0] DATAOUT;
output  EMPTY_SRAM, r_enable_s, r_error, rcving, w_enable_out;
wire	nCLK, nD_MINUS, nD_PLUS, nREAD_EN1, nRST, nEMPTY_SRAM, nr_enable_s, nr_error, nrcving, nw_enable_out;

wire	[7:0] nSDATA;
wire	[11:0] nADDR;
wire	[7:0] nDATAOUT;
        BENC_t I0 ( .CLK(nCLK), .D_MINUS(nD_MINUS), .D_PLUS(nD_PLUS), .READ_EN1(nREAD_EN1), 
	.RST(nRST), .ADDR(nADDR), .DATAOUT(nDATAOUT), .EMPTY_SRAM(nEMPTY_SRAM), .SDATA(nSDATA), 
	.r_enable_s(nr_enable_s), .r_error(nr_error), .rcving(nrcving), .w_enable_out(nw_enable_out) );

assign bi_en <= r_en ^ w_en ; 

PADVDD U1 (  );
PADGND U2 (  );
PADOUT U3 ( .DO(nADDR[0]), .YPAD(ADDR[0]) );
PADOUT U4 ( .DO(nADDR[10]), .YPAD(ADDR[10]) );
PADOUT U5 ( .DO(nADDR[11]), .YPAD(ADDR[11]) );
PADOUT U6 ( .DO(nADDR[1]), .YPAD(ADDR[1]) );
PADOUT U7 ( .DO(nADDR[2]), .YPAD(ADDR[2]) );
PADOUT U8 ( .DO(nADDR[3]), .YPAD(ADDR[3]) );
PADOUT U9 ( .DO(nADDR[4]), .YPAD(ADDR[4]) );
PADOUT U10 ( .DO(nADDR[5]), .YPAD(ADDR[5]) );
PADOUT U11 ( .DO(nADDR[6]), .YPAD(ADDR[6]) );
PADOUT U12 ( .DO(nADDR[7]), .YPAD(ADDR[7]) );
PADOUT U13 ( .DO(nADDR[8]), .YPAD(ADDR[8]) );
PADOUT U14 ( .DO(nADDR[9]), .YPAD(ADDR[9]) );
PADOUT U23 ( .DO(nEMPTY_SRAM), .YPAD(EMPTY_SRAM) );
PADOUT U24 ( .DO(nr_enable_s), .YPAD(r_enable_s) );
PADOUT U25 ( .DO(nr_error), .YPAD(r_error) );
PADOUT U26 ( .DO(nrcving), .YPAD(rcving) );
PADOUT U27 ( .DO(nw_enable_out), .YPAD(w_enable_out) );
PADINC U28 ( .DI(nCLK), .YPAD(CLK) );
PADINC U29 ( .DI(nD_MINUS), .YPAD(D_MINUS) );
PADINC U30 ( .DI(nD_PLUS), .YPAD(D_PLUS) );
PADINC U31 ( .DI(nREAD_EN1), .YPAD(READ_EN1) );
PADINC U32 ( .DI(nRST), .YPAD(RST) );

PADINOUT U33 ( .DI(nSDATA[0]), .DO(nDATAOUT[0]) , .OEN(r_enable), .YPAD(SDATA[0]) );
PADINOUT U34 ( .DI(nSDATA[1]), .YPAD(SDATA[1]) );
PADINOUT U35 ( .DI(nSDATA[2]), .YPAD(SDATA[2]) );
PADINOUT U36 ( .DI(nSDATA[3]), .YPAD(SDATA[3]) );
PADINOUT U37 ( .DI(nSDATA[4]), .YPAD(SDATA[4]) );
PADINOUT U38 ( .DI(nSDATA[5]), .YPAD(SDATA[5]) );
PADINOUT U39 ( .DI(nSDATA[6]), .YPAD(SDATA[6]) );
PADINOUT U40 ( .DI(nSDATA[7]), .YPAD(SDATA[7]) );

PADINC U33 ( .DI(nSDATA[0]), .YPAD(SDATA[0]) );
PADINC U34 ( .DI(nSDATA[1]), .YPAD(SDATA[1]) );
PADINC U35 ( .DI(nSDATA[2]), .YPAD(SDATA[2]) );
PADINC U36 ( .DI(nSDATA[3]), .YPAD(SDATA[3]) );
PADINC U37 ( .DI(nSDATA[4]), .YPAD(SDATA[4]) );
PADINC U38 ( .DI(nSDATA[5]), .YPAD(SDATA[5]) );
PADINC U39 ( .DI(nSDATA[6]), .YPAD(SDATA[6]) );
PADINC U40 ( .DI(nSDATA[7]), .YPAD(SDATA[7]) );

PADOUT U15 ( .DO(nDATAOUT[0]), .YPAD(DATAOUT[0]) );
PADOUT U16 ( .DO(nDATAOUT[1]), .YPAD(DATAOUT[1]) );
PADOUT U17 ( .DO(nDATAOUT[2]), .YPAD(DATAOUT[2]) );
PADOUT U18 ( .DO(nDATAOUT[3]), .YPAD(DATAOUT[3]) );
PADOUT U19 ( .DO(nDATAOUT[4]), .YPAD(DATAOUT[4]) );
PADOUT U20 ( .DO(nDATAOUT[5]), .YPAD(DATAOUT[5]) );
PADOUT U21 ( .DO(nDATAOUT[6]), .YPAD(DATAOUT[6]) );
PADOUT U22 ( .DO(nDATAOUT[7]), .YPAD(DATAOUT[7]) );

endmodule
