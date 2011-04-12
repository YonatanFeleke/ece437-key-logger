
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
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
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
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n73;

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
  INVX2 U2 ( .A(n149), .Y(n1) );
  INVX2 U3 ( .A(\fiforeg[0][7] ), .Y(n2) );
  INVX2 U4 ( .A(n157), .Y(n3) );
  INVX2 U5 ( .A(\fiforeg[0][6] ), .Y(n4) );
  INVX2 U6 ( .A(n165), .Y(n5) );
  INVX2 U7 ( .A(\fiforeg[0][5] ), .Y(n6) );
  INVX2 U8 ( .A(n173), .Y(n7) );
  INVX2 U9 ( .A(\fiforeg[0][4] ), .Y(n8) );
  INVX2 U10 ( .A(n181), .Y(n9) );
  INVX2 U11 ( .A(\fiforeg[0][3] ), .Y(n10) );
  INVX2 U12 ( .A(n189), .Y(n11) );
  INVX2 U13 ( .A(\fiforeg[0][2] ), .Y(n12) );
  INVX2 U14 ( .A(n197), .Y(n13) );
  INVX2 U15 ( .A(\fiforeg[0][1] ), .Y(n14) );
  INVX2 U16 ( .A(\fiforeg[0][0] ), .Y(n15) );
  INVX2 U17 ( .A(n205), .Y(n16) );
  INVX2 U18 ( .A(\fiforeg[1][7] ), .Y(n17) );
  INVX2 U19 ( .A(\fiforeg[1][6] ), .Y(n18) );
  INVX2 U20 ( .A(\fiforeg[1][5] ), .Y(n19) );
  INVX2 U21 ( .A(\fiforeg[1][4] ), .Y(n20) );
  INVX2 U22 ( .A(\fiforeg[1][3] ), .Y(n21) );
  INVX2 U23 ( .A(\fiforeg[1][2] ), .Y(n22) );
  INVX2 U24 ( .A(\fiforeg[1][1] ), .Y(n23) );
  INVX2 U25 ( .A(\fiforeg[1][0] ), .Y(n24) );
  INVX2 U26 ( .A(\fiforeg[2][7] ), .Y(n25) );
  INVX2 U27 ( .A(\fiforeg[2][6] ), .Y(n26) );
  INVX2 U28 ( .A(\fiforeg[2][5] ), .Y(n27) );
  INVX2 U29 ( .A(\fiforeg[2][4] ), .Y(n28) );
  INVX2 U30 ( .A(\fiforeg[2][3] ), .Y(n29) );
  INVX2 U31 ( .A(\fiforeg[2][2] ), .Y(n30) );
  INVX2 U32 ( .A(\fiforeg[2][1] ), .Y(n31) );
  INVX2 U33 ( .A(\fiforeg[2][0] ), .Y(n32) );
  INVX2 U34 ( .A(\fiforeg[3][7] ), .Y(n33) );
  INVX2 U35 ( .A(\fiforeg[3][6] ), .Y(n34) );
  INVX2 U36 ( .A(\fiforeg[3][5] ), .Y(n35) );
  INVX2 U37 ( .A(\fiforeg[3][4] ), .Y(n36) );
  INVX2 U38 ( .A(\fiforeg[3][3] ), .Y(n37) );
  INVX2 U39 ( .A(\fiforeg[3][2] ), .Y(n38) );
  INVX2 U40 ( .A(\fiforeg[3][1] ), .Y(n39) );
  INVX2 U41 ( .A(\fiforeg[3][0] ), .Y(n40) );
  INVX2 U42 ( .A(\fiforeg[4][7] ), .Y(n41) );
  INVX2 U43 ( .A(\fiforeg[4][6] ), .Y(n42) );
  INVX2 U44 ( .A(\fiforeg[4][5] ), .Y(n43) );
  INVX2 U45 ( .A(\fiforeg[4][4] ), .Y(n44) );
  INVX2 U46 ( .A(\fiforeg[4][3] ), .Y(n45) );
  INVX2 U47 ( .A(\fiforeg[4][2] ), .Y(n46) );
  INVX2 U48 ( .A(\fiforeg[4][1] ), .Y(n47) );
  INVX2 U49 ( .A(\fiforeg[4][0] ), .Y(n48) );
  INVX2 U50 ( .A(\fiforeg[5][7] ), .Y(n49) );
  INVX2 U51 ( .A(\fiforeg[5][6] ), .Y(n50) );
  INVX2 U52 ( .A(\fiforeg[5][5] ), .Y(n51) );
  INVX2 U53 ( .A(\fiforeg[5][4] ), .Y(n52) );
  INVX2 U54 ( .A(\fiforeg[5][3] ), .Y(n53) );
  INVX2 U55 ( .A(\fiforeg[5][2] ), .Y(n54) );
  INVX2 U56 ( .A(\fiforeg[5][1] ), .Y(n55) );
  INVX2 U57 ( .A(\fiforeg[5][0] ), .Y(n56) );
  INVX2 U58 ( .A(\fiforeg[6][7] ), .Y(n57) );
  INVX2 U59 ( .A(\fiforeg[6][6] ), .Y(n58) );
  INVX2 U60 ( .A(\fiforeg[6][5] ), .Y(n59) );
  INVX2 U61 ( .A(\fiforeg[6][4] ), .Y(n60) );
  INVX2 U62 ( .A(\fiforeg[6][3] ), .Y(n61) );
  INVX2 U63 ( .A(\fiforeg[6][2] ), .Y(n62) );
  INVX2 U64 ( .A(\fiforeg[6][1] ), .Y(n63) );
  INVX2 U65 ( .A(\fiforeg[6][0] ), .Y(n64) );
  INVX2 U66 ( .A(\fiforeg[7][7] ), .Y(n65) );
  INVX2 U67 ( .A(\fiforeg[7][6] ), .Y(n66) );
  INVX2 U68 ( .A(\fiforeg[7][5] ), .Y(n67) );
  INVX2 U69 ( .A(\fiforeg[7][4] ), .Y(n68) );
  INVX2 U70 ( .A(\fiforeg[7][3] ), .Y(n69) );
  INVX2 U71 ( .A(\fiforeg[7][2] ), .Y(n70) );
  INVX2 U72 ( .A(\fiforeg[7][1] ), .Y(n71) );
  INVX2 U73 ( .A(\fiforeg[7][0] ), .Y(n72) );
  INVX2 U79 ( .A(waddr[2]), .Y(n78) );
  INVX2 U84 ( .A(waddr[1]), .Y(n83) );
  INVX2 U85 ( .A(waddr[0]), .Y(n84) );
  INVX2 U86 ( .A(n139), .Y(n85) );
  INVX2 U87 ( .A(n138), .Y(n86) );
  INVX2 U88 ( .A(n137), .Y(n87) );
  INVX2 U89 ( .A(n136), .Y(n88) );
  INVX2 U90 ( .A(raddr[2]), .Y(n89) );
  INVX2 U91 ( .A(raddr[1]), .Y(n90) );
  INVX2 U92 ( .A(raddr[0]), .Y(n91) );
  NAND3X1 U93 ( .A(n92), .B(n93), .C(n94), .Y(rdata[7]) );
  NOR2X1 U94 ( .A(n95), .B(n96), .Y(n94) );
  OAI22X1 U95 ( .A(n97), .B(n41), .C(n98), .D(n49), .Y(n96) );
  OAI22X1 U96 ( .A(n99), .B(n57), .C(n100), .D(n65), .Y(n95) );
  AOI22X1 U97 ( .A(\fiforeg[3][7] ), .B(n87), .C(\fiforeg[2][7] ), .D(n88), 
        .Y(n93) );
  AOI22X1 U98 ( .A(\fiforeg[1][7] ), .B(n85), .C(\fiforeg[0][7] ), .D(n86), 
        .Y(n92) );
  NAND3X1 U99 ( .A(n101), .B(n102), .C(n103), .Y(rdata[6]) );
  NOR2X1 U100 ( .A(n104), .B(n105), .Y(n103) );
  OAI22X1 U101 ( .A(n97), .B(n42), .C(n98), .D(n50), .Y(n105) );
  OAI22X1 U102 ( .A(n99), .B(n58), .C(n100), .D(n66), .Y(n104) );
  AOI22X1 U103 ( .A(\fiforeg[3][6] ), .B(n87), .C(\fiforeg[2][6] ), .D(n88), 
        .Y(n102) );
  AOI22X1 U104 ( .A(\fiforeg[1][6] ), .B(n85), .C(\fiforeg[0][6] ), .D(n86), 
        .Y(n101) );
  NAND3X1 U105 ( .A(n106), .B(n107), .C(n108), .Y(rdata[5]) );
  NOR2X1 U106 ( .A(n109), .B(n110), .Y(n108) );
  OAI22X1 U107 ( .A(n97), .B(n43), .C(n98), .D(n51), .Y(n110) );
  OAI22X1 U108 ( .A(n99), .B(n59), .C(n100), .D(n67), .Y(n109) );
  AOI22X1 U109 ( .A(\fiforeg[3][5] ), .B(n87), .C(\fiforeg[2][5] ), .D(n88), 
        .Y(n107) );
  AOI22X1 U110 ( .A(\fiforeg[1][5] ), .B(n85), .C(\fiforeg[0][5] ), .D(n86), 
        .Y(n106) );
  NAND3X1 U111 ( .A(n111), .B(n112), .C(n113), .Y(rdata[4]) );
  NOR2X1 U112 ( .A(n114), .B(n115), .Y(n113) );
  OAI22X1 U113 ( .A(n97), .B(n44), .C(n98), .D(n52), .Y(n115) );
  OAI22X1 U114 ( .A(n99), .B(n60), .C(n100), .D(n68), .Y(n114) );
  AOI22X1 U115 ( .A(\fiforeg[3][4] ), .B(n87), .C(\fiforeg[2][4] ), .D(n88), 
        .Y(n112) );
  AOI22X1 U116 ( .A(\fiforeg[1][4] ), .B(n85), .C(\fiforeg[0][4] ), .D(n86), 
        .Y(n111) );
  NAND3X1 U117 ( .A(n116), .B(n117), .C(n118), .Y(rdata[3]) );
  NOR2X1 U118 ( .A(n119), .B(n120), .Y(n118) );
  OAI22X1 U119 ( .A(n97), .B(n45), .C(n98), .D(n53), .Y(n120) );
  OAI22X1 U120 ( .A(n99), .B(n61), .C(n100), .D(n69), .Y(n119) );
  AOI22X1 U121 ( .A(\fiforeg[3][3] ), .B(n87), .C(\fiforeg[2][3] ), .D(n88), 
        .Y(n117) );
  AOI22X1 U122 ( .A(\fiforeg[1][3] ), .B(n85), .C(\fiforeg[0][3] ), .D(n86), 
        .Y(n116) );
  NAND3X1 U123 ( .A(n121), .B(n122), .C(n123), .Y(rdata[2]) );
  NOR2X1 U124 ( .A(n124), .B(n125), .Y(n123) );
  OAI22X1 U125 ( .A(n97), .B(n46), .C(n98), .D(n54), .Y(n125) );
  OAI22X1 U126 ( .A(n99), .B(n62), .C(n100), .D(n70), .Y(n124) );
  AOI22X1 U127 ( .A(\fiforeg[3][2] ), .B(n87), .C(\fiforeg[2][2] ), .D(n88), 
        .Y(n122) );
  AOI22X1 U128 ( .A(\fiforeg[1][2] ), .B(n85), .C(\fiforeg[0][2] ), .D(n86), 
        .Y(n121) );
  NAND3X1 U129 ( .A(n126), .B(n127), .C(n128), .Y(rdata[1]) );
  NOR2X1 U130 ( .A(n129), .B(n130), .Y(n128) );
  OAI22X1 U131 ( .A(n97), .B(n47), .C(n98), .D(n55), .Y(n130) );
  OAI22X1 U132 ( .A(n99), .B(n63), .C(n100), .D(n71), .Y(n129) );
  AOI22X1 U133 ( .A(\fiforeg[3][1] ), .B(n87), .C(\fiforeg[2][1] ), .D(n88), 
        .Y(n127) );
  AOI22X1 U134 ( .A(\fiforeg[1][1] ), .B(n85), .C(\fiforeg[0][1] ), .D(n86), 
        .Y(n126) );
  NAND3X1 U135 ( .A(n131), .B(n132), .C(n133), .Y(rdata[0]) );
  NOR2X1 U136 ( .A(n134), .B(n135), .Y(n133) );
  OAI22X1 U137 ( .A(n97), .B(n48), .C(n98), .D(n56), .Y(n135) );
  NAND3X1 U138 ( .A(raddr[0]), .B(n90), .C(raddr[2]), .Y(n98) );
  NAND3X1 U139 ( .A(n91), .B(n90), .C(raddr[2]), .Y(n97) );
  OAI22X1 U140 ( .A(n99), .B(n64), .C(n100), .D(n72), .Y(n134) );
  NAND3X1 U141 ( .A(raddr[1]), .B(raddr[0]), .C(raddr[2]), .Y(n100) );
  NAND3X1 U142 ( .A(raddr[1]), .B(n91), .C(raddr[2]), .Y(n99) );
  AOI22X1 U143 ( .A(\fiforeg[3][0] ), .B(n87), .C(\fiforeg[2][0] ), .D(n88), 
        .Y(n132) );
  NAND3X1 U144 ( .A(n91), .B(n89), .C(raddr[1]), .Y(n136) );
  NAND3X1 U145 ( .A(raddr[0]), .B(n89), .C(raddr[1]), .Y(n137) );
  AOI22X1 U146 ( .A(\fiforeg[1][0] ), .B(n85), .C(\fiforeg[0][0] ), .D(n86), 
        .Y(n131) );
  NAND3X1 U147 ( .A(n90), .B(n89), .C(n91), .Y(n138) );
  NAND3X1 U148 ( .A(n90), .B(n89), .C(raddr[0]), .Y(n139) );
  OAI22X1 U149 ( .A(n82), .B(n65), .C(n140), .D(n141), .Y(n212) );
  OAI22X1 U150 ( .A(n79), .B(n57), .C(n140), .D(n142), .Y(n213) );
  OAI22X1 U151 ( .A(n81), .B(n49), .C(n140), .D(n143), .Y(n214) );
  OAI22X1 U152 ( .A(n80), .B(n41), .C(n140), .D(n144), .Y(n215) );
  OAI22X1 U153 ( .A(n76), .B(n33), .C(n140), .D(n145), .Y(n216) );
  OAI22X1 U154 ( .A(n77), .B(n25), .C(n140), .D(n146), .Y(n217) );
  OAI22X1 U155 ( .A(n74), .B(n17), .C(n140), .D(n147), .Y(n218) );
  OAI22X1 U156 ( .A(n75), .B(n2), .C(n140), .D(n148), .Y(n219) );
  AOI21X1 U157 ( .A(wdata[7]), .B(wenable), .C(n1), .Y(n140) );
  OAI21X1 U158 ( .A(n150), .B(n151), .C(n73), .Y(n149) );
  NAND2X1 U159 ( .A(n152), .B(n153), .Y(n151) );
  AOI22X1 U160 ( .A(n76), .B(\fiforeg[3][7] ), .C(n77), .D(\fiforeg[2][7] ), 
        .Y(n153) );
  AOI22X1 U161 ( .A(n74), .B(\fiforeg[1][7] ), .C(n75), .D(\fiforeg[0][7] ), 
        .Y(n152) );
  NAND2X1 U162 ( .A(n154), .B(n155), .Y(n150) );
  AOI22X1 U163 ( .A(n82), .B(\fiforeg[7][7] ), .C(n79), .D(\fiforeg[6][7] ), 
        .Y(n155) );
  AOI22X1 U164 ( .A(n81), .B(\fiforeg[5][7] ), .C(n80), .D(\fiforeg[4][7] ), 
        .Y(n154) );
  OAI22X1 U165 ( .A(n82), .B(n66), .C(n156), .D(n141), .Y(n220) );
  OAI22X1 U166 ( .A(n79), .B(n58), .C(n156), .D(n142), .Y(n221) );
  OAI22X1 U167 ( .A(n81), .B(n50), .C(n156), .D(n143), .Y(n222) );
  OAI22X1 U168 ( .A(n80), .B(n42), .C(n156), .D(n144), .Y(n223) );
  OAI22X1 U169 ( .A(n76), .B(n34), .C(n156), .D(n145), .Y(n224) );
  OAI22X1 U170 ( .A(n77), .B(n26), .C(n156), .D(n146), .Y(n225) );
  OAI22X1 U171 ( .A(n74), .B(n18), .C(n156), .D(n147), .Y(n226) );
  OAI22X1 U172 ( .A(n75), .B(n4), .C(n156), .D(n148), .Y(n227) );
  AOI21X1 U173 ( .A(wenable), .B(wdata[6]), .C(n3), .Y(n156) );
  OAI21X1 U174 ( .A(n158), .B(n159), .C(n73), .Y(n157) );
  NAND2X1 U175 ( .A(n160), .B(n161), .Y(n159) );
  AOI22X1 U176 ( .A(n76), .B(\fiforeg[3][6] ), .C(n77), .D(\fiforeg[2][6] ), 
        .Y(n161) );
  AOI22X1 U177 ( .A(n74), .B(\fiforeg[1][6] ), .C(n75), .D(\fiforeg[0][6] ), 
        .Y(n160) );
  NAND2X1 U178 ( .A(n162), .B(n163), .Y(n158) );
  AOI22X1 U179 ( .A(n82), .B(\fiforeg[7][6] ), .C(n79), .D(\fiforeg[6][6] ), 
        .Y(n163) );
  AOI22X1 U180 ( .A(n81), .B(\fiforeg[5][6] ), .C(n80), .D(\fiforeg[4][6] ), 
        .Y(n162) );
  OAI22X1 U181 ( .A(n82), .B(n67), .C(n164), .D(n141), .Y(n228) );
  OAI22X1 U182 ( .A(n79), .B(n59), .C(n164), .D(n142), .Y(n229) );
  OAI22X1 U183 ( .A(n81), .B(n51), .C(n164), .D(n143), .Y(n230) );
  OAI22X1 U184 ( .A(n80), .B(n43), .C(n164), .D(n144), .Y(n231) );
  OAI22X1 U185 ( .A(n76), .B(n35), .C(n164), .D(n145), .Y(n232) );
  OAI22X1 U186 ( .A(n77), .B(n27), .C(n164), .D(n146), .Y(n233) );
  OAI22X1 U187 ( .A(n74), .B(n19), .C(n164), .D(n147), .Y(n234) );
  OAI22X1 U188 ( .A(n75), .B(n6), .C(n164), .D(n148), .Y(n235) );
  AOI21X1 U189 ( .A(wenable), .B(wdata[5]), .C(n5), .Y(n164) );
  OAI21X1 U190 ( .A(n166), .B(n167), .C(n73), .Y(n165) );
  NAND2X1 U191 ( .A(n168), .B(n169), .Y(n167) );
  AOI22X1 U192 ( .A(n76), .B(\fiforeg[3][5] ), .C(n77), .D(\fiforeg[2][5] ), 
        .Y(n169) );
  AOI22X1 U193 ( .A(n74), .B(\fiforeg[1][5] ), .C(n75), .D(\fiforeg[0][5] ), 
        .Y(n168) );
  NAND2X1 U194 ( .A(n170), .B(n171), .Y(n166) );
  AOI22X1 U195 ( .A(n82), .B(\fiforeg[7][5] ), .C(n79), .D(\fiforeg[6][5] ), 
        .Y(n171) );
  AOI22X1 U196 ( .A(n81), .B(\fiforeg[5][5] ), .C(n80), .D(\fiforeg[4][5] ), 
        .Y(n170) );
  OAI22X1 U197 ( .A(n82), .B(n68), .C(n172), .D(n141), .Y(n236) );
  OAI22X1 U198 ( .A(n79), .B(n60), .C(n172), .D(n142), .Y(n237) );
  OAI22X1 U199 ( .A(n81), .B(n52), .C(n172), .D(n143), .Y(n238) );
  OAI22X1 U200 ( .A(n80), .B(n44), .C(n172), .D(n144), .Y(n239) );
  OAI22X1 U201 ( .A(n76), .B(n36), .C(n172), .D(n145), .Y(n240) );
  OAI22X1 U202 ( .A(n77), .B(n28), .C(n172), .D(n146), .Y(n241) );
  OAI22X1 U203 ( .A(n74), .B(n20), .C(n172), .D(n147), .Y(n242) );
  OAI22X1 U204 ( .A(n75), .B(n8), .C(n172), .D(n148), .Y(n243) );
  AOI21X1 U205 ( .A(wenable), .B(wdata[4]), .C(n7), .Y(n172) );
  OAI21X1 U206 ( .A(n174), .B(n175), .C(n73), .Y(n173) );
  NAND2X1 U207 ( .A(n176), .B(n177), .Y(n175) );
  AOI22X1 U208 ( .A(n76), .B(\fiforeg[3][4] ), .C(n77), .D(\fiforeg[2][4] ), 
        .Y(n177) );
  AOI22X1 U209 ( .A(n74), .B(\fiforeg[1][4] ), .C(n75), .D(\fiforeg[0][4] ), 
        .Y(n176) );
  NAND2X1 U210 ( .A(n178), .B(n179), .Y(n174) );
  AOI22X1 U211 ( .A(n82), .B(\fiforeg[7][4] ), .C(n79), .D(\fiforeg[6][4] ), 
        .Y(n179) );
  AOI22X1 U212 ( .A(n81), .B(\fiforeg[5][4] ), .C(n80), .D(\fiforeg[4][4] ), 
        .Y(n178) );
  OAI22X1 U213 ( .A(n82), .B(n69), .C(n180), .D(n141), .Y(n244) );
  OAI22X1 U214 ( .A(n79), .B(n61), .C(n180), .D(n142), .Y(n245) );
  OAI22X1 U215 ( .A(n81), .B(n53), .C(n180), .D(n143), .Y(n246) );
  OAI22X1 U216 ( .A(n80), .B(n45), .C(n180), .D(n144), .Y(n247) );
  OAI22X1 U217 ( .A(n76), .B(n37), .C(n180), .D(n145), .Y(n248) );
  OAI22X1 U218 ( .A(n77), .B(n29), .C(n180), .D(n146), .Y(n249) );
  OAI22X1 U219 ( .A(n74), .B(n21), .C(n180), .D(n147), .Y(n250) );
  OAI22X1 U220 ( .A(n75), .B(n10), .C(n180), .D(n148), .Y(n251) );
  AOI21X1 U221 ( .A(wenable), .B(wdata[3]), .C(n9), .Y(n180) );
  OAI21X1 U222 ( .A(n182), .B(n183), .C(n73), .Y(n181) );
  NAND2X1 U223 ( .A(n184), .B(n185), .Y(n183) );
  AOI22X1 U224 ( .A(n76), .B(\fiforeg[3][3] ), .C(n77), .D(\fiforeg[2][3] ), 
        .Y(n185) );
  AOI22X1 U225 ( .A(n74), .B(\fiforeg[1][3] ), .C(n75), .D(\fiforeg[0][3] ), 
        .Y(n184) );
  NAND2X1 U226 ( .A(n186), .B(n187), .Y(n182) );
  AOI22X1 U227 ( .A(n82), .B(\fiforeg[7][3] ), .C(n79), .D(\fiforeg[6][3] ), 
        .Y(n187) );
  AOI22X1 U228 ( .A(n81), .B(\fiforeg[5][3] ), .C(n80), .D(\fiforeg[4][3] ), 
        .Y(n186) );
  OAI22X1 U229 ( .A(n82), .B(n70), .C(n188), .D(n141), .Y(n252) );
  OAI22X1 U230 ( .A(n79), .B(n62), .C(n188), .D(n142), .Y(n253) );
  OAI22X1 U231 ( .A(n81), .B(n54), .C(n188), .D(n143), .Y(n254) );
  OAI22X1 U232 ( .A(n80), .B(n46), .C(n188), .D(n144), .Y(n255) );
  OAI22X1 U233 ( .A(n76), .B(n38), .C(n188), .D(n145), .Y(n256) );
  OAI22X1 U234 ( .A(n77), .B(n30), .C(n188), .D(n146), .Y(n257) );
  OAI22X1 U235 ( .A(n74), .B(n22), .C(n188), .D(n147), .Y(n258) );
  OAI22X1 U236 ( .A(n75), .B(n12), .C(n188), .D(n148), .Y(n259) );
  AOI21X1 U237 ( .A(wenable), .B(wdata[2]), .C(n11), .Y(n188) );
  OAI21X1 U238 ( .A(n190), .B(n191), .C(n73), .Y(n189) );
  NAND2X1 U239 ( .A(n192), .B(n193), .Y(n191) );
  AOI22X1 U240 ( .A(n76), .B(\fiforeg[3][2] ), .C(n77), .D(\fiforeg[2][2] ), 
        .Y(n193) );
  AOI22X1 U241 ( .A(n74), .B(\fiforeg[1][2] ), .C(n75), .D(\fiforeg[0][2] ), 
        .Y(n192) );
  NAND2X1 U242 ( .A(n194), .B(n195), .Y(n190) );
  AOI22X1 U243 ( .A(n82), .B(\fiforeg[7][2] ), .C(n79), .D(\fiforeg[6][2] ), 
        .Y(n195) );
  AOI22X1 U244 ( .A(n81), .B(\fiforeg[5][2] ), .C(n80), .D(\fiforeg[4][2] ), 
        .Y(n194) );
  OAI22X1 U245 ( .A(n82), .B(n71), .C(n196), .D(n141), .Y(n260) );
  OAI22X1 U246 ( .A(n79), .B(n63), .C(n196), .D(n142), .Y(n261) );
  OAI22X1 U247 ( .A(n81), .B(n55), .C(n196), .D(n143), .Y(n262) );
  OAI22X1 U248 ( .A(n80), .B(n47), .C(n196), .D(n144), .Y(n263) );
  OAI22X1 U249 ( .A(n76), .B(n39), .C(n196), .D(n145), .Y(n264) );
  OAI22X1 U250 ( .A(n77), .B(n31), .C(n196), .D(n146), .Y(n265) );
  OAI22X1 U251 ( .A(n74), .B(n23), .C(n196), .D(n147), .Y(n266) );
  OAI22X1 U252 ( .A(n75), .B(n14), .C(n196), .D(n148), .Y(n267) );
  AOI21X1 U253 ( .A(wenable), .B(wdata[1]), .C(n13), .Y(n196) );
  OAI21X1 U254 ( .A(n198), .B(n199), .C(n73), .Y(n197) );
  NAND2X1 U255 ( .A(n200), .B(n201), .Y(n199) );
  AOI22X1 U256 ( .A(n76), .B(\fiforeg[3][1] ), .C(n77), .D(\fiforeg[2][1] ), 
        .Y(n201) );
  AOI22X1 U257 ( .A(n74), .B(\fiforeg[1][1] ), .C(n75), .D(\fiforeg[0][1] ), 
        .Y(n200) );
  NAND2X1 U258 ( .A(n202), .B(n203), .Y(n198) );
  AOI22X1 U259 ( .A(n82), .B(\fiforeg[7][1] ), .C(n79), .D(\fiforeg[6][1] ), 
        .Y(n203) );
  AOI22X1 U260 ( .A(n81), .B(\fiforeg[5][1] ), .C(n80), .D(\fiforeg[4][1] ), 
        .Y(n202) );
  OAI22X1 U261 ( .A(n79), .B(n64), .C(n204), .D(n142), .Y(n268) );
  OAI22X1 U262 ( .A(n81), .B(n56), .C(n204), .D(n143), .Y(n269) );
  OAI22X1 U263 ( .A(n80), .B(n48), .C(n204), .D(n144), .Y(n270) );
  OAI22X1 U264 ( .A(n76), .B(n40), .C(n204), .D(n145), .Y(n271) );
  OAI22X1 U265 ( .A(n77), .B(n32), .C(n204), .D(n146), .Y(n272) );
  OAI22X1 U266 ( .A(n74), .B(n24), .C(n204), .D(n147), .Y(n273) );
  OAI22X1 U267 ( .A(n75), .B(n15), .C(n204), .D(n148), .Y(n274) );
  OAI22X1 U268 ( .A(n82), .B(n72), .C(n204), .D(n141), .Y(n275) );
  AOI21X1 U269 ( .A(wenable), .B(wdata[0]), .C(n16), .Y(n204) );
  OAI21X1 U270 ( .A(n206), .B(n207), .C(n73), .Y(n205) );
  NAND2X1 U271 ( .A(n208), .B(n209), .Y(n207) );
  AOI22X1 U272 ( .A(n76), .B(\fiforeg[3][0] ), .C(n77), .D(\fiforeg[2][0] ), 
        .Y(n209) );
  NAND3X1 U273 ( .A(n84), .B(n78), .C(waddr[1]), .Y(n146) );
  NAND3X1 U274 ( .A(waddr[0]), .B(n78), .C(waddr[1]), .Y(n145) );
  AOI22X1 U275 ( .A(n74), .B(\fiforeg[1][0] ), .C(n75), .D(\fiforeg[0][0] ), 
        .Y(n208) );
  NAND3X1 U276 ( .A(n83), .B(n78), .C(n84), .Y(n148) );
  NAND3X1 U277 ( .A(n83), .B(n78), .C(waddr[0]), .Y(n147) );
  NAND2X1 U278 ( .A(n210), .B(n211), .Y(n206) );
  AOI22X1 U279 ( .A(n82), .B(\fiforeg[7][0] ), .C(n79), .D(\fiforeg[6][0] ), 
        .Y(n211) );
  NAND3X1 U280 ( .A(waddr[1]), .B(n84), .C(waddr[2]), .Y(n142) );
  AOI22X1 U281 ( .A(n81), .B(\fiforeg[5][0] ), .C(n80), .D(\fiforeg[4][0] ), 
        .Y(n210) );
  NAND3X1 U282 ( .A(n84), .B(n83), .C(waddr[2]), .Y(n144) );
  NAND3X1 U283 ( .A(waddr[0]), .B(n83), .C(waddr[2]), .Y(n143) );
  NAND3X1 U284 ( .A(waddr[1]), .B(waddr[0]), .C(waddr[2]), .Y(n141) );
  INVX2 U74 ( .A(n148), .Y(n75) );
  INVX2 U75 ( .A(wenable), .Y(n73) );
  INVX2 U76 ( .A(n142), .Y(n79) );
  INVX2 U77 ( .A(n146), .Y(n77) );
  INVX2 U78 ( .A(n144), .Y(n80) );
  INVX2 U80 ( .A(n145), .Y(n76) );
  INVX2 U81 ( .A(n143), .Y(n81) );
  INVX2 U82 ( .A(n147), .Y(n74) );
  INVX2 U83 ( .A(n141), .Y(n82) );
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
  INVX2 U11 ( .A(binary_r[1]), .Y(n9) );
  XOR2X1 U12 ( .A(wptr_nxt[3]), .B(binary_nxt[2]), .Y(wptr_nxt[2]) );
  XNOR2X1 U13 ( .A(n10), .B(binary_r[3]), .Y(wptr_nxt[3]) );
  NAND2X1 U14 ( .A(binary_r[2]), .B(n11), .Y(n10) );
  XOR2X1 U15 ( .A(binary_nxt[2]), .B(binary_nxt[1]), .Y(wptr_nxt[1]) );
  XOR2X1 U16 ( .A(binary_nxt[1]), .B(binary_nxt[0]), .Y(wptr_nxt[0]) );
  XOR2X1 U17 ( .A(binary_r[2]), .B(n11), .Y(binary_nxt[2]) );
  NOR2X1 U18 ( .A(n9), .B(n12), .Y(n11) );
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
  wire   \gray_wptr[2] , N5, n15, n16, n17, n18, n19, n20, n21, n22;
  wire   [3:0] wptr_nxt;
  wire   [3:0] wrptr_r2;
  wire   [3:0] wrptr_r1;

  write_ptr WPU1 ( .wclk(wclk), .rst_n(rst_n), .wenable(wenable_fifo), .wptr(
        wptr), .wptr_nxt(wptr_nxt) );
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
  INVX2 U15 ( .A(wenable), .Y(n15) );
  NOR2X1 U16 ( .A(full_flag), .B(n15), .Y(wenable_fifo) );
  NOR2X1 U17 ( .A(n16), .B(n17), .Y(N5) );
  NAND2X1 U18 ( .A(n18), .B(n19), .Y(n17) );
  XNOR2X1 U19 ( .A(wrptr_r2[1]), .B(wptr_nxt[1]), .Y(n19) );
  XOR2X1 U20 ( .A(n20), .B(\gray_wptr[2] ), .Y(n18) );
  XOR2X1 U21 ( .A(wptr_nxt[3]), .B(wptr_nxt[2]), .Y(\gray_wptr[2] ) );
  XNOR2X1 U22 ( .A(wrptr_r2[3]), .B(wrptr_r2[2]), .Y(n20) );
  NAND2X1 U23 ( .A(n21), .B(n22), .Y(n16) );
  XOR2X1 U24 ( .A(wrptr_r2[3]), .B(wptr_nxt[3]), .Y(n22) );
  XNOR2X1 U25 ( .A(wrptr_r2[0]), .B(wptr_nxt[0]), .Y(n21) );
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
  INVX2 U11 ( .A(binary_r[1]), .Y(n9) );
  XOR2X1 U12 ( .A(rptr_nxt[3]), .B(binary_nxt[2]), .Y(rptr_nxt[2]) );
  XNOR2X1 U13 ( .A(n10), .B(binary_r[3]), .Y(rptr_nxt[3]) );
  NAND2X1 U14 ( .A(binary_r[2]), .B(n11), .Y(n10) );
  XOR2X1 U15 ( .A(binary_nxt[2]), .B(binary_nxt[1]), .Y(rptr_nxt[1]) );
  XOR2X1 U16 ( .A(binary_nxt[1]), .B(binary_nxt[0]), .Y(rptr_nxt[0]) );
  XOR2X1 U17 ( .A(binary_r[2]), .B(n11), .Y(binary_nxt[2]) );
  NOR2X1 U18 ( .A(n9), .B(n12), .Y(n11) );
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
  wire   renable_p2, \gray_rptr[2] , N3, n15, n16, n17, n18, n19, n20, n21,
         n22;
  wire   [3:0] rptr_nxt;
  wire   [3:0] rwptr_r2;
  wire   [3:0] rwptr_r1;

  read_ptr RPU1 ( .rclk(rclk), .rst_n(rst_n), .renable(renable_p2), .rptr(rptr), .rptr_nxt(rptr_nxt) );
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
  INVX2 U15 ( .A(renable), .Y(n15) );
  NOR2X1 U16 ( .A(empty_flag), .B(n15), .Y(renable_p2) );
  NOR2X1 U17 ( .A(n16), .B(n17), .Y(N3) );
  NAND2X1 U18 ( .A(n18), .B(n19), .Y(n17) );
  XNOR2X1 U19 ( .A(rwptr_r2[1]), .B(rptr_nxt[1]), .Y(n19) );
  XOR2X1 U20 ( .A(n20), .B(\gray_rptr[2] ), .Y(n18) );
  XOR2X1 U21 ( .A(rptr_nxt[3]), .B(rptr_nxt[2]), .Y(\gray_rptr[2] ) );
  XNOR2X1 U22 ( .A(rwptr_r2[3]), .B(rwptr_r2[2]), .Y(n20) );
  NAND2X1 U23 ( .A(n21), .B(n22), .Y(n16) );
  XNOR2X1 U24 ( .A(rptr_nxt[3]), .B(rwptr_r2[3]), .Y(n22) );
  XNOR2X1 U25 ( .A(rwptr_r2[0]), .B(rptr_nxt[0]), .Y(n21) );
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


module RCV_FIFO ( CLK, RST_N, R_ENABLE, W_ENABLE, WDATA, R_DATA, EMPTY, FULL
 );
  input [7:0] WDATA;
  output [7:0] R_DATA;
  input CLK, RST_N, R_ENABLE, W_ENABLE;
  output EMPTY, FULL;


  fifo FIFOMAP ( .rclk(CLK), .wclk(CLK), .rst_n(RST_N), .renable(R_ENABLE), 
        .wenable(W_ENABLE), .wdata(WDATA), .rdata(R_DATA), .empty(EMPTY), 
        .full(FULL) );
endmodule


module decode ( CLK, RST_N, D_PLUS, SHIFT_ENABLE, EOP, D_ORIG );
  input CLK, RST_N, D_PLUS, SHIFT_ENABLE, EOP;
  output D_ORIG;
  wire   A, B, n4, n5, n6, n7, n8;

  DFFSR A_reg ( .D(n7), .CLK(CLK), .R(1'b1), .S(RST_N), .Q(A) );
  DFFSR B_reg ( .D(D_PLUS), .CLK(CLK), .R(1'b1), .S(RST_N), .Q(B) );
  DFFSR D_ORIG_reg ( .D(n8), .CLK(CLK), .R(1'b1), .S(RST_N), .Q(D_ORIG) );
  INVX2 U6 ( .A(D_PLUS), .Y(n4) );
  INVX2 U7 ( .A(SHIFT_ENABLE), .Y(n5) );
  OAI21X1 U8 ( .A(n4), .B(n5), .C(n6), .Y(n7) );
  AOI21X1 U9 ( .A(A), .B(n5), .C(EOP), .Y(n6) );
  XNOR2X1 U10 ( .A(A), .B(B), .Y(n8) );
endmodule


module edge_detect ( CLK, RST_N, D_PLUS, D_EDGE );
  input CLK, RST_N, D_PLUS;
  output D_EDGE;
  wire   A, B, N0;

  DFFSR A_reg ( .D(D_PLUS), .CLK(CLK), .R(1'b1), .S(RST_N), .Q(A) );
  DFFSR B_reg ( .D(A), .CLK(CLK), .R(1'b1), .S(RST_N), .Q(B) );
  DFFSR D_EDGE_reg ( .D(N0), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(D_EDGE) );
  XOR2X1 U6 ( .A(B), .B(A), .Y(N0) );
endmodule


module eop_detect ( D_PLUS, D_MINUS, EOP );
  input D_PLUS, D_MINUS;
  output EOP;


  NOR2X1 U1 ( .A(D_PLUS), .B(D_MINUS), .Y(EOP) );
endmodule


module rcu ( CLK, RST_N, D_EDGE, EOP, SHIFT_ENABLE, RCV_DATA, RCVING, W_ENABLE, 
        R_ERROR );
  input [7:0] RCV_DATA;
  input CLK, RST_N, D_EDGE, EOP, SHIFT_ENABLE;
  output RCVING, W_ENABLE, R_ERROR;
  wire   n9, n10, n11, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n16;
  wire   [3:0] state;
  wire   [3:0] cnt;

  DFFSR \cnt_reg[0]  ( .D(n98), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(cnt[0]) );
  DFFSR \cnt_reg[3]  ( .D(n97), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(cnt[3]) );
  DFFSR \state_reg[0]  ( .D(n95), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(state[0])
         );
  DFFSR \state_reg[3]  ( .D(n96), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(state[3])
         );
  DFFSR \state_reg[2]  ( .D(n10), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(state[2])
         );
  DFFSR \state_reg[1]  ( .D(n94), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(state[1])
         );
  DFFSR \cnt_reg[1]  ( .D(n13), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(cnt[1]) );
  DFFSR \cnt_reg[2]  ( .D(n93), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(cnt[2]) );
  AND2X2 U11 ( .A(n39), .B(n40), .Y(n38) );
  AND2X2 U12 ( .A(n57), .B(n58), .Y(n56) );
  AND2X2 U13 ( .A(n79), .B(n80), .Y(n78) );
  AND2X2 U14 ( .A(n40), .B(n48), .Y(n62) );
  AND2X2 U15 ( .A(n67), .B(n42), .Y(n64) );
  INVX2 U16 ( .A(n46), .Y(n9) );
  INVX2 U17 ( .A(n43), .Y(n10) );
  INVX2 U18 ( .A(n63), .Y(n11) );
  INVX2 U19 ( .A(n87), .Y(n12) );
  INVX2 U20 ( .A(n33), .Y(n13) );
  INVX2 U21 ( .A(n86), .Y(n14) );
  INVX2 U22 ( .A(n73), .Y(n15) );
  INVX2 U23 ( .A(n41), .Y(W_ENABLE) );
  INVX2 U24 ( .A(n44), .Y(n17) );
  INVX2 U25 ( .A(n52), .Y(n18) );
  INVX2 U26 ( .A(state[2]), .Y(n19) );
  INVX2 U27 ( .A(n74), .Y(n20) );
  INVX2 U28 ( .A(state[1]), .Y(n21) );
  INVX2 U29 ( .A(n16), .Y(n22) );
  INVX2 U30 ( .A(cnt[3]), .Y(n23) );
  INVX2 U31 ( .A(cnt[2]), .Y(n24) );
  INVX2 U32 ( .A(cnt[1]), .Y(n25) );
  INVX2 U33 ( .A(cnt[0]), .Y(n26) );
  INVX2 U34 ( .A(D_EDGE), .Y(n27) );
  INVX2 U35 ( .A(EOP), .Y(n28) );
  INVX2 U36 ( .A(RCV_DATA[7]), .Y(n29) );
  OAI21X1 U37 ( .A(n30), .B(n24), .C(n31), .Y(n93) );
  NAND3X1 U38 ( .A(n32), .B(n24), .C(cnt[1]), .Y(n31) );
  AOI22X1 U39 ( .A(n34), .B(cnt[1]), .C(n25), .D(n32), .Y(n33) );
  OAI21X1 U40 ( .A(n11), .B(n21), .C(n35), .Y(n94) );
  OAI21X1 U41 ( .A(n36), .B(n37), .C(n11), .Y(n35) );
  OAI21X1 U42 ( .A(EOP), .B(n38), .C(n18), .Y(n37) );
  NAND2X1 U43 ( .A(n41), .B(n42), .Y(n36) );
  OAI21X1 U44 ( .A(n44), .B(n45), .C(n28), .Y(n43) );
  OAI21X1 U45 ( .A(n46), .B(n47), .C(n48), .Y(n45) );
  OAI21X1 U46 ( .A(n11), .B(n22), .C(n49), .Y(n95) );
  OAI21X1 U47 ( .A(n50), .B(n51), .C(n11), .Y(n49) );
  OAI21X1 U48 ( .A(n28), .B(n41), .C(n18), .Y(n51) );
  OAI21X1 U49 ( .A(n53), .B(n28), .C(n54), .Y(n52) );
  OAI21X1 U50 ( .A(EOP), .B(n55), .C(n56), .Y(n50) );
  AOI22X1 U51 ( .A(n59), .B(n60), .C(n9), .D(n47), .Y(n55) );
  NOR2X1 U52 ( .A(cnt[0]), .B(n61), .Y(n60) );
  NAND2X1 U53 ( .A(n25), .B(n24), .Y(n61) );
  NOR2X1 U54 ( .A(n62), .B(n23), .Y(n59) );
  NAND3X1 U55 ( .A(n64), .B(n65), .C(n66), .Y(n96) );
  AOI22X1 U56 ( .A(n9), .B(n47), .C(state[3]), .D(n63), .Y(n66) );
  OAI21X1 U57 ( .A(EOP), .B(n67), .C(n68), .Y(n63) );
  OAI21X1 U58 ( .A(n69), .B(n70), .C(n27), .Y(n68) );
  NAND2X1 U59 ( .A(n58), .B(n42), .Y(n70) );
  NAND2X1 U60 ( .A(n71), .B(n72), .Y(n58) );
  OAI21X1 U61 ( .A(n73), .B(n74), .C(n57), .Y(n69) );
  NAND2X1 U62 ( .A(n75), .B(n15), .Y(n57) );
  NAND3X1 U63 ( .A(n76), .B(n77), .C(n78), .Y(n47) );
  NOR2X1 U64 ( .A(RCV_DATA[6]), .B(RCV_DATA[5]), .Y(n80) );
  NOR2X1 U65 ( .A(RCV_DATA[4]), .B(RCV_DATA[3]), .Y(n79) );
  NOR2X1 U66 ( .A(RCV_DATA[2]), .B(RCV_DATA[1]), .Y(n77) );
  NOR2X1 U67 ( .A(RCV_DATA[0]), .B(n29), .Y(n76) );
  OAI21X1 U68 ( .A(n81), .B(n82), .C(EOP), .Y(n65) );
  NAND2X1 U69 ( .A(n62), .B(n17), .Y(n82) );
  NAND3X1 U70 ( .A(n54), .B(n41), .C(n53), .Y(n44) );
  NAND2X1 U71 ( .A(n83), .B(n20), .Y(n53) );
  NAND2X1 U72 ( .A(n83), .B(n75), .Y(n54) );
  NAND2X1 U73 ( .A(n83), .B(n72), .Y(n48) );
  NAND2X1 U74 ( .A(n71), .B(n75), .Y(n40) );
  NOR2X1 U75 ( .A(n21), .B(n16), .Y(n75) );
  NAND2X1 U76 ( .A(n46), .B(n39), .Y(n81) );
  NAND3X1 U77 ( .A(n16), .B(n21), .C(n71), .Y(n39) );
  NAND2X1 U78 ( .A(n71), .B(n20), .Y(n46) );
  NOR2X1 U79 ( .A(state[2]), .B(state[3]), .Y(n71) );
  NAND2X1 U80 ( .A(n72), .B(n15), .Y(n42) );
  NOR2X1 U81 ( .A(n16), .B(state[1]), .Y(n72) );
  NAND3X1 U82 ( .A(n15), .B(n21), .C(n16), .Y(n67) );
  OAI21X1 U83 ( .A(n12), .B(n23), .C(n84), .Y(n97) );
  NAND3X1 U84 ( .A(n32), .B(n23), .C(n85), .Y(n84) );
  NOR2X1 U85 ( .A(n25), .B(n24), .Y(n85) );
  NOR2X1 U86 ( .A(n26), .B(n86), .Y(n32) );
  OAI21X1 U87 ( .A(n86), .B(cnt[2]), .C(n30), .Y(n87) );
  AOI21X1 U88 ( .A(n25), .B(n14), .C(n34), .Y(n30) );
  OAI21X1 U89 ( .A(cnt[0]), .B(n86), .C(n88), .Y(n34) );
  OAI22X1 U90 ( .A(n26), .B(n88), .C(cnt[0]), .D(n86), .Y(n98) );
  NAND3X1 U91 ( .A(n89), .B(n86), .C(n90), .Y(n88) );
  NAND3X1 U92 ( .A(SHIFT_ENABLE), .B(n89), .C(n90), .Y(n86) );
  NOR2X1 U93 ( .A(state[3]), .B(n16), .Y(n90) );
  XOR2X1 U94 ( .A(state[2]), .B(state[1]), .Y(n89) );
  NAND3X1 U95 ( .A(n16), .B(n21), .C(n83), .Y(n41) );
  NOR2X1 U96 ( .A(n20), .B(n73), .Y(R_ERROR) );
  NAND2X1 U97 ( .A(state[3]), .B(n19), .Y(n73) );
  NAND2X1 U98 ( .A(n16), .B(state[1]), .Y(n74) );
  OAI21X1 U99 ( .A(state[3]), .B(n21), .C(n91), .Y(RCVING) );
  AOI21X1 U100 ( .A(n92), .B(n16), .C(n83), .Y(n91) );
  NOR2X1 U101 ( .A(n19), .B(state[3]), .Y(n83) );
  NOR2X1 U102 ( .A(state[2]), .B(state[1]), .Y(n92) );
  BUFX2 U103 ( .A(state[0]), .Y(n16) );
endmodule


module shift_reg ( CLK, RST_N, SHIFT_ENABLE, D_ORIG, RCV_DATA );
  output [7:0] RCV_DATA;
  input CLK, RST_N, SHIFT_ENABLE, D_ORIG;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n14, n16, n18, n20, n22,
         n24, n26;

  DFFSR \tData_reg[7]  ( .D(n26), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(
        RCV_DATA[7]) );
  DFFSR \tData_reg[6]  ( .D(n24), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(
        RCV_DATA[6]) );
  DFFSR \tData_reg[5]  ( .D(n22), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(
        RCV_DATA[5]) );
  DFFSR \tData_reg[4]  ( .D(n20), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(
        RCV_DATA[4]) );
  DFFSR \tData_reg[3]  ( .D(n18), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(
        RCV_DATA[3]) );
  DFFSR \tData_reg[2]  ( .D(n16), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(
        RCV_DATA[2]) );
  DFFSR \tData_reg[1]  ( .D(n14), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(
        RCV_DATA[1]) );
  DFFSR \tData_reg[0]  ( .D(n12), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(
        RCV_DATA[0]) );
  OAI21X1 U2 ( .A(n1), .B(n2), .C(n3), .Y(n12) );
  NAND2X1 U3 ( .A(RCV_DATA[0]), .B(n2), .Y(n3) );
  OAI22X1 U4 ( .A(n2), .B(n4), .C(SHIFT_ENABLE), .D(n1), .Y(n14) );
  INVX1 U5 ( .A(RCV_DATA[1]), .Y(n1) );
  OAI22X1 U6 ( .A(n2), .B(n5), .C(SHIFT_ENABLE), .D(n4), .Y(n16) );
  INVX1 U7 ( .A(RCV_DATA[2]), .Y(n4) );
  OAI22X1 U8 ( .A(n2), .B(n6), .C(SHIFT_ENABLE), .D(n5), .Y(n18) );
  INVX1 U9 ( .A(RCV_DATA[3]), .Y(n5) );
  OAI22X1 U10 ( .A(n2), .B(n7), .C(SHIFT_ENABLE), .D(n6), .Y(n20) );
  INVX1 U11 ( .A(RCV_DATA[4]), .Y(n6) );
  OAI22X1 U12 ( .A(n2), .B(n8), .C(SHIFT_ENABLE), .D(n7), .Y(n22) );
  INVX1 U13 ( .A(RCV_DATA[5]), .Y(n7) );
  OAI22X1 U14 ( .A(n2), .B(n9), .C(SHIFT_ENABLE), .D(n8), .Y(n24) );
  INVX1 U15 ( .A(RCV_DATA[6]), .Y(n8) );
  INVX1 U16 ( .A(SHIFT_ENABLE), .Y(n2) );
  OAI21X1 U17 ( .A(SHIFT_ENABLE), .B(n9), .C(n10), .Y(n26) );
  NAND2X1 U18 ( .A(D_ORIG), .B(SHIFT_ENABLE), .Y(n10) );
  INVX1 U19 ( .A(RCV_DATA[7]), .Y(n9) );
endmodule


module timer ( CLK, RST_N, D_EDGE, RCVING, SHIFT_ENABLE );
  input CLK, RST_N, D_EDGE, RCVING;
  output SHIFT_ENABLE;
  wire   strobeh, N33, N34, N35, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;
  wire   [1:0] state;
  wire   [2:0] cnt4;

  DFFSR \cnt4_reg[0]  ( .D(N33), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(cnt4[0])
         );
  DFFSR strobeh_reg ( .D(n32), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(strobeh) );
  DFFSR \state_reg[0]  ( .D(n30), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(state[0])
         );
  DFFSR \state_reg[1]  ( .D(n31), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(state[1])
         );
  DFFSR \cnt4_reg[1]  ( .D(N34), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(cnt4[1])
         );
  DFFSR \cnt4_reg[2]  ( .D(N35), .CLK(CLK), .R(RST_N), .S(1'b1), .Q(cnt4[2])
         );
  INVX2 U9 ( .A(n17), .Y(SHIFT_ENABLE) );
  INVX2 U10 ( .A(n26), .Y(n8) );
  INVX2 U11 ( .A(state[0]), .Y(n9) );
  INVX2 U12 ( .A(cnt4[2]), .Y(n10) );
  INVX2 U13 ( .A(cnt4[1]), .Y(n11) );
  INVX2 U14 ( .A(cnt4[0]), .Y(n12) );
  INVX2 U15 ( .A(D_EDGE), .Y(n13) );
  INVX2 U16 ( .A(RCVING), .Y(n14) );
  AOI21X1 U17 ( .A(state[1]), .B(n15), .C(n14), .Y(n30) );
  OAI21X1 U18 ( .A(strobeh), .B(D_EDGE), .C(n9), .Y(n15) );
  OAI21X1 U19 ( .A(n14), .B(n16), .C(n17), .Y(n31) );
  OAI21X1 U20 ( .A(n13), .B(n18), .C(n19), .Y(n32) );
  NAND3X1 U21 ( .A(n8), .B(n11), .C(n20), .Y(n19) );
  NOR2X1 U22 ( .A(n12), .B(n10), .Y(n20) );
  OAI21X1 U23 ( .A(n21), .B(n22), .C(strobeh), .Y(n18) );
  NAND2X1 U24 ( .A(n8), .B(n12), .Y(n22) );
  NAND2X1 U25 ( .A(n11), .B(n10), .Y(n21) );
  NAND2X1 U26 ( .A(state[0]), .B(state[1]), .Y(n17) );
  NOR2X1 U27 ( .A(n23), .B(n16), .Y(N35) );
  AOI22X1 U28 ( .A(n24), .B(cnt4[1]), .C(cnt4[2]), .D(n12), .Y(n23) );
  NOR2X1 U29 ( .A(cnt4[2]), .B(n12), .Y(n24) );
  NOR2X1 U30 ( .A(n25), .B(n16), .Y(N34) );
  NAND2X1 U31 ( .A(n8), .B(n13), .Y(n16) );
  AOI22X1 U32 ( .A(n27), .B(cnt4[0]), .C(cnt4[1]), .D(n12), .Y(n25) );
  NOR2X1 U33 ( .A(cnt4[2]), .B(cnt4[1]), .Y(n27) );
  NOR2X1 U34 ( .A(n26), .B(n28), .Y(N33) );
  NAND2X1 U35 ( .A(n29), .B(n12), .Y(n28) );
  OAI21X1 U36 ( .A(cnt4[2]), .B(cnt4[1]), .C(D_EDGE), .Y(n29) );
  XOR2X1 U37 ( .A(n9), .B(state[1]), .Y(n26) );
endmodule


module USB_RCVR ( CLK, D_MINUS, D_PLUS, RST_N, R_ENABLE, EMPTY, FULL, RCVING, 
        R_DATA, R_ERROR );
  output [7:0] R_DATA;
  input CLK, D_MINUS, D_PLUS, RST_N, R_ENABLE;
  output EMPTY, FULL, RCVING, R_ERROR;
  wire   W_ENABLE, EOP, SHIFT_ENABLE, D_ORIG, D_EDGE;
  wire   [7:0] RCV_DATA;

  RCV_FIFO U_3 ( .CLK(CLK), .RST_N(RST_N), .R_ENABLE(R_ENABLE), .W_ENABLE(
        W_ENABLE), .WDATA(RCV_DATA), .R_DATA(R_DATA), .EMPTY(EMPTY), .FULL(
        FULL) );
  decode U_6 ( .CLK(CLK), .RST_N(RST_N), .D_PLUS(D_PLUS), .SHIFT_ENABLE(
        SHIFT_ENABLE), .EOP(EOP), .D_ORIG(D_ORIG) );
  edge_detect U_5 ( .CLK(CLK), .RST_N(RST_N), .D_PLUS(D_PLUS), .D_EDGE(D_EDGE)
         );
  eop_detect U_4 ( .D_PLUS(D_PLUS), .D_MINUS(D_MINUS), .EOP(EOP) );
  rcu U_2 ( .CLK(CLK), .RST_N(RST_N), .D_EDGE(D_EDGE), .EOP(EOP), 
        .SHIFT_ENABLE(SHIFT_ENABLE), .RCV_DATA(RCV_DATA), .RCVING(RCVING), 
        .W_ENABLE(W_ENABLE), .R_ERROR(R_ERROR) );
  shift_reg U_1 ( .CLK(CLK), .RST_N(RST_N), .SHIFT_ENABLE(SHIFT_ENABLE), 
        .D_ORIG(D_ORIG), .RCV_DATA(RCV_DATA) );
  timer U_0 ( .CLK(CLK), .RST_N(RST_N), .D_EDGE(D_EDGE), .RCVING(RCVING), 
        .SHIFT_ENABLE(SHIFT_ENABLE) );
endmodule

