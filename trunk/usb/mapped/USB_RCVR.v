
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
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202;

  DFFPOSX1 \fiforeg_reg[7][7]  ( .D(n212), .CLK(n8), .Q(\fiforeg[7][7] ) );
  DFFPOSX1 \fiforeg_reg[6][7]  ( .D(n213), .CLK(n8), .Q(\fiforeg[6][7] ) );
  DFFPOSX1 \fiforeg_reg[5][7]  ( .D(n214), .CLK(n8), .Q(\fiforeg[5][7] ) );
  DFFPOSX1 \fiforeg_reg[4][7]  ( .D(n215), .CLK(n8), .Q(\fiforeg[4][7] ) );
  DFFPOSX1 \fiforeg_reg[3][7]  ( .D(n216), .CLK(n8), .Q(\fiforeg[3][7] ) );
  DFFPOSX1 \fiforeg_reg[2][7]  ( .D(n217), .CLK(n8), .Q(\fiforeg[2][7] ) );
  DFFPOSX1 \fiforeg_reg[1][7]  ( .D(n218), .CLK(n8), .Q(\fiforeg[1][7] ) );
  DFFPOSX1 \fiforeg_reg[0][7]  ( .D(n219), .CLK(n8), .Q(\fiforeg[0][7] ) );
  DFFPOSX1 \fiforeg_reg[7][6]  ( .D(n220), .CLK(n9), .Q(\fiforeg[7][6] ) );
  DFFPOSX1 \fiforeg_reg[6][6]  ( .D(n221), .CLK(n9), .Q(\fiforeg[6][6] ) );
  DFFPOSX1 \fiforeg_reg[5][6]  ( .D(n222), .CLK(n9), .Q(\fiforeg[5][6] ) );
  DFFPOSX1 \fiforeg_reg[4][6]  ( .D(n223), .CLK(n8), .Q(\fiforeg[4][6] ) );
  DFFPOSX1 \fiforeg_reg[3][6]  ( .D(n224), .CLK(n8), .Q(\fiforeg[3][6] ) );
  DFFPOSX1 \fiforeg_reg[2][6]  ( .D(n225), .CLK(n8), .Q(\fiforeg[2][6] ) );
  DFFPOSX1 \fiforeg_reg[1][6]  ( .D(n226), .CLK(n8), .Q(\fiforeg[1][6] ) );
  DFFPOSX1 \fiforeg_reg[0][6]  ( .D(n227), .CLK(n8), .Q(\fiforeg[0][6] ) );
  DFFPOSX1 \fiforeg_reg[7][5]  ( .D(n228), .CLK(n9), .Q(\fiforeg[7][5] ) );
  DFFPOSX1 \fiforeg_reg[6][5]  ( .D(n229), .CLK(n9), .Q(\fiforeg[6][5] ) );
  DFFPOSX1 \fiforeg_reg[5][5]  ( .D(n230), .CLK(n9), .Q(\fiforeg[5][5] ) );
  DFFPOSX1 \fiforeg_reg[4][5]  ( .D(n231), .CLK(n9), .Q(\fiforeg[4][5] ) );
  DFFPOSX1 \fiforeg_reg[3][5]  ( .D(n232), .CLK(n9), .Q(\fiforeg[3][5] ) );
  DFFPOSX1 \fiforeg_reg[2][5]  ( .D(n233), .CLK(n9), .Q(\fiforeg[2][5] ) );
  DFFPOSX1 \fiforeg_reg[1][5]  ( .D(n234), .CLK(n9), .Q(\fiforeg[1][5] ) );
  DFFPOSX1 \fiforeg_reg[0][5]  ( .D(n235), .CLK(n9), .Q(\fiforeg[0][5] ) );
  DFFPOSX1 \fiforeg_reg[7][4]  ( .D(n236), .CLK(n10), .Q(\fiforeg[7][4] ) );
  DFFPOSX1 \fiforeg_reg[6][4]  ( .D(n237), .CLK(n10), .Q(\fiforeg[6][4] ) );
  DFFPOSX1 \fiforeg_reg[5][4]  ( .D(n238), .CLK(n10), .Q(\fiforeg[5][4] ) );
  DFFPOSX1 \fiforeg_reg[4][4]  ( .D(n239), .CLK(n10), .Q(\fiforeg[4][4] ) );
  DFFPOSX1 \fiforeg_reg[3][4]  ( .D(n240), .CLK(n10), .Q(\fiforeg[3][4] ) );
  DFFPOSX1 \fiforeg_reg[2][4]  ( .D(n241), .CLK(n10), .Q(\fiforeg[2][4] ) );
  DFFPOSX1 \fiforeg_reg[1][4]  ( .D(n242), .CLK(n9), .Q(\fiforeg[1][4] ) );
  DFFPOSX1 \fiforeg_reg[0][4]  ( .D(n243), .CLK(n9), .Q(\fiforeg[0][4] ) );
  DFFPOSX1 \fiforeg_reg[7][3]  ( .D(n244), .CLK(n11), .Q(\fiforeg[7][3] ) );
  DFFPOSX1 \fiforeg_reg[6][3]  ( .D(n245), .CLK(n10), .Q(\fiforeg[6][3] ) );
  DFFPOSX1 \fiforeg_reg[5][3]  ( .D(n246), .CLK(n10), .Q(\fiforeg[5][3] ) );
  DFFPOSX1 \fiforeg_reg[4][3]  ( .D(n247), .CLK(n10), .Q(\fiforeg[4][3] ) );
  DFFPOSX1 \fiforeg_reg[3][3]  ( .D(n248), .CLK(n10), .Q(\fiforeg[3][3] ) );
  DFFPOSX1 \fiforeg_reg[2][3]  ( .D(n249), .CLK(n10), .Q(\fiforeg[2][3] ) );
  DFFPOSX1 \fiforeg_reg[1][3]  ( .D(n250), .CLK(n10), .Q(\fiforeg[1][3] ) );
  DFFPOSX1 \fiforeg_reg[0][3]  ( .D(n251), .CLK(n10), .Q(\fiforeg[0][3] ) );
  DFFPOSX1 \fiforeg_reg[7][2]  ( .D(n252), .CLK(n11), .Q(\fiforeg[7][2] ) );
  DFFPOSX1 \fiforeg_reg[6][2]  ( .D(n253), .CLK(n11), .Q(\fiforeg[6][2] ) );
  DFFPOSX1 \fiforeg_reg[5][2]  ( .D(n254), .CLK(n11), .Q(\fiforeg[5][2] ) );
  DFFPOSX1 \fiforeg_reg[4][2]  ( .D(n255), .CLK(n11), .Q(\fiforeg[4][2] ) );
  DFFPOSX1 \fiforeg_reg[3][2]  ( .D(n256), .CLK(n11), .Q(\fiforeg[3][2] ) );
  DFFPOSX1 \fiforeg_reg[2][2]  ( .D(n257), .CLK(n11), .Q(\fiforeg[2][2] ) );
  DFFPOSX1 \fiforeg_reg[1][2]  ( .D(n258), .CLK(n11), .Q(\fiforeg[1][2] ) );
  DFFPOSX1 \fiforeg_reg[0][2]  ( .D(n259), .CLK(n11), .Q(\fiforeg[0][2] ) );
  DFFPOSX1 \fiforeg_reg[7][1]  ( .D(n260), .CLK(n12), .Q(\fiforeg[7][1] ) );
  DFFPOSX1 \fiforeg_reg[6][1]  ( .D(n261), .CLK(n12), .Q(\fiforeg[6][1] ) );
  DFFPOSX1 \fiforeg_reg[5][1]  ( .D(n262), .CLK(n12), .Q(\fiforeg[5][1] ) );
  DFFPOSX1 \fiforeg_reg[4][1]  ( .D(n263), .CLK(n12), .Q(\fiforeg[4][1] ) );
  DFFPOSX1 \fiforeg_reg[3][1]  ( .D(n264), .CLK(n11), .Q(\fiforeg[3][1] ) );
  DFFPOSX1 \fiforeg_reg[2][1]  ( .D(n265), .CLK(n11), .Q(\fiforeg[2][1] ) );
  DFFPOSX1 \fiforeg_reg[1][1]  ( .D(n266), .CLK(n11), .Q(\fiforeg[1][1] ) );
  DFFPOSX1 \fiforeg_reg[0][1]  ( .D(n267), .CLK(n11), .Q(\fiforeg[0][1] ) );
  DFFPOSX1 \fiforeg_reg[7][0]  ( .D(n275), .CLK(n12), .Q(\fiforeg[7][0] ) );
  DFFPOSX1 \fiforeg_reg[6][0]  ( .D(n268), .CLK(n12), .Q(\fiforeg[6][0] ) );
  DFFPOSX1 \fiforeg_reg[5][0]  ( .D(n269), .CLK(n12), .Q(\fiforeg[5][0] ) );
  DFFPOSX1 \fiforeg_reg[4][0]  ( .D(n270), .CLK(n12), .Q(\fiforeg[4][0] ) );
  DFFPOSX1 \fiforeg_reg[3][0]  ( .D(n271), .CLK(n12), .Q(\fiforeg[3][0] ) );
  DFFPOSX1 \fiforeg_reg[2][0]  ( .D(n272), .CLK(n12), .Q(\fiforeg[2][0] ) );
  DFFPOSX1 \fiforeg_reg[1][0]  ( .D(n273), .CLK(n12), .Q(\fiforeg[1][0] ) );
  DFFPOSX1 \fiforeg_reg[0][0]  ( .D(n274), .CLK(n12), .Q(\fiforeg[0][0] ) );
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
  MUX2X1 U77 ( .B(n100), .A(n101), .S(n102), .Y(n275) );
  INVX1 U78 ( .A(\fiforeg[7][0] ), .Y(n101) );
  MUX2X1 U79 ( .B(n100), .A(n90), .S(n7), .Y(n274) );
  MUX2X1 U80 ( .B(n100), .A(n89), .S(n2), .Y(n273) );
  MUX2X1 U81 ( .B(n100), .A(n95), .S(n6), .Y(n272) );
  MUX2X1 U82 ( .B(n100), .A(n94), .S(n4), .Y(n271) );
  MUX2X1 U83 ( .B(n100), .A(n107), .S(n108), .Y(n270) );
  INVX1 U84 ( .A(\fiforeg[4][0] ), .Y(n107) );
  MUX2X1 U85 ( .B(n100), .A(n109), .S(n110), .Y(n269) );
  INVX1 U86 ( .A(\fiforeg[5][0] ), .Y(n109) );
  MUX2X1 U87 ( .B(n100), .A(n111), .S(n112), .Y(n268) );
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
  MUX2X1 U100 ( .B(n123), .A(n81), .S(n7), .Y(n267) );
  MUX2X1 U101 ( .B(n123), .A(n80), .S(n2), .Y(n266) );
  MUX2X1 U102 ( .B(n123), .A(n83), .S(n6), .Y(n265) );
  MUX2X1 U103 ( .B(n123), .A(n82), .S(n4), .Y(n264) );
  MUX2X1 U104 ( .B(n123), .A(n124), .S(n108), .Y(n263) );
  INVX1 U105 ( .A(\fiforeg[4][1] ), .Y(n124) );
  MUX2X1 U106 ( .B(n123), .A(n125), .S(n110), .Y(n262) );
  INVX1 U107 ( .A(\fiforeg[5][1] ), .Y(n125) );
  MUX2X1 U108 ( .B(n123), .A(n126), .S(n112), .Y(n261) );
  INVX1 U109 ( .A(\fiforeg[6][1] ), .Y(n126) );
  MUX2X1 U110 ( .B(n123), .A(n127), .S(n102), .Y(n260) );
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
  MUX2X1 U123 ( .B(n134), .A(n72), .S(n7), .Y(n259) );
  MUX2X1 U124 ( .B(n134), .A(n71), .S(n2), .Y(n258) );
  MUX2X1 U125 ( .B(n134), .A(n74), .S(n6), .Y(n257) );
  MUX2X1 U126 ( .B(n134), .A(n73), .S(n4), .Y(n256) );
  MUX2X1 U127 ( .B(n134), .A(n135), .S(n108), .Y(n255) );
  INVX1 U128 ( .A(\fiforeg[4][2] ), .Y(n135) );
  MUX2X1 U129 ( .B(n134), .A(n136), .S(n110), .Y(n254) );
  INVX1 U130 ( .A(\fiforeg[5][2] ), .Y(n136) );
  MUX2X1 U131 ( .B(n134), .A(n137), .S(n112), .Y(n253) );
  INVX1 U132 ( .A(\fiforeg[6][2] ), .Y(n137) );
  MUX2X1 U133 ( .B(n134), .A(n138), .S(n102), .Y(n252) );
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
  MUX2X1 U146 ( .B(n145), .A(n63), .S(n7), .Y(n251) );
  MUX2X1 U147 ( .B(n145), .A(n62), .S(n2), .Y(n250) );
  MUX2X1 U148 ( .B(n145), .A(n65), .S(n6), .Y(n249) );
  MUX2X1 U149 ( .B(n145), .A(n64), .S(n4), .Y(n248) );
  MUX2X1 U150 ( .B(n145), .A(n146), .S(n108), .Y(n247) );
  INVX1 U151 ( .A(\fiforeg[4][3] ), .Y(n146) );
  MUX2X1 U152 ( .B(n145), .A(n147), .S(n110), .Y(n246) );
  INVX1 U153 ( .A(\fiforeg[5][3] ), .Y(n147) );
  MUX2X1 U154 ( .B(n145), .A(n148), .S(n112), .Y(n245) );
  INVX1 U155 ( .A(\fiforeg[6][3] ), .Y(n148) );
  MUX2X1 U156 ( .B(n145), .A(n149), .S(n102), .Y(n244) );
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
  MUX2X1 U169 ( .B(n156), .A(n54), .S(n7), .Y(n243) );
  MUX2X1 U170 ( .B(n156), .A(n53), .S(n2), .Y(n242) );
  MUX2X1 U171 ( .B(n156), .A(n56), .S(n6), .Y(n241) );
  MUX2X1 U172 ( .B(n156), .A(n55), .S(n4), .Y(n240) );
  MUX2X1 U173 ( .B(n156), .A(n157), .S(n108), .Y(n239) );
  INVX1 U174 ( .A(\fiforeg[4][4] ), .Y(n157) );
  MUX2X1 U175 ( .B(n156), .A(n158), .S(n110), .Y(n238) );
  INVX1 U176 ( .A(\fiforeg[5][4] ), .Y(n158) );
  MUX2X1 U177 ( .B(n156), .A(n159), .S(n112), .Y(n237) );
  INVX1 U178 ( .A(\fiforeg[6][4] ), .Y(n159) );
  MUX2X1 U179 ( .B(n156), .A(n160), .S(n102), .Y(n236) );
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
  MUX2X1 U192 ( .B(n167), .A(n45), .S(n7), .Y(n235) );
  MUX2X1 U193 ( .B(n167), .A(n44), .S(n2), .Y(n234) );
  MUX2X1 U194 ( .B(n167), .A(n47), .S(n6), .Y(n233) );
  MUX2X1 U195 ( .B(n167), .A(n46), .S(n4), .Y(n232) );
  MUX2X1 U196 ( .B(n167), .A(n168), .S(n108), .Y(n231) );
  INVX1 U197 ( .A(\fiforeg[4][5] ), .Y(n168) );
  MUX2X1 U198 ( .B(n167), .A(n169), .S(n110), .Y(n230) );
  INVX1 U199 ( .A(\fiforeg[5][5] ), .Y(n169) );
  MUX2X1 U200 ( .B(n167), .A(n170), .S(n112), .Y(n229) );
  INVX1 U201 ( .A(\fiforeg[6][5] ), .Y(n170) );
  MUX2X1 U202 ( .B(n167), .A(n171), .S(n102), .Y(n228) );
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
  MUX2X1 U215 ( .B(n178), .A(n36), .S(n7), .Y(n227) );
  MUX2X1 U216 ( .B(n178), .A(n35), .S(n2), .Y(n226) );
  MUX2X1 U217 ( .B(n178), .A(n38), .S(n6), .Y(n225) );
  MUX2X1 U218 ( .B(n178), .A(n37), .S(n4), .Y(n224) );
  MUX2X1 U219 ( .B(n178), .A(n179), .S(n108), .Y(n223) );
  INVX1 U220 ( .A(\fiforeg[4][6] ), .Y(n179) );
  MUX2X1 U221 ( .B(n178), .A(n180), .S(n110), .Y(n222) );
  INVX1 U222 ( .A(\fiforeg[5][6] ), .Y(n180) );
  MUX2X1 U223 ( .B(n178), .A(n181), .S(n112), .Y(n221) );
  INVX1 U224 ( .A(\fiforeg[6][6] ), .Y(n181) );
  MUX2X1 U225 ( .B(n178), .A(n182), .S(n102), .Y(n220) );
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
  MUX2X1 U238 ( .B(n189), .A(n21), .S(n7), .Y(n219) );
  MUX2X1 U239 ( .B(n189), .A(n19), .S(n2), .Y(n218) );
  MUX2X1 U240 ( .B(n189), .A(n25), .S(n6), .Y(n217) );
  MUX2X1 U241 ( .B(n189), .A(n23), .S(n4), .Y(n216) );
  MUX2X1 U242 ( .B(n189), .A(n190), .S(n108), .Y(n215) );
  INVX1 U243 ( .A(\fiforeg[4][7] ), .Y(n190) );
  MUX2X1 U244 ( .B(n189), .A(n191), .S(n110), .Y(n214) );
  INVX1 U245 ( .A(\fiforeg[5][7] ), .Y(n191) );
  MUX2X1 U246 ( .B(n189), .A(n192), .S(n112), .Y(n213) );
  INVX1 U247 ( .A(\fiforeg[6][7] ), .Y(n192) );
  MUX2X1 U248 ( .B(n189), .A(n193), .S(n102), .Y(n212) );
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
  \**SEQGEN**  \ctr0_reg[1]  ( .clear(RST), .preset(1'b0), .next_state(N14), 
        .clocked_on(n5), .data_in(1'b0), .enable(1'b0), .Q(ctr0[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ctr0_reg[0]  ( .clear(RST), .preset(1'b0), .next_state(N13), 
        .clocked_on(n5), .data_in(1'b0), .enable(1'b0), .Q(ctr0[0]), 
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
  wire   n35, n36, n1, n2, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;
  wire   [2:0] state;
  wire   [2:0] nextstate;
  wire   [1:0] ctr;

  DFFSR \state_reg[0]  ( .D(nextstate[0]), .CLK(D_CLK), .R(1'b1), .S(n32), .Q(
        state[0]) );
  DFFSR \state_reg[1]  ( .D(nextstate[1]), .CLK(D_CLK), .R(1'b1), .S(n32), .Q(
        state[1]) );
  DFFSR \state_reg[2]  ( .D(nextstate[2]), .CLK(D_CLK), .R(n32), .S(1'b1), .Q(
        state[2]) );
  DFFPOSX1 \ctr_reg[1]  ( .D(n36), .CLK(D_CLK), .Q(ctr[1]) );
  DFFPOSX1 \ctr_reg[0]  ( .D(n35), .CLK(D_CLK), .Q(ctr[0]) );
  NAND2X1 U6 ( .A(n1), .B(n2), .Y(nextstate[2]) );
  AOI22X1 U7 ( .A(n6), .B(n7), .C(n8), .D(n9), .Y(n2) );
  NOR2X1 U8 ( .A(CRC_ERROR), .B(n10), .Y(n7) );
  NAND2X1 U9 ( .A(n11), .B(n12), .Y(n10) );
  NOR2X1 U10 ( .A(n13), .B(n14), .Y(n6) );
  AOI22X1 U11 ( .A(EMPTY0), .B(R_ENABLE0), .C(W_ENABLE1), .D(FULL1), .Y(n1) );
  OAI21X1 U12 ( .A(n15), .B(n9), .C(n16), .Y(nextstate[1]) );
  AOI21X1 U13 ( .A(n17), .B(R_ENABLE0), .C(n18), .Y(n16) );
  NOR2X1 U14 ( .A(EMPTY0), .B(n19), .Y(n17) );
  INVX1 U15 ( .A(n20), .Y(n9) );
  MUX2X1 U16 ( .B(FULL1), .A(EOP), .S(state[0]), .Y(n20) );
  INVX1 U17 ( .A(n8), .Y(n15) );
  NAND2X1 U18 ( .A(n21), .B(n22), .Y(nextstate[0]) );
  AOI22X1 U19 ( .A(n23), .B(W_ENABLE1), .C(R_ENABLE0), .D(EMPTY0), .Y(n22) );
  INVX1 U20 ( .A(FULL1), .Y(n23) );
  AOI21X1 U21 ( .A(state[0]), .B(n8), .C(n18), .Y(n21) );
  INVX1 U22 ( .A(n24), .Y(n18) );
  NAND3X1 U23 ( .A(n25), .B(n11), .C(n26), .Y(n24) );
  MUX2X1 U24 ( .B(FULL0), .A(n27), .S(EOP), .Y(n26) );
  NOR2X1 U25 ( .A(ctr[1]), .B(n14), .Y(n27) );
  INVX1 U26 ( .A(R_ERROR), .Y(n11) );
  NOR2X1 U27 ( .A(n28), .B(state[1]), .Y(n8) );
  AND2X1 U28 ( .A(n29), .B(ctr[1]), .Y(n36) );
  MUX2X1 U29 ( .B(n13), .A(n14), .S(n29), .Y(n35) );
  OAI21X1 U30 ( .A(n13), .B(n12), .C(n32), .Y(n29) );
  INVX1 U31 ( .A(RST), .Y(n32) );
  INVX1 U32 ( .A(ctr[1]), .Y(n12) );
  INVX1 U33 ( .A(ctr[0]), .Y(n14) );
  NAND2X1 U34 ( .A(EOP), .B(n25), .Y(n13) );
  INVX1 U35 ( .A(n30), .Y(n25) );
  NAND3X1 U36 ( .A(state[0]), .B(n28), .C(state[1]), .Y(n30) );
  INVX1 U37 ( .A(n31), .Y(W_ENABLE1) );
  NAND3X1 U38 ( .A(n19), .B(n28), .C(state[1]), .Y(n31) );
  INVX1 U39 ( .A(state[2]), .Y(n28) );
  INVX1 U40 ( .A(state[0]), .Y(n19) );
  NOR2X1 U41 ( .A(state[1]), .B(state[2]), .Y(R_ENABLE0) );
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
         d_edge, n2, n3, n4;
  wire   [7:0] R_DATA1;
  wire   [7:0] W_DATA;
  wire   [7:0] RCV_DATA;

  RCV_FIFO_0 U_5 ( .CLK(CLK), .D_CLK(n3), .RST_N(n4), .R_ENABLE(R_ENABLE), 
        .W_ENABLE(W_ENABLE1), .WDATA(R_DATA1), .R_DATA(R_DATA), .EMPTY(EMPTY), 
        .FULL(FULL) );
  RCV_FIFO_1 U_11 ( .CLK(n2), .D_CLK(n3), .RST_N(n4), .R_ENABLE(R_ENABLE0), 
        .W_ENABLE(W_ENABLE_OUT), .WDATA(W_DATA), .R_DATA(R_DATA1), .EMPTY(
        EMPTY1), .FULL(FULL1) );
  USB_SHIFT U_7 ( .D_CLK(n2), .RST(RST), .EOP(EOP), .SHIFT_ENABLE(SHIFT_ENABLE), .D_ORIG(d_orig), .RCV_DATA(RCV_DATA), .CRC_SHIFT(CRC_SHIFT), .STUFF_ERROR(
        STUFF_ERROR) );
  U_BUFFER U_10 ( .D_CLK(n2), .RST(RST), .W_ENABLE(w_enable), .EOP(EOP), 
        .W_ENABLE_OUT(W_ENABLE_OUT), .RCV_DATA(RCV_DATA), .W_DATA(W_DATA) );
  U_CLKDIV U_8 ( .CLK(CLK), .RST(RST), .D_CLK(D_CLK) );
  U_CRC U_0 ( .D_CLK(n3), .RST_N(RST), .CRC_SHIFT(CRC_SHIFT), .D_ORIG(d_orig), 
        .CRC_EN(CRC_EN), .CRC_ERROR(CRC_ERROR) );
  U_DECODE U_1 ( .D_CLK(n2), .rst_n(RST), .d_plus(D_PLUS), .shift_enable(
        SHIFT_ENABLE), .eop(EOP), .d_orig(d_orig) );
  U_EDGE_DETECT U_2 ( .D_CLK(n2), .rst_n(RST), .d_plus(D_PLUS), .d_edge(d_edge) );
  U_EOP_DETECT U_3 ( .D_PLUS(D_PLUS), .D_MINUS(D_MINUS), .EOP(EOP) );
  U_FCU U_12 ( .D_CLK(n3), .RST(RST), .EOP(EOP), .CRC_ERROR(CRC_ERROR), 
        .R_ERROR(r_error), .W_ENABLE1(W_ENABLE1), .R_ENABLE0(R_ENABLE0), 
        .EMPTY0(EMPTY1), .FULL0(FULL1), .FULL1(FULL) );
  U_RCU U_4 ( .D_CLK(n3), .rst_n(RST), .d_edge(d_edge), .eop(EOP), .CRC_ERROR(
        CRC_ERROR), .STUFF_ERROR(STUFF_ERROR), .shift_enable(CRC_SHIFT), 
        .rcv_data(RCV_DATA), .rcving(rcving), .w_enable(w_enable), .r_error(
        r_error), .CRC_EN(CRC_EN) );
  U_TIMER U_6 ( .D_CLK(n3), .RST_N(RST), .D_EDGE(d_edge), .RCVING(rcving), 
        .SHIFT_ENABLE(SHIFT_ENABLE) );
  INVX8 U2 ( .A(RST), .Y(n4) );
  BUFX4 U3 ( .A(D_CLK), .Y(n2) );
  BUFX4 U4 ( .A(D_CLK), .Y(n3) );
endmodule

