
module fiforam ( wclk, wenable, waddr, raddr, wdata, rdata );
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


module write_ptr ( wclk, rst_n, wenable, wptr, wptr_nxt );
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


module write_fifo_ctrl ( wclk, rst_n, wenable, rptr, wenable_fifo, wptr, waddr, 
        full_flag );
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
  write_ptr WPU1 ( .wclk(wclk), .rst_n(rst_n), .wenable(wenable_fifo), .wptr(
        wptr), .wptr_nxt(wptr_nxt) );
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


module read_ptr ( rclk, rst_n, renable, rptr, rptr_nxt );
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


module read_fifo_ctrl ( rclk, rst_n, renable, wptr, rptr, raddr, empty_flag );
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
  read_ptr RPU1 ( .rclk(rclk), .rst_n(rst_n), .renable(renable_p2), .rptr(rptr), .rptr_nxt(rptr_nxt) );
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


module fifo ( rclk, wclk, rst_n, renable, wenable, wdata, rdata, empty, full
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

  fiforam UFIFORAM ( .wclk(wclk), .wenable(wenable_fifo), .waddr(waddr), 
        .raddr(raddr), .wdata(wdata), .rdata(rdata) );
  write_fifo_ctrl UWFC ( .wclk(wclk), .rst_n(rst_n), .wenable(wenable), .rptr(
        rptr), .wenable_fifo(wenable_fifo), .wptr(wptr), .waddr(waddr), 
        .full_flag(full) );
  read_fifo_ctrl URFC ( .rclk(rclk), .rst_n(rst_n), .renable(renable), .wptr(
        wptr), .rptr(rptr), .raddr(raddr), .empty_flag(empty) );
endmodule


module RCV_FIFO ( CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE, WDATA, R_DATA, EMPTY, 
        FULL );
  input [7:0] WDATA;
  output [7:0] R_DATA;
  input CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE;
  output EMPTY, FULL;


  fifo MAPPING ( .rclk(CLK), .wclk(D_CLK), .rst_n(RST_N), .renable(R_ENABLE), 
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
  wire   W_ENABLE1, W_ENABLE, START, FIESTELCLK, IN_SELECT, n2;
  wire   [7:0] DATA1;
  wire   [63:0] OUTDATA;
  wire   [31:0] ENC_LEFT;
  wire   [31:0] ENC_RIGHT;
  wire   [47:0] RKEY;
  wire   [3:0] RND_CNT;

  RCV_FIFO U_5 ( .CLK(CLK), .D_CLK(CLK), .RST_N(n2), .R_ENABLE(RENABLE), 
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
  INVX4 U2 ( .A(RST), .Y(n2) );
endmodule

