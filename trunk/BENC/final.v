module fiforam_2 (
	wclk, 
	wenable, 
	waddr, 
	raddr, 
	wdata, 
	rdata, 
	CLK__L4_N13, 
	CLK__L4_N16, 
	CLK__L4_N5, 
	CLK__L4_N6, 
	CLK__L4_N7);
   input wclk;
   input wenable;
   input [2:0] waddr;
   input [2:0] raddr;
   input [7:0] wdata;
   output [7:0] rdata;
   input CLK__L4_N13;
   input CLK__L4_N16;
   input CLK__L4_N5;
   input CLK__L4_N6;
   input CLK__L4_N7;

   // Internal wires
   wire FE_OFN1459_n101;
   wire FE_OFN1354_n105;
   wire FE_OFN1353_n97;
   wire FE_OFN1352_n107;
   wire FE_OFN1351_n103;
   wire FE_OFN1350_n100;
   wire FE_OFN1349_n100;
   wire FE_OFN1348_n98;
   wire FE_OFN1347_n98;
   wire FE_OFN1346_n101;
   wire FE_OFN1344_n99;
   wire FE_OFN1343_n99;
   wire FE_OFN1342_n99;
   wire FE_OFN1341_n19;
   wire FE_OFN1340_n15;
   wire FE_OFN1339_n17;
   wire FE_OFN1338_n13;
   wire FE_OFN1316_n184;
   wire FE_OFN1314_n173;
   wire FE_OFN1313_n162;
   wire FE_OFN1312_n151;
   wire FE_OFN1310_n140;
   wire FE_OFN1308_n129;
   wire FE_OFN1307_n118;
   wire FE_OFN1305_n95;
   wire \fiforeg[0][7] ;
   wire \fiforeg[0][6] ;
   wire \fiforeg[0][5] ;
   wire \fiforeg[0][4] ;
   wire \fiforeg[0][3] ;
   wire \fiforeg[0][2] ;
   wire \fiforeg[0][1] ;
   wire \fiforeg[0][0] ;
   wire \fiforeg[1][7] ;
   wire \fiforeg[1][6] ;
   wire \fiforeg[1][5] ;
   wire \fiforeg[1][4] ;
   wire \fiforeg[1][3] ;
   wire \fiforeg[1][2] ;
   wire \fiforeg[1][1] ;
   wire \fiforeg[1][0] ;
   wire \fiforeg[2][7] ;
   wire \fiforeg[2][6] ;
   wire \fiforeg[2][5] ;
   wire \fiforeg[2][4] ;
   wire \fiforeg[2][3] ;
   wire \fiforeg[2][2] ;
   wire \fiforeg[2][1] ;
   wire \fiforeg[2][0] ;
   wire \fiforeg[3][7] ;
   wire \fiforeg[3][6] ;
   wire \fiforeg[3][5] ;
   wire \fiforeg[3][4] ;
   wire \fiforeg[3][3] ;
   wire \fiforeg[3][2] ;
   wire \fiforeg[3][1] ;
   wire \fiforeg[3][0] ;
   wire \fiforeg[4][7] ;
   wire \fiforeg[4][6] ;
   wire \fiforeg[4][5] ;
   wire \fiforeg[4][4] ;
   wire \fiforeg[4][3] ;
   wire \fiforeg[4][2] ;
   wire \fiforeg[4][1] ;
   wire \fiforeg[4][0] ;
   wire \fiforeg[5][7] ;
   wire \fiforeg[5][6] ;
   wire \fiforeg[5][5] ;
   wire \fiforeg[5][4] ;
   wire \fiforeg[5][3] ;
   wire \fiforeg[5][2] ;
   wire \fiforeg[5][1] ;
   wire \fiforeg[5][0] ;
   wire \fiforeg[6][7] ;
   wire \fiforeg[6][6] ;
   wire \fiforeg[6][5] ;
   wire \fiforeg[6][4] ;
   wire \fiforeg[6][3] ;
   wire \fiforeg[6][2] ;
   wire \fiforeg[6][1] ;
   wire \fiforeg[6][0] ;
   wire \fiforeg[7][7] ;
   wire \fiforeg[7][6] ;
   wire \fiforeg[7][5] ;
   wire \fiforeg[7][4] ;
   wire \fiforeg[7][3] ;
   wire \fiforeg[7][2] ;
   wire \fiforeg[7][1] ;
   wire \fiforeg[7][0] ;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;

   BUFX2 FE_OFC1459_n101 (.Y(FE_OFN1459_n101), 
	.A(n101));
   BUFX4 FE_OFC1354_n105 (.Y(FE_OFN1354_n105), 
	.A(n105));
   BUFX4 FE_OFC1353_n97 (.Y(FE_OFN1353_n97), 
	.A(n97));
   BUFX4 FE_OFC1352_n107 (.Y(FE_OFN1352_n107), 
	.A(n107));
   BUFX4 FE_OFC1351_n103 (.Y(FE_OFN1351_n103), 
	.A(n103));
   INVX8 FE_OFC1350_n100 (.Y(FE_OFN1350_n100), 
	.A(FE_OFN1349_n100));
   INVX1 FE_OFC1349_n100 (.Y(FE_OFN1349_n100), 
	.A(n100));
   INVX8 FE_OFC1348_n98 (.Y(FE_OFN1348_n98), 
	.A(FE_OFN1347_n98));
   INVX1 FE_OFC1347_n98 (.Y(FE_OFN1347_n98), 
	.A(n98));
   BUFX4 FE_OFC1346_n101 (.Y(FE_OFN1346_n101), 
	.A(FE_OFN1459_n101));
   INVX4 FE_OFC1344_n99 (.Y(FE_OFN1344_n99), 
	.A(FE_OFN1342_n99));
   BUFX2 FE_OFC1343_n99 (.Y(FE_OFN1343_n99), 
	.A(n99));
   INVX1 FE_OFC1342_n99 (.Y(FE_OFN1342_n99), 
	.A(n99));
   BUFX4 FE_OFC1341_n19 (.Y(FE_OFN1341_n19), 
	.A(n19));
   BUFX4 FE_OFC1340_n15 (.Y(FE_OFN1340_n15), 
	.A(n15));
   BUFX4 FE_OFC1339_n17 (.Y(FE_OFN1339_n17), 
	.A(n17));
   BUFX4 FE_OFC1338_n13 (.Y(FE_OFN1338_n13), 
	.A(n13));
   BUFX2 FE_OFC1316_n184 (.Y(FE_OFN1316_n184), 
	.A(n184));
   BUFX2 FE_OFC1314_n173 (.Y(FE_OFN1314_n173), 
	.A(n173));
   BUFX2 FE_OFC1313_n162 (.Y(FE_OFN1313_n162), 
	.A(n162));
   BUFX2 FE_OFC1312_n151 (.Y(FE_OFN1312_n151), 
	.A(n151));
   BUFX2 FE_OFC1310_n140 (.Y(FE_OFN1310_n140), 
	.A(n140));
   BUFX2 FE_OFC1308_n129 (.Y(FE_OFN1308_n129), 
	.A(n129));
   BUFX2 FE_OFC1307_n118 (.Y(FE_OFN1307_n118), 
	.A(n118));
   BUFX2 FE_OFC1305_n95 (.Y(FE_OFN1305_n95), 
	.A(n95));
   DFFPOSX1 \fiforeg_reg[7][7]  (.Q(\fiforeg[7][7] ), 
	.D(n212), 
	.CLK(CLK__L4_N5));
   DFFPOSX1 \fiforeg_reg[6][7]  (.Q(\fiforeg[6][7] ), 
	.D(n213), 
	.CLK(CLK__L4_N7));
   DFFPOSX1 \fiforeg_reg[5][7]  (.Q(\fiforeg[5][7] ), 
	.D(n214), 
	.CLK(CLK__L4_N5));
   DFFPOSX1 \fiforeg_reg[4][7]  (.Q(\fiforeg[4][7] ), 
	.D(n215), 
	.CLK(CLK__L4_N7));
   DFFPOSX1 \fiforeg_reg[3][7]  (.Q(\fiforeg[3][7] ), 
	.D(n216), 
	.CLK(CLK__L4_N6));
   DFFPOSX1 \fiforeg_reg[2][7]  (.Q(\fiforeg[2][7] ), 
	.D(n217), 
	.CLK(CLK__L4_N6));
   DFFPOSX1 \fiforeg_reg[1][7]  (.Q(\fiforeg[1][7] ), 
	.D(n218), 
	.CLK(CLK__L4_N6));
   DFFPOSX1 \fiforeg_reg[0][7]  (.Q(\fiforeg[0][7] ), 
	.D(n219), 
	.CLK(CLK__L4_N6));
   DFFPOSX1 \fiforeg_reg[7][6]  (.Q(\fiforeg[7][6] ), 
	.D(n220), 
	.CLK(CLK__L4_N5));
   DFFPOSX1 \fiforeg_reg[6][6]  (.Q(\fiforeg[6][6] ), 
	.D(n221), 
	.CLK(CLK__L4_N7));
   DFFPOSX1 \fiforeg_reg[5][6]  (.Q(\fiforeg[5][6] ), 
	.D(n222), 
	.CLK(CLK__L4_N5));
   DFFPOSX1 \fiforeg_reg[4][6]  (.Q(\fiforeg[4][6] ), 
	.D(n223), 
	.CLK(CLK__L4_N5));
   DFFPOSX1 \fiforeg_reg[3][6]  (.Q(\fiforeg[3][6] ), 
	.D(n224), 
	.CLK(CLK__L4_N5));
   DFFPOSX1 \fiforeg_reg[2][6]  (.Q(\fiforeg[2][6] ), 
	.D(n225), 
	.CLK(CLK__L4_N5));
   DFFPOSX1 \fiforeg_reg[1][6]  (.Q(\fiforeg[1][6] ), 
	.D(n226), 
	.CLK(CLK__L4_N6));
   DFFPOSX1 \fiforeg_reg[0][6]  (.Q(\fiforeg[0][6] ), 
	.D(n227), 
	.CLK(CLK__L4_N6));
   DFFPOSX1 \fiforeg_reg[7][5]  (.Q(\fiforeg[7][5] ), 
	.D(n228), 
	.CLK(CLK__L4_N13));
   DFFPOSX1 \fiforeg_reg[6][5]  (.Q(\fiforeg[6][5] ), 
	.D(n229), 
	.CLK(CLK__L4_N7));
   DFFPOSX1 \fiforeg_reg[5][5]  (.Q(\fiforeg[5][5] ), 
	.D(n230), 
	.CLK(CLK__L4_N7));
   DFFPOSX1 \fiforeg_reg[4][5]  (.Q(\fiforeg[4][5] ), 
	.D(n231), 
	.CLK(CLK__L4_N13));
   DFFPOSX1 \fiforeg_reg[3][5]  (.Q(\fiforeg[3][5] ), 
	.D(n232), 
	.CLK(CLK__L4_N13));
   DFFPOSX1 \fiforeg_reg[2][5]  (.Q(\fiforeg[2][5] ), 
	.D(n233), 
	.CLK(CLK__L4_N13));
   DFFPOSX1 \fiforeg_reg[1][5]  (.Q(\fiforeg[1][5] ), 
	.D(n234), 
	.CLK(CLK__L4_N13));
   DFFPOSX1 \fiforeg_reg[0][5]  (.Q(\fiforeg[0][5] ), 
	.D(n235), 
	.CLK(CLK__L4_N13));
   DFFPOSX1 \fiforeg_reg[7][4]  (.Q(\fiforeg[7][4] ), 
	.D(n236), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[6][4]  (.Q(\fiforeg[6][4] ), 
	.D(n237), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[5][4]  (.Q(\fiforeg[5][4] ), 
	.D(n238), 
	.CLK(CLK__L4_N16));
   DFFPOSX1 \fiforeg_reg[4][4]  (.Q(\fiforeg[4][4] ), 
	.D(n239), 
	.CLK(CLK__L4_N13));
   DFFPOSX1 \fiforeg_reg[3][4]  (.Q(\fiforeg[3][4] ), 
	.D(n240), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[2][4]  (.Q(\fiforeg[2][4] ), 
	.D(n241), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[1][4]  (.Q(\fiforeg[1][4] ), 
	.D(n242), 
	.CLK(CLK__L4_N16));
   DFFPOSX1 \fiforeg_reg[0][4]  (.Q(\fiforeg[0][4] ), 
	.D(n243), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[7][3]  (.Q(\fiforeg[7][3] ), 
	.D(n244), 
	.CLK(CLK__L4_N7));
   DFFPOSX1 \fiforeg_reg[6][3]  (.Q(\fiforeg[6][3] ), 
	.D(n245), 
	.CLK(CLK__L4_N7));
   DFFPOSX1 \fiforeg_reg[5][3]  (.Q(\fiforeg[5][3] ), 
	.D(n246), 
	.CLK(CLK__L4_N7));
   DFFPOSX1 \fiforeg_reg[4][3]  (.Q(\fiforeg[4][3] ), 
	.D(n247), 
	.CLK(CLK__L4_N7));
   DFFPOSX1 \fiforeg_reg[3][3]  (.Q(\fiforeg[3][3] ), 
	.D(n248), 
	.CLK(CLK__L4_N6));
   DFFPOSX1 \fiforeg_reg[2][3]  (.Q(\fiforeg[2][3] ), 
	.D(n249), 
	.CLK(CLK__L4_N6));
   DFFPOSX1 \fiforeg_reg[1][3]  (.Q(\fiforeg[1][3] ), 
	.D(n250), 
	.CLK(CLK__L4_N5));
   DFFPOSX1 \fiforeg_reg[0][3]  (.Q(\fiforeg[0][3] ), 
	.D(n251), 
	.CLK(CLK__L4_N5));
   DFFPOSX1 \fiforeg_reg[7][2]  (.Q(\fiforeg[7][2] ), 
	.D(n252), 
	.CLK(CLK__L4_N16));
   DFFPOSX1 \fiforeg_reg[6][2]  (.Q(\fiforeg[6][2] ), 
	.D(n253), 
	.CLK(CLK__L4_N7));
   DFFPOSX1 \fiforeg_reg[5][2]  (.Q(\fiforeg[5][2] ), 
	.D(n254), 
	.CLK(CLK__L4_N16));
   DFFPOSX1 \fiforeg_reg[4][2]  (.Q(\fiforeg[4][2] ), 
	.D(n255), 
	.CLK(CLK__L4_N7));
   DFFPOSX1 \fiforeg_reg[3][2]  (.Q(\fiforeg[3][2] ), 
	.D(n256), 
	.CLK(CLK__L4_N16));
   DFFPOSX1 \fiforeg_reg[2][2]  (.Q(\fiforeg[2][2] ), 
	.D(n257), 
	.CLK(CLK__L4_N16));
   DFFPOSX1 \fiforeg_reg[1][2]  (.Q(\fiforeg[1][2] ), 
	.D(n258), 
	.CLK(CLK__L4_N16));
   DFFPOSX1 \fiforeg_reg[0][2]  (.Q(\fiforeg[0][2] ), 
	.D(n259), 
	.CLK(CLK__L4_N16));
   DFFPOSX1 \fiforeg_reg[7][1]  (.Q(\fiforeg[7][1] ), 
	.D(n260), 
	.CLK(CLK__L4_N13));
   DFFPOSX1 \fiforeg_reg[6][1]  (.Q(\fiforeg[6][1] ), 
	.D(n261), 
	.CLK(CLK__L4_N13));
   DFFPOSX1 \fiforeg_reg[5][1]  (.Q(\fiforeg[5][1] ), 
	.D(n262), 
	.CLK(CLK__L4_N16));
   DFFPOSX1 \fiforeg_reg[4][1]  (.Q(\fiforeg[4][1] ), 
	.D(n263), 
	.CLK(CLK__L4_N7));
   DFFPOSX1 \fiforeg_reg[3][1]  (.Q(\fiforeg[3][1] ), 
	.D(n264), 
	.CLK(CLK__L4_N16));
   DFFPOSX1 \fiforeg_reg[2][1]  (.Q(\fiforeg[2][1] ), 
	.D(n265), 
	.CLK(CLK__L4_N16));
   DFFPOSX1 \fiforeg_reg[1][1]  (.Q(\fiforeg[1][1] ), 
	.D(n266), 
	.CLK(CLK__L4_N16));
   DFFPOSX1 \fiforeg_reg[0][1]  (.Q(\fiforeg[0][1] ), 
	.D(n267), 
	.CLK(CLK__L4_N16));
   DFFPOSX1 \fiforeg_reg[7][0]  (.Q(\fiforeg[7][0] ), 
	.D(n275), 
	.CLK(CLK__L4_N5));
   DFFPOSX1 \fiforeg_reg[6][0]  (.Q(\fiforeg[6][0] ), 
	.D(n268), 
	.CLK(CLK__L4_N7));
   DFFPOSX1 \fiforeg_reg[5][0]  (.Q(\fiforeg[5][0] ), 
	.D(n269), 
	.CLK(CLK__L4_N5));
   DFFPOSX1 \fiforeg_reg[4][0]  (.Q(\fiforeg[4][0] ), 
	.D(n270), 
	.CLK(CLK__L4_N5));
   DFFPOSX1 \fiforeg_reg[3][0]  (.Q(\fiforeg[3][0] ), 
	.D(n271), 
	.CLK(CLK__L4_N6));
   DFFPOSX1 \fiforeg_reg[2][0]  (.Q(\fiforeg[2][0] ), 
	.D(n272), 
	.CLK(CLK__L4_N6));
   DFFPOSX1 \fiforeg_reg[1][0]  (.Q(\fiforeg[1][0] ), 
	.D(n273), 
	.CLK(CLK__L4_N6));
   DFFPOSX1 \fiforeg_reg[0][0]  (.Q(\fiforeg[0][0] ), 
	.D(n274), 
	.CLK(CLK__L4_N6));
   NAND3X1 U9 (.Y(rdata[7]), 
	.C(n10), 
	.B(n9), 
	.A(n8));
   NOR2X1 U10 (.Y(n10), 
	.B(n12), 
	.A(n11));
   OAI22X1 U11 (.Y(n12), 
	.D(n16), 
	.C(FE_OFN1340_n15), 
	.B(n14), 
	.A(FE_OFN1338_n13));
   OAI22X1 U12 (.Y(n11), 
	.D(n20), 
	.C(FE_OFN1341_n19), 
	.B(n18), 
	.A(FE_OFN1339_n17));
   AOI22X1 U13 (.Y(n9), 
	.D(n22), 
	.C(\fiforeg[4][7] ), 
	.B(n21), 
	.A(\fiforeg[5][7] ));
   AOI22X1 U14 (.Y(n8), 
	.D(n24), 
	.C(\fiforeg[6][7] ), 
	.B(n23), 
	.A(\fiforeg[7][7] ));
   NAND3X1 U15 (.Y(rdata[6]), 
	.C(n27), 
	.B(n26), 
	.A(n25));
   NOR2X1 U16 (.Y(n27), 
	.B(n29), 
	.A(n28));
   OAI22X1 U17 (.Y(n29), 
	.D(n31), 
	.C(FE_OFN1340_n15), 
	.B(n30), 
	.A(FE_OFN1338_n13));
   OAI22X1 U18 (.Y(n28), 
	.D(n33), 
	.C(FE_OFN1341_n19), 
	.B(n32), 
	.A(FE_OFN1339_n17));
   AOI22X1 U19 (.Y(n26), 
	.D(n22), 
	.C(\fiforeg[4][6] ), 
	.B(n21), 
	.A(\fiforeg[5][6] ));
   AOI22X1 U20 (.Y(n25), 
	.D(n24), 
	.C(\fiforeg[6][6] ), 
	.B(n23), 
	.A(\fiforeg[7][6] ));
   NAND3X1 U21 (.Y(rdata[5]), 
	.C(n36), 
	.B(n35), 
	.A(n34));
   NOR2X1 U22 (.Y(n36), 
	.B(n38), 
	.A(n37));
   OAI22X1 U23 (.Y(n38), 
	.D(n40), 
	.C(FE_OFN1340_n15), 
	.B(n39), 
	.A(FE_OFN1338_n13));
   OAI22X1 U24 (.Y(n37), 
	.D(n42), 
	.C(FE_OFN1341_n19), 
	.B(n41), 
	.A(FE_OFN1339_n17));
   AOI22X1 U25 (.Y(n35), 
	.D(n22), 
	.C(\fiforeg[4][5] ), 
	.B(n21), 
	.A(\fiforeg[5][5] ));
   AOI22X1 U26 (.Y(n34), 
	.D(n24), 
	.C(\fiforeg[6][5] ), 
	.B(n23), 
	.A(\fiforeg[7][5] ));
   NAND3X1 U27 (.Y(rdata[4]), 
	.C(n45), 
	.B(n44), 
	.A(n43));
   NOR2X1 U28 (.Y(n45), 
	.B(n47), 
	.A(n46));
   OAI22X1 U29 (.Y(n47), 
	.D(n49), 
	.C(FE_OFN1340_n15), 
	.B(n48), 
	.A(FE_OFN1338_n13));
   OAI22X1 U30 (.Y(n46), 
	.D(n51), 
	.C(FE_OFN1341_n19), 
	.B(n50), 
	.A(FE_OFN1339_n17));
   AOI22X1 U31 (.Y(n44), 
	.D(n22), 
	.C(\fiforeg[4][4] ), 
	.B(n21), 
	.A(\fiforeg[5][4] ));
   AOI22X1 U32 (.Y(n43), 
	.D(n24), 
	.C(\fiforeg[6][4] ), 
	.B(n23), 
	.A(\fiforeg[7][4] ));
   NAND3X1 U33 (.Y(rdata[3]), 
	.C(n54), 
	.B(n53), 
	.A(n52));
   NOR2X1 U34 (.Y(n54), 
	.B(n56), 
	.A(n55));
   OAI22X1 U35 (.Y(n56), 
	.D(n58), 
	.C(FE_OFN1340_n15), 
	.B(n57), 
	.A(FE_OFN1338_n13));
   OAI22X1 U36 (.Y(n55), 
	.D(n60), 
	.C(FE_OFN1341_n19), 
	.B(n59), 
	.A(FE_OFN1339_n17));
   AOI22X1 U37 (.Y(n53), 
	.D(n22), 
	.C(\fiforeg[4][3] ), 
	.B(n21), 
	.A(\fiforeg[5][3] ));
   AOI22X1 U38 (.Y(n52), 
	.D(n24), 
	.C(\fiforeg[6][3] ), 
	.B(n23), 
	.A(\fiforeg[7][3] ));
   NAND3X1 U39 (.Y(rdata[2]), 
	.C(n63), 
	.B(n62), 
	.A(n61));
   NOR2X1 U40 (.Y(n63), 
	.B(n65), 
	.A(n64));
   OAI22X1 U41 (.Y(n65), 
	.D(n67), 
	.C(FE_OFN1340_n15), 
	.B(n66), 
	.A(FE_OFN1338_n13));
   OAI22X1 U42 (.Y(n64), 
	.D(n69), 
	.C(FE_OFN1341_n19), 
	.B(n68), 
	.A(FE_OFN1339_n17));
   AOI22X1 U43 (.Y(n62), 
	.D(n22), 
	.C(\fiforeg[4][2] ), 
	.B(n21), 
	.A(\fiforeg[5][2] ));
   AOI22X1 U44 (.Y(n61), 
	.D(n24), 
	.C(\fiforeg[6][2] ), 
	.B(n23), 
	.A(\fiforeg[7][2] ));
   NAND3X1 U45 (.Y(rdata[1]), 
	.C(n72), 
	.B(n71), 
	.A(n70));
   NOR2X1 U46 (.Y(n72), 
	.B(n74), 
	.A(n73));
   OAI22X1 U47 (.Y(n74), 
	.D(n76), 
	.C(FE_OFN1340_n15), 
	.B(n75), 
	.A(FE_OFN1338_n13));
   OAI22X1 U48 (.Y(n73), 
	.D(n78), 
	.C(FE_OFN1341_n19), 
	.B(n77), 
	.A(FE_OFN1339_n17));
   AOI22X1 U49 (.Y(n71), 
	.D(n22), 
	.C(\fiforeg[4][1] ), 
	.B(n21), 
	.A(\fiforeg[5][1] ));
   AOI22X1 U50 (.Y(n70), 
	.D(n24), 
	.C(\fiforeg[6][1] ), 
	.B(n23), 
	.A(\fiforeg[7][1] ));
   NAND3X1 U51 (.Y(rdata[0]), 
	.C(n81), 
	.B(n80), 
	.A(n79));
   NOR2X1 U52 (.Y(n81), 
	.B(n83), 
	.A(n82));
   OAI22X1 U53 (.Y(n83), 
	.D(n85), 
	.C(FE_OFN1340_n15), 
	.B(n84), 
	.A(FE_OFN1338_n13));
   NAND3X1 U54 (.Y(n15), 
	.C(n88), 
	.B(n87), 
	.A(n86));
   NAND3X1 U55 (.Y(n13), 
	.C(raddr[0]), 
	.B(n87), 
	.A(n86));
   OAI22X1 U56 (.Y(n82), 
	.D(n90), 
	.C(FE_OFN1341_n19), 
	.B(n89), 
	.A(FE_OFN1339_n17));
   NAND3X1 U57 (.Y(n19), 
	.C(raddr[1]), 
	.B(n87), 
	.A(n88));
   NAND3X1 U58 (.Y(n17), 
	.C(raddr[1]), 
	.B(n87), 
	.A(raddr[0]));
   INVX1 U59 (.Y(n87), 
	.A(raddr[2]));
   AOI22X1 U60 (.Y(n80), 
	.D(n22), 
	.C(\fiforeg[4][0] ), 
	.B(n21), 
	.A(\fiforeg[5][0] ));
   INVX4 U61 (.Y(n22), 
	.A(n91));
   NAND3X1 U62 (.Y(n91), 
	.C(raddr[2]), 
	.B(n86), 
	.A(n88));
   INVX4 U63 (.Y(n21), 
	.A(n92));
   NAND3X1 U64 (.Y(n92), 
	.C(raddr[2]), 
	.B(n86), 
	.A(raddr[0]));
   INVX1 U65 (.Y(n86), 
	.A(raddr[1]));
   AOI22X1 U66 (.Y(n79), 
	.D(n24), 
	.C(\fiforeg[6][0] ), 
	.B(n23), 
	.A(\fiforeg[7][0] ));
   INVX4 U67 (.Y(n24), 
	.A(n93));
   NAND3X1 U68 (.Y(n93), 
	.C(raddr[1]), 
	.B(n88), 
	.A(raddr[2]));
   INVX1 U69 (.Y(n88), 
	.A(raddr[0]));
   INVX4 U70 (.Y(n23), 
	.A(n94));
   NAND3X1 U71 (.Y(n94), 
	.C(raddr[1]), 
	.B(raddr[0]), 
	.A(raddr[2]));
   MUX2X1 U72 (.Y(n275), 
	.S(FE_OFN1353_n97), 
	.B(n95), 
	.A(n96));
   INVX1 U73 (.Y(n96), 
	.A(\fiforeg[7][0] ));
   MUX2X1 U74 (.Y(n274), 
	.S(FE_OFN1348_n98), 
	.B(FE_OFN1305_n95), 
	.A(n85));
   MUX2X1 U75 (.Y(n273), 
	.S(FE_OFN1344_n99), 
	.B(FE_OFN1305_n95), 
	.A(n84));
   MUX2X1 U76 (.Y(n272), 
	.S(FE_OFN1350_n100), 
	.B(FE_OFN1305_n95), 
	.A(n90));
   MUX2X1 U77 (.Y(n271), 
	.S(FE_OFN1346_n101), 
	.B(FE_OFN1305_n95), 
	.A(n89));
   MUX2X1 U78 (.Y(n270), 
	.S(FE_OFN1351_n103), 
	.B(n95), 
	.A(n102));
   INVX1 U79 (.Y(n102), 
	.A(\fiforeg[4][0] ));
   MUX2X1 U80 (.Y(n269), 
	.S(FE_OFN1354_n105), 
	.B(n95), 
	.A(n104));
   INVX1 U81 (.Y(n104), 
	.A(\fiforeg[5][0] ));
   MUX2X1 U82 (.Y(n268), 
	.S(FE_OFN1352_n107), 
	.B(n95), 
	.A(n106));
   INVX1 U83 (.Y(n106), 
	.A(\fiforeg[6][0] ));
   MUX2X1 U84 (.Y(n95), 
	.S(wenable), 
	.B(n108), 
	.A(wdata[0]));
   NAND3X1 U85 (.Y(n108), 
	.C(n111), 
	.B(n110), 
	.A(n109));
   NOR2X1 U86 (.Y(n111), 
	.B(n113), 
	.A(n112));
   OAI22X1 U87 (.Y(n113), 
	.D(FE_OFN1348_n98), 
	.C(n85), 
	.B(FE_OFN1344_n99), 
	.A(n84));
   INVX1 U88 (.Y(n85), 
	.A(\fiforeg[0][0] ));
   INVX1 U89 (.Y(n84), 
	.A(\fiforeg[1][0] ));
   OAI22X1 U90 (.Y(n112), 
	.D(FE_OFN1350_n100), 
	.C(n90), 
	.B(FE_OFN1346_n101), 
	.A(n89));
   INVX1 U91 (.Y(n90), 
	.A(\fiforeg[2][0] ));
   INVX1 U92 (.Y(n89), 
	.A(\fiforeg[3][0] ));
   AOI22X1 U93 (.Y(n110), 
	.D(\fiforeg[4][0] ), 
	.C(n115), 
	.B(\fiforeg[6][0] ), 
	.A(n114));
   AOI22X1 U94 (.Y(n109), 
	.D(\fiforeg[7][0] ), 
	.C(n117), 
	.B(\fiforeg[5][0] ), 
	.A(n116));
   MUX2X1 U95 (.Y(n267), 
	.S(FE_OFN1348_n98), 
	.B(FE_OFN1307_n118), 
	.A(n76));
   MUX2X1 U96 (.Y(n266), 
	.S(FE_OFN1344_n99), 
	.B(FE_OFN1307_n118), 
	.A(n75));
   MUX2X1 U97 (.Y(n265), 
	.S(FE_OFN1350_n100), 
	.B(FE_OFN1307_n118), 
	.A(n78));
   MUX2X1 U98 (.Y(n264), 
	.S(FE_OFN1346_n101), 
	.B(FE_OFN1307_n118), 
	.A(n77));
   MUX2X1 U99 (.Y(n263), 
	.S(FE_OFN1351_n103), 
	.B(FE_OFN1307_n118), 
	.A(n119));
   INVX1 U100 (.Y(n119), 
	.A(\fiforeg[4][1] ));
   MUX2X1 U101 (.Y(n262), 
	.S(FE_OFN1354_n105), 
	.B(FE_OFN1307_n118), 
	.A(n120));
   INVX1 U102 (.Y(n120), 
	.A(\fiforeg[5][1] ));
   MUX2X1 U103 (.Y(n261), 
	.S(FE_OFN1352_n107), 
	.B(FE_OFN1307_n118), 
	.A(n121));
   INVX1 U104 (.Y(n121), 
	.A(\fiforeg[6][1] ));
   MUX2X1 U105 (.Y(n260), 
	.S(FE_OFN1353_n97), 
	.B(FE_OFN1307_n118), 
	.A(n122));
   INVX1 U106 (.Y(n122), 
	.A(\fiforeg[7][1] ));
   MUX2X1 U107 (.Y(n118), 
	.S(wenable), 
	.B(n123), 
	.A(wdata[1]));
   NAND3X1 U108 (.Y(n123), 
	.C(n126), 
	.B(n125), 
	.A(n124));
   NOR2X1 U109 (.Y(n126), 
	.B(n128), 
	.A(n127));
   OAI22X1 U110 (.Y(n128), 
	.D(FE_OFN1348_n98), 
	.C(n76), 
	.B(FE_OFN1344_n99), 
	.A(n75));
   INVX1 U111 (.Y(n76), 
	.A(\fiforeg[0][1] ));
   INVX1 U112 (.Y(n75), 
	.A(\fiforeg[1][1] ));
   OAI22X1 U113 (.Y(n127), 
	.D(FE_OFN1350_n100), 
	.C(n78), 
	.B(FE_OFN1346_n101), 
	.A(n77));
   INVX1 U114 (.Y(n78), 
	.A(\fiforeg[2][1] ));
   INVX1 U115 (.Y(n77), 
	.A(\fiforeg[3][1] ));
   AOI22X1 U116 (.Y(n125), 
	.D(\fiforeg[4][1] ), 
	.C(n115), 
	.B(\fiforeg[6][1] ), 
	.A(n114));
   AOI22X1 U117 (.Y(n124), 
	.D(\fiforeg[7][1] ), 
	.C(n117), 
	.B(\fiforeg[5][1] ), 
	.A(n116));
   MUX2X1 U118 (.Y(n259), 
	.S(FE_OFN1348_n98), 
	.B(FE_OFN1308_n129), 
	.A(n67));
   MUX2X1 U119 (.Y(n258), 
	.S(FE_OFN1344_n99), 
	.B(FE_OFN1308_n129), 
	.A(n66));
   MUX2X1 U120 (.Y(n257), 
	.S(FE_OFN1350_n100), 
	.B(FE_OFN1308_n129), 
	.A(n69));
   MUX2X1 U121 (.Y(n256), 
	.S(FE_OFN1346_n101), 
	.B(FE_OFN1308_n129), 
	.A(n68));
   MUX2X1 U122 (.Y(n255), 
	.S(FE_OFN1351_n103), 
	.B(FE_OFN1308_n129), 
	.A(n130));
   INVX1 U123 (.Y(n130), 
	.A(\fiforeg[4][2] ));
   MUX2X1 U124 (.Y(n254), 
	.S(FE_OFN1354_n105), 
	.B(FE_OFN1308_n129), 
	.A(n131));
   INVX1 U125 (.Y(n131), 
	.A(\fiforeg[5][2] ));
   MUX2X1 U126 (.Y(n253), 
	.S(FE_OFN1352_n107), 
	.B(FE_OFN1308_n129), 
	.A(n132));
   INVX1 U127 (.Y(n132), 
	.A(\fiforeg[6][2] ));
   MUX2X1 U128 (.Y(n252), 
	.S(FE_OFN1353_n97), 
	.B(FE_OFN1308_n129), 
	.A(n133));
   INVX1 U129 (.Y(n133), 
	.A(\fiforeg[7][2] ));
   MUX2X1 U130 (.Y(n129), 
	.S(wenable), 
	.B(n134), 
	.A(wdata[2]));
   NAND3X1 U131 (.Y(n134), 
	.C(n137), 
	.B(n136), 
	.A(n135));
   NOR2X1 U132 (.Y(n137), 
	.B(n139), 
	.A(n138));
   OAI22X1 U133 (.Y(n139), 
	.D(FE_OFN1348_n98), 
	.C(n67), 
	.B(FE_OFN1344_n99), 
	.A(n66));
   INVX1 U134 (.Y(n67), 
	.A(\fiforeg[0][2] ));
   INVX1 U135 (.Y(n66), 
	.A(\fiforeg[1][2] ));
   OAI22X1 U136 (.Y(n138), 
	.D(FE_OFN1350_n100), 
	.C(n69), 
	.B(FE_OFN1346_n101), 
	.A(n68));
   INVX1 U137 (.Y(n69), 
	.A(\fiforeg[2][2] ));
   INVX1 U138 (.Y(n68), 
	.A(\fiforeg[3][2] ));
   AOI22X1 U139 (.Y(n136), 
	.D(\fiforeg[4][2] ), 
	.C(n115), 
	.B(\fiforeg[6][2] ), 
	.A(n114));
   AOI22X1 U140 (.Y(n135), 
	.D(\fiforeg[7][2] ), 
	.C(n117), 
	.B(\fiforeg[5][2] ), 
	.A(n116));
   MUX2X1 U141 (.Y(n251), 
	.S(FE_OFN1348_n98), 
	.B(FE_OFN1310_n140), 
	.A(n58));
   MUX2X1 U142 (.Y(n250), 
	.S(FE_OFN1344_n99), 
	.B(FE_OFN1310_n140), 
	.A(n57));
   MUX2X1 U143 (.Y(n249), 
	.S(FE_OFN1350_n100), 
	.B(FE_OFN1310_n140), 
	.A(n60));
   MUX2X1 U144 (.Y(n248), 
	.S(FE_OFN1346_n101), 
	.B(FE_OFN1310_n140), 
	.A(n59));
   MUX2X1 U145 (.Y(n247), 
	.S(FE_OFN1351_n103), 
	.B(FE_OFN1310_n140), 
	.A(n141));
   INVX1 U146 (.Y(n141), 
	.A(\fiforeg[4][3] ));
   MUX2X1 U147 (.Y(n246), 
	.S(FE_OFN1354_n105), 
	.B(FE_OFN1310_n140), 
	.A(n142));
   INVX1 U148 (.Y(n142), 
	.A(\fiforeg[5][3] ));
   MUX2X1 U149 (.Y(n245), 
	.S(FE_OFN1352_n107), 
	.B(FE_OFN1310_n140), 
	.A(n143));
   INVX1 U150 (.Y(n143), 
	.A(\fiforeg[6][3] ));
   MUX2X1 U151 (.Y(n244), 
	.S(FE_OFN1353_n97), 
	.B(FE_OFN1310_n140), 
	.A(n144));
   INVX1 U152 (.Y(n144), 
	.A(\fiforeg[7][3] ));
   MUX2X1 U153 (.Y(n140), 
	.S(wenable), 
	.B(n145), 
	.A(wdata[3]));
   NAND3X1 U154 (.Y(n145), 
	.C(n148), 
	.B(n147), 
	.A(n146));
   NOR2X1 U155 (.Y(n148), 
	.B(n150), 
	.A(n149));
   OAI22X1 U156 (.Y(n150), 
	.D(FE_OFN1348_n98), 
	.C(n58), 
	.B(FE_OFN1344_n99), 
	.A(n57));
   INVX1 U157 (.Y(n58), 
	.A(\fiforeg[0][3] ));
   INVX1 U158 (.Y(n57), 
	.A(\fiforeg[1][3] ));
   OAI22X1 U159 (.Y(n149), 
	.D(FE_OFN1350_n100), 
	.C(n60), 
	.B(FE_OFN1346_n101), 
	.A(n59));
   INVX1 U160 (.Y(n60), 
	.A(\fiforeg[2][3] ));
   INVX1 U161 (.Y(n59), 
	.A(\fiforeg[3][3] ));
   AOI22X1 U162 (.Y(n147), 
	.D(\fiforeg[4][3] ), 
	.C(n115), 
	.B(\fiforeg[6][3] ), 
	.A(n114));
   AOI22X1 U163 (.Y(n146), 
	.D(\fiforeg[7][3] ), 
	.C(n117), 
	.B(\fiforeg[5][3] ), 
	.A(n116));
   MUX2X1 U164 (.Y(n243), 
	.S(FE_OFN1348_n98), 
	.B(FE_OFN1312_n151), 
	.A(n49));
   MUX2X1 U165 (.Y(n242), 
	.S(FE_OFN1343_n99), 
	.B(FE_OFN1312_n151), 
	.A(n48));
   MUX2X1 U166 (.Y(n241), 
	.S(FE_OFN1350_n100), 
	.B(FE_OFN1312_n151), 
	.A(n51));
   MUX2X1 U167 (.Y(n240), 
	.S(FE_OFN1459_n101), 
	.B(FE_OFN1312_n151), 
	.A(n50));
   MUX2X1 U168 (.Y(n239), 
	.S(FE_OFN1351_n103), 
	.B(FE_OFN1312_n151), 
	.A(n152));
   INVX1 U169 (.Y(n152), 
	.A(\fiforeg[4][4] ));
   MUX2X1 U170 (.Y(n238), 
	.S(FE_OFN1354_n105), 
	.B(FE_OFN1312_n151), 
	.A(n153));
   INVX1 U171 (.Y(n153), 
	.A(\fiforeg[5][4] ));
   MUX2X1 U172 (.Y(n237), 
	.S(FE_OFN1352_n107), 
	.B(FE_OFN1312_n151), 
	.A(n154));
   INVX1 U173 (.Y(n154), 
	.A(\fiforeg[6][4] ));
   MUX2X1 U174 (.Y(n236), 
	.S(FE_OFN1353_n97), 
	.B(FE_OFN1312_n151), 
	.A(n155));
   INVX1 U175 (.Y(n155), 
	.A(\fiforeg[7][4] ));
   MUX2X1 U176 (.Y(n151), 
	.S(wenable), 
	.B(n156), 
	.A(wdata[4]));
   NAND3X1 U177 (.Y(n156), 
	.C(n159), 
	.B(n158), 
	.A(n157));
   NOR2X1 U178 (.Y(n159), 
	.B(n161), 
	.A(n160));
   OAI22X1 U179 (.Y(n161), 
	.D(FE_OFN1348_n98), 
	.C(n49), 
	.B(FE_OFN1343_n99), 
	.A(n48));
   INVX1 U180 (.Y(n49), 
	.A(\fiforeg[0][4] ));
   INVX1 U181 (.Y(n48), 
	.A(\fiforeg[1][4] ));
   OAI22X1 U182 (.Y(n160), 
	.D(FE_OFN1350_n100), 
	.C(n51), 
	.B(FE_OFN1346_n101), 
	.A(n50));
   INVX1 U183 (.Y(n51), 
	.A(\fiforeg[2][4] ));
   INVX1 U184 (.Y(n50), 
	.A(\fiforeg[3][4] ));
   AOI22X1 U185 (.Y(n158), 
	.D(\fiforeg[4][4] ), 
	.C(n115), 
	.B(\fiforeg[6][4] ), 
	.A(n114));
   AOI22X1 U186 (.Y(n157), 
	.D(\fiforeg[7][4] ), 
	.C(n117), 
	.B(\fiforeg[5][4] ), 
	.A(n116));
   MUX2X1 U187 (.Y(n235), 
	.S(FE_OFN1348_n98), 
	.B(FE_OFN1313_n162), 
	.A(n40));
   MUX2X1 U188 (.Y(n234), 
	.S(FE_OFN1343_n99), 
	.B(FE_OFN1313_n162), 
	.A(n39));
   MUX2X1 U189 (.Y(n233), 
	.S(FE_OFN1350_n100), 
	.B(FE_OFN1313_n162), 
	.A(n42));
   MUX2X1 U190 (.Y(n232), 
	.S(FE_OFN1459_n101), 
	.B(FE_OFN1313_n162), 
	.A(n41));
   MUX2X1 U191 (.Y(n231), 
	.S(FE_OFN1351_n103), 
	.B(FE_OFN1313_n162), 
	.A(n163));
   INVX1 U192 (.Y(n163), 
	.A(\fiforeg[4][5] ));
   MUX2X1 U193 (.Y(n230), 
	.S(FE_OFN1354_n105), 
	.B(FE_OFN1313_n162), 
	.A(n164));
   INVX1 U194 (.Y(n164), 
	.A(\fiforeg[5][5] ));
   MUX2X1 U195 (.Y(n229), 
	.S(FE_OFN1352_n107), 
	.B(FE_OFN1313_n162), 
	.A(n165));
   INVX1 U196 (.Y(n165), 
	.A(\fiforeg[6][5] ));
   MUX2X1 U197 (.Y(n228), 
	.S(FE_OFN1353_n97), 
	.B(FE_OFN1313_n162), 
	.A(n166));
   INVX1 U198 (.Y(n166), 
	.A(\fiforeg[7][5] ));
   MUX2X1 U199 (.Y(n162), 
	.S(wenable), 
	.B(n167), 
	.A(wdata[5]));
   NAND3X1 U200 (.Y(n167), 
	.C(n170), 
	.B(n169), 
	.A(n168));
   NOR2X1 U201 (.Y(n170), 
	.B(n172), 
	.A(n171));
   OAI22X1 U202 (.Y(n172), 
	.D(FE_OFN1348_n98), 
	.C(n40), 
	.B(FE_OFN1343_n99), 
	.A(n39));
   INVX1 U203 (.Y(n40), 
	.A(\fiforeg[0][5] ));
   INVX1 U204 (.Y(n39), 
	.A(\fiforeg[1][5] ));
   OAI22X1 U205 (.Y(n171), 
	.D(FE_OFN1350_n100), 
	.C(n42), 
	.B(FE_OFN1459_n101), 
	.A(n41));
   INVX1 U206 (.Y(n42), 
	.A(\fiforeg[2][5] ));
   INVX1 U207 (.Y(n41), 
	.A(\fiforeg[3][5] ));
   AOI22X1 U208 (.Y(n169), 
	.D(\fiforeg[4][5] ), 
	.C(n115), 
	.B(\fiforeg[6][5] ), 
	.A(n114));
   AOI22X1 U209 (.Y(n168), 
	.D(\fiforeg[7][5] ), 
	.C(n117), 
	.B(\fiforeg[5][5] ), 
	.A(n116));
   MUX2X1 U210 (.Y(n227), 
	.S(FE_OFN1348_n98), 
	.B(FE_OFN1314_n173), 
	.A(n31));
   MUX2X1 U211 (.Y(n226), 
	.S(FE_OFN1344_n99), 
	.B(FE_OFN1314_n173), 
	.A(n30));
   MUX2X1 U212 (.Y(n225), 
	.S(FE_OFN1350_n100), 
	.B(FE_OFN1314_n173), 
	.A(n33));
   MUX2X1 U213 (.Y(n224), 
	.S(FE_OFN1346_n101), 
	.B(FE_OFN1314_n173), 
	.A(n32));
   MUX2X1 U214 (.Y(n223), 
	.S(FE_OFN1351_n103), 
	.B(FE_OFN1314_n173), 
	.A(n174));
   INVX1 U215 (.Y(n174), 
	.A(\fiforeg[4][6] ));
   MUX2X1 U216 (.Y(n222), 
	.S(FE_OFN1354_n105), 
	.B(FE_OFN1314_n173), 
	.A(n175));
   INVX1 U217 (.Y(n175), 
	.A(\fiforeg[5][6] ));
   MUX2X1 U218 (.Y(n221), 
	.S(FE_OFN1352_n107), 
	.B(FE_OFN1314_n173), 
	.A(n176));
   INVX1 U219 (.Y(n176), 
	.A(\fiforeg[6][6] ));
   MUX2X1 U220 (.Y(n220), 
	.S(FE_OFN1353_n97), 
	.B(FE_OFN1314_n173), 
	.A(n177));
   INVX1 U221 (.Y(n177), 
	.A(\fiforeg[7][6] ));
   MUX2X1 U222 (.Y(n173), 
	.S(wenable), 
	.B(n178), 
	.A(wdata[6]));
   NAND3X1 U223 (.Y(n178), 
	.C(n181), 
	.B(n180), 
	.A(n179));
   NOR2X1 U224 (.Y(n181), 
	.B(n183), 
	.A(n182));
   OAI22X1 U225 (.Y(n183), 
	.D(FE_OFN1348_n98), 
	.C(n31), 
	.B(FE_OFN1344_n99), 
	.A(n30));
   INVX1 U226 (.Y(n31), 
	.A(\fiforeg[0][6] ));
   INVX1 U227 (.Y(n30), 
	.A(\fiforeg[1][6] ));
   OAI22X1 U228 (.Y(n182), 
	.D(FE_OFN1350_n100), 
	.C(n33), 
	.B(FE_OFN1346_n101), 
	.A(n32));
   INVX1 U229 (.Y(n33), 
	.A(\fiforeg[2][6] ));
   INVX1 U230 (.Y(n32), 
	.A(\fiforeg[3][6] ));
   AOI22X1 U231 (.Y(n180), 
	.D(\fiforeg[4][6] ), 
	.C(n115), 
	.B(\fiforeg[6][6] ), 
	.A(n114));
   AOI22X1 U232 (.Y(n179), 
	.D(\fiforeg[7][6] ), 
	.C(n117), 
	.B(\fiforeg[5][6] ), 
	.A(n116));
   MUX2X1 U233 (.Y(n219), 
	.S(FE_OFN1348_n98), 
	.B(FE_OFN1316_n184), 
	.A(n16));
   MUX2X1 U234 (.Y(n218), 
	.S(FE_OFN1344_n99), 
	.B(FE_OFN1316_n184), 
	.A(n14));
   MUX2X1 U235 (.Y(n217), 
	.S(FE_OFN1350_n100), 
	.B(FE_OFN1316_n184), 
	.A(n20));
   MUX2X1 U236 (.Y(n216), 
	.S(FE_OFN1346_n101), 
	.B(FE_OFN1316_n184), 
	.A(n18));
   MUX2X1 U237 (.Y(n215), 
	.S(FE_OFN1351_n103), 
	.B(FE_OFN1316_n184), 
	.A(n185));
   INVX1 U238 (.Y(n185), 
	.A(\fiforeg[4][7] ));
   MUX2X1 U239 (.Y(n214), 
	.S(FE_OFN1354_n105), 
	.B(FE_OFN1316_n184), 
	.A(n186));
   INVX1 U240 (.Y(n186), 
	.A(\fiforeg[5][7] ));
   MUX2X1 U241 (.Y(n213), 
	.S(FE_OFN1352_n107), 
	.B(FE_OFN1316_n184), 
	.A(n187));
   INVX1 U242 (.Y(n187), 
	.A(\fiforeg[6][7] ));
   MUX2X1 U243 (.Y(n212), 
	.S(FE_OFN1353_n97), 
	.B(FE_OFN1316_n184), 
	.A(n188));
   INVX1 U244 (.Y(n188), 
	.A(\fiforeg[7][7] ));
   MUX2X1 U245 (.Y(n184), 
	.S(wenable), 
	.B(n189), 
	.A(wdata[7]));
   NAND3X1 U246 (.Y(n189), 
	.C(n192), 
	.B(n191), 
	.A(n190));
   NOR2X1 U247 (.Y(n192), 
	.B(n194), 
	.A(n193));
   OAI22X1 U248 (.Y(n194), 
	.D(FE_OFN1348_n98), 
	.C(n16), 
	.B(FE_OFN1344_n99), 
	.A(n14));
   NAND3X1 U249 (.Y(n98), 
	.C(n197), 
	.B(n196), 
	.A(n195));
   INVX1 U250 (.Y(n16), 
	.A(\fiforeg[0][7] ));
   NAND3X1 U251 (.Y(n99), 
	.C(waddr[0]), 
	.B(n196), 
	.A(n195));
   INVX1 U252 (.Y(n14), 
	.A(\fiforeg[1][7] ));
   OAI22X1 U253 (.Y(n193), 
	.D(FE_OFN1350_n100), 
	.C(n20), 
	.B(FE_OFN1346_n101), 
	.A(n18));
   NAND3X1 U254 (.Y(n100), 
	.C(waddr[1]), 
	.B(n196), 
	.A(n197));
   INVX1 U255 (.Y(n20), 
	.A(\fiforeg[2][7] ));
   NAND3X1 U256 (.Y(n101), 
	.C(waddr[1]), 
	.B(n196), 
	.A(waddr[0]));
   INVX1 U257 (.Y(n196), 
	.A(waddr[2]));
   INVX1 U258 (.Y(n18), 
	.A(\fiforeg[3][7] ));
   AOI22X1 U259 (.Y(n191), 
	.D(\fiforeg[4][7] ), 
	.C(n115), 
	.B(\fiforeg[6][7] ), 
	.A(n114));
   INVX4 U260 (.Y(n115), 
	.A(FE_OFN1351_n103));
   NAND3X1 U261 (.Y(n103), 
	.C(waddr[2]), 
	.B(n195), 
	.A(n197));
   INVX4 U262 (.Y(n114), 
	.A(FE_OFN1352_n107));
   NAND3X1 U263 (.Y(n107), 
	.C(waddr[2]), 
	.B(n197), 
	.A(waddr[1]));
   INVX1 U264 (.Y(n197), 
	.A(waddr[0]));
   AOI22X1 U265 (.Y(n190), 
	.D(\fiforeg[7][7] ), 
	.C(n117), 
	.B(\fiforeg[5][7] ), 
	.A(n116));
   INVX4 U266 (.Y(n117), 
	.A(FE_OFN1353_n97));
   NAND3X1 U267 (.Y(n97), 
	.C(waddr[2]), 
	.B(waddr[0]), 
	.A(waddr[1]));
   INVX4 U268 (.Y(n116), 
	.A(FE_OFN1354_n105));
   NAND3X1 U269 (.Y(n105), 
	.C(waddr[2]), 
	.B(n195), 
	.A(waddr[0]));
   INVX1 U270 (.Y(n195), 
	.A(waddr[1]));
endmodule

module write_ptr_2 (
	wclk, 
	rst_n, 
	wenable, 
	wptr, 
	wptr_nxt, 
	CLK__L4_N3, 
	FE_OFN487_n1, 
	FE_OFN488_n1);
   input wclk;
   input rst_n;
   input wenable;
   output [3:0] wptr;
   output [3:0] wptr_nxt;
   input CLK__L4_N3;
   input FE_OFN487_n1;
   input FE_OFN488_n1;

   // Internal wires
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire [2:0] binary_nxt;
   wire [3:0] binary_r;

   DFFSR \binary_r_reg[0]  (.S(1'b1), 
	.R(FE_OFN487_n1), 
	.Q(binary_r[0]), 
	.D(binary_nxt[0]), 
	.CLK(wclk));
   DFFSR \binary_r_reg[1]  (.S(1'b1), 
	.R(FE_OFN487_n1), 
	.Q(binary_r[1]), 
	.D(binary_nxt[1]), 
	.CLK(wclk));
   DFFSR \binary_r_reg[2]  (.S(1'b1), 
	.R(FE_OFN487_n1), 
	.Q(binary_r[2]), 
	.D(binary_nxt[2]), 
	.CLK(wclk));
   DFFSR \binary_r_reg[3]  (.S(1'b1), 
	.R(FE_OFN487_n1), 
	.Q(binary_r[3]), 
	.D(wptr_nxt[3]), 
	.CLK(wclk));
   DFFSR \gray_r_reg[3]  (.S(1'b1), 
	.R(FE_OFN487_n1), 
	.Q(wptr[3]), 
	.D(wptr_nxt[3]), 
	.CLK(CLK__L4_N3));
   DFFSR \gray_r_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wptr[2]), 
	.D(wptr_nxt[2]), 
	.CLK(wclk));
   DFFSR \gray_r_reg[1]  (.S(1'b1), 
	.R(FE_OFN488_n1), 
	.Q(wptr[1]), 
	.D(wptr_nxt[1]), 
	.CLK(wclk));
   DFFSR \gray_r_reg[0]  (.S(1'b1), 
	.R(FE_OFN488_n1), 
	.Q(wptr[0]), 
	.D(wptr_nxt[0]), 
	.CLK(wclk));
   XOR2X1 U11 (.Y(wptr_nxt[2]), 
	.B(binary_nxt[2]), 
	.A(wptr_nxt[3]));
   XNOR2X1 U12 (.Y(wptr_nxt[3]), 
	.B(binary_r[3]), 
	.A(n9));
   NAND2X1 U13 (.Y(n9), 
	.B(n10), 
	.A(binary_r[2]));
   XOR2X1 U14 (.Y(wptr_nxt[1]), 
	.B(binary_nxt[1]), 
	.A(binary_nxt[2]));
   XOR2X1 U15 (.Y(wptr_nxt[0]), 
	.B(binary_nxt[0]), 
	.A(binary_nxt[1]));
   XOR2X1 U16 (.Y(binary_nxt[2]), 
	.B(binary_r[2]), 
	.A(n10));
   INVX1 U17 (.Y(n10), 
	.A(n11));
   NAND3X1 U18 (.Y(n11), 
	.C(wenable), 
	.B(binary_r[0]), 
	.A(binary_r[1]));
   XNOR2X1 U19 (.Y(binary_nxt[1]), 
	.B(binary_r[1]), 
	.A(n12));
   NAND2X1 U20 (.Y(n12), 
	.B(binary_r[0]), 
	.A(wenable));
   XOR2X1 U21 (.Y(binary_nxt[0]), 
	.B(wenable), 
	.A(binary_r[0]));
endmodule

module write_fifo_ctrl_2 (
	wclk, 
	rst_n, 
	wenable, 
	rptr, 
	wenable_fifo, 
	wptr, 
	waddr, 
	full_flag, 
	CLK__L4_N12, 
	CLK__L4_N13, 
	CLK__L4_N3, 
	FE_OFN487_n1, 
	FE_OFN488_n1);
   input wclk;
   input rst_n;
   input wenable;
   input [3:0] rptr;
   output wenable_fifo;
   output [3:0] wptr;
   output [2:0] waddr;
   output full_flag;
   input CLK__L4_N12;
   input CLK__L4_N13;
   input CLK__L4_N3;
   input FE_OFN487_n1;
   input FE_OFN488_n1;

   // Internal wires
   wire FE_OFN1432_FULL1;
   wire \gray_wptr[2] ;
   wire N5;
   wire n1;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire [3:0] wptr_nxt;
   wire [3:0] wrptr_r2;
   wire [3:0] wrptr_r1;

   BUFX4 FE_OFC1432_FULL1 (.Y(full_flag), 
	.A(FE_OFN1432_FULL1));
   DFFSR \wrptr_r1_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r1[3]), 
	.D(rptr[3]), 
	.CLK(wclk));
   DFFSR \wrptr_r1_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r1[2]), 
	.D(rptr[2]), 
	.CLK(wclk));
   DFFSR \wrptr_r1_reg[1]  (.S(1'b1), 
	.R(FE_OFN487_n1), 
	.Q(wrptr_r1[1]), 
	.D(rptr[1]), 
	.CLK(CLK__L4_N12));
   DFFSR \wrptr_r1_reg[0]  (.S(1'b1), 
	.R(FE_OFN488_n1), 
	.Q(wrptr_r1[0]), 
	.D(rptr[0]), 
	.CLK(CLK__L4_N13));
   DFFSR \wrptr_r2_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r2[3]), 
	.D(wrptr_r1[3]), 
	.CLK(wclk));
   DFFSR \wrptr_r2_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r2[2]), 
	.D(wrptr_r1[2]), 
	.CLK(wclk));
   DFFSR \wrptr_r2_reg[1]  (.S(1'b1), 
	.R(FE_OFN487_n1), 
	.Q(wrptr_r2[1]), 
	.D(wrptr_r1[1]), 
	.CLK(CLK__L4_N12));
   DFFSR \wrptr_r2_reg[0]  (.S(1'b1), 
	.R(FE_OFN488_n1), 
	.Q(wrptr_r2[0]), 
	.D(wrptr_r1[0]), 
	.CLK(CLK__L4_N13));
   DFFSR full_flag_r_reg (.S(1'b1), 
	.R(FE_OFN487_n1), 
	.Q(FE_OFN1432_FULL1), 
	.D(N5), 
	.CLK(CLK__L4_N12));
   DFFSR \waddr_reg[2]  (.S(1'b1), 
	.R(FE_OFN487_n1), 
	.Q(waddr[2]), 
	.D(\gray_wptr[2] ), 
	.CLK(CLK__L4_N12));
   DFFSR \waddr_reg[1]  (.S(1'b1), 
	.R(FE_OFN487_n1), 
	.Q(waddr[1]), 
	.D(wptr_nxt[1]), 
	.CLK(CLK__L4_N12));
   DFFSR \waddr_reg[0]  (.S(1'b1), 
	.R(FE_OFN487_n1), 
	.Q(waddr[0]), 
	.D(wptr_nxt[0]), 
	.CLK(CLK__L4_N12));
   write_ptr_2 WPU1 (.wclk(CLK__L4_N12), 
	.rst_n(FE_OFN487_n1), 
	.wenable(wenable_fifo), 
	.wptr(wptr), 
	.wptr_nxt(wptr_nxt), 
	.CLK__L4_N3(CLK__L4_N3), 
	.FE_OFN487_n1(FE_OFN487_n1), 
	.FE_OFN488_n1(FE_OFN487_n1));
   OR2X2 U15 (.Y(n1), 
	.B(n15), 
	.A(full_flag));
   INVX4 U16 (.Y(wenable_fifo), 
	.A(n1));
   INVX1 U17 (.Y(n15), 
	.A(wenable));
   NOR2X1 U18 (.Y(N5), 
	.B(n17), 
	.A(n16));
   NAND2X1 U19 (.Y(n17), 
	.B(n19), 
	.A(n18));
   XOR2X1 U20 (.Y(n19), 
	.B(\gray_wptr[2] ), 
	.A(n20));
   XOR2X1 U21 (.Y(\gray_wptr[2] ), 
	.B(wptr_nxt[2]), 
	.A(wptr_nxt[3]));
   XNOR2X1 U22 (.Y(n20), 
	.B(wrptr_r2[2]), 
	.A(wrptr_r2[3]));
   XNOR2X1 U23 (.Y(n18), 
	.B(wptr_nxt[1]), 
	.A(wrptr_r2[1]));
   NAND2X1 U24 (.Y(n16), 
	.B(n22), 
	.A(n21));
   XOR2X1 U25 (.Y(n22), 
	.B(wptr_nxt[3]), 
	.A(wrptr_r2[3]));
   XNOR2X1 U26 (.Y(n21), 
	.B(wptr_nxt[0]), 
	.A(wrptr_r2[0]));
endmodule

module read_ptr_2 (
	rclk, 
	rst_n, 
	renable, 
	rptr, 
	rptr_nxt, 
	CLK__L4_N13, 
	FE_OFN487_n1, 
	FE_OFN488_n1);
   input rclk;
   input rst_n;
   input renable;
   output [3:0] rptr;
   output [3:0] rptr_nxt;
   input CLK__L4_N13;
   input FE_OFN487_n1;
   input FE_OFN488_n1;

   // Internal wires
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire [2:0] binary_nxt;
   wire [3:0] binary_r;

   DFFSR \binary_r_reg[0]  (.S(1'b1), 
	.R(FE_OFN488_n1), 
	.Q(binary_r[0]), 
	.D(binary_nxt[0]), 
	.CLK(rclk));
   DFFSR \binary_r_reg[1]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[1]), 
	.D(binary_nxt[1]), 
	.CLK(rclk));
   DFFSR \binary_r_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[2]), 
	.D(binary_nxt[2]), 
	.CLK(rclk));
   DFFSR \binary_r_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[3]), 
	.D(rptr_nxt[3]), 
	.CLK(rclk));
   DFFSR \gray_r_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rptr[3]), 
	.D(rptr_nxt[3]), 
	.CLK(rclk));
   DFFSR \gray_r_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rptr[2]), 
	.D(rptr_nxt[2]), 
	.CLK(rclk));
   DFFSR \gray_r_reg[1]  (.S(1'b1), 
	.R(FE_OFN487_n1), 
	.Q(rptr[1]), 
	.D(rptr_nxt[1]), 
	.CLK(CLK__L4_N13));
   DFFSR \gray_r_reg[0]  (.S(1'b1), 
	.R(FE_OFN488_n1), 
	.Q(rptr[0]), 
	.D(rptr_nxt[0]), 
	.CLK(CLK__L4_N13));
   XOR2X1 U11 (.Y(rptr_nxt[2]), 
	.B(binary_nxt[2]), 
	.A(rptr_nxt[3]));
   XNOR2X1 U12 (.Y(rptr_nxt[3]), 
	.B(binary_r[3]), 
	.A(n9));
   NAND2X1 U13 (.Y(n9), 
	.B(n10), 
	.A(binary_r[2]));
   XOR2X1 U14 (.Y(rptr_nxt[1]), 
	.B(binary_nxt[1]), 
	.A(binary_nxt[2]));
   XOR2X1 U15 (.Y(rptr_nxt[0]), 
	.B(binary_nxt[0]), 
	.A(binary_nxt[1]));
   XOR2X1 U16 (.Y(binary_nxt[2]), 
	.B(binary_r[2]), 
	.A(n10));
   INVX1 U17 (.Y(n10), 
	.A(n11));
   NAND3X1 U18 (.Y(n11), 
	.C(renable), 
	.B(binary_r[0]), 
	.A(binary_r[1]));
   XNOR2X1 U19 (.Y(binary_nxt[1]), 
	.B(binary_r[1]), 
	.A(n12));
   NAND2X1 U20 (.Y(n12), 
	.B(binary_r[0]), 
	.A(renable));
   XOR2X1 U21 (.Y(binary_nxt[0]), 
	.B(renable), 
	.A(binary_r[0]));
endmodule

module read_fifo_ctrl_2 (
	rclk, 
	rst_n, 
	renable, 
	wptr, 
	rptr, 
	raddr, 
	empty_flag, 
	CLK__L4_N12, 
	CLK__L4_N13, 
	FE_OFN487_n1, 
	FE_OFN488_n1, 
	FE_OFN1132_n1);
   input rclk;
   input rst_n;
   input renable;
   input [3:0] wptr;
   output [3:0] rptr;
   output [2:0] raddr;
   output empty_flag;
   input CLK__L4_N12;
   input CLK__L4_N13;
   input FE_OFN487_n1;
   input FE_OFN488_n1;
   input FE_OFN1132_n1;

   // Internal wires
   wire FE_PHN1483_RENABLE;
   wire FE_PHN1478_RENABLE;
   wire FE_PHN1475_RENABLE;
   wire renable_p2;
   wire \gray_rptr[2] ;
   wire N3;
   wire n1;
   wire n2;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire [3:0] rptr_nxt;
   wire [3:0] rwptr_r2;
   wire [3:0] rwptr_r1;

   CLKBUF3 FE_PHC1483_RENABLE (.Y(FE_PHN1483_RENABLE), 
	.A(FE_PHN1475_RENABLE));
   CLKBUF3 FE_PHC1478_RENABLE (.Y(FE_PHN1478_RENABLE), 
	.A(FE_PHN1483_RENABLE));
   CLKBUF3 FE_PHC1475_RENABLE (.Y(FE_PHN1475_RENABLE), 
	.A(renable));
   DFFSR \rwptr_r1_reg[3]  (.S(1'b1), 
	.R(FE_OFN1132_n1), 
	.Q(rwptr_r1[3]), 
	.D(wptr[3]), 
	.CLK(rclk));
   DFFSR \rwptr_r1_reg[2]  (.S(1'b1), 
	.R(FE_OFN1132_n1), 
	.Q(rwptr_r1[2]), 
	.D(wptr[2]), 
	.CLK(CLK__L4_N12));
   DFFSR \rwptr_r1_reg[1]  (.S(1'b1), 
	.R(FE_OFN1132_n1), 
	.Q(rwptr_r1[1]), 
	.D(wptr[1]), 
	.CLK(rclk));
   DFFSR \rwptr_r1_reg[0]  (.S(1'b1), 
	.R(FE_OFN488_n1), 
	.Q(rwptr_r1[0]), 
	.D(wptr[0]), 
	.CLK(rclk));
   DFFSR \rwptr_r2_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rwptr_r2[3]), 
	.D(rwptr_r1[3]), 
	.CLK(rclk));
   DFFSR \rwptr_r2_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rwptr_r2[2]), 
	.D(rwptr_r1[2]), 
	.CLK(rclk));
   DFFSR \rwptr_r2_reg[1]  (.S(1'b1), 
	.R(FE_OFN1132_n1), 
	.Q(rwptr_r2[1]), 
	.D(rwptr_r1[1]), 
	.CLK(CLK__L4_N12));
   DFFSR \rwptr_r2_reg[0]  (.S(1'b1), 
	.R(FE_OFN488_n1), 
	.Q(rwptr_r2[0]), 
	.D(rwptr_r1[0]), 
	.CLK(rclk));
   DFFSR empty_flag_r_reg (.S(FE_OFN488_n1), 
	.R(1'b1), 
	.Q(empty_flag), 
	.D(N3), 
	.CLK(rclk));
   DFFSR \raddr_reg[2]  (.S(1'b1), 
	.R(FE_OFN1132_n1), 
	.Q(raddr[2]), 
	.D(\gray_rptr[2] ), 
	.CLK(CLK__L4_N12));
   DFFSR \raddr_reg[1]  (.S(1'b1), 
	.R(FE_OFN487_n1), 
	.Q(raddr[1]), 
	.D(rptr_nxt[1]), 
	.CLK(CLK__L4_N13));
   DFFSR \raddr_reg[0]  (.S(1'b1), 
	.R(FE_OFN488_n1), 
	.Q(raddr[0]), 
	.D(rptr_nxt[0]), 
	.CLK(CLK__L4_N13));
   read_ptr_2 RPU1 (.rclk(rclk), 
	.rst_n(rst_n), 
	.renable(renable_p2), 
	.rptr(rptr), 
	.rptr_nxt(rptr_nxt), 
	.CLK__L4_N13(CLK__L4_N13), 
	.FE_OFN487_n1(FE_OFN487_n1), 
	.FE_OFN488_n1(FE_OFN488_n1));
   NOR2X1 U15 (.Y(renable_p2), 
	.B(n1), 
	.A(empty_flag));
   INVX1 U16 (.Y(n1), 
	.A(FE_PHN1478_RENABLE));
   NOR2X1 U17 (.Y(N3), 
	.B(n15), 
	.A(n2));
   NAND2X1 U18 (.Y(n15), 
	.B(n17), 
	.A(n16));
   XOR2X1 U19 (.Y(n17), 
	.B(\gray_rptr[2] ), 
	.A(n18));
   XOR2X1 U20 (.Y(\gray_rptr[2] ), 
	.B(rptr_nxt[2]), 
	.A(rptr_nxt[3]));
   XNOR2X1 U21 (.Y(n18), 
	.B(rwptr_r2[2]), 
	.A(rwptr_r2[3]));
   XNOR2X1 U22 (.Y(n16), 
	.B(rptr_nxt[1]), 
	.A(rwptr_r2[1]));
   NAND2X1 U23 (.Y(n2), 
	.B(n20), 
	.A(n19));
   XNOR2X1 U24 (.Y(n20), 
	.B(rptr_nxt[0]), 
	.A(rwptr_r2[0]));
   XNOR2X1 U25 (.Y(n19), 
	.B(rwptr_r2[3]), 
	.A(rptr_nxt[3]));
endmodule

module fifo_2 (
	rclk, 
	wclk, 
	rst_n, 
	renable, 
	wenable, 
	wdata, 
	rdata, 
	empty, 
	full, 
	CLK__L4_N12, 
	CLK__L4_N13, 
	CLK__L4_N16, 
	CLK__L4_N3, 
	CLK__L4_N5, 
	CLK__L4_N6, 
	CLK__L4_N7);
   input rclk;
   input wclk;
   input rst_n;
   input renable;
   input wenable;
   input [7:0] wdata;
   output [7:0] rdata;
   output empty;
   output full;
   input CLK__L4_N12;
   input CLK__L4_N13;
   input CLK__L4_N16;
   input CLK__L4_N3;
   input CLK__L4_N5;
   input CLK__L4_N6;
   input CLK__L4_N7;

   // Internal wires
   wire FE_OFN1132_n1;
   wire FE_OFN1131_n1;
   wire FE_OFN1130_n1;
   wire wenable_fifo;
   wire [2:0] waddr;
   wire [2:0] raddr;
   wire [3:0] rptr;
   wire [3:0] wptr;

   INVX8 FE_OFC1132_n1 (.Y(FE_OFN1132_n1), 
	.A(FE_OFN1130_n1));
   INVX8 FE_OFC1131_n1 (.Y(FE_OFN1131_n1), 
	.A(FE_OFN1130_n1));
   INVX4 FE_OFC1130_n1 (.Y(FE_OFN1130_n1), 
	.A(rst_n));
   fiforam_2 UFIFORAM (.wclk(CLK__L4_N12), 
	.wenable(wenable_fifo), 
	.waddr(waddr), 
	.raddr(raddr), 
	.wdata(wdata), 
	.rdata(rdata), 
	.CLK__L4_N13(CLK__L4_N13), 
	.CLK__L4_N16(CLK__L4_N16), 
	.CLK__L4_N5(CLK__L4_N5), 
	.CLK__L4_N6(CLK__L4_N6), 
	.CLK__L4_N7(CLK__L4_N7));
   write_fifo_ctrl_2 UWFC (.wclk(wclk), 
	.rst_n(FE_OFN1131_n1), 
	.wenable(wenable), 
	.rptr(rptr), 
	.wenable_fifo(wenable_fifo), 
	.wptr(wptr), 
	.waddr(waddr), 
	.full_flag(full), 
	.CLK__L4_N12(CLK__L4_N12), 
	.CLK__L4_N13(CLK__L4_N13), 
	.CLK__L4_N3(CLK__L4_N3), 
	.FE_OFN487_n1(FE_OFN1132_n1), 
	.FE_OFN488_n1(FE_OFN1131_n1));
   read_fifo_ctrl_2 URFC (.rclk(rclk), 
	.rst_n(FE_OFN1131_n1), 
	.renable(renable), 
	.wptr(wptr), 
	.rptr(rptr), 
	.raddr(raddr), 
	.empty_flag(empty), 
	.CLK__L4_N12(CLK__L4_N12), 
	.CLK__L4_N13(CLK__L4_N13), 
	.FE_OFN487_n1(FE_OFN1131_n1), 
	.FE_OFN488_n1(FE_OFN1131_n1), 
	.FE_OFN1132_n1(FE_OFN1132_n1));
endmodule

module RCV_FIFO_2 (
	CLK, 
	D_CLK, 
	RST_N, 
	R_ENABLE, 
	W_ENABLE, 
	WDATA, 
	R_DATA, 
	EMPTY, 
	FULL, 
	CLK__L4_N12, 
	CLK__L4_N13, 
	CLK__L4_N16, 
	CLK__L4_N3, 
	CLK__L4_N5, 
	CLK__L4_N6, 
	CLK__L4_N7);
   input CLK;
   input D_CLK;
   input RST_N;
   input R_ENABLE;
   input W_ENABLE;
   input [7:0] WDATA;
   output [7:0] R_DATA;
   output EMPTY;
   output FULL;
   input CLK__L4_N12;
   input CLK__L4_N13;
   input CLK__L4_N16;
   input CLK__L4_N3;
   input CLK__L4_N5;
   input CLK__L4_N6;
   input CLK__L4_N7;

   fifo_2 MAPPING (.rclk(CLK), 
	.wclk(D_CLK), 
	.rst_n(RST_N), 
	.renable(R_ENABLE), 
	.wenable(W_ENABLE), 
	.wdata(WDATA), 
	.rdata(R_DATA), 
	.empty(EMPTY), 
	.full(FULL), 
	.CLK__L4_N12(CLK__L4_N12), 
	.CLK__L4_N13(CLK__L4_N13), 
	.CLK__L4_N16(CLK__L4_N16), 
	.CLK__L4_N3(CLK__L4_N3), 
	.CLK__L4_N5(CLK__L4_N5), 
	.CLK__L4_N6(CLK__L4_N6), 
	.CLK__L4_N7(CLK__L4_N7));
endmodule

module e_DeCompile (
	OUTDATA, 
	D_ENABLE, 
	CLK, 
	DATA, 
	W_ENABLE);
   input [63:0] OUTDATA;
   input D_ENABLE;
   input CLK;
   output [7:0] DATA;
   output W_ENABLE;

   // Internal wires
   wire FE_OFN1458_n5;
   wire FE_OFN1457_n57;
   wire FE_OFN1456_n61;
   wire FE_OFN1455_n14;
   wire FE_OFN1431_state_0_;
   wire FE_OFN1429_state_3_;
   wire FE_OFN1428_state_1_;
   wire FE_OFN1427_state_2_;
   wire FE_OFN1321_n25;
   wire FE_OFN1320_n9;
   wire FE_OFN1318_n37;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire [3:0] state;
   wire [3:0] nextstate;

   BUFX2 FE_OFC1458_n5 (.Y(FE_OFN1458_n5), 
	.A(n5));
   BUFX2 FE_OFC1457_n57 (.Y(FE_OFN1457_n57), 
	.A(n57));
   BUFX2 FE_OFC1456_n61 (.Y(FE_OFN1456_n61), 
	.A(n61));
   BUFX2 FE_OFC1455_n14 (.Y(FE_OFN1455_n14), 
	.A(n14));
   BUFX2 FE_OFC1431_state_0_ (.Y(FE_OFN1431_state_0_), 
	.A(state[0]));
   BUFX4 FE_OFC1429_state_3_ (.Y(FE_OFN1429_state_3_), 
	.A(state[3]));
   BUFX2 FE_OFC1428_state_1_ (.Y(FE_OFN1428_state_1_), 
	.A(state[1]));
   BUFX4 FE_OFC1427_state_2_ (.Y(FE_OFN1427_state_2_), 
	.A(state[2]));
   BUFX2 FE_OFC1321_n25 (.Y(FE_OFN1321_n25), 
	.A(n25));
   BUFX2 FE_OFC1320_n9 (.Y(FE_OFN1320_n9), 
	.A(n9));
   BUFX2 FE_OFC1318_n37 (.Y(FE_OFN1318_n37), 
	.A(n37));
   DFFSR \state_reg[0]  (.S(1'b1), 
	.R(D_ENABLE), 
	.Q(state[0]), 
	.D(nextstate[0]), 
	.CLK(CLK));
   DFFSR \state_reg[3]  (.S(1'b1), 
	.R(D_ENABLE), 
	.Q(state[3]), 
	.D(nextstate[3]), 
	.CLK(CLK));
   DFFSR \state_reg[1]  (.S(1'b1), 
	.R(D_ENABLE), 
	.Q(state[1]), 
	.D(nextstate[1]), 
	.CLK(CLK));
   DFFSR \state_reg[2]  (.S(1'b1), 
	.R(D_ENABLE), 
	.Q(state[2]), 
	.D(nextstate[2]), 
	.CLK(CLK));
   AND2X2 U4 (.Y(n5), 
	.B(n72), 
	.A(n80));
   INVX4 U8 (.Y(n6), 
	.A(n72));
   INVX1 U9 (.Y(n72), 
	.A(state[1]));
   INVX8 U10 (.Y(n7), 
	.A(n80));
   MUX2X1 U11 (.Y(n8), 
	.S(FE_OFN1428_state_1_), 
	.B(FE_OFN1320_n9), 
	.A(n10));
   MUX2X1 U12 (.Y(n11), 
	.S(FE_OFN1428_state_1_), 
	.B(n12), 
	.A(n13));
   MUX2X1 U13 (.Y(DATA[0]), 
	.S(FE_OFN1429_state_3_), 
	.B(FE_OFN1455_n14), 
	.A(n15));
   MUX2X1 U14 (.Y(n16), 
	.S(FE_OFN1428_state_1_), 
	.B(n17), 
	.A(n18));
   MUX2X1 U15 (.Y(n19), 
	.S(state[1]), 
	.B(n20), 
	.A(n21));
   MUX2X1 U16 (.Y(DATA[1]), 
	.S(FE_OFN1429_state_3_), 
	.B(n22), 
	.A(n23));
   MUX2X1 U17 (.Y(n24), 
	.S(FE_OFN1428_state_1_), 
	.B(FE_OFN1321_n25), 
	.A(n26));
   MUX2X1 U18 (.Y(n27), 
	.S(FE_OFN1428_state_1_), 
	.B(n28), 
	.A(n29));
   MUX2X1 U19 (.Y(DATA[2]), 
	.S(FE_OFN1429_state_3_), 
	.B(n30), 
	.A(n31));
   MUX2X1 U20 (.Y(n32), 
	.S(FE_OFN1428_state_1_), 
	.B(n33), 
	.A(n34));
   MUX2X1 U21 (.Y(n35), 
	.S(FE_OFN1428_state_1_), 
	.B(n36), 
	.A(FE_OFN1318_n37));
   MUX2X1 U22 (.Y(DATA[3]), 
	.S(FE_OFN1429_state_3_), 
	.B(n38), 
	.A(n39));
   MUX2X1 U23 (.Y(n40), 
	.S(FE_OFN1428_state_1_), 
	.B(n41), 
	.A(n42));
   MUX2X1 U24 (.Y(n43), 
	.S(n6), 
	.B(n44), 
	.A(n45));
   MUX2X1 U25 (.Y(DATA[4]), 
	.S(FE_OFN1429_state_3_), 
	.B(n46), 
	.A(n47));
   MUX2X1 U26 (.Y(n48), 
	.S(n6), 
	.B(n49), 
	.A(n50));
   MUX2X1 U27 (.Y(n51), 
	.S(n6), 
	.B(n52), 
	.A(n53));
   MUX2X1 U28 (.Y(DATA[5]), 
	.S(FE_OFN1429_state_3_), 
	.B(n54), 
	.A(n55));
   MUX2X1 U29 (.Y(n56), 
	.S(n6), 
	.B(FE_OFN1457_n57), 
	.A(n58));
   MUX2X1 U30 (.Y(n59), 
	.S(n6), 
	.B(n60), 
	.A(FE_OFN1456_n61));
   MUX2X1 U31 (.Y(DATA[6]), 
	.S(FE_OFN1429_state_3_), 
	.B(n62), 
	.A(n63));
   MUX2X1 U32 (.Y(n64), 
	.S(n6), 
	.B(n65), 
	.A(n66));
   MUX2X1 U33 (.Y(n67), 
	.S(n6), 
	.B(n68), 
	.A(n69));
   MUX2X1 U34 (.Y(DATA[7]), 
	.S(FE_OFN1429_state_3_), 
	.B(n70), 
	.A(n71));
   MUX2X1 U35 (.Y(n10), 
	.S(FE_OFN1427_state_2_), 
	.B(OUTDATA[40]), 
	.A(OUTDATA[8]));
   MUX2X1 U36 (.Y(n9), 
	.S(FE_OFN1427_state_2_), 
	.B(OUTDATA[56]), 
	.A(OUTDATA[24]));
   MUX2X1 U37 (.Y(n13), 
	.S(FE_OFN1427_state_2_), 
	.B(OUTDATA[48]), 
	.A(OUTDATA[16]));
   NAND2X1 U38 (.Y(n12), 
	.B(OUTDATA[32]), 
	.A(n7));
   MUX2X1 U39 (.Y(n14), 
	.S(FE_OFN1431_state_0_), 
	.B(n11), 
	.A(n8));
   NAND2X1 U40 (.Y(n15), 
	.B(FE_OFN1458_n5), 
	.A(OUTDATA[0]));
   MUX2X1 U41 (.Y(n18), 
	.S(FE_OFN1427_state_2_), 
	.B(OUTDATA[41]), 
	.A(OUTDATA[9]));
   MUX2X1 U42 (.Y(n17), 
	.S(FE_OFN1427_state_2_), 
	.B(OUTDATA[57]), 
	.A(OUTDATA[25]));
   MUX2X1 U43 (.Y(n21), 
	.S(FE_OFN1427_state_2_), 
	.B(OUTDATA[49]), 
	.A(OUTDATA[17]));
   NAND2X1 U44 (.Y(n20), 
	.B(n7), 
	.A(OUTDATA[33]));
   MUX2X1 U45 (.Y(n22), 
	.S(state[0]), 
	.B(n19), 
	.A(n16));
   NAND2X1 U46 (.Y(n23), 
	.B(FE_OFN1458_n5), 
	.A(OUTDATA[1]));
   MUX2X1 U47 (.Y(n26), 
	.S(FE_OFN1427_state_2_), 
	.B(OUTDATA[42]), 
	.A(OUTDATA[10]));
   MUX2X1 U48 (.Y(n25), 
	.S(FE_OFN1427_state_2_), 
	.B(OUTDATA[58]), 
	.A(OUTDATA[26]));
   MUX2X1 U49 (.Y(n29), 
	.S(FE_OFN1427_state_2_), 
	.B(OUTDATA[50]), 
	.A(OUTDATA[18]));
   NAND2X1 U50 (.Y(n28), 
	.B(n7), 
	.A(OUTDATA[34]));
   MUX2X1 U51 (.Y(n30), 
	.S(FE_OFN1431_state_0_), 
	.B(n27), 
	.A(n24));
   NAND2X1 U52 (.Y(n31), 
	.B(n5), 
	.A(OUTDATA[2]));
   MUX2X1 U53 (.Y(n34), 
	.S(n7), 
	.B(OUTDATA[43]), 
	.A(OUTDATA[11]));
   MUX2X1 U54 (.Y(n33), 
	.S(n7), 
	.B(OUTDATA[59]), 
	.A(OUTDATA[27]));
   MUX2X1 U55 (.Y(n37), 
	.S(n7), 
	.B(OUTDATA[51]), 
	.A(OUTDATA[19]));
   NAND2X1 U56 (.Y(n36), 
	.B(n7), 
	.A(OUTDATA[35]));
   MUX2X1 U57 (.Y(n38), 
	.S(FE_OFN1431_state_0_), 
	.B(n35), 
	.A(n32));
   NAND2X1 U58 (.Y(n39), 
	.B(FE_OFN1458_n5), 
	.A(OUTDATA[3]));
   MUX2X1 U59 (.Y(n42), 
	.S(n7), 
	.B(OUTDATA[44]), 
	.A(OUTDATA[12]));
   MUX2X1 U60 (.Y(n41), 
	.S(n7), 
	.B(OUTDATA[60]), 
	.A(OUTDATA[28]));
   MUX2X1 U61 (.Y(n45), 
	.S(n7), 
	.B(OUTDATA[52]), 
	.A(OUTDATA[20]));
   NAND2X1 U62 (.Y(n44), 
	.B(n7), 
	.A(OUTDATA[36]));
   MUX2X1 U63 (.Y(n46), 
	.S(FE_OFN1431_state_0_), 
	.B(n43), 
	.A(n40));
   NAND2X1 U64 (.Y(n47), 
	.B(n5), 
	.A(OUTDATA[4]));
   MUX2X1 U65 (.Y(n50), 
	.S(n7), 
	.B(OUTDATA[45]), 
	.A(OUTDATA[13]));
   MUX2X1 U66 (.Y(n49), 
	.S(n7), 
	.B(OUTDATA[61]), 
	.A(OUTDATA[29]));
   MUX2X1 U67 (.Y(n53), 
	.S(n7), 
	.B(OUTDATA[53]), 
	.A(OUTDATA[21]));
   NAND2X1 U68 (.Y(n52), 
	.B(n7), 
	.A(OUTDATA[37]));
   MUX2X1 U69 (.Y(n54), 
	.S(FE_OFN1431_state_0_), 
	.B(n51), 
	.A(n48));
   NAND2X1 U70 (.Y(n55), 
	.B(FE_OFN1458_n5), 
	.A(OUTDATA[5]));
   MUX2X1 U71 (.Y(n58), 
	.S(n7), 
	.B(OUTDATA[46]), 
	.A(OUTDATA[14]));
   MUX2X1 U72 (.Y(n57), 
	.S(n7), 
	.B(OUTDATA[62]), 
	.A(OUTDATA[30]));
   MUX2X1 U73 (.Y(n61), 
	.S(n7), 
	.B(OUTDATA[54]), 
	.A(OUTDATA[22]));
   NAND2X1 U74 (.Y(n60), 
	.B(n7), 
	.A(OUTDATA[38]));
   MUX2X1 U75 (.Y(n62), 
	.S(FE_OFN1431_state_0_), 
	.B(n59), 
	.A(n56));
   NAND2X1 U76 (.Y(n63), 
	.B(FE_OFN1458_n5), 
	.A(OUTDATA[6]));
   MUX2X1 U77 (.Y(n66), 
	.S(n7), 
	.B(OUTDATA[47]), 
	.A(OUTDATA[15]));
   MUX2X1 U78 (.Y(n65), 
	.S(n7), 
	.B(OUTDATA[63]), 
	.A(OUTDATA[31]));
   MUX2X1 U79 (.Y(n69), 
	.S(n7), 
	.B(OUTDATA[55]), 
	.A(OUTDATA[23]));
   NAND2X1 U80 (.Y(n68), 
	.B(n7), 
	.A(OUTDATA[39]));
   MUX2X1 U81 (.Y(n70), 
	.S(FE_OFN1431_state_0_), 
	.B(n67), 
	.A(n64));
   NAND2X1 U82 (.Y(n71), 
	.B(FE_OFN1458_n5), 
	.A(OUTDATA[7]));
   MUX2X1 U83 (.Y(nextstate[3]), 
	.S(n75), 
	.B(n73), 
	.A(n74));
   OR2X1 U84 (.Y(n74), 
	.B(n77), 
	.A(n76));
   NAND2X1 U85 (.Y(n73), 
	.B(n76), 
	.A(n77));
   NOR2X1 U86 (.Y(nextstate[2]), 
	.B(n78), 
	.A(FE_OFN1429_state_3_));
   XNOR2X1 U87 (.Y(n78), 
	.B(n80), 
	.A(n79));
   NOR2X1 U88 (.Y(nextstate[1]), 
	.B(n81), 
	.A(FE_OFN1429_state_3_));
   NOR2X1 U89 (.Y(nextstate[0]), 
	.B(n82), 
	.A(state[0]));
   MUX2X1 U90 (.Y(n82), 
	.S(n75), 
	.B(n83), 
	.A(n84));
   NAND3X1 U91 (.Y(n84), 
	.C(n85), 
	.B(n80), 
	.A(n72));
   INVX1 U92 (.Y(n85), 
	.A(D_ENABLE));
   NOR2X1 U93 (.Y(n83), 
	.B(n6), 
	.A(n7));
   NAND3X1 U94 (.Y(W_ENABLE), 
	.C(n77), 
	.B(n75), 
	.A(n76));
   INVX1 U95 (.Y(n77), 
	.A(n86));
   OAI21X1 U96 (.Y(n86), 
	.C(n79), 
	.B(n80), 
	.A(n81));
   INVX1 U97 (.Y(n75), 
	.A(FE_OFN1429_state_3_));
   XNOR2X1 U98 (.Y(n76), 
	.B(n80), 
	.A(n81));
   INVX2 U99 (.Y(n80), 
	.A(FE_OFN1427_state_2_));
   OAI21X1 U100 (.Y(n81), 
	.C(n79), 
	.B(state[0]), 
	.A(n6));
   NAND2X1 U101 (.Y(n79), 
	.B(state[0]), 
	.A(n6));
endmodule

module e_encController (
	DATA, 
	FULL, 
	EMPTY, 
	CLK, 
	RST, 
	START, 
	R_ENABLE, 
	W_ENABLE, 
	ENC_LEFT, 
	ENC_RIGHT, 
	FE_PT1_n1, 
	CLK__L4_N1, 
	CLK__L4_N10, 
	CLK__L4_N14, 
	CLK__L4_N15, 
	CLK__L4_N19, 
	CLK__L4_N2, 
	CLK__L4_N20, 
	CLK__L4_N22, 
	CLK__L4_N23, 
	CLK__L4_N24, 
	CLK__L4_N25, 
	CLK__L4_N4, 
	CLK__L4_N9);
   input [7:0] DATA;
   input FULL;
   input EMPTY;
   input CLK;
   input RST;
   output START;
   output R_ENABLE;
   output W_ENABLE;
   output [31:0] ENC_LEFT;
   output [31:0] ENC_RIGHT;
   input FE_PT1_n1;
   input CLK__L4_N1;
   input CLK__L4_N10;
   input CLK__L4_N14;
   input CLK__L4_N15;
   input CLK__L4_N19;
   input CLK__L4_N2;
   input CLK__L4_N20;
   input CLK__L4_N22;
   input CLK__L4_N23;
   input CLK__L4_N24;
   input CLK__L4_N25;
   input CLK__L4_N4;
   input CLK__L4_N9;

   // Internal wires
   wire FE_OFN1473_compileCT_3_;
   wire FE_OFN1472_N23;
   wire FE_OFN1336_START;
   wire FE_OFN1328_nxtCompCT_3_;
   wire FE_OFN1327_n4;
   wire FE_OFN1326_n4;
   wire FE_OFN1325_n4;
   wire FE_OFN1324_n4;
   wire FE_OFN1241_n39;
   wire FE_OFN1240_n3;
   wire FE_OFN1239_n3;
   wire FE_OFN1238_n92;
   wire FE_OFN1237_n93;
   wire FE_OFN1236_n82;
   wire FE_OFN1235_n83;
   wire FE_OFN1234_n72;
   wire FE_OFN1232_n73;
   wire FE_OFN1231_n52;
   wire FE_OFN1230_n53;
   wire FE_OFN1229_n29;
   wire FE_OFN1228_n30;
   wire FE_OFN1227_n7;
   wire FE_OFN1226_n62;
   wire FE_OFN1225_n63;
   wire FE_OFN1224_n41;
   wire FE_OFN1223_n42;
   wire FE_OFN1222_n9;
   wire N23;
   wire n215;
   wire n217;
   wire n219;
   wire n221;
   wire n227;
   wire n229;
   wire n230;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire [3:0] compileCT;
   wire [3:0] nxtCompCT;
   wire [4:0] rndCT;
   wire [7:0] cData1;
   wire [7:0] cData2;
   wire [7:0] cData3;
   wire [7:0] cData4;
   wire [7:0] cData5;
   wire [7:0] cData6;
   wire [7:0] cData7;
   wire [7:0] cData8;

   BUFX2 FE_OFC1473_compileCT_3_ (.Y(FE_OFN1473_compileCT_3_), 
	.A(compileCT[3]));
   BUFX2 FE_OFC1472_N23 (.Y(FE_OFN1472_N23), 
	.A(N23));
   BUFX4 FE_OFC1336_START (.Y(START), 
	.A(FE_OFN1336_START));
   BUFX2 FE_OFC1328_nxtCompCT_3_ (.Y(FE_OFN1328_nxtCompCT_3_), 
	.A(nxtCompCT[3]));
   INVX8 FE_OFC1327_n4 (.Y(FE_OFN1327_n4), 
	.A(FE_OFN1324_n4));
   INVX8 FE_OFC1326_n4 (.Y(FE_OFN1326_n4), 
	.A(FE_OFN1325_n4));
   INVX1 FE_OFC1325_n4 (.Y(FE_OFN1325_n4), 
	.A(n4));
   INVX1 FE_OFC1324_n4 (.Y(FE_OFN1324_n4), 
	.A(n4));
   BUFX2 FE_OFC1241_n39 (.Y(FE_OFN1241_n39), 
	.A(n39));
   BUFX4 FE_OFC1240_n3 (.Y(FE_OFN1240_n3), 
	.A(n3));
   BUFX4 FE_OFC1239_n3 (.Y(FE_OFN1239_n3), 
	.A(n3));
   BUFX4 FE_OFC1238_n92 (.Y(FE_OFN1238_n92), 
	.A(n92));
   BUFX4 FE_OFC1237_n93 (.Y(FE_OFN1237_n93), 
	.A(n93));
   BUFX4 FE_OFC1236_n82 (.Y(FE_OFN1236_n82), 
	.A(n82));
   BUFX4 FE_OFC1235_n83 (.Y(FE_OFN1235_n83), 
	.A(n83));
   BUFX4 FE_OFC1234_n72 (.Y(FE_OFN1234_n72), 
	.A(n72));
   BUFX4 FE_OFC1232_n73 (.Y(FE_OFN1232_n73), 
	.A(n73));
   BUFX4 FE_OFC1231_n52 (.Y(FE_OFN1231_n52), 
	.A(n52));
   BUFX4 FE_OFC1230_n53 (.Y(FE_OFN1230_n53), 
	.A(n53));
   BUFX4 FE_OFC1229_n29 (.Y(FE_OFN1229_n29), 
	.A(n29));
   BUFX4 FE_OFC1228_n30 (.Y(FE_OFN1228_n30), 
	.A(n30));
   BUFX2 FE_OFC1227_n7 (.Y(FE_OFN1227_n7), 
	.A(n7));
   BUFX4 FE_OFC1226_n62 (.Y(FE_OFN1226_n62), 
	.A(n62));
   BUFX2 FE_OFC1225_n63 (.Y(FE_OFN1225_n63), 
	.A(n63));
   BUFX4 FE_OFC1224_n41 (.Y(FE_OFN1224_n41), 
	.A(n41));
   BUFX2 FE_OFC1223_n42 (.Y(FE_OFN1223_n42), 
	.A(n42));
   BUFX2 FE_OFC1222_n9 (.Y(FE_OFN1222_n9), 
	.A(n9));
   DFFSR \rndCT_reg[0]  (.S(1'b1), 
	.R(FE_PT1_n1), 
	.Q(rndCT[0]), 
	.D(n229), 
	.CLK(CLK__L4_N20));
   DFFSR \rndCT_reg[1]  (.S(1'b1), 
	.R(FE_PT1_n1), 
	.Q(rndCT[1]), 
	.D(n227), 
	.CLK(CLK__L4_N20));
   DFFSR \compileCT_reg[3]  (.S(1'b1), 
	.R(FE_PT1_n1), 
	.Q(compileCT[3]), 
	.D(FE_OFN1328_nxtCompCT_3_), 
	.CLK(CLK__L4_N20));
   DFFSR \compileCT_reg[1]  (.S(1'b1), 
	.R(FE_PT1_n1), 
	.Q(compileCT[1]), 
	.D(n230), 
	.CLK(CLK__L4_N20));
   DFFSR \compileCT_reg[2]  (.S(1'b1), 
	.R(FE_PT1_n1), 
	.Q(compileCT[2]), 
	.D(nxtCompCT[2]), 
	.CLK(CLK__L4_N20));
   DFFSR \compileCT_reg[0]  (.S(1'b1), 
	.R(FE_PT1_n1), 
	.Q(compileCT[0]), 
	.D(n213), 
	.CLK(CLK__L4_N24));
   DFFSR \rndCT_reg[2]  (.S(1'b1), 
	.R(FE_PT1_n1), 
	.Q(rndCT[2]), 
	.D(n221), 
	.CLK(CLK__L4_N20));
   DFFSR \rndCT_reg[3]  (.S(1'b1), 
	.R(FE_PT1_n1), 
	.Q(rndCT[3]), 
	.D(n219), 
	.CLK(CLK__L4_N20));
   DFFSR \rndCT_reg[4]  (.S(1'b1), 
	.R(FE_PT1_n1), 
	.Q(N23), 
	.D(n217), 
	.CLK(CLK__L4_N20));
   DFFPOSX1 cD_ENABLE_reg (.Q(W_ENABLE), 
	.D(n215), 
	.CLK(CLK__L4_N24));
   DFFPOSX1 \cData2_reg[7]  (.Q(cData2[7]), 
	.D(n353), 
	.CLK(CLK__L4_N1));
   DFFPOSX1 \cData2_reg[6]  (.Q(cData2[6]), 
	.D(n354), 
	.CLK(CLK__L4_N2));
   DFFPOSX1 \cData2_reg[5]  (.Q(cData2[5]), 
	.D(n355), 
	.CLK(CLK));
   DFFPOSX1 \cData2_reg[4]  (.Q(cData2[4]), 
	.D(n356), 
	.CLK(CLK__L4_N1));
   DFFPOSX1 \cData2_reg[3]  (.Q(cData2[3]), 
	.D(n357), 
	.CLK(CLK__L4_N1));
   DFFPOSX1 \cData2_reg[2]  (.Q(cData2[2]), 
	.D(n358), 
	.CLK(CLK__L4_N24));
   DFFPOSX1 \cData2_reg[1]  (.Q(cData2[1]), 
	.D(n359), 
	.CLK(CLK));
   DFFPOSX1 \cData2_reg[0]  (.Q(cData2[0]), 
	.D(n360), 
	.CLK(CLK__L4_N1));
   DFFPOSX1 \cData8_reg[7]  (.Q(cData8[7]), 
	.D(n297), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \cData8_reg[6]  (.Q(cData8[6]), 
	.D(n298), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \cData8_reg[5]  (.Q(cData8[5]), 
	.D(n299), 
	.CLK(CLK__L4_N4));
   DFFPOSX1 \cData8_reg[4]  (.Q(cData8[4]), 
	.D(n300), 
	.CLK(CLK__L4_N14));
   DFFPOSX1 \cData8_reg[3]  (.Q(cData8[3]), 
	.D(n301), 
	.CLK(CLK__L4_N15));
   DFFPOSX1 \cData8_reg[2]  (.Q(cData8[2]), 
	.D(n302), 
	.CLK(CLK__L4_N23));
   DFFPOSX1 \cData8_reg[1]  (.Q(cData8[1]), 
	.D(n303), 
	.CLK(CLK__L4_N14));
   DFFPOSX1 \cData8_reg[0]  (.Q(cData8[0]), 
	.D(n304), 
	.CLK(CLK__L4_N4));
   DFFPOSX1 \cData7_reg[7]  (.Q(cData7[7]), 
	.D(n305), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \cData7_reg[6]  (.Q(cData7[6]), 
	.D(n306), 
	.CLK(CLK__L4_N23));
   DFFPOSX1 \cData7_reg[5]  (.Q(cData7[5]), 
	.D(n307), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \cData7_reg[4]  (.Q(cData7[4]), 
	.D(n308), 
	.CLK(CLK__L4_N23));
   DFFPOSX1 \cData7_reg[3]  (.Q(cData7[3]), 
	.D(n309), 
	.CLK(CLK__L4_N25));
   DFFPOSX1 \cData7_reg[2]  (.Q(cData7[2]), 
	.D(n310), 
	.CLK(CLK__L4_N15));
   DFFPOSX1 \cData7_reg[1]  (.Q(cData7[1]), 
	.D(n311), 
	.CLK(CLK__L4_N15));
   DFFPOSX1 \cData7_reg[0]  (.Q(cData7[0]), 
	.D(n312), 
	.CLK(CLK__L4_N23));
   DFFPOSX1 \cData6_reg[7]  (.Q(cData6[7]), 
	.D(n313), 
	.CLK(CLK__L4_N1));
   DFFPOSX1 \cData6_reg[6]  (.Q(cData6[6]), 
	.D(n314), 
	.CLK(CLK__L4_N20));
   DFFPOSX1 \cData6_reg[5]  (.Q(cData6[5]), 
	.D(n315), 
	.CLK(CLK));
   DFFPOSX1 \cData6_reg[4]  (.Q(cData6[4]), 
	.D(n316), 
	.CLK(CLK));
   DFFPOSX1 \cData6_reg[3]  (.Q(cData6[3]), 
	.D(n317), 
	.CLK(CLK__L4_N1));
   DFFPOSX1 \cData6_reg[2]  (.Q(cData6[2]), 
	.D(n318), 
	.CLK(CLK__L4_N24));
   DFFPOSX1 \cData6_reg[1]  (.Q(cData6[1]), 
	.D(n319), 
	.CLK(CLK));
   DFFPOSX1 \cData6_reg[0]  (.Q(cData6[0]), 
	.D(n320), 
	.CLK(CLK__L4_N10));
   DFFPOSX1 \cData5_reg[7]  (.Q(cData5[7]), 
	.D(n321), 
	.CLK(CLK__L4_N24));
   DFFPOSX1 \cData5_reg[6]  (.Q(cData5[6]), 
	.D(n322), 
	.CLK(CLK__L4_N10));
   DFFPOSX1 \cData5_reg[5]  (.Q(cData5[5]), 
	.D(n323), 
	.CLK(CLK__L4_N24));
   DFFPOSX1 \cData5_reg[4]  (.Q(cData5[4]), 
	.D(n324), 
	.CLK(CLK__L4_N2));
   DFFPOSX1 \cData5_reg[3]  (.Q(cData5[3]), 
	.D(n325), 
	.CLK(CLK__L4_N2));
   DFFPOSX1 \cData5_reg[2]  (.Q(cData5[2]), 
	.D(n326), 
	.CLK(CLK__L4_N10));
   DFFPOSX1 \cData5_reg[1]  (.Q(cData5[1]), 
	.D(n327), 
	.CLK(CLK__L4_N24));
   DFFPOSX1 \cData5_reg[0]  (.Q(cData5[0]), 
	.D(n328), 
	.CLK(CLK__L4_N20));
   DFFPOSX1 \cData4_reg[7]  (.Q(cData4[7]), 
	.D(n329), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \cData4_reg[6]  (.Q(cData4[6]), 
	.D(n330), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \cData4_reg[5]  (.Q(cData4[5]), 
	.D(n331), 
	.CLK(CLK__L4_N14));
   DFFPOSX1 \cData4_reg[4]  (.Q(cData4[4]), 
	.D(n332), 
	.CLK(CLK__L4_N14));
   DFFPOSX1 \cData4_reg[3]  (.Q(cData4[3]), 
	.D(n333), 
	.CLK(CLK__L4_N15));
   DFFPOSX1 \cData4_reg[2]  (.Q(cData4[2]), 
	.D(n334), 
	.CLK(CLK__L4_N15));
   DFFPOSX1 \cData4_reg[1]  (.Q(cData4[1]), 
	.D(n335), 
	.CLK(CLK__L4_N14));
   DFFPOSX1 \cData4_reg[0]  (.Q(cData4[0]), 
	.D(n336), 
	.CLK(CLK__L4_N15));
   DFFPOSX1 \cData3_reg[7]  (.Q(cData3[7]), 
	.D(n337), 
	.CLK(CLK__L4_N25));
   DFFPOSX1 \cData3_reg[6]  (.Q(cData3[6]), 
	.D(n338), 
	.CLK(CLK__L4_N23));
   DFFPOSX1 \cData3_reg[5]  (.Q(cData3[5]), 
	.D(n339), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \cData3_reg[4]  (.Q(cData3[4]), 
	.D(n340), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \cData3_reg[3]  (.Q(cData3[3]), 
	.D(n341), 
	.CLK(CLK__L4_N25));
   DFFPOSX1 \cData3_reg[2]  (.Q(cData3[2]), 
	.D(n342), 
	.CLK(CLK__L4_N25));
   DFFPOSX1 \cData3_reg[1]  (.Q(cData3[1]), 
	.D(n343), 
	.CLK(CLK__L4_N25));
   DFFPOSX1 \cData3_reg[0]  (.Q(cData3[0]), 
	.D(n344), 
	.CLK(CLK__L4_N23));
   DFFPOSX1 \cData1_reg[7]  (.Q(cData1[7]), 
	.D(n345), 
	.CLK(CLK__L4_N24));
   DFFPOSX1 \cData1_reg[6]  (.Q(cData1[6]), 
	.D(n346), 
	.CLK(CLK__L4_N10));
   DFFPOSX1 \cData1_reg[5]  (.Q(cData1[5]), 
	.D(n347), 
	.CLK(CLK__L4_N2));
   DFFPOSX1 \cData1_reg[4]  (.Q(cData1[4]), 
	.D(n348), 
	.CLK(CLK__L4_N2));
   DFFPOSX1 \cData1_reg[3]  (.Q(cData1[3]), 
	.D(n349), 
	.CLK(CLK__L4_N2));
   DFFPOSX1 \cData1_reg[2]  (.Q(cData1[2]), 
	.D(n350), 
	.CLK(CLK__L4_N10));
   DFFPOSX1 \cData1_reg[1]  (.Q(cData1[1]), 
	.D(n351), 
	.CLK(CLK__L4_N2));
   DFFPOSX1 \cData1_reg[0]  (.Q(cData1[0]), 
	.D(n352), 
	.CLK(CLK__L4_N2));
   DFFPOSX1 \CompData2_reg[63]  (.Q(ENC_LEFT[31]), 
	.D(n233), 
	.CLK(CLK__L4_N24));
   DFFPOSX1 \CompData2_reg[62]  (.Q(ENC_LEFT[30]), 
	.D(n234), 
	.CLK(CLK__L4_N10));
   DFFPOSX1 \CompData2_reg[61]  (.Q(ENC_LEFT[29]), 
	.D(n235), 
	.CLK(CLK__L4_N2));
   DFFPOSX1 \CompData2_reg[60]  (.Q(ENC_LEFT[28]), 
	.D(n236), 
	.CLK(CLK__L4_N2));
   DFFPOSX1 \CompData2_reg[59]  (.Q(ENC_LEFT[27]), 
	.D(n237), 
	.CLK(CLK__L4_N2));
   DFFPOSX1 \CompData2_reg[58]  (.Q(ENC_LEFT[26]), 
	.D(n238), 
	.CLK(CLK__L4_N10));
   DFFPOSX1 \CompData2_reg[57]  (.Q(ENC_LEFT[25]), 
	.D(n239), 
	.CLK(CLK));
   DFFPOSX1 \CompData2_reg[56]  (.Q(ENC_LEFT[24]), 
	.D(n240), 
	.CLK(CLK__L4_N10));
   DFFPOSX1 \CompData2_reg[55]  (.Q(ENC_LEFT[23]), 
	.D(n241), 
	.CLK(CLK__L4_N1));
   DFFPOSX1 \CompData2_reg[54]  (.Q(ENC_LEFT[22]), 
	.D(n242), 
	.CLK(CLK__L4_N2));
   DFFPOSX1 \CompData2_reg[53]  (.Q(ENC_LEFT[21]), 
	.D(n243), 
	.CLK(CLK));
   DFFPOSX1 \CompData2_reg[52]  (.Q(ENC_LEFT[20]), 
	.D(n244), 
	.CLK(CLK__L4_N1));
   DFFPOSX1 \CompData2_reg[51]  (.Q(ENC_LEFT[19]), 
	.D(n245), 
	.CLK(CLK__L4_N9));
   DFFPOSX1 \CompData2_reg[50]  (.Q(ENC_LEFT[18]), 
	.D(n246), 
	.CLK(CLK__L4_N24));
   DFFPOSX1 \CompData2_reg[49]  (.Q(ENC_LEFT[17]), 
	.D(n247), 
	.CLK(CLK));
   DFFPOSX1 \CompData2_reg[48]  (.Q(ENC_LEFT[16]), 
	.D(n248), 
	.CLK(CLK__L4_N1));
   DFFPOSX1 \CompData2_reg[47]  (.Q(ENC_LEFT[15]), 
	.D(n249), 
	.CLK(CLK__L4_N15));
   DFFPOSX1 \CompData2_reg[46]  (.Q(ENC_LEFT[14]), 
	.D(n250), 
	.CLK(CLK__L4_N23));
   DFFPOSX1 \CompData2_reg[45]  (.Q(ENC_LEFT[13]), 
	.D(n251), 
	.CLK(CLK__L4_N25));
   DFFPOSX1 \CompData2_reg[44]  (.Q(ENC_LEFT[12]), 
	.D(n252), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \CompData2_reg[43]  (.Q(ENC_LEFT[11]), 
	.D(n253), 
	.CLK(CLK__L4_N25));
   DFFPOSX1 \CompData2_reg[42]  (.Q(ENC_LEFT[10]), 
	.D(n254), 
	.CLK(CLK__L4_N25));
   DFFPOSX1 \CompData2_reg[41]  (.Q(ENC_LEFT[9]), 
	.D(n255), 
	.CLK(CLK__L4_N15));
   DFFPOSX1 \CompData2_reg[40]  (.Q(ENC_LEFT[8]), 
	.D(n256), 
	.CLK(CLK__L4_N23));
   DFFPOSX1 \CompData2_reg[39]  (.Q(ENC_LEFT[7]), 
	.D(n257), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \CompData2_reg[38]  (.Q(ENC_LEFT[6]), 
	.D(n258), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \CompData2_reg[37]  (.Q(ENC_LEFT[5]), 
	.D(n259), 
	.CLK(CLK__L4_N14));
   DFFPOSX1 \CompData2_reg[36]  (.Q(ENC_LEFT[4]), 
	.D(n260), 
	.CLK(CLK__L4_N14));
   DFFPOSX1 \CompData2_reg[35]  (.Q(ENC_LEFT[3]), 
	.D(n261), 
	.CLK(CLK__L4_N15));
   DFFPOSX1 \CompData2_reg[34]  (.Q(ENC_LEFT[2]), 
	.D(n262), 
	.CLK(CLK__L4_N15));
   DFFPOSX1 \CompData2_reg[33]  (.Q(ENC_LEFT[1]), 
	.D(n263), 
	.CLK(CLK__L4_N14));
   DFFPOSX1 \CompData2_reg[32]  (.Q(ENC_LEFT[0]), 
	.D(n264), 
	.CLK(CLK__L4_N4));
   DFFPOSX1 \CompData2_reg[31]  (.Q(ENC_RIGHT[31]), 
	.D(n265), 
	.CLK(CLK__L4_N24));
   DFFPOSX1 \CompData2_reg[30]  (.Q(ENC_RIGHT[30]), 
	.D(n266), 
	.CLK(CLK__L4_N19));
   DFFPOSX1 \CompData2_reg[29]  (.Q(ENC_RIGHT[29]), 
	.D(n267), 
	.CLK(CLK__L4_N24));
   DFFPOSX1 \CompData2_reg[28]  (.Q(ENC_RIGHT[28]), 
	.D(n268), 
	.CLK(CLK__L4_N2));
   DFFPOSX1 \CompData2_reg[27]  (.Q(ENC_RIGHT[27]), 
	.D(n269), 
	.CLK(CLK__L4_N10));
   DFFPOSX1 \CompData2_reg[26]  (.Q(ENC_RIGHT[26]), 
	.D(n270), 
	.CLK(CLK__L4_N10));
   DFFPOSX1 \CompData2_reg[25]  (.Q(ENC_RIGHT[25]), 
	.D(n271), 
	.CLK(CLK__L4_N23));
   DFFPOSX1 \CompData2_reg[24]  (.Q(ENC_RIGHT[24]), 
	.D(n272), 
	.CLK(CLK__L4_N10));
   DFFPOSX1 \CompData2_reg[23]  (.Q(ENC_RIGHT[23]), 
	.D(n273), 
	.CLK(CLK__L4_N1));
   DFFPOSX1 \CompData2_reg[22]  (.Q(ENC_RIGHT[22]), 
	.D(n274), 
	.CLK(CLK__L4_N20));
   DFFPOSX1 \CompData2_reg[21]  (.Q(ENC_RIGHT[21]), 
	.D(n275), 
	.CLK(CLK));
   DFFPOSX1 \CompData2_reg[20]  (.Q(ENC_RIGHT[20]), 
	.D(n276), 
	.CLK(CLK));
   DFFPOSX1 \CompData2_reg[19]  (.Q(ENC_RIGHT[19]), 
	.D(n277), 
	.CLK(CLK__L4_N9));
   DFFPOSX1 \CompData2_reg[18]  (.Q(ENC_RIGHT[18]), 
	.D(n278), 
	.CLK(CLK__L4_N24));
   DFFPOSX1 \CompData2_reg[17]  (.Q(ENC_RIGHT[17]), 
	.D(n279), 
	.CLK(CLK));
   DFFPOSX1 \CompData2_reg[16]  (.Q(ENC_RIGHT[16]), 
	.D(n280), 
	.CLK(CLK__L4_N9));
   DFFPOSX1 \CompData2_reg[15]  (.Q(ENC_RIGHT[15]), 
	.D(n281), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \CompData2_reg[14]  (.Q(ENC_RIGHT[14]), 
	.D(n282), 
	.CLK(CLK__L4_N23));
   DFFPOSX1 \CompData2_reg[13]  (.Q(ENC_RIGHT[13]), 
	.D(n283), 
	.CLK(CLK__L4_N25));
   DFFPOSX1 \CompData2_reg[12]  (.Q(ENC_RIGHT[12]), 
	.D(n284), 
	.CLK(CLK__L4_N23));
   DFFPOSX1 \CompData2_reg[11]  (.Q(ENC_RIGHT[11]), 
	.D(n285), 
	.CLK(CLK__L4_N25));
   DFFPOSX1 \CompData2_reg[10]  (.Q(ENC_RIGHT[10]), 
	.D(n286), 
	.CLK(CLK__L4_N15));
   DFFPOSX1 \CompData2_reg[9]  (.Q(ENC_RIGHT[9]), 
	.D(n287), 
	.CLK(CLK__L4_N15));
   DFFPOSX1 \CompData2_reg[8]  (.Q(ENC_RIGHT[8]), 
	.D(n288), 
	.CLK(CLK));
   DFFPOSX1 \CompData2_reg[7]  (.Q(ENC_RIGHT[7]), 
	.D(n289), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \CompData2_reg[6]  (.Q(ENC_RIGHT[6]), 
	.D(n290), 
	.CLK(CLK__L4_N22));
   DFFPOSX1 \CompData2_reg[5]  (.Q(ENC_RIGHT[5]), 
	.D(n291), 
	.CLK(CLK__L4_N4));
   DFFPOSX1 \CompData2_reg[4]  (.Q(ENC_RIGHT[4]), 
	.D(n292), 
	.CLK(CLK__L4_N14));
   DFFPOSX1 \CompData2_reg[3]  (.Q(ENC_RIGHT[3]), 
	.D(n293), 
	.CLK(CLK__L4_N15));
   DFFPOSX1 \CompData2_reg[2]  (.Q(ENC_RIGHT[2]), 
	.D(n294), 
	.CLK(CLK__L4_N23));
   DFFPOSX1 \CompData2_reg[1]  (.Q(ENC_RIGHT[1]), 
	.D(n295), 
	.CLK(CLK__L4_N14));
   DFFPOSX1 \CompData2_reg[0]  (.Q(ENC_RIGHT[0]), 
	.D(n296), 
	.CLK(CLK__L4_N4));
   NAND2X1 U3 (.Y(n1), 
	.B(FE_OFN1241_n39), 
	.A(n4));
   AND2X2 U4 (.Y(n2), 
	.B(n230), 
	.A(FE_OFN1328_nxtCompCT_3_));
   INVX8 U5 (.Y(n3), 
	.A(n1));
   INVX8 U6 (.Y(n4), 
	.A(n2));
   OAI22X1 U10 (.Y(n360), 
	.D(n10), 
	.C(FE_OFN1222_n9), 
	.B(n8), 
	.A(FE_OFN1227_n7));
   OAI22X1 U11 (.Y(n359), 
	.D(n12), 
	.C(FE_OFN1222_n9), 
	.B(n11), 
	.A(FE_OFN1227_n7));
   OAI22X1 U12 (.Y(n358), 
	.D(n14), 
	.C(n9), 
	.B(n13), 
	.A(n7));
   OAI22X1 U13 (.Y(n357), 
	.D(n16), 
	.C(FE_OFN1222_n9), 
	.B(n15), 
	.A(FE_OFN1227_n7));
   OAI22X1 U14 (.Y(n356), 
	.D(n18), 
	.C(FE_OFN1222_n9), 
	.B(n17), 
	.A(FE_OFN1227_n7));
   OAI22X1 U15 (.Y(n355), 
	.D(n20), 
	.C(FE_OFN1222_n9), 
	.B(n19), 
	.A(FE_OFN1227_n7));
   OAI22X1 U16 (.Y(n354), 
	.D(n22), 
	.C(n9), 
	.B(n21), 
	.A(n7));
   OAI22X1 U17 (.Y(n353), 
	.D(n24), 
	.C(FE_OFN1222_n9), 
	.B(n23), 
	.A(FE_OFN1227_n7));
   OAI21X1 U18 (.Y(n9), 
	.C(n7), 
	.B(n25), 
	.A(FE_OFN1328_nxtCompCT_3_));
   NAND2X1 U19 (.Y(n25), 
	.B(n27), 
	.A(n26));
   NAND3X1 U20 (.Y(n7), 
	.C(n28), 
	.B(n230), 
	.A(n26));
   OAI22X1 U21 (.Y(n352), 
	.D(n31), 
	.C(FE_OFN1228_n30), 
	.B(FE_OFN1229_n29), 
	.A(n8));
   OAI22X1 U22 (.Y(n351), 
	.D(n32), 
	.C(FE_OFN1228_n30), 
	.B(FE_OFN1229_n29), 
	.A(n11));
   OAI22X1 U23 (.Y(n350), 
	.D(n33), 
	.C(FE_OFN1228_n30), 
	.B(FE_OFN1229_n29), 
	.A(n13));
   OAI22X1 U24 (.Y(n349), 
	.D(n34), 
	.C(FE_OFN1228_n30), 
	.B(FE_OFN1229_n29), 
	.A(n15));
   OAI22X1 U25 (.Y(n348), 
	.D(n35), 
	.C(FE_OFN1228_n30), 
	.B(FE_OFN1229_n29), 
	.A(n17));
   OAI22X1 U26 (.Y(n347), 
	.D(n36), 
	.C(n30), 
	.B(n29), 
	.A(n19));
   OAI22X1 U27 (.Y(n346), 
	.D(n37), 
	.C(FE_OFN1228_n30), 
	.B(FE_OFN1229_n29), 
	.A(n21));
   OAI22X1 U28 (.Y(n345), 
	.D(n38), 
	.C(FE_OFN1228_n30), 
	.B(FE_OFN1229_n29), 
	.A(n23));
   NAND2X1 U29 (.Y(n30), 
	.B(n29), 
	.A(FE_OFN1241_n39));
   NAND2X1 U30 (.Y(n29), 
	.B(n28), 
	.A(n40));
   OAI22X1 U31 (.Y(n344), 
	.D(n43), 
	.C(n42), 
	.B(FE_OFN1224_n41), 
	.A(n8));
   OAI22X1 U32 (.Y(n343), 
	.D(n44), 
	.C(FE_OFN1223_n42), 
	.B(FE_OFN1224_n41), 
	.A(n11));
   OAI22X1 U33 (.Y(n342), 
	.D(n45), 
	.C(FE_OFN1223_n42), 
	.B(FE_OFN1224_n41), 
	.A(n13));
   OAI22X1 U34 (.Y(n341), 
	.D(n46), 
	.C(FE_OFN1223_n42), 
	.B(FE_OFN1224_n41), 
	.A(n15));
   OAI22X1 U35 (.Y(n340), 
	.D(n47), 
	.C(FE_OFN1223_n42), 
	.B(FE_OFN1224_n41), 
	.A(n17));
   OAI22X1 U36 (.Y(n339), 
	.D(n48), 
	.C(FE_OFN1223_n42), 
	.B(FE_OFN1224_n41), 
	.A(n19));
   OAI22X1 U37 (.Y(n338), 
	.D(n49), 
	.C(FE_OFN1223_n42), 
	.B(FE_OFN1224_n41), 
	.A(n21));
   OAI22X1 U38 (.Y(n337), 
	.D(n50), 
	.C(FE_OFN1223_n42), 
	.B(FE_OFN1224_n41), 
	.A(n23));
   NAND2X1 U39 (.Y(n42), 
	.B(FE_OFN1224_n41), 
	.A(FE_OFN1241_n39));
   NAND3X1 U40 (.Y(n41), 
	.C(nxtCompCT[2]), 
	.B(n27), 
	.A(n51));
   OAI22X1 U41 (.Y(n336), 
	.D(n54), 
	.C(FE_OFN1230_n53), 
	.B(FE_OFN1231_n52), 
	.A(n8));
   OAI22X1 U42 (.Y(n335), 
	.D(n55), 
	.C(FE_OFN1230_n53), 
	.B(FE_OFN1231_n52), 
	.A(n11));
   OAI22X1 U43 (.Y(n334), 
	.D(n56), 
	.C(FE_OFN1230_n53), 
	.B(FE_OFN1231_n52), 
	.A(n13));
   OAI22X1 U44 (.Y(n333), 
	.D(n57), 
	.C(FE_OFN1230_n53), 
	.B(FE_OFN1231_n52), 
	.A(n15));
   OAI22X1 U45 (.Y(n332), 
	.D(n58), 
	.C(FE_OFN1230_n53), 
	.B(FE_OFN1231_n52), 
	.A(n17));
   OAI22X1 U46 (.Y(n331), 
	.D(n59), 
	.C(FE_OFN1230_n53), 
	.B(FE_OFN1231_n52), 
	.A(n19));
   OAI22X1 U47 (.Y(n330), 
	.D(n60), 
	.C(FE_OFN1230_n53), 
	.B(FE_OFN1231_n52), 
	.A(n21));
   OAI22X1 U48 (.Y(n329), 
	.D(n61), 
	.C(FE_OFN1230_n53), 
	.B(FE_OFN1231_n52), 
	.A(n23));
   NAND2X1 U49 (.Y(n53), 
	.B(FE_OFN1231_n52), 
	.A(FE_OFN1241_n39));
   NAND3X1 U50 (.Y(n52), 
	.C(n28), 
	.B(nxtCompCT[2]), 
	.A(n51));
   OAI22X1 U51 (.Y(n328), 
	.D(n64), 
	.C(FE_OFN1225_n63), 
	.B(FE_OFN1226_n62), 
	.A(n8));
   OAI22X1 U52 (.Y(n327), 
	.D(n65), 
	.C(n63), 
	.B(FE_OFN1226_n62), 
	.A(n11));
   OAI22X1 U53 (.Y(n326), 
	.D(n66), 
	.C(FE_OFN1225_n63), 
	.B(FE_OFN1226_n62), 
	.A(n13));
   OAI22X1 U54 (.Y(n325), 
	.D(n67), 
	.C(FE_OFN1225_n63), 
	.B(FE_OFN1226_n62), 
	.A(n15));
   OAI22X1 U55 (.Y(n324), 
	.D(n68), 
	.C(FE_OFN1225_n63), 
	.B(FE_OFN1226_n62), 
	.A(n17));
   OAI22X1 U56 (.Y(n323), 
	.D(n69), 
	.C(n63), 
	.B(FE_OFN1226_n62), 
	.A(n19));
   OAI22X1 U57 (.Y(n322), 
	.D(n70), 
	.C(FE_OFN1225_n63), 
	.B(FE_OFN1226_n62), 
	.A(n21));
   OAI22X1 U58 (.Y(n321), 
	.D(n71), 
	.C(n63), 
	.B(FE_OFN1226_n62), 
	.A(n23));
   NAND2X1 U59 (.Y(n63), 
	.B(FE_OFN1226_n62), 
	.A(FE_OFN1241_n39));
   NAND3X1 U60 (.Y(n62), 
	.C(n230), 
	.B(n27), 
	.A(nxtCompCT[2]));
   OAI22X1 U61 (.Y(n320), 
	.D(n74), 
	.C(FE_OFN1232_n73), 
	.B(FE_OFN1234_n72), 
	.A(n8));
   OAI22X1 U62 (.Y(n319), 
	.D(n75), 
	.C(FE_OFN1232_n73), 
	.B(FE_OFN1234_n72), 
	.A(n11));
   OAI22X1 U63 (.Y(n318), 
	.D(n76), 
	.C(FE_OFN1232_n73), 
	.B(FE_OFN1234_n72), 
	.A(n13));
   OAI22X1 U64 (.Y(n317), 
	.D(n77), 
	.C(FE_OFN1232_n73), 
	.B(FE_OFN1234_n72), 
	.A(n15));
   OAI22X1 U65 (.Y(n316), 
	.D(n78), 
	.C(FE_OFN1232_n73), 
	.B(FE_OFN1234_n72), 
	.A(n17));
   OAI22X1 U66 (.Y(n315), 
	.D(n79), 
	.C(FE_OFN1232_n73), 
	.B(FE_OFN1234_n72), 
	.A(n19));
   OAI22X1 U67 (.Y(n314), 
	.D(n80), 
	.C(FE_OFN1232_n73), 
	.B(FE_OFN1234_n72), 
	.A(n21));
   OAI22X1 U68 (.Y(n313), 
	.D(n81), 
	.C(FE_OFN1232_n73), 
	.B(FE_OFN1234_n72), 
	.A(n23));
   NAND2X1 U69 (.Y(n73), 
	.B(FE_OFN1234_n72), 
	.A(FE_OFN1241_n39));
   NAND3X1 U70 (.Y(n72), 
	.C(n28), 
	.B(nxtCompCT[2]), 
	.A(n230));
   NOR2X1 U71 (.Y(n28), 
	.B(FE_OFN1328_nxtCompCT_3_), 
	.A(n27));
   OAI22X1 U72 (.Y(n312), 
	.D(n84), 
	.C(n83), 
	.B(FE_OFN1236_n82), 
	.A(n8));
   OAI22X1 U73 (.Y(n311), 
	.D(n85), 
	.C(FE_OFN1235_n83), 
	.B(FE_OFN1236_n82), 
	.A(n11));
   OAI22X1 U74 (.Y(n310), 
	.D(n86), 
	.C(FE_OFN1235_n83), 
	.B(FE_OFN1236_n82), 
	.A(n13));
   OAI22X1 U75 (.Y(n309), 
	.D(n87), 
	.C(FE_OFN1235_n83), 
	.B(FE_OFN1236_n82), 
	.A(n15));
   OAI22X1 U76 (.Y(n308), 
	.D(n88), 
	.C(FE_OFN1235_n83), 
	.B(FE_OFN1236_n82), 
	.A(n17));
   OAI22X1 U77 (.Y(n307), 
	.D(n89), 
	.C(FE_OFN1235_n83), 
	.B(FE_OFN1236_n82), 
	.A(n19));
   OAI22X1 U78 (.Y(n306), 
	.D(n90), 
	.C(n83), 
	.B(FE_OFN1236_n82), 
	.A(n21));
   OAI22X1 U79 (.Y(n305), 
	.D(n91), 
	.C(FE_OFN1235_n83), 
	.B(FE_OFN1236_n82), 
	.A(n23));
   NAND2X1 U80 (.Y(n83), 
	.B(FE_OFN1236_n82), 
	.A(FE_OFN1241_n39));
   NAND3X1 U81 (.Y(n82), 
	.C(FE_OFN1328_nxtCompCT_3_), 
	.B(n27), 
	.A(n40));
   OAI22X1 U82 (.Y(n304), 
	.D(n94), 
	.C(FE_OFN1237_n93), 
	.B(FE_OFN1238_n92), 
	.A(n8));
   INVX8 U83 (.Y(n8), 
	.A(DATA[0]));
   OAI22X1 U84 (.Y(n303), 
	.D(n95), 
	.C(FE_OFN1237_n93), 
	.B(FE_OFN1238_n92), 
	.A(n11));
   INVX4 U85 (.Y(n11), 
	.A(DATA[1]));
   OAI22X1 U86 (.Y(n302), 
	.D(n96), 
	.C(FE_OFN1237_n93), 
	.B(FE_OFN1238_n92), 
	.A(n13));
   INVX8 U87 (.Y(n13), 
	.A(DATA[2]));
   OAI22X1 U88 (.Y(n301), 
	.D(n97), 
	.C(FE_OFN1237_n93), 
	.B(FE_OFN1238_n92), 
	.A(n15));
   INVX4 U89 (.Y(n15), 
	.A(DATA[3]));
   OAI22X1 U90 (.Y(n300), 
	.D(n98), 
	.C(FE_OFN1237_n93), 
	.B(FE_OFN1238_n92), 
	.A(n17));
   INVX4 U91 (.Y(n17), 
	.A(DATA[4]));
   OAI22X1 U92 (.Y(n299), 
	.D(n99), 
	.C(FE_OFN1237_n93), 
	.B(FE_OFN1238_n92), 
	.A(n19));
   INVX4 U93 (.Y(n19), 
	.A(DATA[5]));
   OAI22X1 U94 (.Y(n298), 
	.D(n100), 
	.C(FE_OFN1237_n93), 
	.B(FE_OFN1238_n92), 
	.A(n21));
   INVX4 U95 (.Y(n21), 
	.A(DATA[6]));
   OAI22X1 U96 (.Y(n297), 
	.D(n101), 
	.C(FE_OFN1237_n93), 
	.B(FE_OFN1238_n92), 
	.A(n23));
   NAND2X1 U97 (.Y(n93), 
	.B(n92), 
	.A(FE_OFN1241_n39));
   NAND2X1 U98 (.Y(n92), 
	.B(n213), 
	.A(FE_OFN1328_nxtCompCT_3_));
   INVX1 U99 (.Y(n213), 
	.A(n27));
   INVX4 U100 (.Y(n23), 
	.A(DATA[7]));
   OAI21X1 U101 (.Y(n296), 
	.C(n102), 
	.B(FE_OFN1326_n4), 
	.A(n94));
   NAND2X1 U102 (.Y(n102), 
	.B(n3), 
	.A(ENC_RIGHT[0]));
   INVX1 U103 (.Y(n94), 
	.A(cData8[0]));
   OAI21X1 U104 (.Y(n295), 
	.C(n103), 
	.B(FE_OFN1326_n4), 
	.A(n95));
   NAND2X1 U105 (.Y(n103), 
	.B(n3), 
	.A(ENC_RIGHT[1]));
   INVX1 U106 (.Y(n95), 
	.A(cData8[1]));
   OAI21X1 U107 (.Y(n294), 
	.C(n104), 
	.B(FE_OFN1327_n4), 
	.A(n96));
   NAND2X1 U108 (.Y(n104), 
	.B(n3), 
	.A(ENC_RIGHT[2]));
   INVX1 U109 (.Y(n96), 
	.A(cData8[2]));
   OAI21X1 U110 (.Y(n293), 
	.C(n105), 
	.B(FE_OFN1326_n4), 
	.A(n97));
   NAND2X1 U111 (.Y(n105), 
	.B(FE_OFN1240_n3), 
	.A(ENC_RIGHT[3]));
   INVX1 U112 (.Y(n97), 
	.A(cData8[3]));
   OAI21X1 U113 (.Y(n292), 
	.C(n106), 
	.B(FE_OFN1327_n4), 
	.A(n98));
   NAND2X1 U114 (.Y(n106), 
	.B(n3), 
	.A(ENC_RIGHT[4]));
   INVX1 U115 (.Y(n98), 
	.A(cData8[4]));
   OAI21X1 U116 (.Y(n291), 
	.C(n107), 
	.B(FE_OFN1326_n4), 
	.A(n99));
   NAND2X1 U117 (.Y(n107), 
	.B(n3), 
	.A(ENC_RIGHT[5]));
   INVX1 U118 (.Y(n99), 
	.A(cData8[5]));
   OAI21X1 U119 (.Y(n290), 
	.C(n108), 
	.B(FE_OFN1326_n4), 
	.A(n100));
   NAND2X1 U120 (.Y(n108), 
	.B(FE_OFN1240_n3), 
	.A(ENC_RIGHT[6]));
   INVX1 U121 (.Y(n100), 
	.A(cData8[6]));
   OAI21X1 U122 (.Y(n289), 
	.C(n109), 
	.B(FE_OFN1326_n4), 
	.A(n101));
   NAND2X1 U123 (.Y(n109), 
	.B(FE_OFN1240_n3), 
	.A(ENC_RIGHT[7]));
   INVX1 U124 (.Y(n101), 
	.A(cData8[7]));
   OAI21X1 U125 (.Y(n288), 
	.C(n110), 
	.B(FE_OFN1327_n4), 
	.A(n84));
   NAND2X1 U126 (.Y(n110), 
	.B(n3), 
	.A(ENC_RIGHT[8]));
   INVX1 U127 (.Y(n84), 
	.A(cData7[0]));
   OAI21X1 U128 (.Y(n287), 
	.C(n111), 
	.B(FE_OFN1326_n4), 
	.A(n85));
   NAND2X1 U129 (.Y(n111), 
	.B(FE_OFN1240_n3), 
	.A(ENC_RIGHT[9]));
   INVX1 U130 (.Y(n85), 
	.A(cData7[1]));
   OAI21X1 U131 (.Y(n286), 
	.C(n112), 
	.B(FE_OFN1326_n4), 
	.A(n86));
   NAND2X1 U132 (.Y(n112), 
	.B(FE_OFN1240_n3), 
	.A(ENC_RIGHT[10]));
   INVX1 U133 (.Y(n86), 
	.A(cData7[2]));
   OAI21X1 U134 (.Y(n285), 
	.C(n113), 
	.B(FE_OFN1326_n4), 
	.A(n87));
   NAND2X1 U135 (.Y(n113), 
	.B(FE_OFN1240_n3), 
	.A(ENC_RIGHT[11]));
   INVX1 U136 (.Y(n87), 
	.A(cData7[3]));
   OAI21X1 U137 (.Y(n284), 
	.C(n114), 
	.B(n4), 
	.A(n88));
   NAND2X1 U138 (.Y(n114), 
	.B(FE_OFN1240_n3), 
	.A(ENC_RIGHT[12]));
   INVX1 U139 (.Y(n88), 
	.A(cData7[4]));
   OAI21X1 U140 (.Y(n283), 
	.C(n115), 
	.B(FE_OFN1326_n4), 
	.A(n89));
   NAND2X1 U141 (.Y(n115), 
	.B(FE_OFN1240_n3), 
	.A(ENC_RIGHT[13]));
   INVX1 U142 (.Y(n89), 
	.A(cData7[5]));
   OAI21X1 U143 (.Y(n282), 
	.C(n116), 
	.B(n4), 
	.A(n90));
   NAND2X1 U144 (.Y(n116), 
	.B(n3), 
	.A(ENC_RIGHT[14]));
   INVX1 U145 (.Y(n90), 
	.A(cData7[6]));
   OAI21X1 U146 (.Y(n281), 
	.C(n117), 
	.B(FE_OFN1326_n4), 
	.A(n91));
   NAND2X1 U147 (.Y(n117), 
	.B(FE_OFN1240_n3), 
	.A(ENC_RIGHT[15]));
   INVX1 U148 (.Y(n91), 
	.A(cData7[7]));
   OAI21X1 U149 (.Y(n280), 
	.C(n118), 
	.B(FE_OFN1327_n4), 
	.A(n74));
   NAND2X1 U150 (.Y(n118), 
	.B(FE_OFN1239_n3), 
	.A(ENC_RIGHT[16]));
   INVX1 U151 (.Y(n74), 
	.A(cData6[0]));
   OAI21X1 U152 (.Y(n279), 
	.C(n119), 
	.B(FE_OFN1327_n4), 
	.A(n75));
   NAND2X1 U153 (.Y(n119), 
	.B(n3), 
	.A(ENC_RIGHT[17]));
   INVX1 U154 (.Y(n75), 
	.A(cData6[1]));
   OAI21X1 U155 (.Y(n278), 
	.C(n120), 
	.B(n4), 
	.A(n76));
   NAND2X1 U156 (.Y(n120), 
	.B(n3), 
	.A(ENC_RIGHT[18]));
   INVX1 U157 (.Y(n76), 
	.A(cData6[2]));
   OAI21X1 U158 (.Y(n277), 
	.C(n121), 
	.B(FE_OFN1327_n4), 
	.A(n77));
   NAND2X1 U159 (.Y(n121), 
	.B(FE_OFN1239_n3), 
	.A(ENC_RIGHT[19]));
   INVX1 U160 (.Y(n77), 
	.A(cData6[3]));
   OAI21X1 U161 (.Y(n276), 
	.C(n122), 
	.B(FE_OFN1327_n4), 
	.A(n78));
   NAND2X1 U162 (.Y(n122), 
	.B(n3), 
	.A(ENC_RIGHT[20]));
   INVX1 U163 (.Y(n78), 
	.A(cData6[4]));
   OAI21X1 U164 (.Y(n275), 
	.C(n123), 
	.B(FE_OFN1327_n4), 
	.A(n79));
   NAND2X1 U165 (.Y(n123), 
	.B(n3), 
	.A(ENC_RIGHT[21]));
   INVX1 U166 (.Y(n79), 
	.A(cData6[5]));
   OAI21X1 U167 (.Y(n274), 
	.C(n124), 
	.B(n4), 
	.A(n80));
   NAND2X1 U168 (.Y(n124), 
	.B(n3), 
	.A(ENC_RIGHT[22]));
   INVX1 U169 (.Y(n80), 
	.A(cData6[6]));
   OAI21X1 U170 (.Y(n273), 
	.C(n125), 
	.B(FE_OFN1327_n4), 
	.A(n81));
   NAND2X1 U171 (.Y(n125), 
	.B(FE_OFN1239_n3), 
	.A(ENC_RIGHT[23]));
   INVX1 U172 (.Y(n81), 
	.A(cData6[7]));
   OAI21X1 U173 (.Y(n272), 
	.C(n126), 
	.B(n4), 
	.A(n64));
   NAND2X1 U174 (.Y(n126), 
	.B(n3), 
	.A(ENC_RIGHT[24]));
   INVX1 U175 (.Y(n64), 
	.A(cData5[0]));
   OAI21X1 U176 (.Y(n271), 
	.C(n127), 
	.B(FE_OFN1327_n4), 
	.A(n65));
   NAND2X1 U177 (.Y(n127), 
	.B(n3), 
	.A(ENC_RIGHT[25]));
   INVX1 U178 (.Y(n65), 
	.A(cData5[1]));
   OAI21X1 U179 (.Y(n270), 
	.C(n128), 
	.B(n4), 
	.A(n66));
   NAND2X1 U180 (.Y(n128), 
	.B(FE_OFN1239_n3), 
	.A(ENC_RIGHT[26]));
   INVX1 U181 (.Y(n66), 
	.A(cData5[2]));
   OAI21X1 U182 (.Y(n269), 
	.C(n129), 
	.B(FE_OFN1327_n4), 
	.A(n67));
   NAND2X1 U183 (.Y(n129), 
	.B(FE_OFN1239_n3), 
	.A(ENC_RIGHT[27]));
   INVX1 U184 (.Y(n67), 
	.A(cData5[3]));
   OAI21X1 U185 (.Y(n268), 
	.C(n130), 
	.B(n4), 
	.A(n68));
   NAND2X1 U186 (.Y(n130), 
	.B(FE_OFN1239_n3), 
	.A(ENC_RIGHT[28]));
   INVX1 U187 (.Y(n68), 
	.A(cData5[4]));
   OAI21X1 U188 (.Y(n267), 
	.C(n131), 
	.B(n4), 
	.A(n69));
   NAND2X1 U189 (.Y(n131), 
	.B(n3), 
	.A(ENC_RIGHT[29]));
   INVX1 U190 (.Y(n69), 
	.A(cData5[5]));
   OAI21X1 U191 (.Y(n266), 
	.C(n132), 
	.B(n4), 
	.A(n70));
   NAND2X1 U192 (.Y(n132), 
	.B(FE_OFN1239_n3), 
	.A(ENC_RIGHT[30]));
   INVX1 U193 (.Y(n70), 
	.A(cData5[6]));
   OAI21X1 U194 (.Y(n265), 
	.C(n133), 
	.B(n4), 
	.A(n71));
   NAND2X1 U195 (.Y(n133), 
	.B(n3), 
	.A(ENC_RIGHT[31]));
   INVX1 U196 (.Y(n71), 
	.A(cData5[7]));
   OAI21X1 U197 (.Y(n264), 
	.C(n134), 
	.B(FE_OFN1326_n4), 
	.A(n54));
   NAND2X1 U198 (.Y(n134), 
	.B(n3), 
	.A(ENC_LEFT[0]));
   INVX1 U199 (.Y(n54), 
	.A(cData4[0]));
   OAI21X1 U200 (.Y(n263), 
	.C(n135), 
	.B(FE_OFN1326_n4), 
	.A(n55));
   NAND2X1 U201 (.Y(n135), 
	.B(n3), 
	.A(ENC_LEFT[1]));
   INVX1 U202 (.Y(n55), 
	.A(cData4[1]));
   OAI21X1 U203 (.Y(n262), 
	.C(n136), 
	.B(FE_OFN1326_n4), 
	.A(n56));
   NAND2X1 U204 (.Y(n136), 
	.B(n3), 
	.A(ENC_LEFT[2]));
   INVX1 U205 (.Y(n56), 
	.A(cData4[2]));
   OAI21X1 U206 (.Y(n261), 
	.C(n137), 
	.B(FE_OFN1326_n4), 
	.A(n57));
   NAND2X1 U207 (.Y(n137), 
	.B(FE_OFN1240_n3), 
	.A(ENC_LEFT[3]));
   INVX1 U208 (.Y(n57), 
	.A(cData4[3]));
   OAI21X1 U209 (.Y(n260), 
	.C(n138), 
	.B(FE_OFN1327_n4), 
	.A(n58));
   NAND2X1 U210 (.Y(n138), 
	.B(n3), 
	.A(ENC_LEFT[4]));
   INVX1 U211 (.Y(n58), 
	.A(cData4[4]));
   OAI21X1 U212 (.Y(n259), 
	.C(n139), 
	.B(FE_OFN1326_n4), 
	.A(n59));
   NAND2X1 U213 (.Y(n139), 
	.B(n3), 
	.A(ENC_LEFT[5]));
   INVX1 U214 (.Y(n59), 
	.A(cData4[5]));
   OAI21X1 U215 (.Y(n258), 
	.C(n140), 
	.B(FE_OFN1326_n4), 
	.A(n60));
   NAND2X1 U216 (.Y(n140), 
	.B(FE_OFN1240_n3), 
	.A(ENC_LEFT[6]));
   INVX1 U217 (.Y(n60), 
	.A(cData4[6]));
   OAI21X1 U218 (.Y(n257), 
	.C(n141), 
	.B(FE_OFN1326_n4), 
	.A(n61));
   NAND2X1 U219 (.Y(n141), 
	.B(FE_OFN1240_n3), 
	.A(ENC_LEFT[7]));
   INVX1 U220 (.Y(n61), 
	.A(cData4[7]));
   OAI21X1 U221 (.Y(n256), 
	.C(n142), 
	.B(FE_OFN1327_n4), 
	.A(n43));
   NAND2X1 U222 (.Y(n142), 
	.B(n3), 
	.A(ENC_LEFT[8]));
   INVX1 U223 (.Y(n43), 
	.A(cData3[0]));
   OAI21X1 U224 (.Y(n255), 
	.C(n143), 
	.B(FE_OFN1326_n4), 
	.A(n44));
   NAND2X1 U225 (.Y(n143), 
	.B(FE_OFN1240_n3), 
	.A(ENC_LEFT[9]));
   INVX1 U226 (.Y(n44), 
	.A(cData3[1]));
   OAI21X1 U227 (.Y(n254), 
	.C(n144), 
	.B(FE_OFN1326_n4), 
	.A(n45));
   NAND2X1 U228 (.Y(n144), 
	.B(FE_OFN1240_n3), 
	.A(ENC_LEFT[10]));
   INVX1 U229 (.Y(n45), 
	.A(cData3[2]));
   OAI21X1 U230 (.Y(n253), 
	.C(n145), 
	.B(FE_OFN1326_n4), 
	.A(n46));
   NAND2X1 U231 (.Y(n145), 
	.B(FE_OFN1240_n3), 
	.A(ENC_LEFT[11]));
   INVX1 U232 (.Y(n46), 
	.A(cData3[3]));
   OAI21X1 U233 (.Y(n252), 
	.C(n146), 
	.B(FE_OFN1326_n4), 
	.A(n47));
   NAND2X1 U234 (.Y(n146), 
	.B(FE_OFN1240_n3), 
	.A(ENC_LEFT[12]));
   INVX1 U235 (.Y(n47), 
	.A(cData3[4]));
   OAI21X1 U236 (.Y(n251), 
	.C(n147), 
	.B(FE_OFN1326_n4), 
	.A(n48));
   NAND2X1 U237 (.Y(n147), 
	.B(FE_OFN1240_n3), 
	.A(ENC_LEFT[13]));
   INVX1 U238 (.Y(n48), 
	.A(cData3[5]));
   OAI21X1 U239 (.Y(n250), 
	.C(n148), 
	.B(n4), 
	.A(n49));
   NAND2X1 U240 (.Y(n148), 
	.B(n3), 
	.A(ENC_LEFT[14]));
   INVX1 U241 (.Y(n49), 
	.A(cData3[6]));
   OAI21X1 U242 (.Y(n249), 
	.C(n149), 
	.B(FE_OFN1326_n4), 
	.A(n50));
   NAND2X1 U243 (.Y(n149), 
	.B(FE_OFN1240_n3), 
	.A(ENC_LEFT[15]));
   INVX1 U244 (.Y(n50), 
	.A(cData3[7]));
   OAI21X1 U245 (.Y(n248), 
	.C(n150), 
	.B(FE_OFN1327_n4), 
	.A(n10));
   NAND2X1 U246 (.Y(n150), 
	.B(FE_OFN1239_n3), 
	.A(ENC_LEFT[16]));
   INVX1 U247 (.Y(n10), 
	.A(cData2[0]));
   OAI21X1 U248 (.Y(n247), 
	.C(n151), 
	.B(FE_OFN1327_n4), 
	.A(n12));
   NAND2X1 U249 (.Y(n151), 
	.B(n3), 
	.A(ENC_LEFT[17]));
   INVX1 U250 (.Y(n12), 
	.A(cData2[1]));
   OAI21X1 U251 (.Y(n246), 
	.C(n152), 
	.B(n4), 
	.A(n14));
   NAND2X1 U252 (.Y(n152), 
	.B(n3), 
	.A(ENC_LEFT[18]));
   INVX1 U253 (.Y(n14), 
	.A(cData2[2]));
   OAI21X1 U254 (.Y(n245), 
	.C(n153), 
	.B(FE_OFN1327_n4), 
	.A(n16));
   NAND2X1 U255 (.Y(n153), 
	.B(FE_OFN1239_n3), 
	.A(ENC_LEFT[19]));
   INVX1 U256 (.Y(n16), 
	.A(cData2[3]));
   OAI21X1 U257 (.Y(n244), 
	.C(n154), 
	.B(FE_OFN1327_n4), 
	.A(n18));
   NAND2X1 U258 (.Y(n154), 
	.B(n3), 
	.A(ENC_LEFT[20]));
   INVX1 U259 (.Y(n18), 
	.A(cData2[4]));
   OAI21X1 U260 (.Y(n243), 
	.C(n155), 
	.B(FE_OFN1327_n4), 
	.A(n20));
   NAND2X1 U261 (.Y(n155), 
	.B(n3), 
	.A(ENC_LEFT[21]));
   INVX1 U262 (.Y(n20), 
	.A(cData2[5]));
   OAI21X1 U263 (.Y(n242), 
	.C(n156), 
	.B(n4), 
	.A(n22));
   NAND2X1 U264 (.Y(n156), 
	.B(n3), 
	.A(ENC_LEFT[22]));
   INVX1 U265 (.Y(n22), 
	.A(cData2[6]));
   OAI21X1 U266 (.Y(n241), 
	.C(n157), 
	.B(FE_OFN1327_n4), 
	.A(n24));
   NAND2X1 U267 (.Y(n157), 
	.B(FE_OFN1239_n3), 
	.A(ENC_LEFT[23]));
   INVX1 U268 (.Y(n24), 
	.A(cData2[7]));
   OAI21X1 U269 (.Y(n240), 
	.C(n158), 
	.B(n4), 
	.A(n31));
   NAND2X1 U270 (.Y(n158), 
	.B(n3), 
	.A(ENC_LEFT[24]));
   INVX1 U271 (.Y(n31), 
	.A(cData1[0]));
   OAI21X1 U272 (.Y(n239), 
	.C(n159), 
	.B(FE_OFN1327_n4), 
	.A(n32));
   NAND2X1 U273 (.Y(n159), 
	.B(n3), 
	.A(ENC_LEFT[25]));
   INVX1 U274 (.Y(n32), 
	.A(cData1[1]));
   OAI21X1 U275 (.Y(n238), 
	.C(n160), 
	.B(n4), 
	.A(n33));
   NAND2X1 U276 (.Y(n160), 
	.B(FE_OFN1239_n3), 
	.A(ENC_LEFT[26]));
   INVX1 U277 (.Y(n33), 
	.A(cData1[2]));
   OAI21X1 U278 (.Y(n237), 
	.C(n161), 
	.B(n4), 
	.A(n34));
   NAND2X1 U279 (.Y(n161), 
	.B(FE_OFN1239_n3), 
	.A(ENC_LEFT[27]));
   INVX1 U280 (.Y(n34), 
	.A(cData1[3]));
   OAI21X1 U281 (.Y(n236), 
	.C(n162), 
	.B(n4), 
	.A(n35));
   NAND2X1 U282 (.Y(n162), 
	.B(FE_OFN1239_n3), 
	.A(ENC_LEFT[28]));
   INVX1 U283 (.Y(n35), 
	.A(cData1[4]));
   OAI21X1 U284 (.Y(n235), 
	.C(n163), 
	.B(n4), 
	.A(n36));
   NAND2X1 U285 (.Y(n163), 
	.B(n3), 
	.A(ENC_LEFT[29]));
   INVX1 U286 (.Y(n36), 
	.A(cData1[5]));
   OAI21X1 U287 (.Y(n234), 
	.C(n164), 
	.B(n4), 
	.A(n37));
   NAND2X1 U288 (.Y(n164), 
	.B(FE_OFN1239_n3), 
	.A(ENC_LEFT[30]));
   INVX1 U289 (.Y(n37), 
	.A(cData1[6]));
   OAI21X1 U290 (.Y(n233), 
	.C(n165), 
	.B(FE_OFN1327_n4), 
	.A(n38));
   NAND2X1 U291 (.Y(n165), 
	.B(n3), 
	.A(ENC_LEFT[31]));
   NAND3X1 U292 (.Y(n39), 
	.C(n40), 
	.B(n27), 
	.A(n166));
   NOR2X1 U293 (.Y(n40), 
	.B(nxtCompCT[2]), 
	.A(n230));
   INVX1 U294 (.Y(nxtCompCT[2]), 
	.A(n26));
   MUX2X1 U295 (.Y(n26), 
	.S(n169), 
	.B(n167), 
	.A(n168));
   NOR2X1 U296 (.Y(n168), 
	.B(n171), 
	.A(n170));
   OAI22X1 U297 (.Y(n167), 
	.D(n170), 
	.C(compileCT[0]), 
	.B(compileCT[1]), 
	.A(FE_OFN1473_compileCT_3_));
   NAND3X1 U298 (.Y(n27), 
	.C(n173), 
	.B(n171), 
	.A(n172));
   NAND2X1 U299 (.Y(n173), 
	.B(n170), 
	.A(n174));
   OAI21X1 U300 (.Y(n174), 
	.C(n176), 
	.B(n175), 
	.A(FULL));
   OR2X1 U301 (.Y(n175), 
	.B(FE_OFN1473_compileCT_3_), 
	.A(compileCT[2]));
   INVX1 U302 (.Y(n166), 
	.A(FE_OFN1328_nxtCompCT_3_));
   MUX2X1 U303 (.Y(nxtCompCT[3]), 
	.S(n169), 
	.B(n177), 
	.A(n178));
   OAI21X1 U304 (.Y(n178), 
	.C(FE_OFN1473_compileCT_3_), 
	.B(n176), 
	.A(n179));
   AND2X1 U305 (.Y(n179), 
	.B(n171), 
	.A(n180));
   NAND2X1 U306 (.Y(n177), 
	.B(n181), 
	.A(compileCT[0]));
   INVX1 U307 (.Y(n38), 
	.A(cData1[7]));
   INVX2 U308 (.Y(n230), 
	.A(n51));
   MUX2X1 U309 (.Y(n51), 
	.S(n171), 
	.B(n182), 
	.A(n183));
   OAI21X1 U310 (.Y(n183), 
	.C(n170), 
	.B(n184), 
	.A(n176));
   INVX1 U311 (.Y(n170), 
	.A(n181));
   NAND2X1 U312 (.Y(n184), 
	.B(n169), 
	.A(n180));
   NAND3X1 U313 (.Y(n180), 
	.C(n186), 
	.B(n185), 
	.A(FE_OFN1472_N23));
   NOR2X1 U314 (.Y(n186), 
	.B(n187), 
	.A(rndCT[0]));
   AND2X1 U315 (.Y(n182), 
	.B(n172), 
	.A(n176));
   NAND2X1 U316 (.Y(n172), 
	.B(compileCT[2]), 
	.A(FE_OFN1473_compileCT_3_));
   MUX2X1 U317 (.Y(n229), 
	.S(n190), 
	.B(n188), 
	.A(n189));
   MUX2X1 U318 (.Y(n227), 
	.S(rndCT[1]), 
	.B(n191), 
	.A(n192));
   NAND2X1 U319 (.Y(n191), 
	.B(rndCT[0]), 
	.A(n193));
   MUX2X1 U320 (.Y(n221), 
	.S(rndCT[2]), 
	.B(n194), 
	.A(n195));
   AND2X1 U321 (.Y(n195), 
	.B(n192), 
	.A(rndCT[1]));
   NOR2X1 U322 (.Y(n192), 
	.B(n190), 
	.A(n196));
   NAND3X1 U323 (.Y(n194), 
	.C(n193), 
	.B(rndCT[0]), 
	.A(rndCT[1]));
   MUX2X1 U324 (.Y(n219), 
	.S(n187), 
	.B(n197), 
	.A(n198));
   NAND2X1 U325 (.Y(n198), 
	.B(n193), 
	.A(n199));
   INVX1 U326 (.Y(n197), 
	.A(n200));
   MUX2X1 U327 (.Y(n217), 
	.S(FE_OFN1472_N23), 
	.B(n201), 
	.A(n202));
   NOR2X1 U328 (.Y(n202), 
	.B(n200), 
	.A(n187));
   OAI21X1 U329 (.Y(n200), 
	.C(n188), 
	.B(n189), 
	.A(n199));
   NAND3X1 U330 (.Y(n201), 
	.C(n199), 
	.B(rndCT[3]), 
	.A(n193));
   INVX1 U331 (.Y(n199), 
	.A(n203));
   NAND3X1 U332 (.Y(n203), 
	.C(rndCT[2]), 
	.B(rndCT[0]), 
	.A(rndCT[1]));
   INVX1 U333 (.Y(n193), 
	.A(n189));
   OAI21X1 U334 (.Y(n189), 
	.C(n188), 
	.B(n205), 
	.A(n204));
   INVX1 U335 (.Y(n188), 
	.A(n196));
   NAND2X1 U336 (.Y(n205), 
	.B(n185), 
	.A(FE_OFN1472_N23));
   NAND2X1 U337 (.Y(n204), 
	.B(rndCT[0]), 
	.A(rndCT[3]));
   MUX2X1 U338 (.Y(n215), 
	.S(FE_PT1_n1), 
	.B(n206), 
	.A(n207));
   NAND2X1 U339 (.Y(n207), 
	.B(n208), 
	.A(FE_OFN1472_N23));
   OAI21X1 U340 (.Y(n208), 
	.C(rndCT[3]), 
	.B(n209), 
	.A(rndCT[0]));
   INVX1 U341 (.Y(n209), 
	.A(n185));
   INVX1 U342 (.Y(n206), 
	.A(W_ENABLE));
   NAND3X1 U343 (.Y(R_ENABLE), 
	.C(n210), 
	.B(n169), 
	.A(n171));
   AOI21X1 U344 (.Y(n210), 
	.C(n181), 
	.B(n176), 
	.A(FE_OFN1473_compileCT_3_));
   NOR2X1 U345 (.Y(n181), 
	.B(FE_OFN1473_compileCT_3_), 
	.A(n176));
   INVX1 U346 (.Y(n176), 
	.A(compileCT[1]));
   INVX1 U347 (.Y(n169), 
	.A(compileCT[2]));
   INVX1 U348 (.Y(n171), 
	.A(compileCT[0]));
   AOI21X1 U349 (.Y(FE_OFN1336_START), 
	.C(n196), 
	.B(n211), 
	.A(FE_OFN1472_N23));
   NAND3X1 U350 (.Y(n196), 
	.C(n212), 
	.B(compileCT[1]), 
	.A(FE_OFN1473_compileCT_3_));
   NOR2X1 U351 (.Y(n212), 
	.B(compileCT[0]), 
	.A(compileCT[2]));
   NAND3X1 U352 (.Y(n211), 
	.C(n185), 
	.B(n187), 
	.A(n190));
   NOR2X1 U353 (.Y(n185), 
	.B(rndCT[2]), 
	.A(rndCT[1]));
   INVX1 U354 (.Y(n187), 
	.A(rndCT[3]));
   INVX1 U364 (.Y(n190), 
	.A(rndCT[0]));
endmodule

module e_fiestel (
	FIESTELCLK, 
	START, 
	ENC_LEFT, 
	ENC_RIGHT, 
	RKEY, 
	IN_SELECT, 
	OUTDATA, 
	FE_OFN80_START, 
	FE_OFN82_START, 
	FE_OFN83_START, 
	FE_OFN84_START, 
	FIESTELCLK__L2_N1, 
	FIESTELCLK__L2_N2, 
	FE_OFN353_START, 
	FE_OFN622_START, 
	FE_OFN945_START, 
	FE_OFN946_START, 
	FE_OFN948_START, 
	FE_OFN1330_START, 
	FE_OFN1335_START);
   input FIESTELCLK;
   input START;
   input [31:0] ENC_LEFT;
   input [31:0] ENC_RIGHT;
   input [47:0] RKEY;
   input IN_SELECT;
   output [63:0] OUTDATA;
   input FE_OFN80_START;
   input FE_OFN82_START;
   input FE_OFN83_START;
   input FE_OFN84_START;
   input FIESTELCLK__L2_N1;
   input FIESTELCLK__L2_N2;
   input FE_OFN353_START;
   input FE_OFN622_START;
   input FE_OFN945_START;
   input FE_OFN946_START;
   input FE_OFN948_START;
   input FE_OFN1330_START;
   input FE_OFN1335_START;

   // Internal wires
   wire FE_OFN1471_CUR_ENC_LEFT_13_;
   wire FE_OFN1454_n948;
   wire FE_OFN1453_n81;
   wire FE_OFN1452_n320;
   wire FE_OFN1451_n315;
   wire FE_OFN1450_n593;
   wire FE_OFN1449_n451;
   wire FE_OFN1448_n149;
   wire FE_OFN1447_n211;
   wire FE_OFN1446_n22;
   wire FE_OFN1445_n100;
   wire FE_OFN1444_n539;
   wire FE_OFN1443_n670;
   wire FE_OFN1442_n93;
   wire FE_OFN1441_n155;
   wire FE_OFN1440_n2;
   wire FE_OFN1425_CUR_ENC_RIGHT_0_;
   wire FE_OFN1424_CUR_ENC_RIGHT_15_;
   wire FE_OFN1423_CUR_ENC_RIGHT_29_;
   wire FE_OFN1422_CUR_ENC_RIGHT_9_;
   wire FE_OFN1421_CUR_ENC_RIGHT_28_;
   wire FE_OFN1420_CUR_ENC_RIGHT_6_;
   wire FE_OFN1419_CUR_ENC_LEFT_6_;
   wire FE_OFN1418_CUR_ENC_RIGHT_4_;
   wire FE_OFN1417_CUR_ENC_RIGHT_11_;
   wire FE_OFN1416_CUR_ENC_RIGHT_18_;
   wire FE_OFN1415_CUR_ENC_RIGHT_31_;
   wire FE_OFN1414_CUR_ENC_RIGHT_27_;
   wire FE_OFN1413_CUR_ENC_RIGHT_19_;
   wire FE_OFN1412_CUR_ENC_RIGHT_16_;
   wire FE_OFN1411_CUR_ENC_LEFT_16_;
   wire FE_OFN1410_CUR_ENC_RIGHT_24_;
   wire FE_OFN1409_CUR_ENC_RIGHT_26_;
   wire FE_OFN1408_CUR_ENC_RIGHT_7_;
   wire FE_OFN1407_CUR_ENC_RIGHT_21_;
   wire FE_OFN1406_CUR_ENC_RIGHT_8_;
   wire FE_OFN1405_CUR_ENC_RIGHT_3_;
   wire FE_OFN1404_CUR_ENC_RIGHT_5_;
   wire FE_OFN1403_CUR_ENC_RIGHT_20_;
   wire FE_OFN1402_CUR_ENC_RIGHT_22_;
   wire FE_OFN1401_CUR_ENC_RIGHT_12_;
   wire FE_OFN1400_CUR_ENC_RIGHT_13_;
   wire FE_OFN1399_CUR_ENC_RIGHT_30_;
   wire FE_OFN1304_n354;
   wire FE_OFN1301_n75;
   wire FE_OFN1300_n462;
   wire FE_OFN1299_n143;
   wire FE_OFN1298_n151;
   wire FE_OFN1296_n684;
   wire FE_OFN1294_n327;
   wire FE_OFN1289_n603;
   wire FE_OFN1288_n434;
   wire FE_OFN1287_n576;
   wire FE_OFN1286_n199;
   wire FE_OFN1285_n226;
   wire FE_OFN1284_n221;
   wire FE_OFN1283_n552;
   wire FE_OFN1282_n341;
   wire FE_OFN1281_n316;
   wire FE_OFN1280_n467;
   wire FE_OFN1279_n891;
   wire FE_OFN1278_n371;
   wire FE_OFN1277_n59;
   wire FE_OFN1276_n634;
   wire FE_OFN1273_n21;
   wire FE_OFN1271_n52;
   wire FE_OFN1269_n39;
   wire FE_OFN1268_n233;
   wire FE_OFN1266_n657;
   wire FE_OFN1265_n660;
   wire FE_OFN1264_n54;
   wire FE_OFN1262_n180;
   wire FE_OFN1261_n280;
   wire FE_OFN1260_n27;
   wire FE_OFN1259_n184;
   wire FE_OFN1258_n182;
   wire FE_OFN1257_n801;
   wire FE_OFN1256_n120;
   wire FE_OFN1255_n856;
   wire FE_OFN1254_n84;
   wire FE_OFN1253_n628;
   wire FE_OFN1251_IN_SELECT;
   wire FE_OFN1250_IN_SELECT;
   wire FE_OFN1248_IN_SELECT;
   wire FE_OFN1247_IN_SELECT;
   wire FE_OFN1246_n2;
   wire FE_OFN1245_n2;
   wire FE_OFN1244_n2;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n409;
   wire n410;
   wire n411;
   wire n412;
   wire n413;
   wire n414;
   wire n415;
   wire n416;
   wire n417;
   wire n418;
   wire n419;
   wire n420;
   wire n421;
   wire n422;
   wire n423;
   wire n424;
   wire n425;
   wire n426;
   wire n427;
   wire n428;
   wire n429;
   wire n430;
   wire n431;
   wire n432;
   wire n433;
   wire n434;
   wire n435;
   wire n436;
   wire n437;
   wire n438;
   wire n439;
   wire n440;
   wire n441;
   wire n442;
   wire n443;
   wire n444;
   wire n445;
   wire n446;
   wire n447;
   wire n448;
   wire n449;
   wire n450;
   wire n451;
   wire n452;
   wire n453;
   wire n454;
   wire n455;
   wire n456;
   wire n457;
   wire n458;
   wire n459;
   wire n460;
   wire n461;
   wire n462;
   wire n463;
   wire n464;
   wire n465;
   wire n466;
   wire n467;
   wire n468;
   wire n469;
   wire n470;
   wire n471;
   wire n472;
   wire n473;
   wire n474;
   wire n475;
   wire n476;
   wire n477;
   wire n478;
   wire n479;
   wire n480;
   wire n481;
   wire n482;
   wire n483;
   wire n484;
   wire n485;
   wire n486;
   wire n487;
   wire n488;
   wire n489;
   wire n490;
   wire n491;
   wire n492;
   wire n493;
   wire n494;
   wire n495;
   wire n496;
   wire n497;
   wire n498;
   wire n499;
   wire n500;
   wire n501;
   wire n502;
   wire n503;
   wire n504;
   wire n505;
   wire n506;
   wire n507;
   wire n508;
   wire n509;
   wire n510;
   wire n511;
   wire n512;
   wire n513;
   wire n514;
   wire n515;
   wire n516;
   wire n517;
   wire n518;
   wire n519;
   wire n520;
   wire n521;
   wire n522;
   wire n523;
   wire n524;
   wire n525;
   wire n526;
   wire n527;
   wire n528;
   wire n529;
   wire n530;
   wire n531;
   wire n532;
   wire n533;
   wire n534;
   wire n535;
   wire n536;
   wire n537;
   wire n538;
   wire n539;
   wire n540;
   wire n541;
   wire n542;
   wire n543;
   wire n544;
   wire n545;
   wire n546;
   wire n547;
   wire n548;
   wire n549;
   wire n550;
   wire n551;
   wire n552;
   wire n553;
   wire n554;
   wire n555;
   wire n556;
   wire n557;
   wire n558;
   wire n559;
   wire n560;
   wire n561;
   wire n562;
   wire n563;
   wire n564;
   wire n565;
   wire n566;
   wire n567;
   wire n568;
   wire n569;
   wire n570;
   wire n571;
   wire n572;
   wire n573;
   wire n574;
   wire n575;
   wire n576;
   wire n577;
   wire n578;
   wire n579;
   wire n580;
   wire n581;
   wire n582;
   wire n583;
   wire n584;
   wire n585;
   wire n586;
   wire n587;
   wire n588;
   wire n589;
   wire n590;
   wire n591;
   wire n592;
   wire n593;
   wire n594;
   wire n595;
   wire n596;
   wire n597;
   wire n598;
   wire n599;
   wire n600;
   wire n601;
   wire n602;
   wire n603;
   wire n604;
   wire n605;
   wire n606;
   wire n607;
   wire n608;
   wire n609;
   wire n610;
   wire n611;
   wire n612;
   wire n613;
   wire n614;
   wire n615;
   wire n616;
   wire n617;
   wire n618;
   wire n619;
   wire n620;
   wire n621;
   wire n622;
   wire n623;
   wire n624;
   wire n625;
   wire n626;
   wire n627;
   wire n628;
   wire n629;
   wire n630;
   wire n631;
   wire n632;
   wire n633;
   wire n634;
   wire n635;
   wire n636;
   wire n637;
   wire n638;
   wire n639;
   wire n640;
   wire n641;
   wire n642;
   wire n643;
   wire n644;
   wire n645;
   wire n646;
   wire n647;
   wire n648;
   wire n649;
   wire n650;
   wire n651;
   wire n652;
   wire n653;
   wire n654;
   wire n655;
   wire n656;
   wire n657;
   wire n658;
   wire n659;
   wire n660;
   wire n661;
   wire n662;
   wire n663;
   wire n664;
   wire n665;
   wire n666;
   wire n667;
   wire n668;
   wire n669;
   wire n670;
   wire n671;
   wire n672;
   wire n673;
   wire n674;
   wire n675;
   wire n676;
   wire n677;
   wire n678;
   wire n679;
   wire n680;
   wire n681;
   wire n682;
   wire n683;
   wire n684;
   wire n685;
   wire n686;
   wire n687;
   wire n688;
   wire n689;
   wire n690;
   wire n691;
   wire n692;
   wire n693;
   wire n694;
   wire n695;
   wire n696;
   wire n697;
   wire n698;
   wire n699;
   wire n700;
   wire n701;
   wire n702;
   wire n703;
   wire n704;
   wire n705;
   wire n706;
   wire n707;
   wire n708;
   wire n709;
   wire n710;
   wire n711;
   wire n712;
   wire n713;
   wire n714;
   wire n715;
   wire n716;
   wire n717;
   wire n718;
   wire n719;
   wire n720;
   wire n721;
   wire n722;
   wire n723;
   wire n724;
   wire n725;
   wire n726;
   wire n727;
   wire n728;
   wire n729;
   wire n730;
   wire n731;
   wire n732;
   wire n733;
   wire n734;
   wire n735;
   wire n736;
   wire n737;
   wire n738;
   wire n739;
   wire n740;
   wire n741;
   wire n742;
   wire n743;
   wire n744;
   wire n745;
   wire n746;
   wire n747;
   wire n748;
   wire n749;
   wire n750;
   wire n751;
   wire n752;
   wire n753;
   wire n754;
   wire n755;
   wire n756;
   wire n757;
   wire n758;
   wire n759;
   wire n760;
   wire n761;
   wire n762;
   wire n763;
   wire n764;
   wire n765;
   wire n766;
   wire n767;
   wire n768;
   wire n769;
   wire n770;
   wire n771;
   wire n772;
   wire n773;
   wire n774;
   wire n775;
   wire n776;
   wire n777;
   wire n778;
   wire n779;
   wire n780;
   wire n781;
   wire n782;
   wire n783;
   wire n784;
   wire n785;
   wire n786;
   wire n787;
   wire n788;
   wire n789;
   wire n790;
   wire n791;
   wire n792;
   wire n793;
   wire n794;
   wire n795;
   wire n796;
   wire n797;
   wire n798;
   wire n799;
   wire n800;
   wire n801;
   wire n802;
   wire n803;
   wire n804;
   wire n805;
   wire n806;
   wire n807;
   wire n808;
   wire n809;
   wire n810;
   wire n811;
   wire n812;
   wire n813;
   wire n814;
   wire n815;
   wire n816;
   wire n817;
   wire n818;
   wire n819;
   wire n820;
   wire n821;
   wire n822;
   wire n823;
   wire n824;
   wire n825;
   wire n826;
   wire n827;
   wire n828;
   wire n829;
   wire n830;
   wire n831;
   wire n832;
   wire n833;
   wire n834;
   wire n835;
   wire n836;
   wire n837;
   wire n838;
   wire n839;
   wire n840;
   wire n841;
   wire n842;
   wire n843;
   wire n844;
   wire n845;
   wire n846;
   wire n847;
   wire n848;
   wire n849;
   wire n850;
   wire n851;
   wire n852;
   wire n853;
   wire n854;
   wire n855;
   wire n856;
   wire n857;
   wire n858;
   wire n859;
   wire n860;
   wire n861;
   wire n862;
   wire n863;
   wire n864;
   wire n865;
   wire n866;
   wire n867;
   wire n868;
   wire n869;
   wire n870;
   wire n871;
   wire n872;
   wire n873;
   wire n874;
   wire n875;
   wire n876;
   wire n877;
   wire n878;
   wire n879;
   wire n880;
   wire n881;
   wire n882;
   wire n883;
   wire n884;
   wire n885;
   wire n886;
   wire n887;
   wire n888;
   wire n889;
   wire n890;
   wire n891;
   wire n892;
   wire n893;
   wire n894;
   wire n895;
   wire n896;
   wire n897;
   wire n898;
   wire n899;
   wire n900;
   wire n901;
   wire n902;
   wire n903;
   wire n904;
   wire n905;
   wire n906;
   wire n907;
   wire n908;
   wire n909;
   wire n910;
   wire n911;
   wire n912;
   wire n913;
   wire n914;
   wire n915;
   wire n916;
   wire n917;
   wire n918;
   wire n919;
   wire n920;
   wire n921;
   wire n922;
   wire n923;
   wire n924;
   wire n925;
   wire n926;
   wire n927;
   wire n928;
   wire n929;
   wire n930;
   wire n931;
   wire n932;
   wire n933;
   wire n934;
   wire n935;
   wire n936;
   wire n937;
   wire n938;
   wire n939;
   wire n940;
   wire n941;
   wire n942;
   wire n943;
   wire n944;
   wire n945;
   wire n946;
   wire n947;
   wire n948;
   wire n949;
   wire n950;
   wire n951;
   wire n952;
   wire n953;
   wire n954;
   wire n955;
   wire n956;
   wire n957;
   wire n958;
   wire n959;
   wire n960;
   wire n961;
   wire n962;
   wire n963;
   wire n964;
   wire n965;
   wire n966;
   wire n967;
   wire n968;
   wire n969;
   wire n970;
   wire n971;
   wire n972;
   wire n973;
   wire n974;
   wire n975;
   wire n976;
   wire n977;
   wire n978;
   wire n979;
   wire n980;
   wire n981;
   wire n982;
   wire n983;
   wire n984;
   wire n985;
   wire n986;
   wire n987;
   wire n988;
   wire n989;
   wire n990;
   wire n991;
   wire n992;
   wire n993;
   wire n994;
   wire n995;
   wire n996;
   wire n997;
   wire n998;
   wire n999;
   wire n1000;
   wire n1001;
   wire n1002;
   wire n1003;
   wire n1004;
   wire n1005;
   wire n1006;
   wire n1007;
   wire n1008;
   wire n1009;
   wire n1010;
   wire n1011;
   wire n1012;
   wire n1013;
   wire n1014;
   wire n1015;
   wire n1016;
   wire n1017;
   wire n1018;
   wire n1019;
   wire n1020;
   wire n1021;
   wire n1022;
   wire n1023;
   wire n1024;
   wire n1025;
   wire n1026;
   wire n1027;
   wire n1028;
   wire n1029;
   wire n1030;
   wire n1031;
   wire n1032;
   wire n1033;
   wire n1034;
   wire n1035;
   wire n1036;
   wire n1037;
   wire n1038;
   wire n1039;
   wire n1040;
   wire n1041;
   wire n1042;
   wire n1043;
   wire n1044;
   wire n1045;
   wire n1046;
   wire n1047;
   wire n1048;
   wire n1049;
   wire n1050;
   wire n1051;
   wire n1052;
   wire n1053;
   wire n1054;
   wire n1055;
   wire n1056;
   wire n1057;
   wire n1058;
   wire n1059;
   wire n1060;
   wire n1061;
   wire n1062;
   wire n1063;
   wire n1064;
   wire n1065;
   wire n1066;
   wire n1067;
   wire n1068;
   wire n1069;
   wire n1070;
   wire n1071;
   wire n1072;
   wire n1073;
   wire n1074;
   wire n1075;
   wire n1076;
   wire n1077;
   wire n1078;
   wire n1079;
   wire n1080;
   wire n1081;
   wire n1082;
   wire n1083;
   wire n1084;
   wire n1085;
   wire n1086;
   wire n1087;
   wire n1088;
   wire n1089;
   wire n1090;
   wire [31:0] CUR_ENC_LEFT;
   wire [31:0] CUR_ENC_RIGHT;
   wire [31:0] NXT_ENC_RIGHT1;

   BUFX2 FE_OFC1471_CUR_ENC_LEFT_13_ (.Y(FE_OFN1471_CUR_ENC_LEFT_13_), 
	.A(CUR_ENC_LEFT[13]));
   BUFX2 FE_OFC1454_n948 (.Y(FE_OFN1454_n948), 
	.A(n948));
   BUFX2 FE_OFC1453_n81 (.Y(FE_OFN1453_n81), 
	.A(n81));
   BUFX2 FE_OFC1452_n320 (.Y(FE_OFN1452_n320), 
	.A(n320));
   BUFX2 FE_OFC1451_n315 (.Y(FE_OFN1451_n315), 
	.A(n315));
   BUFX2 FE_OFC1450_n593 (.Y(FE_OFN1450_n593), 
	.A(n593));
   BUFX2 FE_OFC1449_n451 (.Y(FE_OFN1449_n451), 
	.A(n451));
   BUFX2 FE_OFC1448_n149 (.Y(FE_OFN1448_n149), 
	.A(n149));
   BUFX2 FE_OFC1447_n211 (.Y(FE_OFN1447_n211), 
	.A(n211));
   BUFX2 FE_OFC1446_n22 (.Y(FE_OFN1446_n22), 
	.A(n22));
   BUFX2 FE_OFC1445_n100 (.Y(FE_OFN1445_n100), 
	.A(n100));
   BUFX2 FE_OFC1444_n539 (.Y(FE_OFN1444_n539), 
	.A(n539));
   BUFX2 FE_OFC1443_n670 (.Y(FE_OFN1443_n670), 
	.A(n670));
   BUFX2 FE_OFC1442_n93 (.Y(FE_OFN1442_n93), 
	.A(n93));
   BUFX2 FE_OFC1441_n155 (.Y(FE_OFN1441_n155), 
	.A(n155));
   BUFX2 FE_OFC1440_n2 (.Y(FE_OFN1440_n2), 
	.A(n2));
   BUFX2 FE_OFC1425_CUR_ENC_RIGHT_0_ (.Y(FE_OFN1425_CUR_ENC_RIGHT_0_), 
	.A(CUR_ENC_RIGHT[0]));
   BUFX2 FE_OFC1424_CUR_ENC_RIGHT_15_ (.Y(FE_OFN1424_CUR_ENC_RIGHT_15_), 
	.A(CUR_ENC_RIGHT[15]));
   BUFX2 FE_OFC1423_CUR_ENC_RIGHT_29_ (.Y(FE_OFN1423_CUR_ENC_RIGHT_29_), 
	.A(CUR_ENC_RIGHT[29]));
   BUFX2 FE_OFC1422_CUR_ENC_RIGHT_9_ (.Y(FE_OFN1422_CUR_ENC_RIGHT_9_), 
	.A(CUR_ENC_RIGHT[9]));
   BUFX2 FE_OFC1421_CUR_ENC_RIGHT_28_ (.Y(FE_OFN1421_CUR_ENC_RIGHT_28_), 
	.A(CUR_ENC_RIGHT[28]));
   BUFX2 FE_OFC1420_CUR_ENC_RIGHT_6_ (.Y(FE_OFN1420_CUR_ENC_RIGHT_6_), 
	.A(CUR_ENC_RIGHT[6]));
   BUFX2 FE_OFC1419_CUR_ENC_LEFT_6_ (.Y(FE_OFN1419_CUR_ENC_LEFT_6_), 
	.A(CUR_ENC_LEFT[6]));
   BUFX2 FE_OFC1418_CUR_ENC_RIGHT_4_ (.Y(FE_OFN1418_CUR_ENC_RIGHT_4_), 
	.A(CUR_ENC_RIGHT[4]));
   BUFX2 FE_OFC1417_CUR_ENC_RIGHT_11_ (.Y(FE_OFN1417_CUR_ENC_RIGHT_11_), 
	.A(CUR_ENC_RIGHT[11]));
   BUFX2 FE_OFC1416_CUR_ENC_RIGHT_18_ (.Y(FE_OFN1416_CUR_ENC_RIGHT_18_), 
	.A(CUR_ENC_RIGHT[18]));
   BUFX2 FE_OFC1415_CUR_ENC_RIGHT_31_ (.Y(FE_OFN1415_CUR_ENC_RIGHT_31_), 
	.A(CUR_ENC_RIGHT[31]));
   BUFX2 FE_OFC1414_CUR_ENC_RIGHT_27_ (.Y(FE_OFN1414_CUR_ENC_RIGHT_27_), 
	.A(CUR_ENC_RIGHT[27]));
   BUFX2 FE_OFC1413_CUR_ENC_RIGHT_19_ (.Y(FE_OFN1413_CUR_ENC_RIGHT_19_), 
	.A(CUR_ENC_RIGHT[19]));
   BUFX4 FE_OFC1412_CUR_ENC_RIGHT_16_ (.Y(FE_OFN1412_CUR_ENC_RIGHT_16_), 
	.A(CUR_ENC_RIGHT[16]));
   BUFX2 FE_OFC1411_CUR_ENC_LEFT_16_ (.Y(FE_OFN1411_CUR_ENC_LEFT_16_), 
	.A(CUR_ENC_LEFT[16]));
   BUFX2 FE_OFC1410_CUR_ENC_RIGHT_24_ (.Y(FE_OFN1410_CUR_ENC_RIGHT_24_), 
	.A(CUR_ENC_RIGHT[24]));
   BUFX2 FE_OFC1409_CUR_ENC_RIGHT_26_ (.Y(FE_OFN1409_CUR_ENC_RIGHT_26_), 
	.A(CUR_ENC_RIGHT[26]));
   BUFX2 FE_OFC1408_CUR_ENC_RIGHT_7_ (.Y(FE_OFN1408_CUR_ENC_RIGHT_7_), 
	.A(CUR_ENC_RIGHT[7]));
   BUFX2 FE_OFC1407_CUR_ENC_RIGHT_21_ (.Y(FE_OFN1407_CUR_ENC_RIGHT_21_), 
	.A(CUR_ENC_RIGHT[21]));
   BUFX2 FE_OFC1406_CUR_ENC_RIGHT_8_ (.Y(FE_OFN1406_CUR_ENC_RIGHT_8_), 
	.A(CUR_ENC_RIGHT[8]));
   BUFX2 FE_OFC1405_CUR_ENC_RIGHT_3_ (.Y(FE_OFN1405_CUR_ENC_RIGHT_3_), 
	.A(CUR_ENC_RIGHT[3]));
   BUFX2 FE_OFC1404_CUR_ENC_RIGHT_5_ (.Y(FE_OFN1404_CUR_ENC_RIGHT_5_), 
	.A(CUR_ENC_RIGHT[5]));
   BUFX2 FE_OFC1403_CUR_ENC_RIGHT_20_ (.Y(FE_OFN1403_CUR_ENC_RIGHT_20_), 
	.A(CUR_ENC_RIGHT[20]));
   BUFX2 FE_OFC1402_CUR_ENC_RIGHT_22_ (.Y(FE_OFN1402_CUR_ENC_RIGHT_22_), 
	.A(CUR_ENC_RIGHT[22]));
   BUFX2 FE_OFC1401_CUR_ENC_RIGHT_12_ (.Y(FE_OFN1401_CUR_ENC_RIGHT_12_), 
	.A(CUR_ENC_RIGHT[12]));
   BUFX2 FE_OFC1400_CUR_ENC_RIGHT_13_ (.Y(FE_OFN1400_CUR_ENC_RIGHT_13_), 
	.A(CUR_ENC_RIGHT[13]));
   BUFX2 FE_OFC1399_CUR_ENC_RIGHT_30_ (.Y(FE_OFN1399_CUR_ENC_RIGHT_30_), 
	.A(CUR_ENC_RIGHT[30]));
   BUFX2 FE_OFC1304_n354 (.Y(FE_OFN1304_n354), 
	.A(n354));
   BUFX2 FE_OFC1301_n75 (.Y(FE_OFN1301_n75), 
	.A(n75));
   BUFX2 FE_OFC1300_n462 (.Y(FE_OFN1300_n462), 
	.A(n462));
   BUFX2 FE_OFC1299_n143 (.Y(FE_OFN1299_n143), 
	.A(n143));
   BUFX2 FE_OFC1298_n151 (.Y(FE_OFN1298_n151), 
	.A(n151));
   BUFX2 FE_OFC1296_n684 (.Y(FE_OFN1296_n684), 
	.A(n684));
   BUFX2 FE_OFC1294_n327 (.Y(FE_OFN1294_n327), 
	.A(n327));
   BUFX2 FE_OFC1289_n603 (.Y(FE_OFN1289_n603), 
	.A(n603));
   BUFX2 FE_OFC1288_n434 (.Y(FE_OFN1288_n434), 
	.A(n434));
   BUFX2 FE_OFC1287_n576 (.Y(FE_OFN1287_n576), 
	.A(n576));
   BUFX2 FE_OFC1286_n199 (.Y(FE_OFN1286_n199), 
	.A(n199));
   BUFX2 FE_OFC1285_n226 (.Y(FE_OFN1285_n226), 
	.A(n226));
   BUFX2 FE_OFC1284_n221 (.Y(FE_OFN1284_n221), 
	.A(n221));
   BUFX2 FE_OFC1283_n552 (.Y(FE_OFN1283_n552), 
	.A(n552));
   BUFX2 FE_OFC1282_n341 (.Y(FE_OFN1282_n341), 
	.A(n341));
   BUFX2 FE_OFC1281_n316 (.Y(FE_OFN1281_n316), 
	.A(n316));
   BUFX2 FE_OFC1280_n467 (.Y(FE_OFN1280_n467), 
	.A(n467));
   BUFX2 FE_OFC1279_n891 (.Y(FE_OFN1279_n891), 
	.A(n891));
   BUFX2 FE_OFC1278_n371 (.Y(FE_OFN1278_n371), 
	.A(n371));
   BUFX2 FE_OFC1277_n59 (.Y(FE_OFN1277_n59), 
	.A(n59));
   BUFX2 FE_OFC1276_n634 (.Y(FE_OFN1276_n634), 
	.A(n634));
   BUFX2 FE_OFC1273_n21 (.Y(FE_OFN1273_n21), 
	.A(n21));
   BUFX2 FE_OFC1271_n52 (.Y(FE_OFN1271_n52), 
	.A(n52));
   BUFX4 FE_OFC1269_n39 (.Y(FE_OFN1269_n39), 
	.A(n39));
   BUFX2 FE_OFC1268_n233 (.Y(FE_OFN1268_n233), 
	.A(n233));
   BUFX2 FE_OFC1266_n657 (.Y(FE_OFN1266_n657), 
	.A(n657));
   BUFX2 FE_OFC1265_n660 (.Y(FE_OFN1265_n660), 
	.A(n660));
   BUFX2 FE_OFC1264_n54 (.Y(FE_OFN1264_n54), 
	.A(n54));
   BUFX2 FE_OFC1262_n180 (.Y(FE_OFN1262_n180), 
	.A(n180));
   BUFX2 FE_OFC1261_n280 (.Y(FE_OFN1261_n280), 
	.A(n280));
   BUFX2 FE_OFC1260_n27 (.Y(FE_OFN1260_n27), 
	.A(n27));
   BUFX2 FE_OFC1259_n184 (.Y(FE_OFN1259_n184), 
	.A(n184));
   BUFX2 FE_OFC1258_n182 (.Y(FE_OFN1258_n182), 
	.A(n182));
   BUFX2 FE_OFC1257_n801 (.Y(FE_OFN1257_n801), 
	.A(n801));
   BUFX2 FE_OFC1256_n120 (.Y(FE_OFN1256_n120), 
	.A(n120));
   BUFX2 FE_OFC1255_n856 (.Y(FE_OFN1255_n856), 
	.A(n856));
   BUFX2 FE_OFC1254_n84 (.Y(FE_OFN1254_n84), 
	.A(n84));
   BUFX2 FE_OFC1253_n628 (.Y(FE_OFN1253_n628), 
	.A(n628));
   INVX8 FE_OFC1251_IN_SELECT (.Y(FE_OFN1251_IN_SELECT), 
	.A(FE_OFN1248_IN_SELECT));
   INVX8 FE_OFC1250_IN_SELECT (.Y(FE_OFN1250_IN_SELECT), 
	.A(FE_OFN1247_IN_SELECT));
   INVX1 FE_OFC1248_IN_SELECT (.Y(FE_OFN1248_IN_SELECT), 
	.A(IN_SELECT));
   INVX1 FE_OFC1247_IN_SELECT (.Y(FE_OFN1247_IN_SELECT), 
	.A(IN_SELECT));
   BUFX2 FE_OFC1246_n2 (.Y(FE_OFN1246_n2), 
	.A(FE_OFN1440_n2));
   BUFX4 FE_OFC1245_n2 (.Y(FE_OFN1245_n2), 
	.A(n2));
   BUFX4 FE_OFC1244_n2 (.Y(FE_OFN1244_n2), 
	.A(FE_OFN1440_n2));
   DFFSR \CUR_ENC_LEFT_reg[0]  (.S(n1089), 
	.R(n1090), 
	.Q(CUR_ENC_LEFT[0]), 
	.D(FE_OFN1425_CUR_ENC_RIGHT_0_), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_RIGHT_reg[0]  (.S(n1087), 
	.R(n1088), 
	.Q(CUR_ENC_RIGHT[0]), 
	.D(NXT_ENC_RIGHT1[0]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_RIGHT_reg[15]  (.S(n1081), 
	.R(n1082), 
	.Q(CUR_ENC_RIGHT[15]), 
	.D(NXT_ENC_RIGHT1[15]), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_LEFT_reg[15]  (.S(n1079), 
	.R(n1080), 
	.Q(CUR_ENC_LEFT[15]), 
	.D(FE_OFN1424_CUR_ENC_RIGHT_15_), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_RIGHT_reg[29]  (.S(n965), 
	.R(n966), 
	.Q(CUR_ENC_RIGHT[29]), 
	.D(NXT_ENC_RIGHT1[29]), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_LEFT_reg[29]  (.S(n963), 
	.R(n964), 
	.Q(CUR_ENC_LEFT[29]), 
	.D(FE_OFN1423_CUR_ENC_RIGHT_29_), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_RIGHT_reg[9]  (.S(n1077), 
	.R(n1078), 
	.Q(CUR_ENC_RIGHT[9]), 
	.D(NXT_ENC_RIGHT1[9]), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_LEFT_reg[9]  (.S(n1075), 
	.R(n1076), 
	.Q(CUR_ENC_LEFT[9]), 
	.D(FE_OFN1422_CUR_ENC_RIGHT_9_), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_RIGHT_reg[28]  (.S(n1041), 
	.R(n1042), 
	.Q(CUR_ENC_RIGHT[28]), 
	.D(NXT_ENC_RIGHT1[28]), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_LEFT_reg[28]  (.S(n1039), 
	.R(n1040), 
	.Q(CUR_ENC_LEFT[28]), 
	.D(FE_OFN1421_CUR_ENC_RIGHT_28_), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_RIGHT_reg[23]  (.S(n1085), 
	.R(n1086), 
	.Q(CUR_ENC_RIGHT[23]), 
	.D(NXT_ENC_RIGHT1[23]), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_LEFT_reg[23]  (.S(n1083), 
	.R(n1084), 
	.Q(CUR_ENC_LEFT[23]), 
	.D(CUR_ENC_RIGHT[23]), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_RIGHT_reg[2]  (.S(n1021), 
	.R(n1022), 
	.Q(CUR_ENC_RIGHT[2]), 
	.D(NXT_ENC_RIGHT1[2]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_LEFT_reg[2]  (.S(n1019), 
	.R(n1020), 
	.Q(CUR_ENC_LEFT[2]), 
	.D(CUR_ENC_RIGHT[2]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_RIGHT_reg[17]  (.S(n1061), 
	.R(n1062), 
	.Q(CUR_ENC_RIGHT[17]), 
	.D(NXT_ENC_RIGHT1[17]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_LEFT_reg[17]  (.S(n1059), 
	.R(n1060), 
	.Q(CUR_ENC_LEFT[17]), 
	.D(CUR_ENC_RIGHT[17]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_RIGHT_reg[6]  (.S(n1001), 
	.R(n1002), 
	.Q(CUR_ENC_RIGHT[6]), 
	.D(NXT_ENC_RIGHT1[6]), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_LEFT_reg[6]  (.S(n999), 
	.R(n1000), 
	.Q(CUR_ENC_LEFT[6]), 
	.D(FE_OFN1420_CUR_ENC_RIGHT_6_), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_RIGHT_reg[25]  (.S(n981), 
	.R(n982), 
	.Q(CUR_ENC_RIGHT[25]), 
	.D(NXT_ENC_RIGHT1[25]), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_LEFT_reg[25]  (.S(n979), 
	.R(n980), 
	.Q(CUR_ENC_LEFT[25]), 
	.D(CUR_ENC_RIGHT[25]), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_RIGHT_reg[4]  (.S(n1009), 
	.R(n1010), 
	.Q(CUR_ENC_RIGHT[4]), 
	.D(NXT_ENC_RIGHT1[4]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_LEFT_reg[4]  (.S(n1007), 
	.R(n1008), 
	.Q(CUR_ENC_LEFT[4]), 
	.D(FE_OFN1418_CUR_ENC_RIGHT_4_), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_RIGHT_reg[11]  (.S(n1057), 
	.R(n1058), 
	.Q(CUR_ENC_RIGHT[11]), 
	.D(NXT_ENC_RIGHT1[11]), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_LEFT_reg[11]  (.S(n1055), 
	.R(n1056), 
	.Q(CUR_ENC_LEFT[11]), 
	.D(FE_OFN1417_CUR_ENC_RIGHT_11_), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_RIGHT_reg[18]  (.S(n1049), 
	.R(n1050), 
	.Q(CUR_ENC_RIGHT[18]), 
	.D(NXT_ENC_RIGHT1[18]), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_LEFT_reg[18]  (.S(n1047), 
	.R(n1048), 
	.Q(CUR_ENC_LEFT[18]), 
	.D(FE_OFN1416_CUR_ENC_RIGHT_18_), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_RIGHT_reg[31]  (.S(n989), 
	.R(n990), 
	.Q(CUR_ENC_RIGHT[31]), 
	.D(NXT_ENC_RIGHT1[31]), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_LEFT_reg[31]  (.S(n987), 
	.R(n988), 
	.Q(CUR_ENC_LEFT[31]), 
	.D(FE_OFN1415_CUR_ENC_RIGHT_31_), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_RIGHT_reg[1]  (.S(n1073), 
	.R(n1074), 
	.Q(CUR_ENC_RIGHT[1]), 
	.D(NXT_ENC_RIGHT1[1]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_LEFT_reg[1]  (.S(n1071), 
	.R(n1072), 
	.Q(CUR_ENC_LEFT[1]), 
	.D(CUR_ENC_RIGHT[1]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_RIGHT_reg[27]  (.S(n1069), 
	.R(n1070), 
	.Q(CUR_ENC_RIGHT[27]), 
	.D(NXT_ENC_RIGHT1[27]), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_LEFT_reg[27]  (.S(n1067), 
	.R(n1068), 
	.Q(CUR_ENC_LEFT[27]), 
	.D(FE_OFN1414_CUR_ENC_RIGHT_27_), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_RIGHT_reg[19]  (.S(n1013), 
	.R(n1014), 
	.Q(CUR_ENC_RIGHT[19]), 
	.D(NXT_ENC_RIGHT1[19]), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_LEFT_reg[19]  (.S(n1011), 
	.R(n1012), 
	.Q(CUR_ENC_LEFT[19]), 
	.D(FE_OFN1413_CUR_ENC_RIGHT_19_), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_RIGHT_reg[16]  (.S(n1025), 
	.R(n1026), 
	.Q(CUR_ENC_RIGHT[16]), 
	.D(NXT_ENC_RIGHT1[16]), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_LEFT_reg[16]  (.S(n1023), 
	.R(n1024), 
	.Q(CUR_ENC_LEFT[16]), 
	.D(FE_OFN1412_CUR_ENC_RIGHT_16_), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_RIGHT_reg[24]  (.S(n1053), 
	.R(n1054), 
	.Q(CUR_ENC_RIGHT[24]), 
	.D(NXT_ENC_RIGHT1[24]), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_LEFT_reg[24]  (.S(n1051), 
	.R(n1052), 
	.Q(CUR_ENC_LEFT[24]), 
	.D(FE_OFN1410_CUR_ENC_RIGHT_24_), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_RIGHT_reg[26]  (.S(n1017), 
	.R(n1018), 
	.Q(CUR_ENC_RIGHT[26]), 
	.D(NXT_ENC_RIGHT1[26]), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_LEFT_reg[26]  (.S(n1015), 
	.R(n1016), 
	.Q(CUR_ENC_LEFT[26]), 
	.D(FE_OFN1409_CUR_ENC_RIGHT_26_), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_RIGHT_reg[14]  (.S(n973), 
	.R(n974), 
	.Q(CUR_ENC_RIGHT[14]), 
	.D(NXT_ENC_RIGHT1[14]), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_LEFT_reg[14]  (.S(n971), 
	.R(n972), 
	.Q(CUR_ENC_LEFT[14]), 
	.D(CUR_ENC_RIGHT[14]), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_RIGHT_reg[7]  (.S(n1045), 
	.R(n1046), 
	.Q(CUR_ENC_RIGHT[7]), 
	.D(NXT_ENC_RIGHT1[7]), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_LEFT_reg[7]  (.S(n1043), 
	.R(n1044), 
	.Q(CUR_ENC_LEFT[7]), 
	.D(FE_OFN1408_CUR_ENC_RIGHT_7_), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_RIGHT_reg[21]  (.S(n1033), 
	.R(n1034), 
	.Q(CUR_ENC_RIGHT[21]), 
	.D(NXT_ENC_RIGHT1[21]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_LEFT_reg[21]  (.S(n1031), 
	.R(n1032), 
	.Q(CUR_ENC_LEFT[21]), 
	.D(FE_OFN1407_CUR_ENC_RIGHT_21_), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_RIGHT_reg[8]  (.S(n1029), 
	.R(n1030), 
	.Q(CUR_ENC_RIGHT[8]), 
	.D(NXT_ENC_RIGHT1[8]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_LEFT_reg[8]  (.S(n1027), 
	.R(n1028), 
	.Q(CUR_ENC_LEFT[8]), 
	.D(FE_OFN1406_CUR_ENC_RIGHT_8_), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_RIGHT_reg[3]  (.S(n1037), 
	.R(n1038), 
	.Q(CUR_ENC_RIGHT[3]), 
	.D(NXT_ENC_RIGHT1[3]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_LEFT_reg[3]  (.S(n1035), 
	.R(n1036), 
	.Q(CUR_ENC_LEFT[3]), 
	.D(FE_OFN1405_CUR_ENC_RIGHT_3_), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_RIGHT_reg[5]  (.S(n1065), 
	.R(n1066), 
	.Q(CUR_ENC_RIGHT[5]), 
	.D(NXT_ENC_RIGHT1[5]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_LEFT_reg[5]  (.S(n1063), 
	.R(n1064), 
	.Q(CUR_ENC_LEFT[5]), 
	.D(FE_OFN1404_CUR_ENC_RIGHT_5_), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_RIGHT_reg[20]  (.S(n1005), 
	.R(n1006), 
	.Q(CUR_ENC_RIGHT[20]), 
	.D(NXT_ENC_RIGHT1[20]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_LEFT_reg[20]  (.S(n1003), 
	.R(n1004), 
	.Q(CUR_ENC_LEFT[20]), 
	.D(FE_OFN1403_CUR_ENC_RIGHT_20_), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_RIGHT_reg[22]  (.S(n993), 
	.R(n994), 
	.Q(CUR_ENC_RIGHT[22]), 
	.D(NXT_ENC_RIGHT1[22]), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_LEFT_reg[22]  (.S(n991), 
	.R(n992), 
	.Q(CUR_ENC_LEFT[22]), 
	.D(FE_OFN1402_CUR_ENC_RIGHT_22_), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_RIGHT_reg[12]  (.S(n997), 
	.R(n998), 
	.Q(CUR_ENC_RIGHT[12]), 
	.D(NXT_ENC_RIGHT1[12]), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_LEFT_reg[12]  (.S(n995), 
	.R(n996), 
	.Q(CUR_ENC_LEFT[12]), 
	.D(FE_OFN1401_CUR_ENC_RIGHT_12_), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_RIGHT_reg[10]  (.S(n985), 
	.R(n986), 
	.Q(CUR_ENC_RIGHT[10]), 
	.D(NXT_ENC_RIGHT1[10]), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_LEFT_reg[10]  (.S(n983), 
	.R(n984), 
	.Q(CUR_ENC_LEFT[10]), 
	.D(CUR_ENC_RIGHT[10]), 
	.CLK(FIESTELCLK));
   DFFSR \CUR_ENC_RIGHT_reg[13]  (.S(n969), 
	.R(n970), 
	.Q(CUR_ENC_RIGHT[13]), 
	.D(NXT_ENC_RIGHT1[13]), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_LEFT_reg[13]  (.S(n967), 
	.R(n968), 
	.Q(CUR_ENC_LEFT[13]), 
	.D(FE_OFN1400_CUR_ENC_RIGHT_13_), 
	.CLK(FIESTELCLK__L2_N2));
   DFFSR \CUR_ENC_RIGHT_reg[30]  (.S(n977), 
	.R(n978), 
	.Q(CUR_ENC_RIGHT[30]), 
	.D(NXT_ENC_RIGHT1[30]), 
	.CLK(FIESTELCLK__L2_N1));
   DFFSR \CUR_ENC_LEFT_reg[30]  (.S(n975), 
	.R(n976), 
	.Q(CUR_ENC_LEFT[30]), 
	.D(FE_OFN1399_CUR_ENC_RIGHT_30_), 
	.CLK(FIESTELCLK__L2_N1));
   LATCH \OUTDATA_reg[63]  (.Q(OUTDATA[63]), 
	.D(FE_OFN1415_CUR_ENC_RIGHT_31_), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[62]  (.Q(OUTDATA[62]), 
	.D(FE_OFN1399_CUR_ENC_RIGHT_30_), 
	.CLK(START));
   LATCH \OUTDATA_reg[61]  (.Q(OUTDATA[61]), 
	.D(FE_OFN1423_CUR_ENC_RIGHT_29_), 
	.CLK(FE_OFN84_START));
   LATCH \OUTDATA_reg[60]  (.Q(OUTDATA[60]), 
	.D(FE_OFN1421_CUR_ENC_RIGHT_28_), 
	.CLK(FE_OFN622_START));
   LATCH \OUTDATA_reg[59]  (.Q(OUTDATA[59]), 
	.D(FE_OFN1414_CUR_ENC_RIGHT_27_), 
	.CLK(FE_OFN622_START));
   LATCH \OUTDATA_reg[58]  (.Q(OUTDATA[58]), 
	.D(FE_OFN1409_CUR_ENC_RIGHT_26_), 
	.CLK(FE_OFN83_START));
   LATCH \OUTDATA_reg[57]  (.Q(OUTDATA[57]), 
	.D(CUR_ENC_RIGHT[25]), 
	.CLK(FE_OFN1330_START));
   LATCH \OUTDATA_reg[56]  (.Q(OUTDATA[56]), 
	.D(FE_OFN1410_CUR_ENC_RIGHT_24_), 
	.CLK(START));
   LATCH \OUTDATA_reg[55]  (.Q(OUTDATA[55]), 
	.D(CUR_ENC_RIGHT[23]), 
	.CLK(FE_OFN1335_START));
   LATCH \OUTDATA_reg[54]  (.Q(OUTDATA[54]), 
	.D(FE_OFN1402_CUR_ENC_RIGHT_22_), 
	.CLK(START));
   LATCH \OUTDATA_reg[53]  (.Q(OUTDATA[53]), 
	.D(FE_OFN1407_CUR_ENC_RIGHT_21_), 
	.CLK(FE_OFN1330_START));
   LATCH \OUTDATA_reg[52]  (.Q(OUTDATA[52]), 
	.D(FE_OFN1403_CUR_ENC_RIGHT_20_), 
	.CLK(FE_OFN1335_START));
   LATCH \OUTDATA_reg[51]  (.Q(OUTDATA[51]), 
	.D(FE_OFN1413_CUR_ENC_RIGHT_19_), 
	.CLK(FE_OFN83_START));
   LATCH \OUTDATA_reg[50]  (.Q(OUTDATA[50]), 
	.D(FE_OFN1416_CUR_ENC_RIGHT_18_), 
	.CLK(FE_OFN945_START));
   LATCH \OUTDATA_reg[49]  (.Q(OUTDATA[49]), 
	.D(CUR_ENC_RIGHT[17]), 
	.CLK(FE_OFN1335_START));
   LATCH \OUTDATA_reg[48]  (.Q(OUTDATA[48]), 
	.D(FE_OFN1412_CUR_ENC_RIGHT_16_), 
	.CLK(FE_OFN1330_START));
   LATCH \OUTDATA_reg[47]  (.Q(OUTDATA[47]), 
	.D(FE_OFN1424_CUR_ENC_RIGHT_15_), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[46]  (.Q(OUTDATA[46]), 
	.D(CUR_ENC_RIGHT[14]), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[45]  (.Q(OUTDATA[45]), 
	.D(FE_OFN1400_CUR_ENC_RIGHT_13_), 
	.CLK(FE_OFN945_START));
   LATCH \OUTDATA_reg[44]  (.Q(OUTDATA[44]), 
	.D(FE_OFN1401_CUR_ENC_RIGHT_12_), 
	.CLK(FE_OFN945_START));
   LATCH \OUTDATA_reg[43]  (.Q(OUTDATA[43]), 
	.D(FE_OFN1417_CUR_ENC_RIGHT_11_), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[42]  (.Q(OUTDATA[42]), 
	.D(CUR_ENC_RIGHT[10]), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[41]  (.Q(OUTDATA[41]), 
	.D(FE_OFN1422_CUR_ENC_RIGHT_9_), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[40]  (.Q(OUTDATA[40]), 
	.D(FE_OFN1406_CUR_ENC_RIGHT_8_), 
	.CLK(FE_OFN1330_START));
   LATCH \OUTDATA_reg[39]  (.Q(OUTDATA[39]), 
	.D(FE_OFN1408_CUR_ENC_RIGHT_7_), 
	.CLK(FE_OFN946_START));
   LATCH \OUTDATA_reg[38]  (.Q(OUTDATA[38]), 
	.D(FE_OFN1420_CUR_ENC_RIGHT_6_), 
	.CLK(FE_OFN945_START));
   LATCH \OUTDATA_reg[37]  (.Q(OUTDATA[37]), 
	.D(FE_OFN1404_CUR_ENC_RIGHT_5_), 
	.CLK(FE_OFN1335_START));
   LATCH \OUTDATA_reg[36]  (.Q(OUTDATA[36]), 
	.D(FE_OFN1418_CUR_ENC_RIGHT_4_), 
	.CLK(FE_OFN1335_START));
   LATCH \OUTDATA_reg[35]  (.Q(OUTDATA[35]), 
	.D(FE_OFN1405_CUR_ENC_RIGHT_3_), 
	.CLK(FE_OFN353_START));
   LATCH \OUTDATA_reg[34]  (.Q(OUTDATA[34]), 
	.D(CUR_ENC_RIGHT[2]), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[33]  (.Q(OUTDATA[33]), 
	.D(CUR_ENC_RIGHT[1]), 
	.CLK(FE_OFN1335_START));
   LATCH \OUTDATA_reg[32]  (.Q(OUTDATA[32]), 
	.D(FE_OFN1425_CUR_ENC_RIGHT_0_), 
	.CLK(FE_OFN1330_START));
   LATCH \OUTDATA_reg[31]  (.Q(OUTDATA[31]), 
	.D(CUR_ENC_LEFT[31]), 
	.CLK(FE_OFN945_START));
   LATCH \OUTDATA_reg[30]  (.Q(OUTDATA[30]), 
	.D(CUR_ENC_LEFT[30]), 
	.CLK(START));
   LATCH \OUTDATA_reg[29]  (.Q(OUTDATA[29]), 
	.D(CUR_ENC_LEFT[29]), 
	.CLK(FE_OFN84_START));
   LATCH \OUTDATA_reg[28]  (.Q(OUTDATA[28]), 
	.D(CUR_ENC_LEFT[28]), 
	.CLK(FE_OFN622_START));
   LATCH \OUTDATA_reg[27]  (.Q(OUTDATA[27]), 
	.D(CUR_ENC_LEFT[27]), 
	.CLK(FE_OFN622_START));
   LATCH \OUTDATA_reg[26]  (.Q(OUTDATA[26]), 
	.D(CUR_ENC_LEFT[26]), 
	.CLK(FE_OFN83_START));
   LATCH \OUTDATA_reg[25]  (.Q(OUTDATA[25]), 
	.D(CUR_ENC_LEFT[25]), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[24]  (.Q(OUTDATA[24]), 
	.D(CUR_ENC_LEFT[24]), 
	.CLK(START));
   LATCH \OUTDATA_reg[23]  (.Q(OUTDATA[23]), 
	.D(CUR_ENC_LEFT[23]), 
	.CLK(FE_OFN1335_START));
   LATCH \OUTDATA_reg[22]  (.Q(OUTDATA[22]), 
	.D(CUR_ENC_LEFT[22]), 
	.CLK(START));
   LATCH \OUTDATA_reg[21]  (.Q(OUTDATA[21]), 
	.D(CUR_ENC_LEFT[21]), 
	.CLK(FE_OFN1330_START));
   LATCH \OUTDATA_reg[20]  (.Q(OUTDATA[20]), 
	.D(CUR_ENC_LEFT[20]), 
	.CLK(FE_OFN1330_START));
   LATCH \OUTDATA_reg[19]  (.Q(OUTDATA[19]), 
	.D(CUR_ENC_LEFT[19]), 
	.CLK(FE_OFN83_START));
   LATCH \OUTDATA_reg[18]  (.Q(OUTDATA[18]), 
	.D(CUR_ENC_LEFT[18]), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[17]  (.Q(OUTDATA[17]), 
	.D(CUR_ENC_LEFT[17]), 
	.CLK(FE_OFN1335_START));
   LATCH \OUTDATA_reg[16]  (.Q(OUTDATA[16]), 
	.D(FE_OFN1411_CUR_ENC_LEFT_16_), 
	.CLK(FE_OFN948_START));
   LATCH \OUTDATA_reg[15]  (.Q(OUTDATA[15]), 
	.D(CUR_ENC_LEFT[15]), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[14]  (.Q(OUTDATA[14]), 
	.D(CUR_ENC_LEFT[14]), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[13]  (.Q(OUTDATA[13]), 
	.D(FE_OFN1471_CUR_ENC_LEFT_13_), 
	.CLK(FE_OFN945_START));
   LATCH \OUTDATA_reg[12]  (.Q(OUTDATA[12]), 
	.D(CUR_ENC_LEFT[12]), 
	.CLK(FE_OFN945_START));
   LATCH \OUTDATA_reg[11]  (.Q(OUTDATA[11]), 
	.D(CUR_ENC_LEFT[11]), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[10]  (.Q(OUTDATA[10]), 
	.D(CUR_ENC_LEFT[10]), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[9]  (.Q(OUTDATA[9]), 
	.D(CUR_ENC_LEFT[9]), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[8]  (.Q(OUTDATA[8]), 
	.D(CUR_ENC_LEFT[8]), 
	.CLK(FE_OFN82_START));
   LATCH \OUTDATA_reg[7]  (.Q(OUTDATA[7]), 
	.D(CUR_ENC_LEFT[7]), 
	.CLK(FE_OFN945_START));
   LATCH \OUTDATA_reg[6]  (.Q(OUTDATA[6]), 
	.D(FE_OFN1419_CUR_ENC_LEFT_6_), 
	.CLK(FE_OFN945_START));
   LATCH \OUTDATA_reg[5]  (.Q(OUTDATA[5]), 
	.D(CUR_ENC_LEFT[5]), 
	.CLK(FE_OFN1335_START));
   LATCH \OUTDATA_reg[4]  (.Q(OUTDATA[4]), 
	.D(CUR_ENC_LEFT[4]), 
	.CLK(FE_OFN1335_START));
   LATCH \OUTDATA_reg[3]  (.Q(OUTDATA[3]), 
	.D(CUR_ENC_LEFT[3]), 
	.CLK(FE_OFN353_START));
   LATCH \OUTDATA_reg[2]  (.Q(OUTDATA[2]), 
	.D(CUR_ENC_LEFT[2]), 
	.CLK(FE_OFN1330_START));
   LATCH \OUTDATA_reg[1]  (.Q(OUTDATA[1]), 
	.D(CUR_ENC_LEFT[1]), 
	.CLK(FE_OFN1335_START));
   LATCH \OUTDATA_reg[0]  (.Q(OUTDATA[0]), 
	.D(CUR_ENC_LEFT[0]), 
	.CLK(FE_OFN353_START));
   INVX8 U4 (.Y(n2), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U5 (.Y(n963), 
	.B(n2), 
	.A(ENC_LEFT[29]));
   OR2X1 U6 (.Y(n964), 
	.B(ENC_LEFT[29]), 
	.A(IN_SELECT));
   NAND2X1 U7 (.Y(n965), 
	.B(n2), 
	.A(ENC_RIGHT[29]));
   OR2X1 U8 (.Y(n966), 
	.B(ENC_RIGHT[29]), 
	.A(IN_SELECT));
   NAND2X1 U9 (.Y(n967), 
	.B(FE_OFN1246_n2), 
	.A(ENC_LEFT[13]));
   OR2X1 U10 (.Y(n968), 
	.B(ENC_LEFT[13]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U11 (.Y(n969), 
	.B(FE_OFN1246_n2), 
	.A(ENC_RIGHT[13]));
   OR2X1 U12 (.Y(n970), 
	.B(ENC_RIGHT[13]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U13 (.Y(n971), 
	.B(n2), 
	.A(ENC_LEFT[14]));
   OR2X1 U14 (.Y(n972), 
	.B(ENC_LEFT[14]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U15 (.Y(n973), 
	.B(n2), 
	.A(ENC_RIGHT[14]));
   OR2X1 U16 (.Y(n974), 
	.B(ENC_RIGHT[14]), 
	.A(IN_SELECT));
   NAND2X1 U17 (.Y(n975), 
	.B(n2), 
	.A(ENC_LEFT[30]));
   OR2X1 U18 (.Y(n976), 
	.B(ENC_LEFT[30]), 
	.A(IN_SELECT));
   NAND2X1 U19 (.Y(n977), 
	.B(n2), 
	.A(ENC_RIGHT[30]));
   OR2X1 U20 (.Y(n978), 
	.B(ENC_RIGHT[30]), 
	.A(IN_SELECT));
   NAND2X1 U21 (.Y(n979), 
	.B(n2), 
	.A(ENC_LEFT[25]));
   OR2X1 U22 (.Y(n980), 
	.B(ENC_LEFT[25]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U23 (.Y(n981), 
	.B(n2), 
	.A(ENC_RIGHT[25]));
   OR2X1 U24 (.Y(n982), 
	.B(ENC_RIGHT[25]), 
	.A(IN_SELECT));
   NAND2X1 U25 (.Y(n983), 
	.B(FE_OFN1244_n2), 
	.A(ENC_LEFT[10]));
   OR2X1 U26 (.Y(n984), 
	.B(ENC_LEFT[10]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U27 (.Y(n985), 
	.B(FE_OFN1244_n2), 
	.A(ENC_RIGHT[10]));
   OR2X1 U28 (.Y(n986), 
	.B(ENC_RIGHT[10]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U29 (.Y(n987), 
	.B(n2), 
	.A(ENC_LEFT[31]));
   OR2X1 U30 (.Y(n988), 
	.B(ENC_LEFT[31]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U31 (.Y(n989), 
	.B(n2), 
	.A(ENC_RIGHT[31]));
   OR2X1 U32 (.Y(n990), 
	.B(ENC_RIGHT[31]), 
	.A(IN_SELECT));
   NAND2X1 U33 (.Y(n991), 
	.B(n2), 
	.A(ENC_LEFT[22]));
   OR2X1 U34 (.Y(n992), 
	.B(ENC_LEFT[22]), 
	.A(IN_SELECT));
   NAND2X1 U35 (.Y(n993), 
	.B(n2), 
	.A(ENC_RIGHT[22]));
   OR2X1 U36 (.Y(n994), 
	.B(ENC_RIGHT[22]), 
	.A(IN_SELECT));
   NAND2X1 U37 (.Y(n995), 
	.B(FE_OFN1440_n2), 
	.A(ENC_LEFT[12]));
   OR2X1 U38 (.Y(n996), 
	.B(ENC_LEFT[12]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U39 (.Y(n997), 
	.B(FE_OFN1440_n2), 
	.A(ENC_RIGHT[12]));
   OR2X1 U40 (.Y(n998), 
	.B(ENC_RIGHT[12]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U41 (.Y(n999), 
	.B(FE_OFN1246_n2), 
	.A(ENC_LEFT[6]));
   OR2X1 U42 (.Y(n1000), 
	.B(ENC_LEFT[6]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U43 (.Y(n1001), 
	.B(FE_OFN1246_n2), 
	.A(ENC_RIGHT[6]));
   OR2X1 U44 (.Y(n1002), 
	.B(ENC_RIGHT[6]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U45 (.Y(n1003), 
	.B(FE_OFN1245_n2), 
	.A(ENC_LEFT[20]));
   OR2X1 U46 (.Y(n1004), 
	.B(ENC_LEFT[20]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U47 (.Y(n1005), 
	.B(FE_OFN1245_n2), 
	.A(ENC_RIGHT[20]));
   OR2X1 U48 (.Y(n1006), 
	.B(ENC_RIGHT[20]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U49 (.Y(n1007), 
	.B(FE_OFN1245_n2), 
	.A(ENC_LEFT[4]));
   OR2X1 U50 (.Y(n1008), 
	.B(ENC_LEFT[4]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U51 (.Y(n1009), 
	.B(FE_OFN1245_n2), 
	.A(ENC_RIGHT[4]));
   OR2X1 U52 (.Y(n1010), 
	.B(ENC_RIGHT[4]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U53 (.Y(n1011), 
	.B(n2), 
	.A(ENC_LEFT[19]));
   OR2X1 U54 (.Y(n1012), 
	.B(ENC_LEFT[19]), 
	.A(IN_SELECT));
   NAND2X1 U55 (.Y(n1013), 
	.B(n2), 
	.A(ENC_RIGHT[19]));
   OR2X1 U56 (.Y(n1014), 
	.B(ENC_RIGHT[19]), 
	.A(IN_SELECT));
   NAND2X1 U57 (.Y(n1015), 
	.B(n2), 
	.A(ENC_LEFT[26]));
   OR2X1 U58 (.Y(n1016), 
	.B(ENC_LEFT[26]), 
	.A(IN_SELECT));
   NAND2X1 U59 (.Y(n1017), 
	.B(n2), 
	.A(ENC_RIGHT[26]));
   OR2X1 U60 (.Y(n1018), 
	.B(ENC_RIGHT[26]), 
	.A(IN_SELECT));
   NAND2X1 U61 (.Y(n1019), 
	.B(FE_OFN1244_n2), 
	.A(ENC_LEFT[2]));
   OR2X1 U62 (.Y(n1020), 
	.B(ENC_LEFT[2]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U63 (.Y(n1021), 
	.B(FE_OFN1440_n2), 
	.A(ENC_RIGHT[2]));
   OR2X1 U64 (.Y(n1022), 
	.B(ENC_RIGHT[2]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U65 (.Y(n1023), 
	.B(n2), 
	.A(ENC_LEFT[16]));
   OR2X1 U66 (.Y(n1024), 
	.B(ENC_LEFT[16]), 
	.A(IN_SELECT));
   NAND2X1 U67 (.Y(n1025), 
	.B(n2), 
	.A(ENC_RIGHT[16]));
   OR2X1 U68 (.Y(n1026), 
	.B(ENC_RIGHT[16]), 
	.A(IN_SELECT));
   NAND2X1 U69 (.Y(n1027), 
	.B(FE_OFN1440_n2), 
	.A(ENC_LEFT[8]));
   OR2X1 U70 (.Y(n1028), 
	.B(ENC_LEFT[8]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U71 (.Y(n1029), 
	.B(n2), 
	.A(ENC_RIGHT[8]));
   OR2X1 U72 (.Y(n1030), 
	.B(ENC_RIGHT[8]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U73 (.Y(n1031), 
	.B(FE_OFN1245_n2), 
	.A(ENC_LEFT[21]));
   OR2X1 U74 (.Y(n1032), 
	.B(ENC_LEFT[21]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U75 (.Y(n1033), 
	.B(n2), 
	.A(ENC_RIGHT[21]));
   OR2X1 U76 (.Y(n1034), 
	.B(ENC_RIGHT[21]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U77 (.Y(n1035), 
	.B(FE_OFN1244_n2), 
	.A(ENC_LEFT[3]));
   OR2X1 U78 (.Y(n1036), 
	.B(ENC_LEFT[3]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U79 (.Y(n1037), 
	.B(FE_OFN1244_n2), 
	.A(ENC_RIGHT[3]));
   OR2X1 U80 (.Y(n1038), 
	.B(ENC_RIGHT[3]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U81 (.Y(n1039), 
	.B(n2), 
	.A(ENC_LEFT[28]));
   OR2X1 U82 (.Y(n1040), 
	.B(ENC_LEFT[28]), 
	.A(IN_SELECT));
   NAND2X1 U83 (.Y(n1041), 
	.B(n2), 
	.A(ENC_RIGHT[28]));
   OR2X1 U84 (.Y(n1042), 
	.B(ENC_RIGHT[28]), 
	.A(IN_SELECT));
   NAND2X1 U85 (.Y(n1043), 
	.B(FE_OFN1246_n2), 
	.A(ENC_LEFT[7]));
   OR2X1 U86 (.Y(n1044), 
	.B(ENC_LEFT[7]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U87 (.Y(n1045), 
	.B(FE_OFN1246_n2), 
	.A(ENC_RIGHT[7]));
   OR2X1 U88 (.Y(n1046), 
	.B(ENC_RIGHT[7]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U89 (.Y(n1047), 
	.B(n2), 
	.A(ENC_LEFT[18]));
   OR2X1 U90 (.Y(n1048), 
	.B(ENC_LEFT[18]), 
	.A(IN_SELECT));
   NAND2X1 U91 (.Y(n1049), 
	.B(n2), 
	.A(ENC_RIGHT[18]));
   OR2X1 U92 (.Y(n1050), 
	.B(ENC_RIGHT[18]), 
	.A(IN_SELECT));
   NAND2X1 U93 (.Y(n1051), 
	.B(n2), 
	.A(ENC_LEFT[24]));
   OR2X1 U94 (.Y(n1052), 
	.B(ENC_LEFT[24]), 
	.A(IN_SELECT));
   NAND2X1 U95 (.Y(n1053), 
	.B(n2), 
	.A(ENC_RIGHT[24]));
   OR2X1 U96 (.Y(n1054), 
	.B(ENC_RIGHT[24]), 
	.A(IN_SELECT));
   NAND2X1 U97 (.Y(n1055), 
	.B(FE_OFN1246_n2), 
	.A(ENC_LEFT[11]));
   OR2X1 U98 (.Y(n1056), 
	.B(ENC_LEFT[11]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U99 (.Y(n1057), 
	.B(FE_OFN1244_n2), 
	.A(ENC_RIGHT[11]));
   OR2X1 U100 (.Y(n1058), 
	.B(ENC_RIGHT[11]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U101 (.Y(n1059), 
	.B(FE_OFN1245_n2), 
	.A(ENC_LEFT[17]));
   OR2X1 U102 (.Y(n1060), 
	.B(ENC_LEFT[17]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U103 (.Y(n1061), 
	.B(FE_OFN1245_n2), 
	.A(ENC_RIGHT[17]));
   OR2X1 U104 (.Y(n1062), 
	.B(ENC_RIGHT[17]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U105 (.Y(n1063), 
	.B(FE_OFN1244_n2), 
	.A(ENC_LEFT[5]));
   OR2X1 U106 (.Y(n1064), 
	.B(ENC_LEFT[5]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U107 (.Y(n1065), 
	.B(FE_OFN1244_n2), 
	.A(ENC_RIGHT[5]));
   OR2X1 U108 (.Y(n1066), 
	.B(ENC_RIGHT[5]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U109 (.Y(n1067), 
	.B(n2), 
	.A(ENC_LEFT[27]));
   OR2X1 U110 (.Y(n1068), 
	.B(ENC_LEFT[27]), 
	.A(IN_SELECT));
   NAND2X1 U111 (.Y(n1069), 
	.B(n2), 
	.A(ENC_RIGHT[27]));
   OR2X1 U112 (.Y(n1070), 
	.B(ENC_RIGHT[27]), 
	.A(IN_SELECT));
   NAND2X1 U113 (.Y(n1071), 
	.B(FE_OFN1245_n2), 
	.A(ENC_LEFT[1]));
   OR2X1 U114 (.Y(n1072), 
	.B(ENC_LEFT[1]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U115 (.Y(n1073), 
	.B(FE_OFN1245_n2), 
	.A(ENC_RIGHT[1]));
   OR2X1 U116 (.Y(n1074), 
	.B(ENC_RIGHT[1]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U117 (.Y(n1075), 
	.B(FE_OFN1244_n2), 
	.A(ENC_LEFT[9]));
   OR2X1 U118 (.Y(n1076), 
	.B(ENC_LEFT[9]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U119 (.Y(n1077), 
	.B(FE_OFN1244_n2), 
	.A(ENC_RIGHT[9]));
   OR2X1 U120 (.Y(n1078), 
	.B(ENC_RIGHT[9]), 
	.A(FE_OFN1250_IN_SELECT));
   NAND2X1 U121 (.Y(n1079), 
	.B(FE_OFN1440_n2), 
	.A(ENC_LEFT[15]));
   OR2X1 U122 (.Y(n1080), 
	.B(ENC_LEFT[15]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U123 (.Y(n1081), 
	.B(FE_OFN1440_n2), 
	.A(ENC_RIGHT[15]));
   OR2X1 U124 (.Y(n1082), 
	.B(ENC_RIGHT[15]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U125 (.Y(n1083), 
	.B(FE_OFN1245_n2), 
	.A(ENC_LEFT[23]));
   OR2X1 U126 (.Y(n1084), 
	.B(ENC_LEFT[23]), 
	.A(IN_SELECT));
   NAND2X1 U127 (.Y(n1085), 
	.B(FE_OFN1245_n2), 
	.A(ENC_RIGHT[23]));
   OR2X1 U128 (.Y(n1086), 
	.B(ENC_RIGHT[23]), 
	.A(IN_SELECT));
   NAND2X1 U129 (.Y(n1087), 
	.B(FE_OFN1244_n2), 
	.A(ENC_RIGHT[0]));
   OR2X1 U130 (.Y(n1088), 
	.B(ENC_RIGHT[0]), 
	.A(FE_OFN1251_IN_SELECT));
   NAND2X1 U131 (.Y(n1089), 
	.B(FE_OFN1244_n2), 
	.A(ENC_LEFT[0]));
   OR2X1 U132 (.Y(n1090), 
	.B(ENC_LEFT[0]), 
	.A(FE_OFN1251_IN_SELECT));
   XNOR2X1 U133 (.Y(NXT_ENC_RIGHT1[9]), 
	.B(n3), 
	.A(CUR_ENC_LEFT[9]));
   NOR2X1 U134 (.Y(n3), 
	.B(n5), 
	.A(n4));
   OAI21X1 U135 (.Y(n5), 
	.C(n8), 
	.B(n7), 
	.A(n6));
   NAND3X1 U136 (.Y(n4), 
	.C(n11), 
	.B(n10), 
	.A(n9));
   OAI21X1 U137 (.Y(n11), 
	.C(n14), 
	.B(n13), 
	.A(n12));
   OR2X1 U138 (.Y(n13), 
	.B(n16), 
	.A(n15));
   NAND2X1 U139 (.Y(n12), 
	.B(n18), 
	.A(n17));
   OAI21X1 U140 (.Y(n10), 
	.C(FE_OFN1273_n21), 
	.B(n20), 
	.A(n19));
   NOR2X1 U141 (.Y(n19), 
	.B(n23), 
	.A(FE_OFN1446_n22));
   OAI21X1 U142 (.Y(n9), 
	.C(n26), 
	.B(n25), 
	.A(n24));
   XOR2X1 U143 (.Y(NXT_ENC_RIGHT1[8]), 
	.B(CUR_ENC_LEFT[8]), 
	.A(FE_OFN1260_n27));
   NAND3X1 U144 (.Y(n27), 
	.C(n30), 
	.B(n29), 
	.A(n28));
   AOI21X1 U145 (.Y(n30), 
	.C(n33), 
	.B(n32), 
	.A(n31));
   NAND3X1 U146 (.Y(n32), 
	.C(n36), 
	.B(n35), 
	.A(n34));
   INVX1 U147 (.Y(n36), 
	.A(n37));
   OAI21X1 U148 (.Y(n37), 
	.C(n40), 
	.B(FE_OFN1269_n39), 
	.A(n38));
   OAI21X1 U149 (.Y(n29), 
	.C(n43), 
	.B(n42), 
	.A(n41));
   OAI21X1 U150 (.Y(n42), 
	.C(n46), 
	.B(n45), 
	.A(n44));
   INVX1 U151 (.Y(n46), 
	.A(n47));
   NAND2X1 U152 (.Y(n45), 
	.B(n49), 
	.A(n48));
   AOI22X1 U153 (.Y(n28), 
	.D(n53), 
	.C(FE_OFN1271_n52), 
	.B(n51), 
	.A(n50));
   OAI21X1 U154 (.Y(n53), 
	.C(n56), 
	.B(n55), 
	.A(FE_OFN1264_n54));
   AND2X1 U155 (.Y(n56), 
	.B(n58), 
	.A(n57));
   OR2X1 U156 (.Y(n55), 
	.B(n60), 
	.A(FE_OFN1277_n59));
   NOR2X1 U157 (.Y(n50), 
	.B(n62), 
	.A(n61));
   XNOR2X1 U158 (.Y(NXT_ENC_RIGHT1[7]), 
	.B(n63), 
	.A(CUR_ENC_LEFT[7]));
   NOR2X1 U159 (.Y(n63), 
	.B(n65), 
	.A(n64));
   OAI21X1 U160 (.Y(n65), 
	.C(n68), 
	.B(n67), 
	.A(n66));
   INVX1 U161 (.Y(n66), 
	.A(n69));
   NAND3X1 U162 (.Y(n64), 
	.C(n72), 
	.B(n71), 
	.A(n70));
   OAI21X1 U163 (.Y(n72), 
	.C(FE_OFN1301_n75), 
	.B(n74), 
	.A(n73));
   OAI21X1 U164 (.Y(n74), 
	.C(n78), 
	.B(n77), 
	.A(n76));
   OAI21X1 U165 (.Y(n71), 
	.C(FE_OFN1453_n81), 
	.B(n80), 
	.A(n79));
   OR2X1 U166 (.Y(n70), 
	.B(n83), 
	.A(n82));
   XNOR2X1 U167 (.Y(NXT_ENC_RIGHT1[6]), 
	.B(FE_OFN1254_n84), 
	.A(FE_OFN1419_CUR_ENC_LEFT_6_));
   NOR2X1 U168 (.Y(n84), 
	.B(n86), 
	.A(n85));
   NAND3X1 U169 (.Y(n86), 
	.C(n89), 
	.B(n88), 
	.A(n87));
   INVX1 U170 (.Y(n89), 
	.A(n90));
   OAI22X1 U171 (.Y(n90), 
	.D(n94), 
	.C(FE_OFN1442_n93), 
	.B(n92), 
	.A(n91));
   INVX1 U172 (.Y(n92), 
	.A(n95));
   INVX1 U173 (.Y(n87), 
	.A(n96));
   NAND3X1 U174 (.Y(n85), 
	.C(n99), 
	.B(n98), 
	.A(n97));
   AOI22X1 U175 (.Y(n99), 
	.D(n103), 
	.C(n102), 
	.B(n101), 
	.A(FE_OFN1445_n100));
   OAI21X1 U176 (.Y(n101), 
	.C(n105), 
	.B(n104), 
	.A(n94));
   MUX2X1 U177 (.Y(n105), 
	.S(n108), 
	.B(n106), 
	.A(n107));
   NOR2X1 U178 (.Y(n107), 
	.B(n110), 
	.A(n109));
   NOR2X1 U179 (.Y(n106), 
	.B(n112), 
	.A(n111));
   OR2X1 U180 (.Y(n104), 
	.B(n114), 
	.A(n113));
   INVX1 U181 (.Y(n98), 
	.A(n115));
   AOI21X1 U182 (.Y(n115), 
	.C(n110), 
	.B(n117), 
	.A(n116));
   OAI21X1 U183 (.Y(n97), 
	.C(FE_OFN1256_n120), 
	.B(n119), 
	.A(n118));
   NAND2X1 U184 (.Y(n119), 
	.B(n122), 
	.A(n121));
   XOR2X1 U185 (.Y(NXT_ENC_RIGHT1[5]), 
	.B(CUR_ENC_LEFT[5]), 
	.A(n123));
   NAND3X1 U186 (.Y(n123), 
	.C(n126), 
	.B(n125), 
	.A(n124));
   NOR2X1 U187 (.Y(n126), 
	.B(n128), 
	.A(n127));
   OAI21X1 U188 (.Y(n128), 
	.C(n131), 
	.B(n130), 
	.A(n129));
   OAI21X1 U189 (.Y(n131), 
	.C(n134), 
	.B(n133), 
	.A(n132));
   AOI21X1 U190 (.Y(n129), 
	.C(n137), 
	.B(n136), 
	.A(n135));
   OAI21X1 U191 (.Y(n127), 
	.C(n140), 
	.B(n139), 
	.A(n138));
   OAI21X1 U192 (.Y(n140), 
	.C(FE_OFN1299_n143), 
	.B(n142), 
	.A(n141));
   OAI21X1 U193 (.Y(n142), 
	.C(n146), 
	.B(n145), 
	.A(n144));
   NAND2X1 U194 (.Y(n141), 
	.B(n148), 
	.A(n147));
   OR2X1 U195 (.Y(n139), 
	.B(n150), 
	.A(FE_OFN1448_n149));
   AOI21X1 U196 (.Y(n124), 
	.C(n153), 
	.B(n152), 
	.A(FE_OFN1298_n151));
   INVX1 U197 (.Y(n152), 
	.A(n154));
   XOR2X1 U198 (.Y(NXT_ENC_RIGHT1[4]), 
	.B(CUR_ENC_LEFT[4]), 
	.A(FE_OFN1441_n155));
   NAND3X1 U199 (.Y(n155), 
	.C(n158), 
	.B(n157), 
	.A(n156));
   AOI21X1 U200 (.Y(n158), 
	.C(n161), 
	.B(n160), 
	.A(n159));
   OAI21X1 U201 (.Y(n161), 
	.C(n164), 
	.B(n163), 
	.A(n162));
   OAI21X1 U202 (.Y(n164), 
	.C(n167), 
	.B(n166), 
	.A(n165));
   OAI21X1 U203 (.Y(n166), 
	.C(n170), 
	.B(n169), 
	.A(n168));
   OAI21X1 U204 (.Y(n165), 
	.C(n173), 
	.B(n172), 
	.A(n171));
   AND2X1 U205 (.Y(n173), 
	.B(n175), 
	.A(n174));
   OAI21X1 U206 (.Y(n157), 
	.C(n178), 
	.B(n177), 
	.A(n176));
   OAI22X1 U207 (.Y(n177), 
	.D(n168), 
	.C(n171), 
	.B(n169), 
	.A(n179));
   NAND2X1 U208 (.Y(n176), 
	.B(n181), 
	.A(FE_OFN1262_n180));
   AOI22X1 U209 (.Y(n156), 
	.D(n185), 
	.C(FE_OFN1259_n184), 
	.B(n183), 
	.A(FE_OFN1258_n182));
   NAND3X1 U210 (.Y(n185), 
	.C(n170), 
	.B(n187), 
	.A(n186));
   NAND3X1 U211 (.Y(n183), 
	.C(n190), 
	.B(n189), 
	.A(n188));
   XNOR2X1 U212 (.Y(NXT_ENC_RIGHT1[3]), 
	.B(n191), 
	.A(CUR_ENC_LEFT[3]));
   NOR2X1 U213 (.Y(n191), 
	.B(n193), 
	.A(n192));
   OAI21X1 U214 (.Y(n193), 
	.C(n196), 
	.B(n195), 
	.A(n194));
   OAI21X1 U215 (.Y(n196), 
	.C(FE_OFN1286_n199), 
	.B(n198), 
	.A(n197));
   NAND3X1 U216 (.Y(n198), 
	.C(n202), 
	.B(n201), 
	.A(n200));
   NAND3X1 U217 (.Y(n197), 
	.C(n205), 
	.B(n204), 
	.A(n203));
   NAND3X1 U218 (.Y(n192), 
	.C(n208), 
	.B(n207), 
	.A(n206));
   OAI21X1 U219 (.Y(n208), 
	.C(FE_OFN1447_n211), 
	.B(n210), 
	.A(n209));
   NAND2X1 U220 (.Y(n210), 
	.B(n200), 
	.A(n212));
   AOI22X1 U221 (.Y(n212), 
	.D(n216), 
	.C(n215), 
	.B(n214), 
	.A(n213));
   NAND3X1 U222 (.Y(n209), 
	.C(n218), 
	.B(n217), 
	.A(n201));
   OAI21X1 U223 (.Y(n207), 
	.C(FE_OFN1284_n221), 
	.B(n220), 
	.A(n219));
   NOR2X1 U224 (.Y(n219), 
	.B(n223), 
	.A(n222));
   OAI21X1 U225 (.Y(n206), 
	.C(FE_OFN1285_n226), 
	.B(n225), 
	.A(n224));
   XNOR2X1 U226 (.Y(NXT_ENC_RIGHT1[31]), 
	.B(n227), 
	.A(CUR_ENC_LEFT[31]));
   NOR2X1 U227 (.Y(n227), 
	.B(n229), 
	.A(n228));
   NAND2X1 U228 (.Y(n229), 
	.B(n230), 
	.A(n88));
   OAI21X1 U229 (.Y(n230), 
	.C(FE_OFN1256_n120), 
	.B(n232), 
	.A(n231));
   OAI21X1 U230 (.Y(n232), 
	.C(n235), 
	.B(n234), 
	.A(FE_OFN1268_n233));
   AOI21X1 U231 (.Y(n88), 
	.C(n238), 
	.B(n237), 
	.A(n236));
   OAI22X1 U232 (.Y(n238), 
	.D(n240), 
	.C(n112), 
	.B(n110), 
	.A(n239));
   NAND3X1 U233 (.Y(n228), 
	.C(n243), 
	.B(n242), 
	.A(n241));
   OAI21X1 U234 (.Y(n243), 
	.C(n246), 
	.B(n245), 
	.A(n244));
   OAI21X1 U235 (.Y(n245), 
	.C(n248), 
	.B(n247), 
	.A(n108));
   OAI21X1 U236 (.Y(n242), 
	.C(n237), 
	.B(n250), 
	.A(n249));
   NAND2X1 U237 (.Y(n250), 
	.B(n251), 
	.A(n240));
   INVX1 U238 (.Y(n240), 
	.A(n252));
   NAND2X1 U239 (.Y(n249), 
	.B(n253), 
	.A(n121));
   OAI21X1 U240 (.Y(n241), 
	.C(n102), 
	.B(n255), 
	.A(n254));
   INVX1 U241 (.Y(n254), 
	.A(n256));
   XNOR2X1 U242 (.Y(NXT_ENC_RIGHT1[30]), 
	.B(n257), 
	.A(CUR_ENC_LEFT[30]));
   NOR2X1 U243 (.Y(n257), 
	.B(n259), 
	.A(n258));
   OAI21X1 U244 (.Y(n259), 
	.C(n261), 
	.B(FE_OFN1262_n180), 
	.A(n260));
   OAI21X1 U245 (.Y(n261), 
	.C(FE_OFN1258_n182), 
	.B(n263), 
	.A(n262));
   OAI21X1 U246 (.Y(n263), 
	.C(n175), 
	.B(n172), 
	.A(n169));
   NAND3X1 U247 (.Y(n258), 
	.C(n266), 
	.B(n265), 
	.A(n264));
   OAI21X1 U248 (.Y(n266), 
	.C(n178), 
	.B(n268), 
	.A(n267));
   NAND2X1 U249 (.Y(n268), 
	.B(n163), 
	.A(n190));
   OAI21X1 U250 (.Y(n265), 
	.C(n167), 
	.B(n270), 
	.A(n269));
   OAI21X1 U251 (.Y(n270), 
	.C(n170), 
	.B(n272), 
	.A(n271));
   INVX1 U252 (.Y(n170), 
	.A(n273));
   OAI21X1 U253 (.Y(n273), 
	.C(n275), 
	.B(n169), 
	.A(n274));
   NAND2X1 U254 (.Y(n269), 
	.B(n276), 
	.A(FE_OFN1262_n180));
   OAI21X1 U255 (.Y(n264), 
	.C(FE_OFN1259_n184), 
	.B(n278), 
	.A(n277));
   NOR2X1 U256 (.Y(n277), 
	.B(n168), 
	.A(n279));
   XOR2X1 U257 (.Y(NXT_ENC_RIGHT1[2]), 
	.B(CUR_ENC_LEFT[2]), 
	.A(FE_OFN1261_n280));
   NAND3X1 U258 (.Y(n280), 
	.C(n283), 
	.B(n282), 
	.A(n281));
   AOI21X1 U259 (.Y(n283), 
	.C(n285), 
	.B(n284), 
	.A(n31));
   OAI21X1 U260 (.Y(n285), 
	.C(n288), 
	.B(n287), 
	.A(n286));
   OAI21X1 U261 (.Y(n288), 
	.C(n291), 
	.B(n290), 
	.A(n289));
   NOR2X1 U262 (.Y(n286), 
	.B(n293), 
	.A(n292));
   OAI21X1 U263 (.Y(n284), 
	.C(n295), 
	.B(n294), 
	.A(n49));
   OAI21X1 U264 (.Y(n282), 
	.C(n298), 
	.B(n297), 
	.A(n296));
   OAI21X1 U265 (.Y(n297), 
	.C(n299), 
	.B(n44), 
	.A(FE_OFN1269_n39));
   NAND3X1 U266 (.Y(n296), 
	.C(n301), 
	.B(n35), 
	.A(n300));
   AOI22X1 U267 (.Y(n281), 
	.D(n304), 
	.C(n303), 
	.B(n302), 
	.A(n43));
   NAND2X1 U268 (.Y(n302), 
	.B(n305), 
	.A(n58));
   OAI21X1 U269 (.Y(n305), 
	.C(n48), 
	.B(n307), 
	.A(n306));
   XNOR2X1 U270 (.Y(NXT_ENC_RIGHT1[29]), 
	.B(n308), 
	.A(CUR_ENC_LEFT[29]));
   NOR2X1 U271 (.Y(n308), 
	.B(n310), 
	.A(n309));
   OAI21X1 U272 (.Y(n310), 
	.C(n313), 
	.B(n312), 
	.A(n311));
   INVX1 U273 (.Y(n313), 
	.A(n314));
   AOI21X1 U274 (.Y(n311), 
	.C(n317), 
	.B(FE_OFN1281_n316), 
	.A(FE_OFN1451_n315));
   OAI21X1 U275 (.Y(n309), 
	.C(n319), 
	.B(n82), 
	.A(n318));
   AOI22X1 U276 (.Y(n319), 
	.D(n322), 
	.C(FE_OFN1453_n81), 
	.B(n321), 
	.A(FE_OFN1452_n320));
   OAI21X1 U277 (.Y(n322), 
	.C(n83), 
	.B(n324), 
	.A(n323));
   NOR2X1 U278 (.Y(n83), 
	.B(n326), 
	.A(n325));
   OAI21X1 U279 (.Y(n326), 
	.C(n328), 
	.B(n77), 
	.A(FE_OFN1294_n327));
   OAI21X1 U280 (.Y(n321), 
	.C(n331), 
	.B(n330), 
	.A(n329));
   INVX1 U281 (.Y(n331), 
	.A(n73));
   NAND3X1 U282 (.Y(n73), 
	.C(n334), 
	.B(n333), 
	.A(n332));
   AND2X1 U283 (.Y(n334), 
	.B(n336), 
	.A(n335));
   INVX1 U284 (.Y(n82), 
	.A(n337));
   AOI21X1 U285 (.Y(n318), 
	.C(n340), 
	.B(n339), 
	.A(n338));
   XNOR2X1 U286 (.Y(NXT_ENC_RIGHT1[28]), 
	.B(FE_OFN1282_n341), 
	.A(CUR_ENC_LEFT[28]));
   NOR2X1 U287 (.Y(n341), 
	.B(n343), 
	.A(n342));
   NAND3X1 U288 (.Y(n343), 
	.C(n346), 
	.B(n345), 
	.A(n344));
   OAI21X1 U289 (.Y(n346), 
	.C(FE_OFN1447_n211), 
	.B(n348), 
	.A(n347));
   OR2X1 U290 (.Y(n348), 
	.B(n350), 
	.A(n349));
   NAND2X1 U291 (.Y(n347), 
	.B(n205), 
	.A(n201));
   INVX1 U292 (.Y(n201), 
	.A(n224));
   OAI21X1 U293 (.Y(n345), 
	.C(FE_OFN1285_n226), 
	.B(n352), 
	.A(n351));
   INVX1 U294 (.Y(n351), 
	.A(n353));
   NAND2X1 U295 (.Y(n344), 
	.B(n355), 
	.A(FE_OFN1304_n354));
   OAI21X1 U296 (.Y(n355), 
	.C(n358), 
	.B(n357), 
	.A(n356));
   OAI21X1 U297 (.Y(n358), 
	.C(FE_OFN1285_n226), 
	.B(n359), 
	.A(n215));
   INVX1 U298 (.Y(n357), 
	.A(FE_OFN1284_n221));
   NAND3X1 U299 (.Y(n342), 
	.C(n362), 
	.B(n361), 
	.A(n360));
   OAI21X1 U300 (.Y(n362), 
	.C(FE_OFN1286_n199), 
	.B(n364), 
	.A(n363));
   NAND2X1 U301 (.Y(n364), 
	.B(n366), 
	.A(n365));
   NAND2X1 U302 (.Y(n363), 
	.B(n353), 
	.A(n202));
   OAI21X1 U303 (.Y(n361), 
	.C(FE_OFN1284_n221), 
	.B(n368), 
	.A(n367));
   INVX1 U304 (.Y(n368), 
	.A(n366));
   INVX1 U305 (.Y(n360), 
	.A(n369));
   AOI21X1 U306 (.Y(n369), 
	.C(n195), 
	.B(n217), 
	.A(n370));
   XOR2X1 U307 (.Y(NXT_ENC_RIGHT1[27]), 
	.B(CUR_ENC_LEFT[27]), 
	.A(FE_OFN1278_n371));
   NAND3X1 U308 (.Y(n371), 
	.C(n374), 
	.B(n373), 
	.A(n372));
   NOR2X1 U309 (.Y(n374), 
	.B(n376), 
	.A(n375));
   INVX1 U310 (.Y(n376), 
	.A(n377));
   AOI22X1 U311 (.Y(n377), 
	.D(n380), 
	.C(n379), 
	.B(n137), 
	.A(n378));
   OAI21X1 U312 (.Y(n137), 
	.C(n382), 
	.B(n381), 
	.A(FE_OFN1448_n149));
   AND2X1 U313 (.Y(n382), 
	.B(n384), 
	.A(n383));
   OAI21X1 U314 (.Y(n375), 
	.C(n386), 
	.B(n145), 
	.A(n385));
   OAI21X1 U315 (.Y(n386), 
	.C(n134), 
	.B(n388), 
	.A(n387));
   NAND2X1 U316 (.Y(n388), 
	.B(n148), 
	.A(n389));
   INVX1 U317 (.Y(n148), 
	.A(n390));
   AOI21X1 U318 (.Y(n385), 
	.C(n392), 
	.B(n391), 
	.A(FE_OFN1298_n151));
   OAI21X1 U319 (.Y(n392), 
	.C(n130), 
	.B(n394), 
	.A(n393));
   AOI22X1 U320 (.Y(n373), 
	.D(FE_OFN1298_n151), 
	.C(n395), 
	.B(n133), 
	.A(FE_OFN1299_n143));
   NAND3X1 U321 (.Y(n133), 
	.C(n397), 
	.B(n396), 
	.A(n384));
   AOI21X1 U322 (.Y(n397), 
	.C(n400), 
	.B(n399), 
	.A(n398));
   NOR2X1 U323 (.Y(n372), 
	.B(n401), 
	.A(n153));
   XNOR2X1 U324 (.Y(NXT_ENC_RIGHT1[26]), 
	.B(n402), 
	.A(CUR_ENC_LEFT[26]));
   NOR2X1 U325 (.Y(n402), 
	.B(n404), 
	.A(n403));
   NAND3X1 U326 (.Y(n404), 
	.C(n407), 
	.B(n406), 
	.A(n405));
   INVX1 U327 (.Y(n407), 
	.A(n33));
   NAND2X1 U328 (.Y(n33), 
	.B(n409), 
	.A(n408));
   AOI22X1 U329 (.Y(n409), 
	.D(n411), 
	.C(FE_OFN1271_n52), 
	.B(n289), 
	.A(n410));
   OAI21X1 U330 (.Y(n411), 
	.C(n412), 
	.B(n49), 
	.A(n44));
   AND2X1 U331 (.Y(n412), 
	.B(n295), 
	.A(n40));
   INVX1 U332 (.Y(n289), 
	.A(n57));
   NAND3X1 U333 (.Y(n57), 
	.C(n60), 
	.B(FE_OFN1277_n59), 
	.A(FE_OFN1264_n54));
   AOI22X1 U334 (.Y(n408), 
	.D(n413), 
	.C(n31), 
	.B(n304), 
	.A(n298));
   OAI21X1 U335 (.Y(n406), 
	.C(n291), 
	.B(n293), 
	.A(n41));
   OR2X1 U336 (.Y(n293), 
	.B(n415), 
	.A(n414));
   OAI21X1 U337 (.Y(n415), 
	.C(n300), 
	.B(n416), 
	.A(FE_OFN1264_n54));
   NAND3X1 U338 (.Y(n300), 
	.C(n419), 
	.B(n418), 
	.A(n417));
   OAI21X1 U339 (.Y(n405), 
	.C(FE_OFN1271_n52), 
	.B(n420), 
	.A(n47));
   NAND2X1 U340 (.Y(n420), 
	.B(n34), 
	.A(n421));
   OR2X1 U341 (.Y(n34), 
	.B(n418), 
	.A(n422));
   NAND2X1 U342 (.Y(n47), 
	.B(n299), 
	.A(n423));
   OAI21X1 U343 (.Y(n403), 
	.C(n425), 
	.B(n62), 
	.A(n424));
   AOI22X1 U344 (.Y(n425), 
	.D(n51), 
	.C(n428), 
	.B(n427), 
	.A(n426));
   NOR2X1 U345 (.Y(n428), 
	.B(n429), 
	.A(n38));
   NOR2X1 U346 (.Y(n426), 
	.B(n44), 
	.A(n430));
   INVX1 U347 (.Y(n62), 
	.A(n298));
   AOI21X1 U348 (.Y(n424), 
	.C(n432), 
	.B(n417), 
	.A(n431));
   NOR2X1 U349 (.Y(n431), 
	.B(FE_OFN1277_n59), 
	.A(n433));
   XNOR2X1 U350 (.Y(NXT_ENC_RIGHT1[25]), 
	.B(FE_OFN1288_n434), 
	.A(CUR_ENC_LEFT[25]));
   NOR2X1 U351 (.Y(n434), 
	.B(n436), 
	.A(n435));
   NAND2X1 U352 (.Y(n436), 
	.B(n438), 
	.A(n437));
   AOI22X1 U353 (.Y(n437), 
	.D(n442), 
	.C(n441), 
	.B(n440), 
	.A(n439));
   NAND3X1 U354 (.Y(n440), 
	.C(n445), 
	.B(n444), 
	.A(n443));
   INVX1 U355 (.Y(n445), 
	.A(n446));
   NAND3X1 U356 (.Y(n435), 
	.C(n449), 
	.B(n448), 
	.A(n447));
   AOI22X1 U357 (.Y(n449), 
	.D(n453), 
	.C(n452), 
	.B(FE_OFN1449_n451), 
	.A(n450));
   OAI21X1 U358 (.Y(n453), 
	.C(n456), 
	.B(n455), 
	.A(n454));
   INVX1 U359 (.Y(n455), 
	.A(n457));
   NOR2X1 U360 (.Y(n450), 
	.B(n459), 
	.A(n458));
   OAI21X1 U361 (.Y(n448), 
	.C(FE_OFN1300_n462), 
	.B(n461), 
	.A(n460));
   OAI21X1 U362 (.Y(n447), 
	.C(n465), 
	.B(n464), 
	.A(n463));
   OAI21X1 U363 (.Y(n464), 
	.C(n443), 
	.B(n459), 
	.A(n466));
   XOR2X1 U364 (.Y(NXT_ENC_RIGHT1[24]), 
	.B(CUR_ENC_LEFT[24]), 
	.A(FE_OFN1280_n467));
   NAND3X1 U365 (.Y(n467), 
	.C(n470), 
	.B(n469), 
	.A(n468));
   NOR2X1 U366 (.Y(n470), 
	.B(n471), 
	.A(n314));
   OAI21X1 U367 (.Y(n471), 
	.C(n474), 
	.B(n473), 
	.A(n472));
   OAI21X1 U368 (.Y(n474), 
	.C(FE_OFN1301_n75), 
	.B(n69), 
	.A(n475));
   OAI21X1 U369 (.Y(n69), 
	.C(n477), 
	.B(n476), 
	.A(FE_OFN1281_n316));
   AND2X1 U370 (.Y(n477), 
	.B(n478), 
	.A(n333));
   INVX1 U371 (.Y(n475), 
	.A(n479));
   AOI21X1 U372 (.Y(n472), 
	.C(n481), 
	.B(n76), 
	.A(n480));
   NAND2X1 U373 (.Y(n481), 
	.B(n482), 
	.A(n335));
   NOR2X1 U374 (.Y(n480), 
	.B(FE_OFN1281_n316), 
	.A(FE_OFN1451_n315));
   NAND2X1 U375 (.Y(n314), 
	.B(n484), 
	.A(n483));
   AOI22X1 U376 (.Y(n484), 
	.D(n486), 
	.C(FE_OFN1453_n81), 
	.B(n485), 
	.A(FE_OFN1301_n75));
   OAI21X1 U377 (.Y(n485), 
	.C(n487), 
	.B(n77), 
	.A(n324));
   INVX1 U378 (.Y(n487), 
	.A(n325));
   AOI22X1 U379 (.Y(n483), 
	.D(n489), 
	.C(n337), 
	.B(FE_OFN1452_n320), 
	.A(n488));
   NAND3X1 U380 (.Y(n489), 
	.C(n482), 
	.B(n478), 
	.A(n328));
   INVX1 U381 (.Y(n478), 
	.A(n490));
   INVX1 U382 (.Y(n488), 
	.A(n482));
   OAI21X1 U383 (.Y(n469), 
	.C(n337), 
	.B(n79), 
	.A(n491));
   NAND2X1 U384 (.Y(n79), 
	.B(n479), 
	.A(n492));
   AOI21X1 U385 (.Y(n468), 
	.C(n494), 
	.B(n493), 
	.A(FE_OFN1452_n320));
   INVX1 U386 (.Y(n494), 
	.A(n495));
   OAI21X1 U387 (.Y(n493), 
	.C(n497), 
	.B(n476), 
	.A(n496));
   INVX1 U388 (.Y(n476), 
	.A(n498));
   XNOR2X1 U389 (.Y(NXT_ENC_RIGHT1[23]), 
	.B(n499), 
	.A(CUR_ENC_LEFT[23]));
   NOR2X1 U390 (.Y(n499), 
	.B(n501), 
	.A(n500));
   INVX1 U391 (.Y(n501), 
	.A(n502));
   AOI22X1 U392 (.Y(n502), 
	.D(FE_OFN1273_n21), 
	.C(n505), 
	.B(n504), 
	.A(n503));
   NAND3X1 U393 (.Y(n500), 
	.C(n508), 
	.B(n507), 
	.A(n506));
   OAI21X1 U394 (.Y(n508), 
	.C(n26), 
	.B(n510), 
	.A(n509));
   NAND3X1 U395 (.Y(n510), 
	.C(n513), 
	.B(n512), 
	.A(n511));
   OAI21X1 U396 (.Y(n513), 
	.C(n516), 
	.B(n515), 
	.A(n514));
   NAND3X1 U397 (.Y(n509), 
	.C(n519), 
	.B(n518), 
	.A(n517));
   OAI22X1 U398 (.Y(n507), 
	.D(n504), 
	.C(FE_OFN1273_n21), 
	.B(n521), 
	.A(n520));
   INVX1 U399 (.Y(n521), 
	.A(n522));
   OAI21X1 U400 (.Y(n506), 
	.C(n14), 
	.B(n524), 
	.A(n523));
   INVX1 U401 (.Y(n524), 
	.A(n6));
   NOR2X1 U402 (.Y(n6), 
	.B(n526), 
	.A(n525));
   OAI21X1 U403 (.Y(n526), 
	.C(n527), 
	.B(n17), 
	.A(n516));
   XOR2X1 U404 (.Y(NXT_ENC_RIGHT1[22]), 
	.B(CUR_ENC_LEFT[22]), 
	.A(n528));
   NAND3X1 U405 (.Y(n528), 
	.C(n531), 
	.B(n530), 
	.A(n529));
   AOI21X1 U406 (.Y(n531), 
	.C(n533), 
	.B(n532), 
	.A(n237));
   NAND2X1 U407 (.Y(n533), 
	.B(n535), 
	.A(n534));
   OAI21X1 U408 (.Y(n535), 
	.C(n95), 
	.B(n231), 
	.A(n536));
   NAND2X1 U409 (.Y(n95), 
	.B(n110), 
	.A(n94));
   INVX1 U410 (.Y(n110), 
	.A(n246));
   OAI21X1 U411 (.Y(n534), 
	.C(n246), 
	.B(n103), 
	.A(n537));
   NAND2X1 U412 (.Y(n103), 
	.B(n251), 
	.A(n538));
   OAI21X1 U413 (.Y(n532), 
	.C(n122), 
	.B(n540), 
	.A(FE_OFN1444_n539));
   NAND2X1 U414 (.Y(n540), 
	.B(n233), 
	.A(FE_OFN1445_n100));
   OAI21X1 U415 (.Y(n530), 
	.C(FE_OFN1256_n120), 
	.B(n542), 
	.A(n541));
   OAI21X1 U416 (.Y(n542), 
	.C(n235), 
	.B(FE_OFN1268_n233), 
	.A(n247));
   INVX1 U417 (.Y(n235), 
	.A(n543));
   NAND3X1 U418 (.Y(n543), 
	.C(n256), 
	.B(n122), 
	.A(n544));
   INVX1 U419 (.Y(n247), 
	.A(n109));
   NAND3X1 U420 (.Y(n541), 
	.C(n251), 
	.B(n116), 
	.A(FE_OFN1442_n93));
   OAI21X1 U421 (.Y(n529), 
	.C(n102), 
	.B(n546), 
	.A(n545));
   OR2X1 U422 (.Y(n546), 
	.B(n252), 
	.A(n236));
   NAND2X1 U423 (.Y(n252), 
	.B(n116), 
	.A(n547));
   NAND2X1 U424 (.Y(n116), 
	.B(n548), 
	.A(n114));
   NAND3X1 U425 (.Y(n236), 
	.C(n538), 
	.B(n549), 
	.A(n117));
   NAND3X1 U426 (.Y(n545), 
	.C(FE_OFN1442_n93), 
	.B(n544), 
	.A(n248));
   NAND2X1 U427 (.Y(n248), 
	.B(n551), 
	.A(n550));
   XNOR2X1 U428 (.Y(NXT_ENC_RIGHT1[21]), 
	.B(FE_OFN1283_n552), 
	.A(CUR_ENC_LEFT[21]));
   NOR2X1 U429 (.Y(n552), 
	.B(n554), 
	.A(n553));
   OAI21X1 U430 (.Y(n554), 
	.C(n556), 
	.B(n555), 
	.A(n195));
   OAI21X1 U431 (.Y(n556), 
	.C(FE_OFN1286_n199), 
	.B(n558), 
	.A(n557));
   NAND2X1 U432 (.Y(n558), 
	.B(n204), 
	.A(n370));
   INVX1 U433 (.Y(n555), 
	.A(n225));
   NAND3X1 U434 (.Y(n225), 
	.C(n561), 
	.B(n560), 
	.A(n559));
   AOI21X1 U435 (.Y(n561), 
	.C(n562), 
	.B(n215), 
	.A(FE_OFN1304_n354));
   INVX1 U436 (.Y(n562), 
	.A(n205));
   OAI21X1 U437 (.Y(n553), 
	.C(n565), 
	.B(n564), 
	.A(n563));
   AOI22X1 U438 (.Y(n565), 
	.D(n567), 
	.C(FE_OFN1284_n221), 
	.B(n566), 
	.A(FE_OFN1447_n211));
   NAND3X1 U439 (.Y(n567), 
	.C(n569), 
	.B(n568), 
	.A(n217));
   INVX1 U440 (.Y(n569), 
	.A(n220));
   OAI21X1 U441 (.Y(n220), 
	.C(n203), 
	.B(n571), 
	.A(n570));
   NAND3X1 U442 (.Y(n566), 
	.C(n572), 
	.B(n203), 
	.A(n205));
   INVX1 U443 (.Y(n572), 
	.A(n557));
   NAND3X1 U444 (.Y(n557), 
	.C(n573), 
	.B(n353), 
	.A(n194));
   NOR2X1 U445 (.Y(n573), 
	.B(n574), 
	.A(n224));
   NOR2X1 U446 (.Y(n224), 
	.B(n571), 
	.A(n223));
   INVX1 U447 (.Y(n564), 
	.A(FE_OFN1285_n226));
   AOI21X1 U448 (.Y(n563), 
	.C(n575), 
	.B(n356), 
	.A(FE_OFN1304_n354));
   NAND2X1 U449 (.Y(n575), 
	.B(n218), 
	.A(n370));
   XOR2X1 U450 (.Y(NXT_ENC_RIGHT1[20]), 
	.B(CUR_ENC_LEFT[20]), 
	.A(FE_OFN1287_n576));
   NAND3X1 U451 (.Y(n576), 
	.C(n579), 
	.B(n578), 
	.A(n577));
   NOR2X1 U452 (.Y(n579), 
	.B(n581), 
	.A(n580));
   OAI21X1 U453 (.Y(n581), 
	.C(n583), 
	.B(n458), 
	.A(n582));
   OAI21X1 U454 (.Y(n583), 
	.C(n452), 
	.B(n585), 
	.A(n584));
   OAI21X1 U455 (.Y(n585), 
	.C(n588), 
	.B(n587), 
	.A(n586));
   NAND2X1 U456 (.Y(n584), 
	.B(n456), 
	.A(n589));
   INVX1 U457 (.Y(n582), 
	.A(n590));
   OAI21X1 U458 (.Y(n578), 
	.C(n439), 
	.B(n592), 
	.A(n591));
   OAI21X1 U459 (.Y(n592), 
	.C(n594), 
	.B(FE_OFN1450_n593), 
	.A(n459));
   INVX1 U460 (.Y(n594), 
	.A(n460));
   AOI22X1 U461 (.Y(n577), 
	.D(n596), 
	.C(FE_OFN1300_n462), 
	.B(n595), 
	.A(n465));
   OAI21X1 U462 (.Y(n596), 
	.C(n599), 
	.B(n598), 
	.A(n597));
   INVX1 U463 (.Y(n599), 
	.A(n463));
   NAND3X1 U464 (.Y(n463), 
	.C(n602), 
	.B(n601), 
	.A(n600));
   AOI21X1 U465 (.Y(n602), 
	.C(n604), 
	.B(FE_OFN1289_n603), 
	.A(FE_OFN1449_n451));
   NAND2X1 U466 (.Y(n598), 
	.B(n606), 
	.A(n605));
   NAND3X1 U467 (.Y(n595), 
	.C(n609), 
	.B(n608), 
	.A(n607));
   NOR2X1 U468 (.Y(n609), 
	.B(n591), 
	.A(n446));
   OAI21X1 U469 (.Y(n446), 
	.C(n589), 
	.B(FE_OFN1450_n593), 
	.A(n610));
   INVX1 U470 (.Y(n610), 
	.A(FE_OFN1289_n603));
   AND2X1 U471 (.Y(n607), 
	.B(n612), 
	.A(n611));
   XNOR2X1 U472 (.Y(NXT_ENC_RIGHT1[1]), 
	.B(n613), 
	.A(CUR_ENC_LEFT[1]));
   NOR2X1 U473 (.Y(n613), 
	.B(n615), 
	.A(n614));
   OAI21X1 U474 (.Y(n615), 
	.C(n617), 
	.B(n7), 
	.A(n616));
   INVX1 U475 (.Y(n7), 
	.A(n504));
   OAI21X1 U476 (.Y(n614), 
	.C(n620), 
	.B(n619), 
	.A(n618));
   AOI21X1 U477 (.Y(n620), 
	.C(n622), 
	.B(n621), 
	.A(FE_OFN1273_n21));
   INVX1 U478 (.Y(n622), 
	.A(n623));
   OAI21X1 U479 (.Y(n623), 
	.C(n14), 
	.B(n503), 
	.A(n624));
   NAND3X1 U480 (.Y(n503), 
	.C(n626), 
	.B(n625), 
	.A(n512));
   AOI21X1 U481 (.Y(n626), 
	.C(n25), 
	.B(FE_OFN1253_n628), 
	.A(n627));
   NAND3X1 U482 (.Y(n25), 
	.C(n511), 
	.B(n630), 
	.A(n629));
   INVX1 U483 (.Y(n630), 
	.A(n631));
   NAND3X1 U484 (.Y(n621), 
	.C(n632), 
	.B(n17), 
	.A(n527));
   INVX1 U485 (.Y(n632), 
	.A(n525));
   NAND3X1 U486 (.Y(n525), 
	.C(n522), 
	.B(n629), 
	.A(n625));
   NAND3X1 U487 (.Y(n629), 
	.C(n635), 
	.B(FE_OFN1276_n634), 
	.A(n633));
   INVX1 U488 (.Y(n527), 
	.A(n636));
   OAI21X1 U489 (.Y(n636), 
	.C(n639), 
	.B(n638), 
	.A(n637));
   AND2X1 U490 (.Y(n639), 
	.B(n640), 
	.A(n18));
   INVX1 U491 (.Y(n619), 
	.A(n26));
   INVX1 U492 (.Y(n618), 
	.A(n505));
   NAND3X1 U493 (.Y(n505), 
	.C(n643), 
	.B(n642), 
	.A(n641));
   AOI21X1 U494 (.Y(n643), 
	.C(n16), 
	.B(FE_OFN1253_n628), 
	.A(n515));
   INVX1 U495 (.Y(n16), 
	.A(n519));
   INVX1 U496 (.Y(n515), 
	.A(n17));
   XOR2X1 U497 (.Y(NXT_ENC_RIGHT1[19]), 
	.B(CUR_ENC_LEFT[19]), 
	.A(n644));
   NAND3X1 U498 (.Y(n644), 
	.C(n647), 
	.B(n646), 
	.A(n645));
   AOI21X1 U499 (.Y(n647), 
	.C(n650), 
	.B(n649), 
	.A(n648));
   OAI21X1 U500 (.Y(n650), 
	.C(n652), 
	.B(n651), 
	.A(n188));
   OAI21X1 U501 (.Y(n652), 
	.C(n167), 
	.B(n654), 
	.A(n653));
   NAND2X1 U502 (.Y(n654), 
	.B(n190), 
	.A(n655));
   AOI21X1 U503 (.Y(n190), 
	.C(n658), 
	.B(FE_OFN1266_n657), 
	.A(n656));
   NAND2X1 U504 (.Y(n658), 
	.B(n175), 
	.A(n174));
   OAI21X1 U505 (.Y(n653), 
	.C(FE_OFN1262_n180), 
	.B(n172), 
	.A(n169));
   AOI22X1 U506 (.Y(n188), 
	.D(n661), 
	.C(FE_OFN1266_n657), 
	.B(FE_OFN1265_n660), 
	.A(n659));
   OAI21X1 U507 (.Y(n646), 
	.C(FE_OFN1258_n182), 
	.B(n663), 
	.A(n662));
   OAI21X1 U508 (.Y(n663), 
	.C(n665), 
	.B(n172), 
	.A(n664));
   NAND2X1 U509 (.Y(n662), 
	.B(n175), 
	.A(FE_OFN1262_n180));
   AOI22X1 U510 (.Y(n645), 
	.D(n668), 
	.C(n667), 
	.B(n160), 
	.A(n666));
   OAI22X1 U511 (.Y(n668), 
	.D(n671), 
	.C(FE_OFN1443_n670), 
	.B(n651), 
	.A(n669));
   INVX1 U512 (.Y(n651), 
	.A(FE_OFN1259_n184));
   INVX1 U513 (.Y(n160), 
	.A(n260));
   NOR2X1 U514 (.Y(n260), 
	.B(n178), 
	.A(FE_OFN1259_n184));
   NAND2X1 U515 (.Y(n666), 
	.B(n673), 
	.A(n672));
   XOR2X1 U516 (.Y(NXT_ENC_RIGHT1[18]), 
	.B(CUR_ENC_LEFT[18]), 
	.A(n674));
   NAND2X1 U517 (.Y(n674), 
	.B(n676), 
	.A(n675));
   AOI21X1 U518 (.Y(n676), 
	.C(n678), 
	.B(n677), 
	.A(FE_OFN1301_n75));
   OAI21X1 U519 (.Y(n678), 
	.C(n495), 
	.B(n67), 
	.A(n679));
   NAND3X1 U520 (.Y(n495), 
	.C(n681), 
	.B(FE_OFN1453_n81), 
	.A(n680));
   INVX1 U521 (.Y(n67), 
	.A(FE_OFN1452_n320));
   NOR2X1 U522 (.Y(n679), 
	.B(n317), 
	.A(n682));
   NAND2X1 U523 (.Y(n317), 
	.B(n336), 
	.A(n683));
   INVX1 U524 (.Y(n682), 
	.A(n328));
   NAND3X1 U525 (.Y(n328), 
	.C(FE_OFN1451_n315), 
	.B(FE_OFN1294_n327), 
	.A(FE_OFN1281_n316));
   OAI21X1 U526 (.Y(n677), 
	.C(n497), 
	.B(n685), 
	.A(FE_OFN1296_n684));
   INVX1 U527 (.Y(n497), 
	.A(n686));
   NAND3X1 U528 (.Y(n686), 
	.C(n492), 
	.B(n333), 
	.A(n336));
   AOI22X1 U529 (.Y(n492), 
	.D(n680), 
	.C(n687), 
	.B(n681), 
	.A(n329));
   NAND2X1 U530 (.Y(n333), 
	.B(n329), 
	.A(n338));
   NAND3X1 U531 (.Y(n336), 
	.C(n76), 
	.B(FE_OFN1451_n315), 
	.A(n339));
   NAND2X1 U532 (.Y(n685), 
	.B(n688), 
	.A(FE_OFN1294_n327));
   NOR2X1 U533 (.Y(n675), 
	.B(n690), 
	.A(n689));
   OAI21X1 U534 (.Y(n690), 
	.C(n692), 
	.B(n473), 
	.A(n691));
   OAI21X1 U535 (.Y(n692), 
	.C(n337), 
	.B(n693), 
	.A(n80));
   OAI21X1 U536 (.Y(n693), 
	.C(n482), 
	.B(n688), 
	.A(FE_OFN1296_n684));
   INVX1 U537 (.Y(n80), 
	.A(n683));
   AOI22X1 U538 (.Y(n683), 
	.D(n681), 
	.C(n680), 
	.B(n491), 
	.A(FE_OFN1296_n684));
   INVX1 U539 (.Y(n491), 
	.A(n694));
   NAND3X1 U540 (.Y(n694), 
	.C(n76), 
	.B(n323), 
	.A(n339));
   INVX1 U541 (.Y(n691), 
	.A(n340));
   OAI21X1 U542 (.Y(n340), 
	.C(n696), 
	.B(n695), 
	.A(n323));
   AND2X1 U543 (.Y(n696), 
	.B(n78), 
	.A(n332));
   INVX1 U544 (.Y(n689), 
	.A(n68));
   NOR2X1 U545 (.Y(n68), 
	.B(n698), 
	.A(n697));
   OAI21X1 U546 (.Y(n698), 
	.C(n700), 
	.B(n312), 
	.A(n699));
   OAI21X1 U547 (.Y(n700), 
	.C(FE_OFN1452_n320), 
	.B(n702), 
	.A(n701));
   NOR2X1 U548 (.Y(n320), 
	.B(n704), 
	.A(n703));
   OAI22X1 U549 (.Y(n702), 
	.D(n695), 
	.C(n77), 
	.B(n330), 
	.A(n688));
   INVX1 U550 (.Y(n695), 
	.A(n338));
   NOR2X1 U551 (.Y(n338), 
	.B(FE_OFN1296_n684), 
	.A(FE_OFN1294_n327));
   INVX1 U552 (.Y(n77), 
	.A(n680));
   INVX1 U553 (.Y(n330), 
	.A(n681));
   NOR2X1 U554 (.Y(n681), 
	.B(n76), 
	.A(n705));
   NAND2X1 U555 (.Y(n701), 
	.B(n332), 
	.A(n482));
   NAND3X1 U556 (.Y(n332), 
	.C(n687), 
	.B(n323), 
	.A(FE_OFN1281_n316));
   NAND3X1 U557 (.Y(n482), 
	.C(n680), 
	.B(FE_OFN1294_n327), 
	.A(n705));
   NOR2X1 U558 (.Y(n680), 
	.B(n339), 
	.A(n323));
   INVX1 U559 (.Y(n339), 
	.A(FE_OFN1281_n316));
   INVX1 U560 (.Y(n312), 
	.A(FE_OFN1301_n75));
   NOR2X1 U561 (.Y(n75), 
	.B(n706), 
	.A(n703));
   OAI21X1 U562 (.Y(n697), 
	.C(n708), 
	.B(n473), 
	.A(n707));
   OAI21X1 U563 (.Y(n708), 
	.C(n337), 
	.B(n486), 
	.A(n490));
   NOR2X1 U564 (.Y(n337), 
	.B(n709), 
	.A(n706));
   NAND2X1 U565 (.Y(n486), 
	.B(n78), 
	.A(n479));
   NAND2X1 U566 (.Y(n78), 
	.B(n498), 
	.A(n496));
   NOR2X1 U567 (.Y(n496), 
	.B(n705), 
	.A(FE_OFN1281_n316));
   NAND3X1 U568 (.Y(n479), 
	.C(n76), 
	.B(FE_OFN1281_n316), 
	.A(FE_OFN1451_n315));
   NOR2X1 U569 (.Y(n490), 
	.B(n688), 
	.A(n324));
   INVX1 U570 (.Y(n688), 
	.A(n329));
   INVX1 U571 (.Y(n324), 
	.A(n687));
   NOR2X1 U572 (.Y(n687), 
	.B(n705), 
	.A(FE_OFN1294_n327));
   INVX1 U573 (.Y(n473), 
	.A(FE_OFN1453_n81));
   NOR2X1 U574 (.Y(n81), 
	.B(n709), 
	.A(n704));
   INVX1 U575 (.Y(n709), 
	.A(n703));
   XOR2X1 U576 (.Y(n703), 
	.B(RKEY[29]), 
	.A(FE_OFN1417_CUR_ENC_RIGHT_11_));
   INVX1 U577 (.Y(n704), 
	.A(n706));
   XOR2X1 U578 (.Y(n706), 
	.B(RKEY[24]), 
	.A(FE_OFN1412_CUR_ENC_RIGHT_16_));
   AOI21X1 U579 (.Y(n707), 
	.C(n325), 
	.B(FE_OFN1451_n315), 
	.A(n710));
   NAND2X1 U580 (.Y(n325), 
	.B(n335), 
	.A(n699));
   NAND3X1 U581 (.Y(n335), 
	.C(n329), 
	.B(FE_OFN1294_n327), 
	.A(n705));
   NOR2X1 U582 (.Y(n329), 
	.B(FE_OFN1281_n316), 
	.A(n323));
   INVX1 U583 (.Y(n705), 
	.A(FE_OFN1296_n684));
   NAND3X1 U584 (.Y(n699), 
	.C(n498), 
	.B(FE_OFN1296_n684), 
	.A(FE_OFN1281_n316));
   NOR2X1 U585 (.Y(n498), 
	.B(n76), 
	.A(n711));
   NOR2X1 U586 (.Y(n315), 
	.B(n711), 
	.A(FE_OFN1296_n684));
   INVX1 U587 (.Y(n711), 
	.A(n323));
   XOR2X1 U588 (.Y(n323), 
	.B(CUR_ENC_RIGHT[14]), 
	.A(RKEY[26]));
   XOR2X1 U589 (.Y(n684), 
	.B(RKEY[28]), 
	.A(FE_OFN1401_CUR_ENC_RIGHT_12_));
   NOR2X1 U590 (.Y(n710), 
	.B(FE_OFN1281_n316), 
	.A(n76));
   XOR2X1 U591 (.Y(n316), 
	.B(FE_OFN1400_CUR_ENC_RIGHT_13_), 
	.A(RKEY[27]));
   INVX2 U592 (.Y(n76), 
	.A(FE_OFN1294_n327));
   XOR2X1 U593 (.Y(n327), 
	.B(RKEY[25]), 
	.A(FE_OFN1424_CUR_ENC_RIGHT_15_));
   XOR2X1 U594 (.Y(NXT_ENC_RIGHT1[17]), 
	.B(CUR_ENC_LEFT[17]), 
	.A(n712));
   NAND3X1 U595 (.Y(n712), 
	.C(n715), 
	.B(n714), 
	.A(n713));
   NOR2X1 U596 (.Y(n715), 
	.B(n717), 
	.A(n716));
   OAI21X1 U597 (.Y(n717), 
	.C(n719), 
	.B(n718), 
	.A(n150));
   OAI21X1 U598 (.Y(n719), 
	.C(n134), 
	.B(n720), 
	.A(n400));
   OAI21X1 U599 (.Y(n720), 
	.C(n722), 
	.B(n721), 
	.A(FE_OFN1448_n149));
   INVX1 U600 (.Y(n150), 
	.A(n378));
   NAND2X1 U601 (.Y(n378), 
	.B(n394), 
	.A(n723));
   INVX1 U602 (.Y(n394), 
	.A(n134));
   NAND2X1 U603 (.Y(n716), 
	.B(n725), 
	.A(n724));
   OAI21X1 U604 (.Y(n725), 
	.C(n380), 
	.B(n727), 
	.A(n726));
   NAND2X1 U605 (.Y(n727), 
	.B(n146), 
	.A(n154));
   NOR2X1 U606 (.Y(n154), 
	.B(n729), 
	.A(n728));
   OAI21X1 U607 (.Y(n729), 
	.C(n731), 
	.B(n730), 
	.A(n145));
   NAND2X1 U608 (.Y(n726), 
	.B(n733), 
	.A(n732));
   OAI21X1 U609 (.Y(n724), 
	.C(FE_OFN1299_n143), 
	.B(n734), 
	.A(n379));
   OAI21X1 U610 (.Y(n734), 
	.C(n732), 
	.B(n730), 
	.A(n145));
   INVX1 U611 (.Y(n732), 
	.A(n735));
   NAND2X1 U612 (.Y(n379), 
	.B(n718), 
	.A(n731));
   INVX1 U613 (.Y(n718), 
	.A(n736));
   INVX1 U614 (.Y(n714), 
	.A(n737));
   AOI21X1 U615 (.Y(n713), 
	.C(n153), 
	.B(n738), 
	.A(FE_OFN1298_n151));
   OAI22X1 U616 (.Y(n153), 
	.D(n740), 
	.C(n739), 
	.B(n147), 
	.A(n130));
   INVX1 U617 (.Y(n147), 
	.A(n741));
   XOR2X1 U618 (.Y(NXT_ENC_RIGHT1[16]), 
	.B(FE_OFN1411_CUR_ENC_LEFT_16_), 
	.A(n742));
   NAND3X1 U619 (.Y(n742), 
	.C(n745), 
	.B(n744), 
	.A(n743));
   AOI21X1 U620 (.Y(n745), 
	.C(n747), 
	.B(n746), 
	.A(FE_OFN1271_n52));
   OAI21X1 U621 (.Y(n747), 
	.C(n750), 
	.B(n749), 
	.A(n748));
   OAI21X1 U622 (.Y(n750), 
	.C(n291), 
	.B(n307), 
	.A(n413));
   NAND2X1 U623 (.Y(n291), 
	.B(n430), 
	.A(n429));
   INVX1 U624 (.Y(n430), 
	.A(n410));
   INVX1 U625 (.Y(n307), 
	.A(n423));
   NAND3X1 U626 (.Y(n423), 
	.C(n751), 
	.B(n61), 
	.A(n417));
   INVX1 U627 (.Y(n413), 
	.A(n421));
   NAND3X1 U628 (.Y(n421), 
	.C(n433), 
	.B(FE_OFN1277_n59), 
	.A(n417));
   NAND2X1 U629 (.Y(n749), 
	.B(FE_OFN1264_n54), 
	.A(n31));
   NAND2X1 U630 (.Y(n748), 
	.B(n38), 
	.A(FE_OFN1269_n39));
   OR2X1 U631 (.Y(n746), 
	.B(n414), 
	.A(n432));
   NAND2X1 U632 (.Y(n414), 
	.B(n295), 
	.A(n58));
   NAND3X1 U633 (.Y(n295), 
	.C(n433), 
	.B(n61), 
	.A(n417));
   OAI21X1 U634 (.Y(n432), 
	.C(n752), 
	.B(n422), 
	.A(n44));
   INVX1 U635 (.Y(n752), 
	.A(n292));
   OAI21X1 U636 (.Y(n292), 
	.C(n299), 
	.B(n754), 
	.A(n753));
   NAND3X1 U637 (.Y(n299), 
	.C(n427), 
	.B(n418), 
	.A(n755));
   NAND2X1 U638 (.Y(n754), 
	.B(n418), 
	.A(n417));
   INVX1 U639 (.Y(n753), 
	.A(n756));
   OAI21X1 U640 (.Y(n744), 
	.C(n298), 
	.B(n758), 
	.A(n757));
   NOR2X1 U641 (.Y(n298), 
	.B(n759), 
	.A(n48));
   OAI21X1 U642 (.Y(n758), 
	.C(n760), 
	.B(n416), 
	.A(FE_OFN1264_n54));
   INVX1 U643 (.Y(n760), 
	.A(n304));
   OAI21X1 U644 (.Y(n304), 
	.C(n301), 
	.B(n49), 
	.A(n44));
   INVX2 U645 (.Y(n44), 
	.A(n433));
   NOR2X1 U646 (.Y(n433), 
	.B(n418), 
	.A(n755));
   INVX1 U647 (.Y(n416), 
	.A(n306));
   NOR2X1 U648 (.Y(n306), 
	.B(n755), 
	.A(n422));
   NAND2X1 U649 (.Y(n422), 
	.B(n61), 
	.A(FE_OFN1269_n39));
   OAI21X1 U650 (.Y(n757), 
	.C(n35), 
	.B(n761), 
	.A(n756));
   NAND2X1 U651 (.Y(n35), 
	.B(FE_OFN1277_n59), 
	.A(n751));
   NOR2X1 U652 (.Y(n756), 
	.B(n61), 
	.A(n755));
   AOI22X1 U653 (.Y(n743), 
	.D(n303), 
	.C(n290), 
	.B(n762), 
	.A(n410));
   NAND2X1 U654 (.Y(n303), 
	.B(n287), 
	.A(n429));
   INVX1 U655 (.Y(n287), 
	.A(FE_OFN1271_n52));
   NOR2X1 U656 (.Y(n52), 
	.B(n43), 
	.A(n763));
   INVX1 U657 (.Y(n429), 
	.A(n31));
   NOR2X1 U658 (.Y(n31), 
	.B(n43), 
	.A(n48));
   INVX1 U659 (.Y(n43), 
	.A(n759));
   OAI21X1 U660 (.Y(n290), 
	.C(n764), 
	.B(n761), 
	.A(n38));
   AND2X1 U661 (.Y(n764), 
	.B(n40), 
	.A(n765));
   NAND3X1 U662 (.Y(n40), 
	.C(n418), 
	.B(FE_OFN1277_n59), 
	.A(n60));
   INVX1 U663 (.Y(n761), 
	.A(n51));
   NOR2X1 U664 (.Y(n51), 
	.B(n418), 
	.A(FE_OFN1269_n39));
   INVX1 U665 (.Y(n38), 
	.A(n419));
   NAND3X1 U666 (.Y(n762), 
	.C(n766), 
	.B(n301), 
	.A(n58));
   AOI21X1 U667 (.Y(n766), 
	.C(n41), 
	.B(n60), 
	.A(n418));
   OAI21X1 U668 (.Y(n41), 
	.C(n765), 
	.B(n294), 
	.A(n49));
   NAND3X1 U669 (.Y(n765), 
	.C(n419), 
	.B(FE_OFN1269_n39), 
	.A(n418));
   INVX1 U670 (.Y(n294), 
	.A(n751));
   NOR2X1 U671 (.Y(n751), 
	.B(n755), 
	.A(FE_OFN1264_n54));
   INVX1 U672 (.Y(n49), 
	.A(n427));
   NOR2X1 U673 (.Y(n60), 
	.B(n767), 
	.A(FE_OFN1269_n39));
   INVX2 U674 (.Y(n418), 
	.A(FE_OFN1264_n54));
   NAND3X1 U675 (.Y(n301), 
	.C(n419), 
	.B(FE_OFN1269_n39), 
	.A(FE_OFN1264_n54));
   NOR2X1 U676 (.Y(n419), 
	.B(FE_OFN1277_n59), 
	.A(n767));
   NAND3X1 U677 (.Y(n58), 
	.C(n427), 
	.B(FE_OFN1264_n54), 
	.A(n755));
   NOR2X1 U678 (.Y(n427), 
	.B(n61), 
	.A(n417));
   INVX1 U679 (.Y(n61), 
	.A(FE_OFN1277_n59));
   XOR2X1 U680 (.Y(n59), 
	.B(RKEY[16]), 
	.A(FE_OFN1403_CUR_ENC_RIGHT_20_));
   INVX2 U681 (.Y(n417), 
	.A(FE_OFN1269_n39));
   XOR2X1 U682 (.Y(n39), 
	.B(RKEY[13]), 
	.A(CUR_ENC_RIGHT[23]));
   XOR2X1 U683 (.Y(n54), 
	.B(FE_OFN1402_CUR_ENC_RIGHT_22_), 
	.A(RKEY[14]));
   INVX2 U684 (.Y(n755), 
	.A(n767));
   XOR2X1 U685 (.Y(n767), 
	.B(FE_OFN1407_CUR_ENC_RIGHT_21_), 
	.A(RKEY[15]));
   NOR2X1 U686 (.Y(n410), 
	.B(n763), 
	.A(n759));
   INVX1 U687 (.Y(n763), 
	.A(n48));
   XOR2X1 U688 (.Y(n48), 
	.B(RKEY[12]), 
	.A(FE_OFN1410_CUR_ENC_RIGHT_24_));
   XOR2X1 U689 (.Y(n759), 
	.B(RKEY[17]), 
	.A(FE_OFN1413_CUR_ENC_RIGHT_19_));
   XNOR2X1 U690 (.Y(NXT_ENC_RIGHT1[15]), 
	.B(n768), 
	.A(CUR_ENC_LEFT[15]));
   NOR2X1 U691 (.Y(n768), 
	.B(n770), 
	.A(n769));
   OAI21X1 U692 (.Y(n770), 
	.C(n8), 
	.B(n771), 
	.A(n616));
   INVX1 U693 (.Y(n8), 
	.A(n772));
   NAND3X1 U694 (.Y(n772), 
	.C(n617), 
	.B(n774), 
	.A(n773));
   AOI22X1 U695 (.Y(n617), 
	.D(n504), 
	.C(n520), 
	.B(n26), 
	.A(n624));
   NOR2X1 U696 (.Y(n520), 
	.B(FE_OFN1253_n628), 
	.A(n518));
   OAI21X1 U697 (.Y(n624), 
	.C(n18), 
	.B(n17), 
	.A(FE_OFN1253_n628));
   NAND3X1 U698 (.Y(n18), 
	.C(FE_OFN1446_n22), 
	.B(n637), 
	.A(n516));
   NAND3X1 U699 (.Y(n17), 
	.C(n637), 
	.B(FE_OFN1276_n634), 
	.A(n775));
   NAND3X1 U700 (.Y(n774), 
	.C(n14), 
	.B(FE_OFN1253_n628), 
	.A(n627));
   INVX1 U701 (.Y(n627), 
	.A(n518));
   NAND3X1 U702 (.Y(n518), 
	.C(n775), 
	.B(FE_OFN1276_n634), 
	.A(n776));
   OAI21X1 U703 (.Y(n773), 
	.C(FE_OFN1273_n21), 
	.B(n778), 
	.A(n777));
   INVX1 U704 (.Y(n771), 
	.A(n14));
   NOR2X1 U705 (.Y(n14), 
	.B(n780), 
	.A(n779));
   NOR2X1 U706 (.Y(n616), 
	.B(n782), 
	.A(n781));
   OAI21X1 U707 (.Y(n782), 
	.C(n641), 
	.B(n783), 
	.A(n637));
   NAND3X1 U708 (.Y(n781), 
	.C(n512), 
	.B(n517), 
	.A(n625));
   INVX1 U709 (.Y(n625), 
	.A(n777));
   NOR2X1 U710 (.Y(n777), 
	.B(n516), 
	.A(n784));
   NAND3X1 U711 (.Y(n769), 
	.C(n787), 
	.B(n786), 
	.A(n785));
   OAI21X1 U712 (.Y(n787), 
	.C(n26), 
	.B(n788), 
	.A(n20));
   NOR2X1 U713 (.Y(n26), 
	.B(n780), 
	.A(n789));
   INVX1 U714 (.Y(n780), 
	.A(n790));
   OAI21X1 U715 (.Y(n788), 
	.C(n642), 
	.B(n23), 
	.A(n791));
   INVX1 U716 (.Y(n642), 
	.A(n778));
   OAI21X1 U717 (.Y(n778), 
	.C(n517), 
	.B(n638), 
	.A(n637));
   NAND3X1 U718 (.Y(n517), 
	.C(n792), 
	.B(FE_OFN1253_n628), 
	.A(n776));
   NOR2X1 U719 (.Y(n792), 
	.B(n775), 
	.A(n791));
   INVX1 U720 (.Y(n791), 
	.A(FE_OFN1276_n634));
   NAND2X1 U721 (.Y(n20), 
	.B(n522), 
	.A(n511));
   NAND3X1 U722 (.Y(n511), 
	.C(FE_OFN1446_n22), 
	.B(n628), 
	.A(n637));
   OAI21X1 U723 (.Y(n786), 
	.C(FE_OFN1273_n21), 
	.B(n15), 
	.A(n631));
   NOR2X1 U724 (.Y(n21), 
	.B(n790), 
	.A(n779));
   OAI21X1 U725 (.Y(n15), 
	.C(n794), 
	.B(n793), 
	.A(n776));
   NOR2X1 U726 (.Y(n794), 
	.B(n523), 
	.A(n795));
   NAND2X1 U727 (.Y(n793), 
	.B(FE_OFN1276_n634), 
	.A(n516));
   NOR2X1 U728 (.Y(n631), 
	.B(n783), 
	.A(n23));
   INVX1 U729 (.Y(n783), 
	.A(n796));
   INVX1 U730 (.Y(n23), 
	.A(n635));
   OAI21X1 U731 (.Y(n785), 
	.C(n504), 
	.B(n798), 
	.A(n797));
   NOR2X1 U732 (.Y(n504), 
	.B(n789), 
	.A(n790));
   INVX1 U733 (.Y(n789), 
	.A(n779));
   XOR2X1 U734 (.Y(n779), 
	.B(RKEY[5]), 
	.A(FE_OFN1414_CUR_ENC_RIGHT_27_));
   XOR2X1 U735 (.Y(n790), 
	.B(RKEY[0]), 
	.A(FE_OFN1425_CUR_ENC_RIGHT_0_));
   NAND2X1 U736 (.Y(n798), 
	.B(n799), 
	.A(n641));
   INVX1 U737 (.Y(n799), 
	.A(n24));
   OAI21X1 U738 (.Y(n24), 
	.C(n519), 
	.B(n800), 
	.A(n633));
   NAND3X1 U739 (.Y(n519), 
	.C(FE_OFN1446_n22), 
	.B(FE_OFN1253_n628), 
	.A(n776));
   NAND2X1 U740 (.Y(n800), 
	.B(FE_OFN1276_n634), 
	.A(FE_OFN1253_n628));
   AOI21X1 U741 (.Y(n641), 
	.C(n795), 
	.B(n514), 
	.A(n516));
   INVX1 U742 (.Y(n795), 
	.A(n640));
   NAND2X1 U743 (.Y(n640), 
	.B(FE_OFN1446_n22), 
	.A(n635));
   NOR2X1 U744 (.Y(n22), 
	.B(n775), 
	.A(FE_OFN1276_n634));
   INVX1 U745 (.Y(n775), 
	.A(n633));
   NOR2X1 U746 (.Y(n635), 
	.B(n637), 
	.A(FE_OFN1253_n628));
   INVX1 U747 (.Y(n514), 
	.A(n784));
   NAND3X1 U748 (.Y(n784), 
	.C(n637), 
	.B(FE_OFN1276_n634), 
	.A(n633));
   NAND2X1 U749 (.Y(n797), 
	.B(n522), 
	.A(n512));
   NAND3X1 U750 (.Y(n522), 
	.C(n796), 
	.B(n637), 
	.A(n516));
   INVX2 U751 (.Y(n637), 
	.A(n776));
   INVX2 U752 (.Y(n516), 
	.A(FE_OFN1253_n628));
   INVX1 U753 (.Y(n512), 
	.A(n523));
   NOR2X1 U754 (.Y(n523), 
	.B(n776), 
	.A(n638));
   XOR2X1 U755 (.Y(n776), 
	.B(FE_OFN1423_CUR_ENC_RIGHT_29_), 
	.A(RKEY[3]));
   NAND2X1 U756 (.Y(n638), 
	.B(FE_OFN1253_n628), 
	.A(n796));
   XOR2X1 U757 (.Y(n628), 
	.B(RKEY[1]), 
	.A(FE_OFN1415_CUR_ENC_RIGHT_31_));
   NOR2X1 U758 (.Y(n796), 
	.B(n633), 
	.A(FE_OFN1276_n634));
   XOR2X1 U759 (.Y(n633), 
	.B(FE_OFN1399_CUR_ENC_RIGHT_30_), 
	.A(RKEY[2]));
   XOR2X1 U760 (.Y(n634), 
	.B(RKEY[4]), 
	.A(FE_OFN1421_CUR_ENC_RIGHT_28_));
   XOR2X1 U761 (.Y(NXT_ENC_RIGHT1[14]), 
	.B(CUR_ENC_LEFT[14]), 
	.A(FE_OFN1257_n801));
   NAND3X1 U762 (.Y(n801), 
	.C(n804), 
	.B(n803), 
	.A(n802));
   AOI21X1 U763 (.Y(n804), 
	.C(n806), 
	.B(n805), 
	.A(n178));
   OAI21X1 U764 (.Y(n806), 
	.C(n808), 
	.B(n807), 
	.A(n169));
   OAI21X1 U765 (.Y(n808), 
	.C(FE_OFN1258_n182), 
	.B(n278), 
	.A(n648));
   NAND3X1 U766 (.Y(n278), 
	.C(n810), 
	.B(n673), 
	.A(n809));
   AND2X1 U767 (.Y(n810), 
	.B(n275), 
	.A(n175));
   NAND2X1 U768 (.Y(n175), 
	.B(n811), 
	.A(n667));
   AND2X1 U769 (.Y(n809), 
	.B(n163), 
	.A(n276));
   NAND2X1 U770 (.Y(n807), 
	.B(n649), 
	.A(FE_OFN1265_n660));
   INVX1 U771 (.Y(n649), 
	.A(n162));
   NOR2X1 U772 (.Y(n162), 
	.B(FE_OFN1258_n182), 
	.A(n178));
   NOR2X1 U773 (.Y(n182), 
	.B(n813), 
	.A(n812));
   NAND3X1 U774 (.Y(n805), 
	.C(n815), 
	.B(n814), 
	.A(n665));
   AND2X1 U775 (.Y(n815), 
	.B(n181), 
	.A(n174));
   INVX1 U776 (.Y(n814), 
	.A(n267));
   OAI21X1 U777 (.Y(n267), 
	.C(n816), 
	.B(n169), 
	.A(n168));
   AOI21X1 U778 (.Y(n816), 
	.C(n159), 
	.B(FE_OFN1266_n657), 
	.A(n661));
   INVX1 U779 (.Y(n159), 
	.A(n673));
   INVX1 U780 (.Y(n665), 
	.A(n817));
   INVX2 U781 (.Y(n178), 
	.A(n671));
   NAND2X1 U782 (.Y(n671), 
	.B(n812), 
	.A(n818));
   OAI21X1 U783 (.Y(n803), 
	.C(FE_OFN1259_n184), 
	.B(n262), 
	.A(n819));
   NOR2X1 U784 (.Y(n184), 
	.B(n812), 
	.A(n818));
   NAND2X1 U785 (.Y(n262), 
	.B(n655), 
	.A(n672));
   AOI21X1 U786 (.Y(n655), 
	.C(n817), 
	.B(n661), 
	.A(FE_OFN1265_n660));
   NAND2X1 U787 (.Y(n817), 
	.B(n189), 
	.A(n275));
   NAND2X1 U788 (.Y(n189), 
	.B(n820), 
	.A(n271));
   NAND2X1 U789 (.Y(n275), 
	.B(n820), 
	.A(n811));
   AND2X1 U790 (.Y(n672), 
	.B(n163), 
	.A(n186));
   NAND2X1 U791 (.Y(n163), 
	.B(n820), 
	.A(FE_OFN1266_n657));
   AND2X1 U792 (.Y(n186), 
	.B(n276), 
	.A(n181));
   NAND2X1 U793 (.Y(n276), 
	.B(n271), 
	.A(n656));
   NAND2X1 U794 (.Y(n181), 
	.B(n811), 
	.A(n656));
   NOR2X1 U795 (.Y(n819), 
	.B(n169), 
	.A(n821));
   OAI21X1 U796 (.Y(n802), 
	.C(n167), 
	.B(n823), 
	.A(n822));
   AND2X2 U797 (.Y(n167), 
	.B(n812), 
	.A(n813));
   XOR2X1 U798 (.Y(n812), 
	.B(RKEY[6]), 
	.A(FE_OFN1421_CUR_ENC_RIGHT_28_));
   INVX1 U799 (.Y(n813), 
	.A(n818));
   XOR2X1 U800 (.Y(n818), 
	.B(RKEY[11]), 
	.A(CUR_ENC_RIGHT[23]));
   OAI21X1 U801 (.Y(n823), 
	.C(n187), 
	.B(n172), 
	.A(n659));
   INVX1 U802 (.Y(n187), 
	.A(n648));
   OAI21X1 U803 (.Y(n648), 
	.C(n174), 
	.B(n272), 
	.A(n168));
   NAND2X1 U804 (.Y(n174), 
	.B(n820), 
	.A(FE_OFN1265_n660));
   NOR2X1 U805 (.Y(n820), 
	.B(n171), 
	.A(n659));
   INVX1 U806 (.Y(n272), 
	.A(n661));
   INVX1 U807 (.Y(n168), 
	.A(n271));
   NOR2X1 U808 (.Y(n271), 
	.B(n179), 
	.A(n669));
   INVX2 U809 (.Y(n172), 
	.A(FE_OFN1266_n657));
   OAI21X1 U810 (.Y(n822), 
	.C(n824), 
	.B(n169), 
	.A(n274));
   AND2X1 U811 (.Y(n824), 
	.B(FE_OFN1262_n180), 
	.A(n673));
   NAND2X1 U812 (.Y(n180), 
	.B(FE_OFN1265_n660), 
	.A(n656));
   NOR2X1 U813 (.Y(n656), 
	.B(n659), 
	.A(n664));
   NAND2X1 U814 (.Y(n673), 
	.B(n811), 
	.A(n661));
   NOR2X1 U815 (.Y(n811), 
	.B(n821), 
	.A(FE_OFN1443_n670));
   NOR2X1 U816 (.Y(n661), 
	.B(n171), 
	.A(n279));
   INVX1 U817 (.Y(n171), 
	.A(n664));
   INVX2 U818 (.Y(n169), 
	.A(n667));
   NOR2X1 U819 (.Y(n667), 
	.B(n279), 
	.A(n664));
   INVX1 U820 (.Y(n279), 
	.A(n659));
   XOR2X1 U821 (.Y(n659), 
	.B(RKEY[10]), 
	.A(FE_OFN1410_CUR_ENC_RIGHT_24_));
   XOR2X1 U822 (.Y(n664), 
	.B(FE_OFN1409_CUR_ENC_RIGHT_26_), 
	.A(RKEY[8]));
   NOR2X1 U823 (.Y(n274), 
	.B(FE_OFN1265_n660), 
	.A(FE_OFN1266_n657));
   NOR2X1 U824 (.Y(n660), 
	.B(n669), 
	.A(FE_OFN1443_n670));
   NOR2X1 U825 (.Y(n657), 
	.B(n821), 
	.A(n179));
   INVX1 U826 (.Y(n821), 
	.A(n669));
   XOR2X1 U827 (.Y(n669), 
	.B(RKEY[7]), 
	.A(FE_OFN1414_CUR_ENC_RIGHT_27_));
   INVX1 U828 (.Y(n179), 
	.A(FE_OFN1443_n670));
   XOR2X1 U829 (.Y(n670), 
	.B(CUR_ENC_RIGHT[25]), 
	.A(RKEY[9]));
   XNOR2X1 U830 (.Y(NXT_ENC_RIGHT1[13]), 
	.B(n825), 
	.A(FE_OFN1471_CUR_ENC_LEFT_13_));
   NOR2X1 U831 (.Y(n825), 
	.B(n827), 
	.A(n826));
   OAI21X1 U832 (.Y(n827), 
	.C(n828), 
	.B(n366), 
	.A(n195));
   OAI21X1 U833 (.Y(n828), 
	.C(FE_OFN1447_n211), 
	.B(n830), 
	.A(n829));
   NOR2X1 U834 (.Y(n211), 
	.B(n832), 
	.A(n831));
   OAI21X1 U835 (.Y(n830), 
	.C(n194), 
	.B(n570), 
	.A(n833));
   INVX1 U836 (.Y(n194), 
	.A(n834));
   OAI21X1 U837 (.Y(n834), 
	.C(n837), 
	.B(n836), 
	.A(n835));
   AND2X1 U838 (.Y(n837), 
	.B(n838), 
	.A(n217));
   NAND2X1 U839 (.Y(n217), 
	.B(n222), 
	.A(n839));
   NAND3X1 U840 (.Y(n829), 
	.C(n353), 
	.B(n568), 
	.A(n559));
   NOR2X1 U841 (.Y(n366), 
	.B(n840), 
	.A(n352));
   INVX1 U842 (.Y(n840), 
	.A(n203));
   NAND2X1 U843 (.Y(n203), 
	.B(n215), 
	.A(n213));
   OAI21X1 U844 (.Y(n352), 
	.C(n559), 
	.B(n836), 
	.A(n835));
   NAND2X1 U845 (.Y(n559), 
	.B(n222), 
	.A(n841));
   INVX1 U846 (.Y(n835), 
	.A(n213));
   NOR2X1 U847 (.Y(n195), 
	.B(FE_OFN1284_n221), 
	.A(FE_OFN1285_n226));
   NAND3X1 U848 (.Y(n826), 
	.C(n844), 
	.B(n843), 
	.A(n842));
   OAI21X1 U849 (.Y(n844), 
	.C(FE_OFN1285_n226), 
	.B(n846), 
	.A(n845));
   NOR2X1 U850 (.Y(n226), 
	.B(n847), 
	.A(n832));
   INVX1 U851 (.Y(n832), 
	.A(n848));
   OAI21X1 U852 (.Y(n846), 
	.C(n370), 
	.B(n223), 
	.A(n833));
   NAND2X1 U853 (.Y(n370), 
	.B(n215), 
	.A(n849));
   NAND2X1 U854 (.Y(n845), 
	.B(n204), 
	.A(n205));
   NAND2X1 U855 (.Y(n205), 
	.B(n839), 
	.A(n849));
   NAND2X1 U856 (.Y(n843), 
	.B(n850), 
	.A(FE_OFN1284_n221));
   OAI21X1 U857 (.Y(n850), 
	.C(n365), 
	.B(n851), 
	.A(n841));
   INVX1 U858 (.Y(n365), 
	.A(n350));
   OAI21X1 U859 (.Y(n350), 
	.C(n204), 
	.B(n571), 
	.A(n570));
   NAND2X1 U860 (.Y(n204), 
	.B(n839), 
	.A(FE_OFN1304_n354));
   INVX1 U861 (.Y(n570), 
	.A(n215));
   NOR2X1 U862 (.Y(n215), 
	.B(n359), 
	.A(n356));
   NOR2X1 U863 (.Y(n221), 
	.B(n848), 
	.A(n831));
   OAI21X1 U864 (.Y(n842), 
	.C(FE_OFN1286_n199), 
	.B(n852), 
	.A(n349));
   NOR2X1 U865 (.Y(n199), 
	.B(n847), 
	.A(n848));
   INVX1 U866 (.Y(n847), 
	.A(n831));
   XOR2X1 U867 (.Y(n831), 
	.B(RKEY[35]), 
	.A(FE_OFN1408_CUR_ENC_RIGHT_7_));
   XOR2X1 U868 (.Y(n848), 
	.B(RKEY[30]), 
	.A(FE_OFN1401_CUR_ENC_RIGHT_12_));
   OAI21X1 U869 (.Y(n852), 
	.C(n202), 
	.B(n571), 
	.A(n359));
   NOR2X1 U870 (.Y(n202), 
	.B(n367), 
	.A(n574));
   INVX1 U871 (.Y(n367), 
	.A(n218));
   NAND2X1 U872 (.Y(n218), 
	.B(n841), 
	.A(n849));
   AND2X1 U873 (.Y(n574), 
	.B(n853), 
	.A(FE_OFN1304_n354));
   INVX1 U874 (.Y(n571), 
	.A(n222));
   NOR2X1 U875 (.Y(n222), 
	.B(n833), 
	.A(n216));
   NAND3X1 U876 (.Y(n349), 
	.C(n200), 
	.B(n560), 
	.A(n353));
   AND2X1 U877 (.Y(n200), 
	.B(n568), 
	.A(n838));
   NAND2X1 U878 (.Y(n568), 
	.B(n841), 
	.A(FE_OFN1304_n354));
   INVX1 U879 (.Y(n841), 
	.A(n836));
   NAND2X1 U880 (.Y(n836), 
	.B(n356), 
	.A(n359));
   NOR2X1 U881 (.Y(n354), 
	.B(n854), 
	.A(n833));
   NAND2X1 U882 (.Y(n838), 
	.B(n213), 
	.A(n839));
   NOR2X1 U883 (.Y(n839), 
	.B(n214), 
	.A(n359));
   NAND2X1 U884 (.Y(n560), 
	.B(n213), 
	.A(n853));
   NOR2X1 U885 (.Y(n213), 
	.B(n854), 
	.A(n855));
   NAND2X1 U886 (.Y(n353), 
	.B(n853), 
	.A(n849));
   INVX1 U887 (.Y(n853), 
	.A(n223));
   NAND2X1 U888 (.Y(n223), 
	.B(n214), 
	.A(n359));
   INVX1 U889 (.Y(n214), 
	.A(n356));
   XOR2X1 U890 (.Y(n356), 
	.B(RKEY[34]), 
	.A(FE_OFN1406_CUR_ENC_RIGHT_8_));
   XNOR2X1 U891 (.Y(n359), 
	.B(CUR_ENC_RIGHT[10]), 
	.A(RKEY[32]));
   INVX1 U892 (.Y(n849), 
	.A(n851));
   NAND2X1 U893 (.Y(n851), 
	.B(n854), 
	.A(n833));
   INVX1 U894 (.Y(n854), 
	.A(n216));
   XOR2X1 U895 (.Y(n216), 
	.B(FE_OFN1422_CUR_ENC_RIGHT_9_), 
	.A(RKEY[33]));
   INVX1 U896 (.Y(n833), 
	.A(n855));
   XOR2X1 U897 (.Y(n855), 
	.B(RKEY[31]), 
	.A(FE_OFN1417_CUR_ENC_RIGHT_11_));
   XOR2X1 U898 (.Y(NXT_ENC_RIGHT1[12]), 
	.B(CUR_ENC_LEFT[12]), 
	.A(FE_OFN1255_n856));
   NAND3X1 U899 (.Y(n856), 
	.C(n859), 
	.B(n858), 
	.A(n857));
   AOI21X1 U900 (.Y(n859), 
	.C(n96), 
	.B(n860), 
	.A(n237));
   OAI21X1 U901 (.Y(n96), 
	.C(n862), 
	.B(n112), 
	.A(n861));
   AOI22X1 U902 (.Y(n862), 
	.D(n537), 
	.C(n246), 
	.B(n863), 
	.A(FE_OFN1256_n120));
   INVX1 U903 (.Y(n537), 
	.A(n121));
   NAND2X1 U904 (.Y(n863), 
	.B(n256), 
	.A(n251));
   NAND3X1 U905 (.Y(n256), 
	.C(n109), 
	.B(FE_OFN1268_n233), 
	.A(FE_OFN1445_n100));
   NAND3X1 U906 (.Y(n251), 
	.C(n551), 
	.B(n113), 
	.A(n864));
   NAND3X1 U907 (.Y(n860), 
	.C(n865), 
	.B(n239), 
	.A(n538));
   AOI21X1 U908 (.Y(n865), 
	.C(n231), 
	.B(n234), 
	.A(n551));
   NAND3X1 U909 (.Y(n231), 
	.C(n91), 
	.B(n253), 
	.A(n549));
   NAND3X1 U910 (.Y(n549), 
	.C(n111), 
	.B(FE_OFN1445_n100), 
	.A(n108));
   INVX1 U911 (.Y(n237), 
	.A(n94));
   NAND2X1 U912 (.Y(n94), 
	.B(n867), 
	.A(n866));
   OAI21X1 U913 (.Y(n858), 
	.C(n102), 
	.B(n868), 
	.A(n118));
   INVX1 U914 (.Y(n102), 
	.A(n112));
   NAND2X1 U915 (.Y(n112), 
	.B(n867), 
	.A(n869));
   OAI21X1 U916 (.Y(n868), 
	.C(n117), 
	.B(n870), 
	.A(FE_OFN1268_n233));
   INVX1 U917 (.Y(n870), 
	.A(n871));
   NAND3X1 U918 (.Y(n118), 
	.C(n872), 
	.B(n91), 
	.A(n538));
   AND2X1 U919 (.Y(n872), 
	.B(n547), 
	.A(n253));
   NAND3X1 U920 (.Y(n547), 
	.C(n108), 
	.B(FE_OFN1445_n100), 
	.A(n109));
   NOR2X1 U921 (.Y(n109), 
	.B(n113), 
	.A(FE_OFN1444_n539));
   NAND2X1 U922 (.Y(n253), 
	.B(n114), 
	.A(n550));
   NAND3X1 U923 (.Y(n538), 
	.C(n548), 
	.B(FE_OFN1268_n233), 
	.A(n873));
   AOI22X1 U924 (.Y(n857), 
	.D(n875), 
	.C(n246), 
	.B(n874), 
	.A(FE_OFN1256_n120));
   INVX1 U925 (.Y(n875), 
	.A(n876));
   AOI21X1 U926 (.Y(n876), 
	.C(n255), 
	.B(n550), 
	.A(FE_OFN1268_n233));
   NAND3X1 U927 (.Y(n255), 
	.C(n878), 
	.B(FE_OFN1442_n93), 
	.A(n877));
   AND2X1 U928 (.Y(n878), 
	.B(n239), 
	.A(n122));
   NAND3X1 U929 (.Y(n239), 
	.C(n548), 
	.B(n873), 
	.A(n108));
   NAND2X1 U930 (.Y(n122), 
	.B(n551), 
	.A(n871));
   NAND3X1 U931 (.Y(n93), 
	.C(n111), 
	.B(FE_OFN1268_n233), 
	.A(n864));
   INVX1 U932 (.Y(n877), 
	.A(n536));
   NAND2X1 U933 (.Y(n536), 
	.B(n117), 
	.A(n861));
   NAND2X1 U934 (.Y(n117), 
	.B(n551), 
	.A(n548));
   NOR2X1 U935 (.Y(n551), 
	.B(n873), 
	.A(FE_OFN1268_n233));
   NOR2X1 U936 (.Y(n550), 
	.B(n864), 
	.A(n113));
   NOR2X1 U937 (.Y(n246), 
	.B(n866), 
	.A(n867));
   INVX1 U938 (.Y(n866), 
	.A(n869));
   OAI21X1 U939 (.Y(n874), 
	.C(n879), 
	.B(n234), 
	.A(n873));
   INVX1 U940 (.Y(n879), 
	.A(n244));
   NAND3X1 U941 (.Y(n244), 
	.C(n880), 
	.B(n544), 
	.A(n91));
   AND2X1 U942 (.Y(n880), 
	.B(n121), 
	.A(n861));
   NAND3X1 U943 (.Y(n121), 
	.C(n111), 
	.B(FE_OFN1268_n233), 
	.A(FE_OFN1445_n100));
   NAND3X1 U944 (.Y(n861), 
	.C(n111), 
	.B(n864), 
	.A(n108));
   NOR2X1 U945 (.Y(n111), 
	.B(FE_OFN1444_n539), 
	.A(n881));
   NAND2X1 U946 (.Y(n544), 
	.B(n114), 
	.A(n871));
   NOR2X1 U947 (.Y(n871), 
	.B(n864), 
	.A(n881));
   NAND3X1 U948 (.Y(n91), 
	.C(n114), 
	.B(n113), 
	.A(n864));
   NOR2X1 U949 (.Y(n114), 
	.B(n873), 
	.A(n108));
   INVX2 U950 (.Y(n108), 
	.A(FE_OFN1268_n233));
   XOR2X1 U951 (.Y(n233), 
	.B(FE_OFN1416_CUR_ENC_RIGHT_18_), 
	.A(RKEY[20]));
   INVX1 U952 (.Y(n864), 
	.A(FE_OFN1445_n100));
   INVX1 U953 (.Y(n234), 
	.A(n548));
   NOR2X1 U954 (.Y(n548), 
	.B(n113), 
	.A(FE_OFN1445_n100));
   INVX1 U955 (.Y(n113), 
	.A(n881));
   XOR2X1 U956 (.Y(n881), 
	.B(RKEY[19]), 
	.A(FE_OFN1413_CUR_ENC_RIGHT_19_));
   XOR2X1 U957 (.Y(n100), 
	.B(RKEY[22]), 
	.A(FE_OFN1412_CUR_ENC_RIGHT_16_));
   INVX2 U958 (.Y(n873), 
	.A(FE_OFN1444_n539));
   XOR2X1 U959 (.Y(n539), 
	.B(CUR_ENC_RIGHT[17]), 
	.A(RKEY[21]));
   NOR2X1 U960 (.Y(n120), 
	.B(n869), 
	.A(n867));
   XOR2X1 U961 (.Y(n869), 
	.B(RKEY[18]), 
	.A(FE_OFN1403_CUR_ENC_RIGHT_20_));
   XOR2X1 U962 (.Y(n867), 
	.B(RKEY[23]), 
	.A(FE_OFN1424_CUR_ENC_RIGHT_15_));
   XOR2X1 U963 (.Y(NXT_ENC_RIGHT1[11]), 
	.B(CUR_ENC_LEFT[11]), 
	.A(n882));
   NAND3X1 U964 (.Y(n882), 
	.C(n885), 
	.B(n884), 
	.A(n883));
   NOR2X1 U965 (.Y(n885), 
	.B(n886), 
	.A(n737));
   OAI21X1 U966 (.Y(n886), 
	.C(n125), 
	.B(n130), 
	.A(n887));
   INVX1 U967 (.Y(n125), 
	.A(n401));
   OAI21X1 U968 (.Y(n401), 
	.C(n888), 
	.B(n739), 
	.A(n733));
   AND2X1 U969 (.Y(n888), 
	.B(n890), 
	.A(n889));
   OAI21X1 U970 (.Y(n890), 
	.C(n380), 
	.B(n395), 
	.A(n735));
   NOR2X1 U971 (.Y(n735), 
	.B(n138), 
	.A(n145));
   OAI21X1 U972 (.Y(n889), 
	.C(FE_OFN1298_n151), 
	.B(n736), 
	.A(n741));
   NOR2X1 U973 (.Y(n736), 
	.B(n138), 
	.A(FE_OFN1279_n891));
   INVX1 U974 (.Y(n138), 
	.A(n144));
   INVX1 U975 (.Y(n739), 
	.A(FE_OFN1299_n143));
   NAND2X1 U976 (.Y(n733), 
	.B(n144), 
	.A(n892));
   INVX1 U977 (.Y(n130), 
	.A(n380));
   NOR2X1 U978 (.Y(n380), 
	.B(n894), 
	.A(n893));
   INVX1 U979 (.Y(n887), 
	.A(n738));
   NAND3X1 U980 (.Y(n738), 
	.C(n896), 
	.B(n383), 
	.A(n895));
   AOI22X1 U981 (.Y(n896), 
	.D(n898), 
	.C(n892), 
	.B(n398), 
	.A(n897));
   NOR2X1 U982 (.Y(n895), 
	.B(n132), 
	.A(n390));
   INVX1 U983 (.Y(n132), 
	.A(n731));
   NOR2X1 U984 (.Y(n390), 
	.B(FE_OFN1279_n891), 
	.A(n721));
   OAI21X1 U985 (.Y(n737), 
	.C(n899), 
	.B(n384), 
	.A(n723));
   AOI22X1 U986 (.Y(n899), 
	.D(n728), 
	.C(n134), 
	.B(n900), 
	.A(FE_OFN1299_n143));
   NAND2X1 U987 (.Y(n728), 
	.B(n383), 
	.A(n396));
   INVX1 U988 (.Y(n396), 
	.A(n387));
   NOR2X1 U989 (.Y(n387), 
	.B(FE_OFN1279_n891), 
	.A(n381));
   INVX1 U990 (.Y(n381), 
	.A(n135));
   OR2X1 U991 (.Y(n900), 
	.B(n741), 
	.A(n400));
   NOR2X1 U992 (.Y(n741), 
	.B(n721), 
	.A(n901));
   INVX1 U993 (.Y(n721), 
	.A(n897));
   NAND2X1 U994 (.Y(n400), 
	.B(n389), 
	.A(n146));
   INVX1 U995 (.Y(n723), 
	.A(FE_OFN1298_n151));
   OAI21X1 U996 (.Y(n884), 
	.C(n134), 
	.B(n903), 
	.A(n902));
   NOR2X1 U997 (.Y(n134), 
	.B(n893), 
	.A(n904));
   OAI21X1 U998 (.Y(n903), 
	.C(n146), 
	.B(n901), 
	.A(n905));
   NAND2X1 U999 (.Y(n146), 
	.B(n144), 
	.A(n906));
   NOR2X1 U1000 (.Y(n144), 
	.B(n391), 
	.A(n393));
   INVX1 U1001 (.Y(n901), 
	.A(n892));
   NAND2X1 U1002 (.Y(n902), 
	.B(n740), 
	.A(n384));
   INVX1 U1003 (.Y(n740), 
	.A(n395));
   NOR2X1 U1004 (.Y(n395), 
	.B(FE_OFN1279_n891), 
	.A(n730));
   INVX1 U1005 (.Y(n730), 
	.A(n905));
   NAND2X1 U1006 (.Y(n384), 
	.B(n905), 
	.A(n906));
   AOI22X1 U1007 (.Y(n883), 
	.D(n908), 
	.C(FE_OFN1298_n151), 
	.B(n907), 
	.A(FE_OFN1299_n143));
   OAI21X1 U1008 (.Y(n908), 
	.C(n909), 
	.B(n145), 
	.A(n905));
   AND2X1 U1009 (.Y(n909), 
	.B(n731), 
	.A(n389));
   NAND2X1 U1010 (.Y(n731), 
	.B(n906), 
	.A(n135));
   NAND2X1 U1011 (.Y(n389), 
	.B(n905), 
	.A(n892));
   NOR2X1 U1012 (.Y(n892), 
	.B(FE_OFN1448_n149), 
	.A(n910));
   INVX2 U1013 (.Y(n145), 
	.A(n398));
   NOR2X1 U1014 (.Y(n905), 
	.B(n898), 
	.A(n399));
   NOR2X1 U1015 (.Y(n151), 
	.B(n911), 
	.A(n904));
   OAI21X1 U1016 (.Y(n907), 
	.C(n912), 
	.B(FE_OFN1279_n891), 
	.A(n393));
   AND2X1 U1017 (.Y(n912), 
	.B(n383), 
	.A(n722));
   NAND2X1 U1018 (.Y(n383), 
	.B(n897), 
	.A(n906));
   NOR2X1 U1019 (.Y(n897), 
	.B(n898), 
	.A(n391));
   INVX1 U1020 (.Y(n898), 
	.A(n393));
   AND2X1 U1021 (.Y(n906), 
	.B(n910), 
	.A(FE_OFN1448_n149));
   INVX1 U1022 (.Y(n910), 
	.A(n136));
   NAND2X1 U1023 (.Y(n722), 
	.B(n398), 
	.A(n135));
   NOR2X1 U1024 (.Y(n398), 
	.B(FE_OFN1448_n149), 
	.A(n136));
   NOR2X1 U1025 (.Y(n135), 
	.B(n399), 
	.A(n393));
   INVX1 U1026 (.Y(n399), 
	.A(n391));
   XOR2X1 U1027 (.Y(n391), 
	.B(CUR_ENC_RIGHT[1]), 
	.A(RKEY[45]));
   NAND2X1 U1028 (.Y(n891), 
	.B(n136), 
	.A(FE_OFN1448_n149));
   XOR2X1 U1029 (.Y(n136), 
	.B(RKEY[43]), 
	.A(FE_OFN1405_CUR_ENC_RIGHT_3_));
   XNOR2X1 U1030 (.Y(n149), 
	.B(RKEY[46]), 
	.A(FE_OFN1425_CUR_ENC_RIGHT_0_));
   XOR2X1 U1031 (.Y(n393), 
	.B(CUR_ENC_RIGHT[2]), 
	.A(RKEY[44]));
   NOR2X1 U1032 (.Y(n143), 
	.B(n894), 
	.A(n911));
   INVX1 U1033 (.Y(n894), 
	.A(n904));
   XOR2X1 U1034 (.Y(n904), 
	.B(RKEY[47]), 
	.A(FE_OFN1415_CUR_ENC_RIGHT_31_));
   INVX1 U1035 (.Y(n911), 
	.A(n893));
   XOR2X1 U1036 (.Y(n893), 
	.B(RKEY[42]), 
	.A(FE_OFN1418_CUR_ENC_RIGHT_4_));
   XOR2X1 U1037 (.Y(NXT_ENC_RIGHT1[10]), 
	.B(CUR_ENC_LEFT[10]), 
	.A(n913));
   NAND3X1 U1038 (.Y(n913), 
	.C(n915), 
	.B(n438), 
	.A(n914));
   AOI21X1 U1039 (.Y(n915), 
	.C(n917), 
	.B(n916), 
	.A(FE_OFN1300_n462));
   OAI21X1 U1040 (.Y(n917), 
	.C(n920), 
	.B(n919), 
	.A(n918));
   OAI21X1 U1041 (.Y(n920), 
	.C(n465), 
	.B(n922), 
	.A(n921));
   OAI21X1 U1042 (.Y(n922), 
	.C(n608), 
	.B(n587), 
	.A(FE_OFN1289_n603));
   NAND2X1 U1043 (.Y(n921), 
	.B(n611), 
	.A(n923));
   AOI21X1 U1044 (.Y(n918), 
	.C(n604), 
	.B(n924), 
	.A(n457));
   INVX1 U1045 (.Y(n604), 
	.A(n588));
   NAND3X1 U1046 (.Y(n916), 
	.C(n927), 
	.B(n926), 
	.A(n925));
   AOI22X1 U1047 (.Y(n927), 
	.D(FE_OFN1289_n603), 
	.C(FE_OFN1449_n451), 
	.B(n605), 
	.A(n928));
   NOR2X1 U1048 (.Y(n928), 
	.B(n466), 
	.A(n929));
   AOI21X1 U1049 (.Y(n438), 
	.C(n930), 
	.B(FE_OFN1300_n462), 
	.A(n591));
   NAND2X1 U1050 (.Y(n930), 
	.B(n932), 
	.A(n931));
   OAI21X1 U1051 (.Y(n932), 
	.C(n452), 
	.B(n460), 
	.A(n933));
   INVX1 U1052 (.Y(n933), 
	.A(n589));
   OAI21X1 U1053 (.Y(n931), 
	.C(n439), 
	.B(n590), 
	.A(n441));
   NAND2X1 U1054 (.Y(n590), 
	.B(n925), 
	.A(n612));
   INVX1 U1055 (.Y(n441), 
	.A(n611));
   NAND2X1 U1056 (.Y(n591), 
	.B(n444), 
	.A(n600));
   INVX1 U1057 (.Y(n914), 
	.A(n934));
   OAI22X1 U1058 (.Y(n934), 
	.D(n937), 
	.C(n443), 
	.B(n936), 
	.A(n935));
   XOR2X1 U1059 (.Y(NXT_ENC_RIGHT1[0]), 
	.B(CUR_ENC_LEFT[0]), 
	.A(n938));
   NAND2X1 U1060 (.Y(n938), 
	.B(n940), 
	.A(n939));
   AOI21X1 U1061 (.Y(n940), 
	.C(n942), 
	.B(n941), 
	.A(FE_OFN1300_n462));
   OAI21X1 U1062 (.Y(n942), 
	.C(n944), 
	.B(n587), 
	.A(n943));
   OAI21X1 U1063 (.Y(n944), 
	.C(n465), 
	.B(n946), 
	.A(n945));
   NOR2X1 U1064 (.Y(n465), 
	.B(n937), 
	.A(n947));
   OAI21X1 U1065 (.Y(n946), 
	.C(n936), 
	.B(FE_OFN1450_n593), 
	.A(FE_OFN1454_n948));
   NOR2X1 U1066 (.Y(n936), 
	.B(n949), 
	.A(n461));
   INVX1 U1067 (.Y(n949), 
	.A(n600));
   OAI21X1 U1068 (.Y(n461), 
	.C(n608), 
	.B(n459), 
	.A(n950));
   AND2X1 U1069 (.Y(n608), 
	.B(n601), 
	.A(n456));
   NAND2X1 U1070 (.Y(n601), 
	.B(n951), 
	.A(n457));
   NOR2X1 U1071 (.Y(n457), 
	.B(n605), 
	.A(n950));
   NAND3X1 U1072 (.Y(n456), 
	.C(n929), 
	.B(n605), 
	.A(n466));
   INVX1 U1073 (.Y(n459), 
	.A(n952));
   NAND2X1 U1074 (.Y(n945), 
	.B(n925), 
	.A(n443));
   NAND3X1 U1075 (.Y(n925), 
	.C(n929), 
	.B(n953), 
	.A(n606));
   NAND3X1 U1076 (.Y(n443), 
	.C(n929), 
	.B(n606), 
	.A(n605));
   INVX1 U1077 (.Y(n587), 
	.A(FE_OFN1449_n451));
   AOI22X1 U1078 (.Y(n943), 
	.D(n952), 
	.C(n452), 
	.B(n954), 
	.A(FE_OFN1300_n462));
   INVX1 U1079 (.Y(n954), 
	.A(n586));
   NOR2X1 U1080 (.Y(n586), 
	.B(FE_OFN1289_n603), 
	.A(n952));
   OAI21X1 U1081 (.Y(n941), 
	.C(n955), 
	.B(n924), 
	.A(n953));
   AND2X1 U1082 (.Y(n955), 
	.B(n444), 
	.A(n611));
   NAND3X1 U1083 (.Y(n444), 
	.C(FE_OFN1449_n451), 
	.B(n953), 
	.A(FE_OFN1454_n948));
   INVX1 U1084 (.Y(n924), 
	.A(n951));
   NOR2X1 U1085 (.Y(n939), 
	.B(n956), 
	.A(n580));
   OAI21X1 U1086 (.Y(n956), 
	.C(n957), 
	.B(n611), 
	.A(n935));
   OAI21X1 U1087 (.Y(n957), 
	.C(n960), 
	.B(n959), 
	.A(n958));
   INVX1 U1088 (.Y(n960), 
	.A(n458));
   NOR2X1 U1089 (.Y(n458), 
	.B(n452), 
	.A(n439));
   INVX1 U1090 (.Y(n452), 
	.A(n919));
   INVX1 U1091 (.Y(n439), 
	.A(n935));
   OAI21X1 U1092 (.Y(n959), 
	.C(n588), 
	.B(FE_OFN1450_n593), 
	.A(n605));
   NAND3X1 U1093 (.Y(n588), 
	.C(FE_OFN1449_n451), 
	.B(FE_OFN1454_n948), 
	.A(n605));
   NOR2X1 U1094 (.Y(n451), 
	.B(n950), 
	.A(n606));
   NAND2X1 U1095 (.Y(n593), 
	.B(n606), 
	.A(n597));
   NAND3X1 U1096 (.Y(n958), 
	.C(n612), 
	.B(n926), 
	.A(n600));
   NAND3X1 U1097 (.Y(n612), 
	.C(n952), 
	.B(n606), 
	.A(n950));
   NAND3X1 U1098 (.Y(n600), 
	.C(n929), 
	.B(n953), 
	.A(n466));
   NOR2X1 U1099 (.Y(n929), 
	.B(n454), 
	.A(n597));
   NAND3X1 U1100 (.Y(n611), 
	.C(FE_OFN1289_n603), 
	.B(n950), 
	.A(n466));
   INVX1 U1101 (.Y(n580), 
	.A(n961));
   AOI21X1 U1102 (.Y(n961), 
	.C(n962), 
	.B(FE_OFN1300_n462), 
	.A(n460));
   OAI22X1 U1103 (.Y(n962), 
	.D(n935), 
	.C(n589), 
	.B(n919), 
	.A(n923));
   NAND2X1 U1104 (.Y(n935), 
	.B(n947), 
	.A(n937));
   INVX1 U1105 (.Y(n937), 
	.A(n442));
   NAND3X1 U1106 (.Y(n589), 
	.C(n951), 
	.B(n597), 
	.A(n605));
   NOR2X1 U1107 (.Y(n951), 
	.B(n454), 
	.A(n466));
   INVX1 U1108 (.Y(n454), 
	.A(FE_OFN1454_n948));
   NAND2X1 U1109 (.Y(n919), 
	.B(n442), 
	.A(n947));
   NOR2X1 U1110 (.Y(n462), 
	.B(n442), 
	.A(n947));
   XOR2X1 U1111 (.Y(n442), 
	.B(RKEY[41]), 
	.A(FE_OFN1405_CUR_ENC_RIGHT_3_));
   XOR2X1 U1112 (.Y(n947), 
	.B(RKEY[36]), 
	.A(FE_OFN1406_CUR_ENC_RIGHT_8_));
   NAND2X1 U1113 (.Y(n460), 
	.B(n926), 
	.A(n923));
   NAND3X1 U1114 (.Y(n926), 
	.C(n952), 
	.B(n950), 
	.A(n466));
   NOR2X1 U1115 (.Y(n952), 
	.B(FE_OFN1454_n948), 
	.A(n953));
   INVX2 U1116 (.Y(n466), 
	.A(n606));
   NAND3X1 U1117 (.Y(n923), 
	.C(FE_OFN1289_n603), 
	.B(n606), 
	.A(n950));
   NOR2X1 U1118 (.Y(n603), 
	.B(n605), 
	.A(FE_OFN1454_n948));
   INVX2 U1119 (.Y(n605), 
	.A(n953));
   XOR2X1 U1120 (.Y(n953), 
	.B(RKEY[37]), 
	.A(FE_OFN1408_CUR_ENC_RIGHT_7_));
   XOR2X1 U1121 (.Y(n948), 
	.B(FE_OFN1420_CUR_ENC_RIGHT_6_), 
	.A(RKEY[38]));
   XOR2X1 U1122 (.Y(n606), 
	.B(FE_OFN1404_CUR_ENC_RIGHT_5_), 
	.A(RKEY[39]));
   INVX2 U1123 (.Y(n950), 
	.A(n597));
   XOR2X1 U1124 (.Y(n597), 
	.B(RKEY[40]), 
	.A(FE_OFN1418_CUR_ENC_RIGHT_4_));
endmodule

module e_rkeyGen (
	RNDNUM, 
	START_RST, 
	IN_SELECT, 
	CLK, 
	RKEY, 
	FE_OFN83_START, 
	FE_OFN84_START, 
	CLK__L4_N1, 
	CLK__L4_N10, 
	CLK__L4_N25, 
	CLK__L4_N3, 
	CLK__L4_N4, 
	CLK__L4_N9, 
	FE_OFN353_START, 
	FE_OFN620_START, 
	FE_OFN622_START, 
	FE_OFN945_START, 
	FE_OFN946_START, 
	FE_OFN948_START, 
	FE_OFN1331_START, 
	FE_OFN1335_START);
   input [3:0] RNDNUM;
   input START_RST;
   input IN_SELECT;
   input CLK;
   output [47:0] RKEY;
   input FE_OFN83_START;
   input FE_OFN84_START;
   input CLK__L4_N1;
   input CLK__L4_N10;
   input CLK__L4_N25;
   input CLK__L4_N3;
   input CLK__L4_N4;
   input CLK__L4_N9;
   input FE_OFN353_START;
   input FE_OFN620_START;
   input FE_OFN622_START;
   input FE_OFN945_START;
   input FE_OFN946_START;
   input FE_OFN948_START;
   input FE_OFN1331_START;
   input FE_OFN1335_START;

   // Internal wires
   wire FE_OFN1470_RKEY_44_;
   wire FE_OFN1469_RKEY_46_;
   wire FE_OFN1398_RKEY_47_;
   wire FE_OFN1397_RKEY_29_;
   wire FE_OFN1396_RKEY_26_;
   wire FE_OFN1395_RKEY_24_;
   wire FE_OFN1394_RKEY_28_;
   wire FE_OFN1393_RKEY_45_;
   wire FE_OFN1392_RKEY_25_;
   wire FE_OFN1391_RKEY_27_;
   wire FE_OFN1390_RKEY_0_;
   wire \ENC_LEFT[23] ;
   wire ENC_LEFT_12;
   wire ENC_LEFT_7;
   wire ENC_LEFT_4;
   wire \ENC_RIGHT[22] ;
   wire ENC_RIGHT_19;
   wire ENC_RIGHT_15;
   wire ENC_RIGHT_6;

   BUFX2 FE_OFC1470_RKEY_44_ (.Y(RKEY[44]), 
	.A(FE_OFN1470_RKEY_44_));
   BUFX2 FE_OFC1469_RKEY_46_ (.Y(RKEY[46]), 
	.A(FE_OFN1469_RKEY_46_));
   BUFX2 FE_OFC1398_RKEY_47_ (.Y(RKEY[47]), 
	.A(FE_OFN1398_RKEY_47_));
   BUFX2 FE_OFC1397_RKEY_29_ (.Y(RKEY[29]), 
	.A(FE_OFN1397_RKEY_29_));
   BUFX2 FE_OFC1396_RKEY_26_ (.Y(RKEY[26]), 
	.A(FE_OFN1396_RKEY_26_));
   BUFX2 FE_OFC1395_RKEY_24_ (.Y(RKEY[24]), 
	.A(FE_OFN1395_RKEY_24_));
   BUFX2 FE_OFC1394_RKEY_28_ (.Y(RKEY[28]), 
	.A(FE_OFN1394_RKEY_28_));
   BUFX2 FE_OFC1393_RKEY_45_ (.Y(RKEY[45]), 
	.A(FE_OFN1393_RKEY_45_));
   BUFX2 FE_OFC1392_RKEY_25_ (.Y(RKEY[25]), 
	.A(FE_OFN1392_RKEY_25_));
   BUFX2 FE_OFC1391_RKEY_27_ (.Y(RKEY[27]), 
	.A(FE_OFN1391_RKEY_27_));
   BUFX2 FE_OFC1390_RKEY_0_ (.Y(RKEY[0]), 
	.A(FE_OFN1390_RKEY_0_));
   DFFSR \ENC_RIGHT_reg[1]  (.S(1'b1), 
	.R(FE_OFN353_START), 
	.Q(RKEY[32]), 
	.D(RKEY[24]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[3]  (.S(1'b1), 
	.R(FE_OFN1331_START), 
	.Q(RKEY[38]), 
	.D(RKEY[32]), 
	.CLK(CLK__L4_N25));
   DFFSR \ENC_RIGHT_reg[5]  (.S(1'b1), 
	.R(FE_OFN1331_START), 
	.Q(RKEY[30]), 
	.D(RKEY[38]), 
	.CLK(CLK__L4_N25));
   DFFSR \ENC_RIGHT_reg[7]  (.S(FE_OFN1331_START), 
	.R(1'b1), 
	.Q(RKEY[36]), 
	.D(RKEY[30]), 
	.CLK(CLK__L4_N25));
   DFFSR \ENC_RIGHT_reg[9]  (.S(FE_OFN353_START), 
	.R(1'b1), 
	.Q(RKEY[33]), 
	.D(RKEY[36]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[11]  (.S(1'b1), 
	.R(FE_OFN353_START), 
	.Q(FE_OFN1398_RKEY_47_), 
	.D(RKEY[33]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[13]  (.S(FE_OFN1331_START), 
	.R(1'b1), 
	.Q(FE_OFN1397_RKEY_29_), 
	.D(RKEY[47]), 
	.CLK(CLK__L4_N25));
   DFFSR \ENC_RIGHT_reg[15]  (.S(FE_OFN1331_START), 
	.R(1'b1), 
	.Q(ENC_RIGHT_15), 
	.D(RKEY[29]), 
	.CLK(CLK__L4_N25));
   DFFSR \ENC_RIGHT_reg[17]  (.S(FE_OFN1331_START), 
	.R(1'b1), 
	.Q(FE_OFN1396_RKEY_26_), 
	.D(ENC_RIGHT_15), 
	.CLK(CLK__L4_N25));
   DFFSR \ENC_RIGHT_reg[19]  (.S(FE_OFN1331_START), 
	.R(1'b1), 
	.Q(ENC_RIGHT_19), 
	.D(RKEY[26]), 
	.CLK(CLK__L4_N25));
   DFFSR \ENC_RIGHT_reg[21]  (.S(FE_OFN1331_START), 
	.R(1'b1), 
	.Q(FE_OFN1470_RKEY_44_), 
	.D(ENC_RIGHT_19), 
	.CLK(CLK__L4_N25));
   DFFSR \ENC_RIGHT_reg[23]  (.S(FE_OFN946_START), 
	.R(1'b1), 
	.Q(RKEY[31]), 
	.D(RKEY[44]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[25]  (.S(FE_OFN353_START), 
	.R(1'b1), 
	.Q(RKEY[40]), 
	.D(RKEY[31]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[27]  (.S(FE_OFN353_START), 
	.R(1'b1), 
	.Q(FE_OFN1395_RKEY_24_), 
	.D(RKEY[40]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[0]  (.S(FE_OFN353_START), 
	.R(1'b1), 
	.Q(RKEY[41]), 
	.D(RKEY[43]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[2]  (.S(1'b1), 
	.R(FE_OFN353_START), 
	.Q(RKEY[42]), 
	.D(RKEY[41]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[4]  (.S(1'b1), 
	.R(FE_OFN620_START), 
	.Q(FE_OFN1394_RKEY_28_), 
	.D(RKEY[42]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[6]  (.S(1'b1), 
	.R(FE_OFN620_START), 
	.Q(ENC_RIGHT_6), 
	.D(RKEY[28]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[8]  (.S(1'b1), 
	.R(FE_OFN620_START), 
	.Q(FE_OFN1393_RKEY_45_), 
	.D(ENC_RIGHT_6), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[10]  (.S(1'b1), 
	.R(FE_OFN620_START), 
	.Q(FE_OFN1392_RKEY_25_), 
	.D(RKEY[45]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[12]  (.S(FE_OFN620_START), 
	.R(1'b1), 
	.Q(RKEY[39]), 
	.D(RKEY[25]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[14]  (.S(FE_OFN620_START), 
	.R(1'b1), 
	.Q(FE_OFN1469_RKEY_46_), 
	.D(RKEY[39]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[16]  (.S(FE_OFN353_START), 
	.R(1'b1), 
	.Q(RKEY[34]), 
	.D(RKEY[46]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[18]  (.S(FE_OFN620_START), 
	.R(1'b1), 
	.Q(RKEY[37]), 
	.D(RKEY[34]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[20]  (.S(FE_OFN620_START), 
	.R(1'b1), 
	.Q(RKEY[35]), 
	.D(RKEY[37]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[22]  (.S(FE_OFN353_START), 
	.R(1'b1), 
	.Q(\ENC_RIGHT[22] ), 
	.D(RKEY[35]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[24]  (.S(FE_OFN353_START), 
	.R(1'b1), 
	.Q(FE_OFN1391_RKEY_27_), 
	.D(\ENC_RIGHT[22] ), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_RIGHT_reg[26]  (.S(1'b1), 
	.R(FE_OFN353_START), 
	.Q(RKEY[43]), 
	.D(RKEY[27]), 
	.CLK(CLK__L4_N4));
   DFFSR \ENC_LEFT_reg[1]  (.S(1'b1), 
	.R(FE_OFN948_START), 
	.Q(FE_OFN1390_RKEY_0_), 
	.D(RKEY[17]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[3]  (.S(FE_OFN1335_START), 
	.R(1'b1), 
	.Q(RKEY[7]), 
	.D(RKEY[0]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[5]  (.S(1'b1), 
	.R(FE_OFN1335_START), 
	.Q(RKEY[2]), 
	.D(RKEY[7]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[7]  (.S(1'b1), 
	.R(FE_OFN1335_START), 
	.Q(ENC_LEFT_7), 
	.D(RKEY[2]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[9]  (.S(1'b1), 
	.R(FE_OFN948_START), 
	.Q(RKEY[16]), 
	.D(ENC_LEFT_7), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[11]  (.S(1'b1), 
	.R(FE_OFN948_START), 
	.Q(RKEY[4]), 
	.D(RKEY[16]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[13]  (.S(1'b1), 
	.R(FE_OFN948_START), 
	.Q(RKEY[11]), 
	.D(RKEY[4]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[15]  (.S(FE_OFN948_START), 
	.R(1'b1), 
	.Q(RKEY[5]), 
	.D(RKEY[11]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[17]  (.S(FE_OFN1335_START), 
	.R(1'b1), 
	.Q(RKEY[12]), 
	.D(RKEY[5]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[19]  (.S(1'b1), 
	.R(FE_OFN1335_START), 
	.Q(RKEY[3]), 
	.D(RKEY[12]), 
	.CLK(CLK__L4_N1));
   DFFSR \ENC_LEFT_reg[21]  (.S(FE_OFN1335_START), 
	.R(1'b1), 
	.Q(RKEY[22]), 
	.D(RKEY[3]), 
	.CLK(CLK__L4_N1));
   DFFSR \ENC_LEFT_reg[23]  (.S(1'b1), 
	.R(FE_OFN948_START), 
	.Q(\ENC_LEFT[23] ), 
	.D(RKEY[22]), 
	.CLK(CLK__L4_N1));
   DFFSR \ENC_LEFT_reg[25]  (.S(FE_OFN948_START), 
	.R(1'b1), 
	.Q(RKEY[8]), 
	.D(\ENC_LEFT[23] ), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[27]  (.S(FE_OFN948_START), 
	.R(1'b1), 
	.Q(RKEY[17]), 
	.D(RKEY[8]), 
	.CLK(CLK__L4_N9));
   DFFSR \ENC_LEFT_reg[0]  (.S(1'b1), 
	.R(FE_OFN948_START), 
	.Q(RKEY[21]), 
	.D(RKEY[1]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[2]  (.S(FE_OFN948_START), 
	.R(1'b1), 
	.Q(RKEY[13]), 
	.D(RKEY[21]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[4]  (.S(FE_OFN84_START), 
	.R(1'b1), 
	.Q(ENC_LEFT_4), 
	.D(RKEY[13]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[6]  (.S(FE_OFN622_START), 
	.R(1'b1), 
	.Q(RKEY[20]), 
	.D(ENC_LEFT_4), 
	.CLK(CLK__L4_N1));
   DFFSR \ENC_LEFT_reg[8]  (.S(1'b1), 
	.R(FE_OFN84_START), 
	.Q(RKEY[9]), 
	.D(RKEY[20]), 
	.CLK(CLK));
   DFFSR \ENC_LEFT_reg[10]  (.S(START_RST), 
	.R(1'b1), 
	.Q(RKEY[23]), 
	.D(RKEY[9]), 
	.CLK(CLK));
   DFFSR \ENC_LEFT_reg[12]  (.S(1'b1), 
	.R(FE_OFN83_START), 
	.Q(ENC_LEFT_12), 
	.D(RKEY[23]), 
	.CLK(CLK__L4_N1));
   DFFSR \ENC_LEFT_reg[14]  (.S(1'b1), 
	.R(FE_OFN83_START), 
	.Q(RKEY[14]), 
	.D(ENC_LEFT_12), 
	.CLK(CLK__L4_N10));
   DFFSR \ENC_LEFT_reg[16]  (.S(FE_OFN83_START), 
	.R(1'b1), 
	.Q(RKEY[19]), 
	.D(RKEY[14]), 
	.CLK(CLK__L4_N1));
   DFFSR \ENC_LEFT_reg[18]  (.S(1'b1), 
	.R(FE_OFN1335_START), 
	.Q(RKEY[10]), 
	.D(RKEY[19]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[20]  (.S(FE_OFN1335_START), 
	.R(1'b1), 
	.Q(RKEY[15]), 
	.D(RKEY[10]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[22]  (.S(FE_OFN948_START), 
	.R(1'b1), 
	.Q(RKEY[6]), 
	.D(RKEY[15]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[24]  (.S(FE_OFN1335_START), 
	.R(1'b1), 
	.Q(RKEY[18]), 
	.D(RKEY[6]), 
	.CLK(CLK__L4_N3));
   DFFSR \ENC_LEFT_reg[26]  (.S(FE_OFN948_START), 
	.R(1'b1), 
	.Q(RKEY[1]), 
	.D(RKEY[18]), 
	.CLK(CLK__L4_N3));
endmodule

module e_rndCount (
	CLK, 
	RST, 
	START, 
	IN_SELECT, 
	FIESTELCLK, 
	RND_CNT, 
	FE_OFN80_START, 
	CLK__L4_N20);
   input CLK;
   input RST;
   input START;
   output IN_SELECT;
   output FIESTELCLK;
   output [3:0] RND_CNT;
   input FE_OFN80_START;
   input CLK__L4_N20;

   // Internal wires
   wire FE_PHN1594_n24;
   wire FE_PHN1593_n24;
   wire FE_PHN1592_n24;
   wire FE_PHN1591_n24;
   wire FE_PHN1590_n24;
   wire FE_PHN1589_n24;
   wire FE_PHN1588_n24;
   wire FE_PHN1587_n24;
   wire FE_PHN1586_n24;
   wire FE_PHN1585_n24;
   wire FE_PHN1584_n24;
   wire FE_PHN1583_n24;
   wire FE_PHN1582_n24;
   wire FE_PHN1581_n24;
   wire FE_PHN1580_n24;
   wire FE_PHN1579_n24;
   wire FE_PHN1578_n24;
   wire FE_PHN1577_n24;
   wire FE_PHN1576_n24;
   wire FE_PHN1575_n24;
   wire FE_PHN1574_n24;
   wire FE_PHN1573_n24;
   wire FE_PHN1572_n24;
   wire FE_PHN1571_n24;
   wire FE_PHN1570_n24;
   wire FE_PHN1569_n24;
   wire FE_PHN1568_n24;
   wire FE_PHN1567_n24;
   wire FE_PHN1566_n24;
   wire FE_PHN1565_n24;
   wire FE_PHN1564_n24;
   wire FE_PHN1563_n24;
   wire FE_PHN1562_n24;
   wire FE_PHN1561_n24;
   wire FE_PHN1560_n24;
   wire FE_PHN1559_n24;
   wire FE_PHN1558_n24;
   wire FE_PHN1557_n24;
   wire FE_PHN1556_n24;
   wire FE_PHN1555_n24;
   wire FE_PHN1554_n24;
   wire FE_PHN1553_n24;
   wire FE_PHN1552_n24;
   wire FE_PHN1551_n24;
   wire FE_PHN1550_n24;
   wire FE_PHN1549_n24;
   wire FE_PHN1548_n24;
   wire FE_PHN1547_n24;
   wire FE_PHN1546_n24;
   wire FE_PHN1545_n24;
   wire FE_PHN1544_n24;
   wire FE_PHN1543_n24;
   wire FE_PHN1542_n24;
   wire FE_PHN1541_n24;
   wire FE_PHN1540_n24;
   wire FE_PHN1539_n24;
   wire FE_PHN1538_n24;
   wire FE_PHN1537_n24;
   wire FE_PHN1536_n24;
   wire FE_PHN1535_n24;
   wire FE_PHN1534_n24;
   wire FE_PHN1533_n24;
   wire FE_PHN1532_n24;
   wire FE_PHN1531_n24;
   wire FE_PHN1530_n24;
   wire FE_PHN1529_n24;
   wire FE_PHN1528_n24;
   wire FE_PHN1527_n24;
   wire FE_PHN1526_n24;
   wire FE_PHN1525_n24;
   wire FE_PHN1524_n24;
   wire FE_PHN1523_n24;
   wire FE_PHN1522_n24;
   wire FE_PHN1521_n24;
   wire FE_PHN1520_n24;
   wire FE_PHN1519_n24;
   wire FE_PHN1518_n24;
   wire FE_PHN1517_n24;
   wire FE_PHN1516_n24;
   wire FE_PHN1515_n24;
   wire FE_PHN1514_n24;
   wire FE_PHN1513_n24;
   wire FE_PHN1512_n24;
   wire FE_PHN1511_n24;
   wire FE_PHN1510_n24;
   wire FE_PHN1509_n24;
   wire FE_PHN1508_n24;
   wire FE_PHN1507_n24;
   wire FE_PHN1506_n24;
   wire FE_PHN1505_n24;
   wire FE_PHN1504_n24;
   wire FE_PHN1503_n24;
   wire FE_PHN1502_n24;
   wire FE_PHN1501_n24;
   wire FE_PHN1500_n24;
   wire FE_PHN1499_n24;
   wire FE_PHN1498_n24;
   wire FE_PHN1497_n24;
   wire FE_PHN1496_n24;
   wire FE_PHN1495_n24;
   wire FE_PHN1494_n24;
   wire FE_PHN1493_n24;
   wire FE_PHN1492_n24;
   wire FE_PHN1491_n24;
   wire FE_PHN1490_n24;
   wire FE_PHN1489_n24;
   wire FE_PHN1488_n24;
   wire FE_PHN1487_n24;
   wire FE_PHN1486_n24;
   wire FE_PHN1484_n24;
   wire FE_PHN1482_n24;
   wire FE_PHN1480_n24;
   wire FE_PHN1477_n24;
   wire FE_OFN1252_n24;
   wire FE_OFN1129_n26;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n4;
   wire n7;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;

   BUFX2 FE_PHC1594_n24 (.Y(FE_PHN1594_n24), 
	.A(FE_PHN1577_n24));
   CLKBUF1 FE_PHC1593_n24 (.Y(FE_PHN1593_n24), 
	.A(FE_PHN1594_n24));
   BUFX2 FE_PHC1592_n24 (.Y(FE_PHN1592_n24), 
	.A(FE_PHN1593_n24));
   CLKBUF2 FE_PHC1591_n24 (.Y(FE_PHN1591_n24), 
	.A(FE_PHN1592_n24));
   CLKBUF1 FE_PHC1590_n24 (.Y(FE_PHN1590_n24), 
	.A(FE_PHN1591_n24));
   BUFX2 FE_PHC1589_n24 (.Y(FE_PHN1589_n24), 
	.A(FE_PHN1590_n24));
   CLKBUF1 FE_PHC1588_n24 (.Y(FE_PHN1588_n24), 
	.A(FE_PHN1589_n24));
   CLKBUF1 FE_PHC1587_n24 (.Y(FE_PHN1587_n24), 
	.A(FE_PHN1588_n24));
   BUFX2 FE_PHC1586_n24 (.Y(FE_PHN1586_n24), 
	.A(FE_PHN1587_n24));
   CLKBUF1 FE_PHC1585_n24 (.Y(FE_PHN1585_n24), 
	.A(FE_PHN1586_n24));
   BUFX2 FE_PHC1584_n24 (.Y(FE_PHN1584_n24), 
	.A(FE_PHN1585_n24));
   CLKBUF1 FE_PHC1583_n24 (.Y(FE_PHN1583_n24), 
	.A(FE_PHN1584_n24));
   BUFX4 FE_PHC1582_n24 (.Y(FE_PHN1582_n24), 
	.A(FE_PHN1583_n24));
   BUFX2 FE_PHC1581_n24 (.Y(FE_PHN1581_n24), 
	.A(FE_PHN1582_n24));
   CLKBUF2 FE_PHC1580_n24 (.Y(FE_PHN1580_n24), 
	.A(FE_PHN1581_n24));
   CLKBUF2 FE_PHC1579_n24 (.Y(FE_PHN1579_n24), 
	.A(FE_PHN1580_n24));
   CLKBUF2 FE_PHC1578_n24 (.Y(FE_PHN1578_n24), 
	.A(FE_PHN1579_n24));
   CLKBUF2 FE_PHC1577_n24 (.Y(FE_PHN1577_n24), 
	.A(FE_PHN1565_n24));
   BUFX2 FE_PHC1576_n24 (.Y(FE_PHN1576_n24), 
	.A(FE_PHN1578_n24));
   CLKBUF2 FE_PHC1575_n24 (.Y(FE_PHN1575_n24), 
	.A(FE_PHN1576_n24));
   CLKBUF2 FE_PHC1574_n24 (.Y(FE_PHN1574_n24), 
	.A(FE_PHN1575_n24));
   CLKBUF2 FE_PHC1573_n24 (.Y(FE_PHN1573_n24), 
	.A(FE_PHN1574_n24));
   CLKBUF2 FE_PHC1572_n24 (.Y(FE_PHN1572_n24), 
	.A(FE_PHN1573_n24));
   CLKBUF2 FE_PHC1571_n24 (.Y(FE_PHN1571_n24), 
	.A(FE_PHN1572_n24));
   CLKBUF2 FE_PHC1570_n24 (.Y(FE_PHN1570_n24), 
	.A(FE_PHN1571_n24));
   CLKBUF2 FE_PHC1569_n24 (.Y(FE_PHN1569_n24), 
	.A(FE_PHN1570_n24));
   BUFX2 FE_PHC1568_n24 (.Y(FE_PHN1568_n24), 
	.A(FE_PHN1569_n24));
   CLKBUF2 FE_PHC1567_n24 (.Y(FE_PHN1567_n24), 
	.A(FE_PHN1568_n24));
   CLKBUF2 FE_PHC1566_n24 (.Y(FE_PHN1566_n24), 
	.A(FE_PHN1557_n24));
   CLKBUF2 FE_PHC1565_n24 (.Y(FE_PHN1565_n24), 
	.A(FE_PHN1566_n24));
   BUFX2 FE_PHC1564_n24 (.Y(FE_PHN1564_n24), 
	.A(FE_PHN1567_n24));
   CLKBUF2 FE_PHC1563_n24 (.Y(FE_PHN1563_n24), 
	.A(FE_PHN1564_n24));
   CLKBUF2 FE_PHC1562_n24 (.Y(FE_PHN1562_n24), 
	.A(FE_PHN1563_n24));
   BUFX2 FE_PHC1561_n24 (.Y(FE_PHN1561_n24), 
	.A(FE_PHN1562_n24));
   CLKBUF2 FE_PHC1560_n24 (.Y(FE_PHN1560_n24), 
	.A(FE_PHN1561_n24));
   CLKBUF2 FE_PHC1559_n24 (.Y(FE_PHN1559_n24), 
	.A(FE_PHN1560_n24));
   CLKBUF2 FE_PHC1558_n24 (.Y(FE_PHN1558_n24), 
	.A(FE_PHN1559_n24));
   CLKBUF2 FE_PHC1557_n24 (.Y(FE_PHN1557_n24), 
	.A(FE_PHN1477_n24));
   BUFX2 FE_PHC1556_n24 (.Y(FE_PHN1556_n24), 
	.A(FE_PHN1558_n24));
   CLKBUF2 FE_PHC1555_n24 (.Y(FE_PHN1555_n24), 
	.A(FE_PHN1556_n24));
   CLKBUF2 FE_PHC1554_n24 (.Y(FE_PHN1554_n24), 
	.A(FE_PHN1555_n24));
   CLKBUF3 FE_PHC1553_n24 (.Y(FE_PHN1553_n24), 
	.A(FE_PHN1554_n24));
   CLKBUF3 FE_PHC1552_n24 (.Y(FE_PHN1552_n24), 
	.A(FE_PHN1553_n24));
   CLKBUF3 FE_PHC1551_n24 (.Y(FE_PHN1551_n24), 
	.A(FE_PHN1552_n24));
   CLKBUF3 FE_PHC1550_n24 (.Y(FE_PHN1550_n24), 
	.A(FE_PHN1551_n24));
   CLKBUF3 FE_PHC1549_n24 (.Y(FE_PHN1549_n24), 
	.A(FE_PHN1550_n24));
   CLKBUF2 FE_PHC1548_n24 (.Y(FE_PHN1548_n24), 
	.A(FE_PHN1549_n24));
   CLKBUF2 FE_PHC1547_n24 (.Y(FE_PHN1547_n24), 
	.A(FE_PHN1548_n24));
   CLKBUF2 FE_PHC1546_n24 (.Y(FE_PHN1546_n24), 
	.A(FE_PHN1547_n24));
   CLKBUF2 FE_PHC1545_n24 (.Y(FE_PHN1545_n24), 
	.A(FE_PHN1546_n24));
   CLKBUF2 FE_PHC1544_n24 (.Y(FE_PHN1544_n24), 
	.A(FE_PHN1545_n24));
   CLKBUF2 FE_PHC1543_n24 (.Y(FE_PHN1543_n24), 
	.A(FE_PHN1544_n24));
   CLKBUF2 FE_PHC1542_n24 (.Y(FE_PHN1542_n24), 
	.A(FE_PHN1543_n24));
   CLKBUF2 FE_PHC1541_n24 (.Y(FE_PHN1541_n24), 
	.A(FE_PHN1542_n24));
   CLKBUF3 FE_PHC1540_n24 (.Y(FE_PHN1540_n24), 
	.A(FE_PHN1541_n24));
   CLKBUF3 FE_PHC1539_n24 (.Y(FE_PHN1539_n24), 
	.A(FE_PHN1540_n24));
   CLKBUF3 FE_PHC1538_n24 (.Y(FE_PHN1538_n24), 
	.A(FE_PHN1539_n24));
   CLKBUF3 FE_PHC1537_n24 (.Y(FE_PHN1537_n24), 
	.A(FE_PHN1538_n24));
   CLKBUF3 FE_PHC1536_n24 (.Y(FE_PHN1536_n24), 
	.A(FE_PHN1537_n24));
   CLKBUF3 FE_PHC1535_n24 (.Y(FE_PHN1535_n24), 
	.A(FE_PHN1536_n24));
   CLKBUF3 FE_PHC1534_n24 (.Y(FE_PHN1534_n24), 
	.A(FE_PHN1535_n24));
   CLKBUF3 FE_PHC1533_n24 (.Y(FE_PHN1533_n24), 
	.A(FE_PHN1534_n24));
   CLKBUF3 FE_PHC1532_n24 (.Y(FE_PHN1532_n24), 
	.A(FE_PHN1533_n24));
   CLKBUF3 FE_PHC1531_n24 (.Y(FE_PHN1531_n24), 
	.A(FE_PHN1532_n24));
   CLKBUF3 FE_PHC1530_n24 (.Y(FE_PHN1530_n24), 
	.A(FE_PHN1480_n24));
   CLKBUF3 FE_PHC1529_n24 (.Y(FE_PHN1529_n24), 
	.A(FE_PHN1530_n24));
   CLKBUF3 FE_PHC1528_n24 (.Y(FE_PHN1528_n24), 
	.A(FE_PHN1529_n24));
   CLKBUF3 FE_PHC1527_n24 (.Y(FE_PHN1527_n24), 
	.A(FE_PHN1528_n24));
   CLKBUF3 FE_PHC1526_n24 (.Y(FE_PHN1526_n24), 
	.A(FE_PHN1527_n24));
   CLKBUF3 FE_PHC1525_n24 (.Y(FE_PHN1525_n24), 
	.A(FE_PHN1526_n24));
   CLKBUF3 FE_PHC1524_n24 (.Y(FE_PHN1524_n24), 
	.A(FE_PHN1525_n24));
   CLKBUF3 FE_PHC1523_n24 (.Y(FE_PHN1523_n24), 
	.A(FE_PHN1524_n24));
   CLKBUF3 FE_PHC1522_n24 (.Y(FE_PHN1522_n24), 
	.A(FE_PHN1523_n24));
   CLKBUF3 FE_PHC1521_n24 (.Y(FE_PHN1521_n24), 
	.A(FE_PHN1522_n24));
   CLKBUF3 FE_PHC1520_n24 (.Y(FE_PHN1520_n24), 
	.A(FE_PHN1521_n24));
   CLKBUF3 FE_PHC1519_n24 (.Y(FE_PHN1519_n24), 
	.A(FE_PHN1520_n24));
   CLKBUF3 FE_PHC1518_n24 (.Y(FE_PHN1518_n24), 
	.A(FE_PHN1519_n24));
   CLKBUF3 FE_PHC1517_n24 (.Y(FE_PHN1517_n24), 
	.A(FE_PHN1518_n24));
   CLKBUF3 FE_PHC1516_n24 (.Y(FE_PHN1516_n24), 
	.A(FE_PHN1517_n24));
   CLKBUF3 FE_PHC1515_n24 (.Y(FE_PHN1515_n24), 
	.A(FE_PHN1516_n24));
   CLKBUF3 FE_PHC1514_n24 (.Y(FE_PHN1514_n24), 
	.A(FE_PHN1515_n24));
   CLKBUF3 FE_PHC1513_n24 (.Y(FE_PHN1513_n24), 
	.A(FE_PHN1514_n24));
   CLKBUF3 FE_PHC1512_n24 (.Y(FE_PHN1512_n24), 
	.A(FE_PHN1513_n24));
   CLKBUF3 FE_PHC1511_n24 (.Y(FE_PHN1511_n24), 
	.A(FE_PHN1512_n24));
   CLKBUF3 FE_PHC1510_n24 (.Y(FE_PHN1510_n24), 
	.A(FE_PHN1511_n24));
   CLKBUF3 FE_PHC1509_n24 (.Y(FE_PHN1509_n24), 
	.A(FE_PHN1510_n24));
   CLKBUF3 FE_PHC1508_n24 (.Y(FE_PHN1508_n24), 
	.A(FE_PHN1509_n24));
   CLKBUF3 FE_PHC1507_n24 (.Y(FE_PHN1507_n24), 
	.A(FE_PHN1508_n24));
   CLKBUF3 FE_PHC1506_n24 (.Y(FE_PHN1506_n24), 
	.A(FE_PHN1507_n24));
   CLKBUF3 FE_PHC1505_n24 (.Y(FE_PHN1505_n24), 
	.A(FE_PHN1506_n24));
   CLKBUF3 FE_PHC1504_n24 (.Y(FE_PHN1504_n24), 
	.A(FE_PHN1505_n24));
   CLKBUF3 FE_PHC1503_n24 (.Y(FE_PHN1503_n24), 
	.A(FE_PHN1504_n24));
   CLKBUF3 FE_PHC1502_n24 (.Y(FE_PHN1502_n24), 
	.A(FE_PHN1503_n24));
   CLKBUF3 FE_PHC1501_n24 (.Y(FE_PHN1501_n24), 
	.A(FE_PHN1502_n24));
   CLKBUF3 FE_PHC1500_n24 (.Y(FE_PHN1500_n24), 
	.A(FE_PHN1501_n24));
   CLKBUF3 FE_PHC1499_n24 (.Y(FE_PHN1499_n24), 
	.A(FE_PHN1500_n24));
   CLKBUF3 FE_PHC1498_n24 (.Y(FE_PHN1498_n24), 
	.A(FE_PHN1499_n24));
   CLKBUF3 FE_PHC1497_n24 (.Y(FE_PHN1497_n24), 
	.A(FE_PHN1498_n24));
   CLKBUF3 FE_PHC1496_n24 (.Y(FE_PHN1496_n24), 
	.A(FE_PHN1497_n24));
   CLKBUF3 FE_PHC1495_n24 (.Y(FE_PHN1495_n24), 
	.A(FE_PHN1496_n24));
   CLKBUF3 FE_PHC1494_n24 (.Y(FE_PHN1494_n24), 
	.A(FE_PHN1495_n24));
   CLKBUF3 FE_PHC1493_n24 (.Y(FE_PHN1493_n24), 
	.A(FE_PHN1494_n24));
   CLKBUF3 FE_PHC1492_n24 (.Y(FE_PHN1492_n24), 
	.A(FE_PHN1493_n24));
   CLKBUF3 FE_PHC1491_n24 (.Y(FE_PHN1491_n24), 
	.A(FE_PHN1492_n24));
   CLKBUF3 FE_PHC1490_n24 (.Y(FE_PHN1490_n24), 
	.A(FE_PHN1491_n24));
   CLKBUF3 FE_PHC1489_n24 (.Y(FE_PHN1489_n24), 
	.A(FE_PHN1490_n24));
   CLKBUF3 FE_PHC1488_n24 (.Y(FE_PHN1488_n24), 
	.A(FE_PHN1489_n24));
   CLKBUF3 FE_PHC1487_n24 (.Y(FE_PHN1487_n24), 
	.A(FE_PHN1488_n24));
   CLKBUF3 FE_PHC1486_n24 (.Y(FE_PHN1486_n24), 
	.A(FE_PHN1487_n24));
   CLKBUF2 FE_PHC1484_n24 (.Y(FE_PHN1484_n24), 
	.A(FE_PHN1486_n24));
   CLKBUF2 FE_PHC1482_n24 (.Y(FE_PHN1482_n24), 
	.A(FE_PHN1484_n24));
   CLKBUF3 FE_PHC1480_n24 (.Y(FE_PHN1480_n24), 
	.A(FE_PHN1531_n24));
   CLKBUF1 FE_PHC1477_n24 (.Y(FE_PHN1477_n24), 
	.A(n24));
   BUFX2 FE_OFC1252_n24 (.Y(FE_OFN1252_n24), 
	.A(FE_PHN1482_n24));
   BUFX2 FE_OFC1129_n26 (.Y(FE_OFN1129_n26), 
	.A(n26));
   DFFSR \CUR_CNT_reg[0]  (.S(1'b1), 
	.R(FE_OFN1129_n26), 
	.Q(RND_CNT[0]), 
	.D(n19), 
	.CLK(CLK__L4_N20));
   DFFSR \CUR_CNT_reg[1]  (.S(1'b1), 
	.R(FE_OFN1129_n26), 
	.Q(RND_CNT[1]), 
	.D(n18), 
	.CLK(CLK__L4_N20));
   DFFSR \CUR_CNT_reg[2]  (.S(1'b1), 
	.R(FE_OFN1129_n26), 
	.Q(RND_CNT[2]), 
	.D(n17), 
	.CLK(CLK__L4_N20));
   DFFSR \CUR_CNT_reg[3]  (.S(1'b1), 
	.R(FE_OFN1129_n26), 
	.Q(RND_CNT[3]), 
	.D(n16), 
	.CLK(CLK__L4_N20));
   NOR2X1 U6 (.Y(n4), 
	.B(START), 
	.A(FE_OFN1252_n24));
   INVX8 U8 (.Y(IN_SELECT), 
	.A(n4));
   NAND2X1 U9 (.Y(n7), 
	.B(FE_OFN1252_n24), 
	.A(CLK));
   INVX8 U10 (.Y(FIESTELCLK), 
	.A(n7));
   NOR2X1 U11 (.Y(n26), 
	.B(FE_OFN80_START), 
	.A(RST));
   XNOR2X1 U13 (.Y(n19), 
	.B(n10), 
	.A(RND_CNT[0]));
   XNOR2X1 U14 (.Y(n18), 
	.B(n12), 
	.A(n11));
   XNOR2X1 U15 (.Y(n17), 
	.B(n13), 
	.A(RND_CNT[2]));
   NAND2X1 U16 (.Y(n13), 
	.B(RND_CNT[1]), 
	.A(n12));
   OAI21X1 U17 (.Y(n16), 
	.C(n20), 
	.B(n15), 
	.A(n14));
   INVX1 U18 (.Y(n20), 
	.A(RND_CNT[3]));
   NAND2X1 U19 (.Y(n15), 
	.B(RND_CNT[1]), 
	.A(RND_CNT[2]));
   INVX1 U20 (.Y(n14), 
	.A(n12));
   NOR2X1 U21 (.Y(n12), 
	.B(n21), 
	.A(n10));
   OAI21X1 U22 (.Y(n10), 
	.C(START), 
	.B(n23), 
	.A(n22));
   NAND2X1 U23 (.Y(n23), 
	.B(RND_CNT[2]), 
	.A(RND_CNT[3]));
   NAND2X1 U24 (.Y(n22), 
	.B(RND_CNT[0]), 
	.A(RND_CNT[1]));
   NAND3X1 U25 (.Y(n24), 
	.C(n25), 
	.B(n11), 
	.A(n21));
   NOR2X1 U26 (.Y(n25), 
	.B(RND_CNT[2]), 
	.A(RND_CNT[3]));
   INVX1 U27 (.Y(n11), 
	.A(RND_CNT[1]));
   INVX1 U28 (.Y(n21), 
	.A(RND_CNT[0]));
endmodule

module ENCRYPTION (
	CLK, 
	DATA, 
	EMPTY, 
	FULL, 
	RENABLE, 
	RST, 
	EMPTY1, 
	FULL1, 
	RDATA, 
	R_ENABLE, 
	CLK__L4_N0, 
	CLK__L4_N1, 
	CLK__L4_N10, 
	CLK__L4_N11, 
	CLK__L4_N12, 
	CLK__L4_N13, 
	CLK__L4_N14, 
	CLK__L4_N15, 
	CLK__L4_N16, 
	CLK__L4_N19, 
	CLK__L4_N2, 
	CLK__L4_N20, 
	CLK__L4_N22, 
	CLK__L4_N23, 
	CLK__L4_N24, 
	CLK__L4_N25, 
	CLK__L4_N3, 
	CLK__L4_N4, 
	CLK__L4_N5, 
	CLK__L4_N6, 
	CLK__L4_N7, 
	CLK__L4_N9);
   input CLK;
   input [7:0] DATA;
   input EMPTY;
   input FULL;
   input RENABLE;
   input RST;
   output EMPTY1;
   output FULL1;
   output [7:0] RDATA;
   output R_ENABLE;
   input CLK__L4_N0;
   input CLK__L4_N1;
   input CLK__L4_N10;
   input CLK__L4_N11;
   input CLK__L4_N12;
   input CLK__L4_N13;
   input CLK__L4_N14;
   input CLK__L4_N15;
   input CLK__L4_N16;
   input CLK__L4_N19;
   input CLK__L4_N2;
   input CLK__L4_N20;
   input CLK__L4_N22;
   input CLK__L4_N23;
   input CLK__L4_N24;
   input CLK__L4_N25;
   input CLK__L4_N3;
   input CLK__L4_N4;
   input CLK__L4_N5;
   input CLK__L4_N6;
   input CLK__L4_N7;
   input CLK__L4_N9;

   // Internal wires
   wire FE_OFN1426_W_ENABLE;
   wire FE_OFN1335_START;
   wire FE_OFN1334_START;
   wire FE_OFN1332_START;
   wire FE_OFN1331_START;
   wire FE_OFN1330_START;
   wire FE_OFN1329_START;
   wire FE_OFN1317_DATA1_7_;
   wire FE_OFN1315_DATA1_6_;
   wire FE_OFN1311_DATA1_3_;
   wire FE_OFN1309_DATA1_2_;
   wire FE_OFN1306_DATA1_0_;
   wire FIESTELCLK__L2_N2;
   wire FIESTELCLK__L2_N1;
   wire FIESTELCLK__L2_N0;
   wire FIESTELCLK__L1_N0;
   wire FE_OFN84_START;
   wire FE_OFN83_START;
   wire FE_OFN80_START;
   wire W_ENABLE1;
   wire W_ENABLE;
   wire START;
   wire FIESTELCLK;
   wire IN_SELECT;
   wire n1;
   wire [7:0] DATA1;
   wire [63:0] OUTDATA;
   wire [31:0] ENC_LEFT;
   wire [31:0] ENC_RIGHT;
   wire [47:0] RKEY;
   wire [3:0] RND_CNT;

   BUFX4 FE_OFC1426_W_ENABLE (.Y(FE_OFN1426_W_ENABLE), 
	.A(W_ENABLE));
   INVX8 FE_OFC1335_START (.Y(FE_OFN1335_START), 
	.A(FE_OFN1334_START));
   INVX1 FE_OFC1334_START (.Y(FE_OFN1334_START), 
	.A(FE_OFN83_START));
   INVX8 FE_OFC1332_START (.Y(FE_OFN1332_START), 
	.A(FE_OFN1329_START));
   INVX8 FE_OFC1331_START (.Y(FE_OFN1331_START), 
	.A(FE_OFN1329_START));
   INVX4 FE_OFC1330_START (.Y(FE_OFN1330_START), 
	.A(FE_OFN1329_START));
   INVX2 FE_OFC1329_START (.Y(FE_OFN1329_START), 
	.A(FE_OFN84_START));
   BUFX2 FE_OFC1317_DATA1_7_ (.Y(FE_OFN1317_DATA1_7_), 
	.A(DATA1[7]));
   BUFX2 FE_OFC1315_DATA1_6_ (.Y(FE_OFN1315_DATA1_6_), 
	.A(DATA1[6]));
   BUFX2 FE_OFC1311_DATA1_3_ (.Y(FE_OFN1311_DATA1_3_), 
	.A(DATA1[3]));
   BUFX2 FE_OFC1309_DATA1_2_ (.Y(FE_OFN1309_DATA1_2_), 
	.A(DATA1[2]));
   BUFX2 FE_OFC1306_DATA1_0_ (.Y(FE_OFN1306_DATA1_0_), 
	.A(DATA1[0]));
   INVX8 FIESTELCLK__L2_I2 (.Y(FIESTELCLK__L2_N2), 
	.A(FIESTELCLK__L1_N0));
   INVX8 FIESTELCLK__L2_I1 (.Y(FIESTELCLK__L2_N1), 
	.A(FIESTELCLK__L1_N0));
   INVX8 FIESTELCLK__L2_I0 (.Y(FIESTELCLK__L2_N0), 
	.A(FIESTELCLK__L1_N0));
   INVX8 FIESTELCLK__L1_I0 (.Y(FIESTELCLK__L1_N0), 
	.A(FIESTELCLK));
   INVX2 FE_OFC84_START (.Y(FE_OFN84_START), 
	.A(FE_OFN80_START));
   INVX4 FE_OFC83_START (.Y(FE_OFN83_START), 
	.A(FE_OFN80_START));
   INVX2 FE_OFC80_START (.Y(FE_OFN80_START), 
	.A(START));
   RCV_FIFO_2 U_5 (.CLK(CLK__L4_N11), 
	.D_CLK(CLK__L4_N11), 
	.RST_N(n1), 
	.R_ENABLE(RENABLE), 
	.W_ENABLE(W_ENABLE1), 
	.WDATA({ FE_OFN1317_DATA1_7_,
		FE_OFN1315_DATA1_6_,
		DATA1[5],
		DATA1[4],
		FE_OFN1311_DATA1_3_,
		FE_OFN1309_DATA1_2_,
		DATA1[1],
		FE_OFN1306_DATA1_0_ }), 
	.R_DATA(RDATA), 
	.EMPTY(EMPTY1), 
	.FULL(FULL1), 
	.CLK__L4_N12(CLK__L4_N12), 
	.CLK__L4_N13(CLK__L4_N13), 
	.CLK__L4_N16(CLK__L4_N16), 
	.CLK__L4_N3(CLK__L4_N3), 
	.CLK__L4_N5(CLK__L4_N5), 
	.CLK__L4_N6(CLK__L4_N6), 
	.CLK__L4_N7(CLK__L4_N7));
   e_DeCompile U_0 (.OUTDATA(OUTDATA), 
	.D_ENABLE(FE_OFN1426_W_ENABLE), 
	.CLK(CLK__L4_N14), 
	.DATA(DATA1), 
	.W_ENABLE(W_ENABLE1));
   e_encController U_1 (.DATA(DATA), 
	.FULL(FULL), 
	.EMPTY(EMPTY), 
	.CLK(CLK__L4_N0), 
	.RST(RST), 
	.START(START), 
	.R_ENABLE(R_ENABLE), 
	.W_ENABLE(W_ENABLE), 
	.ENC_LEFT(ENC_LEFT), 
	.ENC_RIGHT(ENC_RIGHT), 
	.FE_PT1_n1(n1), 
	.CLK__L4_N1(CLK__L4_N1), 
	.CLK__L4_N10(CLK__L4_N10), 
	.CLK__L4_N14(CLK__L4_N14), 
	.CLK__L4_N15(CLK__L4_N15), 
	.CLK__L4_N19(CLK__L4_N19), 
	.CLK__L4_N2(CLK__L4_N2), 
	.CLK__L4_N20(CLK__L4_N20), 
	.CLK__L4_N22(CLK__L4_N22), 
	.CLK__L4_N23(CLK__L4_N23), 
	.CLK__L4_N24(CLK__L4_N24), 
	.CLK__L4_N25(CLK__L4_N25), 
	.CLK__L4_N4(CLK__L4_N4), 
	.CLK__L4_N9(CLK__L4_N9));
   e_fiestel U_2 (.FIESTELCLK(FIESTELCLK__L2_N0), 
	.START(START), 
	.ENC_LEFT(ENC_LEFT), 
	.ENC_RIGHT(ENC_RIGHT), 
	.RKEY(RKEY), 
	.IN_SELECT(IN_SELECT), 
	.OUTDATA(OUTDATA), 
	.FE_OFN80_START(FE_OFN80_START), 
	.FE_OFN82_START(FE_OFN1332_START), 
	.FE_OFN83_START(FE_OFN83_START), 
	.FE_OFN84_START(FE_OFN84_START), 
	.FIESTELCLK__L2_N1(FIESTELCLK__L2_N1), 
	.FIESTELCLK__L2_N2(FIESTELCLK__L2_N2), 
	.FE_OFN353_START(FE_OFN1331_START), 
	.FE_OFN622_START(FE_OFN83_START), 
	.FE_OFN945_START(FE_OFN1332_START), 
	.FE_OFN946_START(FE_OFN1331_START), 
	.FE_OFN948_START(FE_OFN83_START), 
	.FE_OFN1330_START(FE_OFN1330_START), 
	.FE_OFN1335_START(FE_OFN1335_START));
   e_rkeyGen U_3 (.RNDNUM(RND_CNT), 
	.START_RST(FE_OFN84_START), 
	.IN_SELECT(IN_SELECT), 
	.CLK(CLK__L4_N0), 
	.RKEY(RKEY), 
	.FE_OFN83_START(FE_OFN83_START), 
	.FE_OFN84_START(FE_OFN1330_START), 
	.CLK__L4_N1(CLK__L4_N1), 
	.CLK__L4_N10(CLK__L4_N10), 
	.CLK__L4_N25(CLK__L4_N25), 
	.CLK__L4_N3(CLK__L4_N3), 
	.CLK__L4_N4(CLK__L4_N4), 
	.CLK__L4_N9(CLK__L4_N9), 
	.FE_OFN353_START(FE_OFN1331_START), 
	.FE_OFN620_START(FE_OFN1331_START), 
	.FE_OFN622_START(FE_OFN83_START), 
	.FE_OFN945_START(FE_OFN84_START), 
	.FE_OFN946_START(FE_OFN1331_START), 
	.FE_OFN948_START(FE_OFN1335_START), 
	.FE_OFN1331_START(FE_OFN1331_START), 
	.FE_OFN1335_START(FE_OFN1335_START));
   e_rndCount U_4 (.CLK(CLK), 
	.RST(RST), 
	.START(START), 
	.IN_SELECT(IN_SELECT), 
	.FIESTELCLK(FIESTELCLK), 
	.RND_CNT(RND_CNT), 
	.FE_OFN80_START(FE_OFN80_START), 
	.CLK__L4_N20(CLK__L4_N20));
   INVX4 U1 (.Y(n1), 
	.A(RST));
endmodule

module fiforam_1 (
	wclk, 
	wenable, 
	waddr, 
	raddr, 
	wdata, 
	rdata, 
	FE_OFN29_n2, 
	FE_OFN30_n2, 
	FE_OFN31_n2, 
	FE_OFN122_n2, 
	FE_OFN272_n2, 
	FE_OFN274_n2, 
	FE_OFN528_n2, 
	FE_OFN530_n2, 
	FE_OFN822_n2, 
	FE_OFN823_n2, 
	FE_OFN1185_n2, 
	FE_OFN1186_n2, 
	FE_OFN1188_n2, 
	FE_OFN1189_n2);
   input wclk;
   input wenable;
   input [2:0] waddr;
   input [2:0] raddr;
   input [7:0] wdata;
   output [7:0] rdata;
   input FE_OFN29_n2;
   input FE_OFN30_n2;
   input FE_OFN31_n2;
   input FE_OFN122_n2;
   input FE_OFN272_n2;
   input FE_OFN274_n2;
   input FE_OFN528_n2;
   input FE_OFN530_n2;
   input FE_OFN822_n2;
   input FE_OFN823_n2;
   input FE_OFN1185_n2;
   input FE_OFN1186_n2;
   input FE_OFN1188_n2;
   input FE_OFN1189_n2;

   // Internal wires
   wire FE_OFN1221_n110;
   wire FE_OFN1220_n102;
   wire FE_OFN1219_n112;
   wire FE_OFN1218_n108;
   wire FE_OFN1217_n105;
   wire FE_OFN1216_n103;
   wire FE_OFN1215_n106;
   wire FE_OFN1214_n104;
   wire FE_OFN1213_n24;
   wire FE_OFN1212_n20;
   wire FE_OFN1211_n22;
   wire FE_OFN1210_n18;
   wire FE_OFN1172_n189;
   wire FE_OFN1171_n178;
   wire FE_OFN1170_n167;
   wire FE_OFN1169_n156;
   wire FE_OFN1168_n145;
   wire FE_OFN1167_n134;
   wire FE_OFN1166_n123;
   wire FE_OFN1165_n100;
   wire \fiforeg[0][7] ;
   wire \fiforeg[0][6] ;
   wire \fiforeg[0][5] ;
   wire \fiforeg[0][4] ;
   wire \fiforeg[0][3] ;
   wire \fiforeg[0][2] ;
   wire \fiforeg[0][1] ;
   wire \fiforeg[0][0] ;
   wire \fiforeg[1][7] ;
   wire \fiforeg[1][6] ;
   wire \fiforeg[1][5] ;
   wire \fiforeg[1][4] ;
   wire \fiforeg[1][3] ;
   wire \fiforeg[1][2] ;
   wire \fiforeg[1][1] ;
   wire \fiforeg[1][0] ;
   wire \fiforeg[2][7] ;
   wire \fiforeg[2][6] ;
   wire \fiforeg[2][5] ;
   wire \fiforeg[2][4] ;
   wire \fiforeg[2][3] ;
   wire \fiforeg[2][2] ;
   wire \fiforeg[2][1] ;
   wire \fiforeg[2][0] ;
   wire \fiforeg[3][7] ;
   wire \fiforeg[3][6] ;
   wire \fiforeg[3][5] ;
   wire \fiforeg[3][4] ;
   wire \fiforeg[3][3] ;
   wire \fiforeg[3][2] ;
   wire \fiforeg[3][1] ;
   wire \fiforeg[3][0] ;
   wire \fiforeg[4][7] ;
   wire \fiforeg[4][6] ;
   wire \fiforeg[4][5] ;
   wire \fiforeg[4][4] ;
   wire \fiforeg[4][3] ;
   wire \fiforeg[4][2] ;
   wire \fiforeg[4][1] ;
   wire \fiforeg[4][0] ;
   wire \fiforeg[5][7] ;
   wire \fiforeg[5][6] ;
   wire \fiforeg[5][5] ;
   wire \fiforeg[5][4] ;
   wire \fiforeg[5][3] ;
   wire \fiforeg[5][2] ;
   wire \fiforeg[5][1] ;
   wire \fiforeg[5][0] ;
   wire \fiforeg[6][7] ;
   wire \fiforeg[6][6] ;
   wire \fiforeg[6][5] ;
   wire \fiforeg[6][4] ;
   wire \fiforeg[6][3] ;
   wire \fiforeg[6][2] ;
   wire \fiforeg[6][1] ;
   wire \fiforeg[6][0] ;
   wire \fiforeg[7][7] ;
   wire \fiforeg[7][6] ;
   wire \fiforeg[7][5] ;
   wire \fiforeg[7][4] ;
   wire \fiforeg[7][3] ;
   wire \fiforeg[7][2] ;
   wire \fiforeg[7][1] ;
   wire \fiforeg[7][0] ;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;

   BUFX2 FE_OFC1221_n110 (.Y(FE_OFN1221_n110), 
	.A(n110));
   BUFX2 FE_OFC1220_n102 (.Y(FE_OFN1220_n102), 
	.A(n102));
   BUFX2 FE_OFC1219_n112 (.Y(FE_OFN1219_n112), 
	.A(n112));
   BUFX2 FE_OFC1218_n108 (.Y(FE_OFN1218_n108), 
	.A(n108));
   BUFX4 FE_OFC1217_n105 (.Y(FE_OFN1217_n105), 
	.A(n105));
   BUFX4 FE_OFC1216_n103 (.Y(FE_OFN1216_n103), 
	.A(n103));
   BUFX4 FE_OFC1215_n106 (.Y(FE_OFN1215_n106), 
	.A(n106));
   BUFX4 FE_OFC1214_n104 (.Y(FE_OFN1214_n104), 
	.A(n104));
   BUFX2 FE_OFC1213_n24 (.Y(FE_OFN1213_n24), 
	.A(n24));
   BUFX2 FE_OFC1212_n20 (.Y(FE_OFN1212_n20), 
	.A(n20));
   BUFX2 FE_OFC1211_n22 (.Y(FE_OFN1211_n22), 
	.A(n22));
   BUFX2 FE_OFC1210_n18 (.Y(FE_OFN1210_n18), 
	.A(n18));
   BUFX2 FE_OFC1172_n189 (.Y(FE_OFN1172_n189), 
	.A(n189));
   BUFX2 FE_OFC1171_n178 (.Y(FE_OFN1171_n178), 
	.A(n178));
   BUFX2 FE_OFC1170_n167 (.Y(FE_OFN1170_n167), 
	.A(n167));
   BUFX2 FE_OFC1169_n156 (.Y(FE_OFN1169_n156), 
	.A(n156));
   BUFX2 FE_OFC1168_n145 (.Y(FE_OFN1168_n145), 
	.A(n145));
   BUFX2 FE_OFC1167_n134 (.Y(FE_OFN1167_n134), 
	.A(n134));
   BUFX2 FE_OFC1166_n123 (.Y(FE_OFN1166_n123), 
	.A(n123));
   BUFX2 FE_OFC1165_n100 (.Y(FE_OFN1165_n100), 
	.A(n100));
   DFFPOSX1 \fiforeg_reg[7][7]  (.Q(\fiforeg[7][7] ), 
	.D(n321), 
	.CLK(FE_OFN1186_n2));
   DFFPOSX1 \fiforeg_reg[6][7]  (.Q(\fiforeg[6][7] ), 
	.D(n320), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[5][7]  (.Q(\fiforeg[5][7] ), 
	.D(n319), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[4][7]  (.Q(\fiforeg[4][7] ), 
	.D(n318), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[3][7]  (.Q(\fiforeg[3][7] ), 
	.D(n317), 
	.CLK(FE_OFN1186_n2));
   DFFPOSX1 \fiforeg_reg[2][7]  (.Q(\fiforeg[2][7] ), 
	.D(n316), 
	.CLK(FE_OFN30_n2));
   DFFPOSX1 \fiforeg_reg[1][7]  (.Q(\fiforeg[1][7] ), 
	.D(n315), 
	.CLK(FE_OFN528_n2));
   DFFPOSX1 \fiforeg_reg[0][7]  (.Q(\fiforeg[0][7] ), 
	.D(n314), 
	.CLK(FE_OFN528_n2));
   DFFPOSX1 \fiforeg_reg[7][6]  (.Q(\fiforeg[7][6] ), 
	.D(n313), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[6][6]  (.Q(\fiforeg[6][6] ), 
	.D(n312), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[5][6]  (.Q(\fiforeg[5][6] ), 
	.D(n311), 
	.CLK(FE_OFN822_n2));
   DFFPOSX1 \fiforeg_reg[4][6]  (.Q(\fiforeg[4][6] ), 
	.D(n310), 
	.CLK(FE_OFN31_n2));
   DFFPOSX1 \fiforeg_reg[3][6]  (.Q(\fiforeg[3][6] ), 
	.D(n309), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[2][6]  (.Q(\fiforeg[2][6] ), 
	.D(n308), 
	.CLK(FE_OFN1186_n2));
   DFFPOSX1 \fiforeg_reg[1][6]  (.Q(\fiforeg[1][6] ), 
	.D(n307), 
	.CLK(FE_OFN1186_n2));
   DFFPOSX1 \fiforeg_reg[0][6]  (.Q(\fiforeg[0][6] ), 
	.D(n306), 
	.CLK(FE_OFN530_n2));
   DFFPOSX1 \fiforeg_reg[7][5]  (.Q(\fiforeg[7][5] ), 
	.D(n305), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[6][5]  (.Q(\fiforeg[6][5] ), 
	.D(n304), 
	.CLK(FE_OFN122_n2));
   DFFPOSX1 \fiforeg_reg[5][5]  (.Q(\fiforeg[5][5] ), 
	.D(n303), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[4][5]  (.Q(\fiforeg[4][5] ), 
	.D(n302), 
	.CLK(FE_OFN1185_n2));
   DFFPOSX1 \fiforeg_reg[3][5]  (.Q(\fiforeg[3][5] ), 
	.D(n301), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[2][5]  (.Q(\fiforeg[2][5] ), 
	.D(n300), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[1][5]  (.Q(\fiforeg[1][5] ), 
	.D(n299), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[0][5]  (.Q(\fiforeg[0][5] ), 
	.D(n298), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[7][4]  (.Q(\fiforeg[7][4] ), 
	.D(n297), 
	.CLK(FE_OFN823_n2));
   DFFPOSX1 \fiforeg_reg[6][4]  (.Q(\fiforeg[6][4] ), 
	.D(n296), 
	.CLK(FE_OFN823_n2));
   DFFPOSX1 \fiforeg_reg[5][4]  (.Q(\fiforeg[5][4] ), 
	.D(n295), 
	.CLK(FE_OFN823_n2));
   DFFPOSX1 \fiforeg_reg[4][4]  (.Q(\fiforeg[4][4] ), 
	.D(n294), 
	.CLK(FE_OFN823_n2));
   DFFPOSX1 \fiforeg_reg[3][4]  (.Q(\fiforeg[3][4] ), 
	.D(n293), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[2][4]  (.Q(\fiforeg[2][4] ), 
	.D(n292), 
	.CLK(FE_OFN1189_n2));
   DFFPOSX1 \fiforeg_reg[1][4]  (.Q(\fiforeg[1][4] ), 
	.D(n291), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[0][4]  (.Q(\fiforeg[0][4] ), 
	.D(n290), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[7][3]  (.Q(\fiforeg[7][3] ), 
	.D(n289), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[6][3]  (.Q(\fiforeg[6][3] ), 
	.D(n288), 
	.CLK(FE_OFN1185_n2));
   DFFPOSX1 \fiforeg_reg[5][3]  (.Q(\fiforeg[5][3] ), 
	.D(n287), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[4][3]  (.Q(\fiforeg[4][3] ), 
	.D(n286), 
	.CLK(FE_OFN1185_n2));
   DFFPOSX1 \fiforeg_reg[3][3]  (.Q(\fiforeg[3][3] ), 
	.D(n285), 
	.CLK(FE_OFN1189_n2));
   DFFPOSX1 \fiforeg_reg[2][3]  (.Q(\fiforeg[2][3] ), 
	.D(n284), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[1][3]  (.Q(\fiforeg[1][3] ), 
	.D(n283), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[0][3]  (.Q(\fiforeg[0][3] ), 
	.D(n282), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[7][2]  (.Q(\fiforeg[7][2] ), 
	.D(n281), 
	.CLK(FE_OFN31_n2));
   DFFPOSX1 \fiforeg_reg[6][2]  (.Q(\fiforeg[6][2] ), 
	.D(n280), 
	.CLK(FE_OFN31_n2));
   DFFPOSX1 \fiforeg_reg[5][2]  (.Q(\fiforeg[5][2] ), 
	.D(n279), 
	.CLK(FE_OFN272_n2));
   DFFPOSX1 \fiforeg_reg[4][2]  (.Q(\fiforeg[4][2] ), 
	.D(n278), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[3][2]  (.Q(\fiforeg[3][2] ), 
	.D(n277), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[2][2]  (.Q(\fiforeg[2][2] ), 
	.D(n276), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[1][2]  (.Q(\fiforeg[1][2] ), 
	.D(n275), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[0][2]  (.Q(\fiforeg[0][2] ), 
	.D(n274), 
	.CLK(FE_OFN1188_n2));
   DFFPOSX1 \fiforeg_reg[7][1]  (.Q(\fiforeg[7][1] ), 
	.D(n273), 
	.CLK(FE_OFN823_n2));
   DFFPOSX1 \fiforeg_reg[6][1]  (.Q(\fiforeg[6][1] ), 
	.D(n272), 
	.CLK(FE_OFN1185_n2));
   DFFPOSX1 \fiforeg_reg[5][1]  (.Q(\fiforeg[5][1] ), 
	.D(n271), 
	.CLK(FE_OFN823_n2));
   DFFPOSX1 \fiforeg_reg[4][1]  (.Q(\fiforeg[4][1] ), 
	.D(n270), 
	.CLK(FE_OFN823_n2));
   DFFPOSX1 \fiforeg_reg[3][1]  (.Q(\fiforeg[3][1] ), 
	.D(n269), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[2][1]  (.Q(\fiforeg[2][1] ), 
	.D(n268), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[1][1]  (.Q(\fiforeg[1][1] ), 
	.D(n267), 
	.CLK(FE_OFN1189_n2));
   DFFPOSX1 \fiforeg_reg[0][1]  (.Q(\fiforeg[0][1] ), 
	.D(n211), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[7][0]  (.Q(\fiforeg[7][0] ), 
	.D(n203), 
	.CLK(FE_OFN122_n2));
   DFFPOSX1 \fiforeg_reg[6][0]  (.Q(\fiforeg[6][0] ), 
	.D(n210), 
	.CLK(FE_OFN122_n2));
   DFFPOSX1 \fiforeg_reg[5][0]  (.Q(\fiforeg[5][0] ), 
	.D(n209), 
	.CLK(FE_OFN1185_n2));
   DFFPOSX1 \fiforeg_reg[4][0]  (.Q(\fiforeg[4][0] ), 
	.D(n208), 
	.CLK(FE_OFN1185_n2));
   DFFPOSX1 \fiforeg_reg[3][0]  (.Q(\fiforeg[3][0] ), 
	.D(n207), 
	.CLK(FE_OFN1189_n2));
   DFFPOSX1 \fiforeg_reg[2][0]  (.Q(\fiforeg[2][0] ), 
	.D(n206), 
	.CLK(FE_OFN274_n2));
   DFFPOSX1 \fiforeg_reg[1][0]  (.Q(\fiforeg[1][0] ), 
	.D(n205), 
	.CLK(FE_OFN1189_n2));
   DFFPOSX1 \fiforeg_reg[0][0]  (.Q(\fiforeg[0][0] ), 
	.D(n204), 
	.CLK(FE_OFN1189_n2));
   NAND3X1 U14 (.Y(rdata[7]), 
	.C(n15), 
	.B(n14), 
	.A(n13));
   NOR2X1 U15 (.Y(n15), 
	.B(n17), 
	.A(n16));
   OAI22X1 U16 (.Y(n17), 
	.D(n21), 
	.C(FE_OFN1212_n20), 
	.B(n19), 
	.A(FE_OFN1210_n18));
   OAI22X1 U17 (.Y(n16), 
	.D(n25), 
	.C(FE_OFN1213_n24), 
	.B(n23), 
	.A(FE_OFN1211_n22));
   AOI22X1 U18 (.Y(n14), 
	.D(n27), 
	.C(\fiforeg[4][7] ), 
	.B(n26), 
	.A(\fiforeg[5][7] ));
   AOI22X1 U19 (.Y(n13), 
	.D(n29), 
	.C(\fiforeg[6][7] ), 
	.B(n28), 
	.A(\fiforeg[7][7] ));
   NAND3X1 U20 (.Y(rdata[6]), 
	.C(n32), 
	.B(n31), 
	.A(n30));
   NOR2X1 U21 (.Y(n32), 
	.B(n34), 
	.A(n33));
   OAI22X1 U22 (.Y(n34), 
	.D(n36), 
	.C(FE_OFN1212_n20), 
	.B(n35), 
	.A(FE_OFN1210_n18));
   OAI22X1 U23 (.Y(n33), 
	.D(n38), 
	.C(FE_OFN1213_n24), 
	.B(n37), 
	.A(FE_OFN1211_n22));
   AOI22X1 U24 (.Y(n31), 
	.D(n27), 
	.C(\fiforeg[4][6] ), 
	.B(n26), 
	.A(\fiforeg[5][6] ));
   AOI22X1 U25 (.Y(n30), 
	.D(n29), 
	.C(\fiforeg[6][6] ), 
	.B(n28), 
	.A(\fiforeg[7][6] ));
   NAND3X1 U26 (.Y(rdata[5]), 
	.C(n41), 
	.B(n40), 
	.A(n39));
   NOR2X1 U27 (.Y(n41), 
	.B(n43), 
	.A(n42));
   OAI22X1 U28 (.Y(n43), 
	.D(n45), 
	.C(FE_OFN1212_n20), 
	.B(n44), 
	.A(FE_OFN1210_n18));
   OAI22X1 U29 (.Y(n42), 
	.D(n47), 
	.C(FE_OFN1213_n24), 
	.B(n46), 
	.A(FE_OFN1211_n22));
   AOI22X1 U30 (.Y(n40), 
	.D(n27), 
	.C(\fiforeg[4][5] ), 
	.B(n26), 
	.A(\fiforeg[5][5] ));
   AOI22X1 U31 (.Y(n39), 
	.D(n29), 
	.C(\fiforeg[6][5] ), 
	.B(n28), 
	.A(\fiforeg[7][5] ));
   NAND3X1 U32 (.Y(rdata[4]), 
	.C(n50), 
	.B(n49), 
	.A(n48));
   NOR2X1 U33 (.Y(n50), 
	.B(n52), 
	.A(n51));
   OAI22X1 U34 (.Y(n52), 
	.D(n54), 
	.C(FE_OFN1212_n20), 
	.B(n53), 
	.A(FE_OFN1210_n18));
   OAI22X1 U35 (.Y(n51), 
	.D(n56), 
	.C(FE_OFN1213_n24), 
	.B(n55), 
	.A(FE_OFN1211_n22));
   AOI22X1 U36 (.Y(n49), 
	.D(n27), 
	.C(\fiforeg[4][4] ), 
	.B(n26), 
	.A(\fiforeg[5][4] ));
   AOI22X1 U37 (.Y(n48), 
	.D(n29), 
	.C(\fiforeg[6][4] ), 
	.B(n28), 
	.A(\fiforeg[7][4] ));
   NAND3X1 U38 (.Y(rdata[3]), 
	.C(n59), 
	.B(n58), 
	.A(n57));
   NOR2X1 U39 (.Y(n59), 
	.B(n61), 
	.A(n60));
   OAI22X1 U40 (.Y(n61), 
	.D(n63), 
	.C(FE_OFN1212_n20), 
	.B(n62), 
	.A(FE_OFN1210_n18));
   OAI22X1 U41 (.Y(n60), 
	.D(n65), 
	.C(FE_OFN1213_n24), 
	.B(n64), 
	.A(FE_OFN1211_n22));
   AOI22X1 U42 (.Y(n58), 
	.D(n27), 
	.C(\fiforeg[4][3] ), 
	.B(n26), 
	.A(\fiforeg[5][3] ));
   AOI22X1 U43 (.Y(n57), 
	.D(n29), 
	.C(\fiforeg[6][3] ), 
	.B(n28), 
	.A(\fiforeg[7][3] ));
   NAND3X1 U44 (.Y(rdata[2]), 
	.C(n68), 
	.B(n67), 
	.A(n66));
   NOR2X1 U45 (.Y(n68), 
	.B(n70), 
	.A(n69));
   OAI22X1 U46 (.Y(n70), 
	.D(n72), 
	.C(FE_OFN1212_n20), 
	.B(n71), 
	.A(FE_OFN1210_n18));
   OAI22X1 U47 (.Y(n69), 
	.D(n74), 
	.C(FE_OFN1213_n24), 
	.B(n73), 
	.A(FE_OFN1211_n22));
   AOI22X1 U48 (.Y(n67), 
	.D(n27), 
	.C(\fiforeg[4][2] ), 
	.B(n26), 
	.A(\fiforeg[5][2] ));
   AOI22X1 U49 (.Y(n66), 
	.D(n29), 
	.C(\fiforeg[6][2] ), 
	.B(n28), 
	.A(\fiforeg[7][2] ));
   NAND3X1 U50 (.Y(rdata[1]), 
	.C(n77), 
	.B(n76), 
	.A(n75));
   NOR2X1 U51 (.Y(n77), 
	.B(n79), 
	.A(n78));
   OAI22X1 U52 (.Y(n79), 
	.D(n81), 
	.C(FE_OFN1212_n20), 
	.B(n80), 
	.A(FE_OFN1210_n18));
   OAI22X1 U53 (.Y(n78), 
	.D(n83), 
	.C(FE_OFN1213_n24), 
	.B(n82), 
	.A(FE_OFN1211_n22));
   AOI22X1 U54 (.Y(n76), 
	.D(n27), 
	.C(\fiforeg[4][1] ), 
	.B(n26), 
	.A(\fiforeg[5][1] ));
   AOI22X1 U55 (.Y(n75), 
	.D(n29), 
	.C(\fiforeg[6][1] ), 
	.B(n28), 
	.A(\fiforeg[7][1] ));
   NAND3X1 U56 (.Y(rdata[0]), 
	.C(n86), 
	.B(n85), 
	.A(n84));
   NOR2X1 U57 (.Y(n86), 
	.B(n88), 
	.A(n87));
   OAI22X1 U58 (.Y(n88), 
	.D(n90), 
	.C(FE_OFN1212_n20), 
	.B(n89), 
	.A(FE_OFN1210_n18));
   NAND3X1 U59 (.Y(n20), 
	.C(n93), 
	.B(n92), 
	.A(n91));
   NAND3X1 U60 (.Y(n18), 
	.C(raddr[0]), 
	.B(n92), 
	.A(n91));
   OAI22X1 U61 (.Y(n87), 
	.D(n95), 
	.C(FE_OFN1213_n24), 
	.B(n94), 
	.A(FE_OFN1211_n22));
   NAND3X1 U62 (.Y(n24), 
	.C(raddr[1]), 
	.B(n92), 
	.A(n93));
   NAND3X1 U63 (.Y(n22), 
	.C(raddr[1]), 
	.B(n92), 
	.A(raddr[0]));
   INVX1 U64 (.Y(n92), 
	.A(raddr[2]));
   AOI22X1 U65 (.Y(n85), 
	.D(n27), 
	.C(\fiforeg[4][0] ), 
	.B(n26), 
	.A(\fiforeg[5][0] ));
   INVX4 U66 (.Y(n27), 
	.A(n96));
   NAND3X1 U67 (.Y(n96), 
	.C(raddr[2]), 
	.B(n91), 
	.A(n93));
   INVX4 U68 (.Y(n26), 
	.A(n97));
   NAND3X1 U69 (.Y(n97), 
	.C(raddr[2]), 
	.B(n91), 
	.A(raddr[0]));
   INVX1 U70 (.Y(n91), 
	.A(raddr[1]));
   AOI22X1 U71 (.Y(n84), 
	.D(n29), 
	.C(\fiforeg[6][0] ), 
	.B(n28), 
	.A(\fiforeg[7][0] ));
   INVX4 U72 (.Y(n29), 
	.A(n98));
   NAND3X1 U73 (.Y(n98), 
	.C(raddr[1]), 
	.B(n93), 
	.A(raddr[2]));
   INVX1 U74 (.Y(n93), 
	.A(raddr[0]));
   INVX4 U75 (.Y(n28), 
	.A(n99));
   NAND3X1 U76 (.Y(n99), 
	.C(raddr[1]), 
	.B(raddr[0]), 
	.A(raddr[2]));
   MUX2X1 U77 (.Y(n203), 
	.S(FE_OFN1220_n102), 
	.B(FE_OFN1165_n100), 
	.A(n101));
   INVX1 U78 (.Y(n101), 
	.A(\fiforeg[7][0] ));
   MUX2X1 U79 (.Y(n204), 
	.S(FE_OFN1216_n103), 
	.B(FE_OFN1165_n100), 
	.A(n90));
   MUX2X1 U80 (.Y(n205), 
	.S(FE_OFN1214_n104), 
	.B(FE_OFN1165_n100), 
	.A(n89));
   MUX2X1 U81 (.Y(n206), 
	.S(FE_OFN1217_n105), 
	.B(FE_OFN1165_n100), 
	.A(n95));
   MUX2X1 U82 (.Y(n207), 
	.S(FE_OFN1215_n106), 
	.B(FE_OFN1165_n100), 
	.A(n94));
   MUX2X1 U83 (.Y(n208), 
	.S(FE_OFN1218_n108), 
	.B(FE_OFN1165_n100), 
	.A(n107));
   INVX1 U84 (.Y(n107), 
	.A(\fiforeg[4][0] ));
   MUX2X1 U85 (.Y(n209), 
	.S(FE_OFN1221_n110), 
	.B(FE_OFN1165_n100), 
	.A(n109));
   INVX1 U86 (.Y(n109), 
	.A(\fiforeg[5][0] ));
   MUX2X1 U87 (.Y(n210), 
	.S(FE_OFN1219_n112), 
	.B(FE_OFN1165_n100), 
	.A(n111));
   INVX1 U88 (.Y(n111), 
	.A(\fiforeg[6][0] ));
   MUX2X1 U89 (.Y(n100), 
	.S(wenable), 
	.B(n113), 
	.A(wdata[0]));
   NAND3X1 U90 (.Y(n113), 
	.C(n116), 
	.B(n115), 
	.A(n114));
   NOR2X1 U91 (.Y(n116), 
	.B(n118), 
	.A(n117));
   OAI22X1 U92 (.Y(n118), 
	.D(FE_OFN1216_n103), 
	.C(n90), 
	.B(FE_OFN1214_n104), 
	.A(n89));
   INVX1 U93 (.Y(n90), 
	.A(\fiforeg[0][0] ));
   INVX1 U94 (.Y(n89), 
	.A(\fiforeg[1][0] ));
   OAI22X1 U95 (.Y(n117), 
	.D(FE_OFN1217_n105), 
	.C(n95), 
	.B(FE_OFN1215_n106), 
	.A(n94));
   INVX1 U96 (.Y(n95), 
	.A(\fiforeg[2][0] ));
   INVX1 U97 (.Y(n94), 
	.A(\fiforeg[3][0] ));
   AOI22X1 U98 (.Y(n115), 
	.D(\fiforeg[4][0] ), 
	.C(n120), 
	.B(\fiforeg[6][0] ), 
	.A(n119));
   AOI22X1 U99 (.Y(n114), 
	.D(\fiforeg[7][0] ), 
	.C(n122), 
	.B(\fiforeg[5][0] ), 
	.A(n121));
   MUX2X1 U100 (.Y(n211), 
	.S(FE_OFN1216_n103), 
	.B(FE_OFN1166_n123), 
	.A(n81));
   MUX2X1 U101 (.Y(n267), 
	.S(FE_OFN1214_n104), 
	.B(FE_OFN1166_n123), 
	.A(n80));
   MUX2X1 U102 (.Y(n268), 
	.S(FE_OFN1217_n105), 
	.B(FE_OFN1166_n123), 
	.A(n83));
   MUX2X1 U103 (.Y(n269), 
	.S(FE_OFN1215_n106), 
	.B(FE_OFN1166_n123), 
	.A(n82));
   MUX2X1 U104 (.Y(n270), 
	.S(FE_OFN1218_n108), 
	.B(FE_OFN1166_n123), 
	.A(n124));
   INVX1 U105 (.Y(n124), 
	.A(\fiforeg[4][1] ));
   MUX2X1 U106 (.Y(n271), 
	.S(FE_OFN1221_n110), 
	.B(FE_OFN1166_n123), 
	.A(n125));
   INVX1 U107 (.Y(n125), 
	.A(\fiforeg[5][1] ));
   MUX2X1 U108 (.Y(n272), 
	.S(FE_OFN1219_n112), 
	.B(FE_OFN1166_n123), 
	.A(n126));
   INVX1 U109 (.Y(n126), 
	.A(\fiforeg[6][1] ));
   MUX2X1 U110 (.Y(n273), 
	.S(FE_OFN1220_n102), 
	.B(FE_OFN1166_n123), 
	.A(n127));
   INVX1 U111 (.Y(n127), 
	.A(\fiforeg[7][1] ));
   MUX2X1 U112 (.Y(n123), 
	.S(wenable), 
	.B(n128), 
	.A(wdata[1]));
   NAND3X1 U113 (.Y(n128), 
	.C(n131), 
	.B(n130), 
	.A(n129));
   NOR2X1 U114 (.Y(n131), 
	.B(n133), 
	.A(n132));
   OAI22X1 U115 (.Y(n133), 
	.D(FE_OFN1216_n103), 
	.C(n81), 
	.B(FE_OFN1214_n104), 
	.A(n80));
   INVX1 U116 (.Y(n81), 
	.A(\fiforeg[0][1] ));
   INVX1 U117 (.Y(n80), 
	.A(\fiforeg[1][1] ));
   OAI22X1 U118 (.Y(n132), 
	.D(FE_OFN1217_n105), 
	.C(n83), 
	.B(FE_OFN1215_n106), 
	.A(n82));
   INVX1 U119 (.Y(n83), 
	.A(\fiforeg[2][1] ));
   INVX1 U120 (.Y(n82), 
	.A(\fiforeg[3][1] ));
   AOI22X1 U121 (.Y(n130), 
	.D(\fiforeg[4][1] ), 
	.C(n120), 
	.B(\fiforeg[6][1] ), 
	.A(n119));
   AOI22X1 U122 (.Y(n129), 
	.D(\fiforeg[7][1] ), 
	.C(n122), 
	.B(\fiforeg[5][1] ), 
	.A(n121));
   MUX2X1 U123 (.Y(n274), 
	.S(FE_OFN1216_n103), 
	.B(FE_OFN1167_n134), 
	.A(n72));
   MUX2X1 U124 (.Y(n275), 
	.S(FE_OFN1214_n104), 
	.B(FE_OFN1167_n134), 
	.A(n71));
   MUX2X1 U125 (.Y(n276), 
	.S(FE_OFN1217_n105), 
	.B(FE_OFN1167_n134), 
	.A(n74));
   MUX2X1 U126 (.Y(n277), 
	.S(FE_OFN1215_n106), 
	.B(FE_OFN1167_n134), 
	.A(n73));
   MUX2X1 U127 (.Y(n278), 
	.S(FE_OFN1218_n108), 
	.B(FE_OFN1167_n134), 
	.A(n135));
   INVX1 U128 (.Y(n135), 
	.A(\fiforeg[4][2] ));
   MUX2X1 U129 (.Y(n279), 
	.S(FE_OFN1221_n110), 
	.B(FE_OFN1167_n134), 
	.A(n136));
   INVX1 U130 (.Y(n136), 
	.A(\fiforeg[5][2] ));
   MUX2X1 U131 (.Y(n280), 
	.S(FE_OFN1219_n112), 
	.B(FE_OFN1167_n134), 
	.A(n137));
   INVX1 U132 (.Y(n137), 
	.A(\fiforeg[6][2] ));
   MUX2X1 U133 (.Y(n281), 
	.S(FE_OFN1220_n102), 
	.B(FE_OFN1167_n134), 
	.A(n138));
   INVX1 U134 (.Y(n138), 
	.A(\fiforeg[7][2] ));
   MUX2X1 U135 (.Y(n134), 
	.S(wenable), 
	.B(n139), 
	.A(wdata[2]));
   NAND3X1 U136 (.Y(n139), 
	.C(n142), 
	.B(n141), 
	.A(n140));
   NOR2X1 U137 (.Y(n142), 
	.B(n144), 
	.A(n143));
   OAI22X1 U138 (.Y(n144), 
	.D(FE_OFN1216_n103), 
	.C(n72), 
	.B(FE_OFN1214_n104), 
	.A(n71));
   INVX1 U139 (.Y(n72), 
	.A(\fiforeg[0][2] ));
   INVX1 U140 (.Y(n71), 
	.A(\fiforeg[1][2] ));
   OAI22X1 U141 (.Y(n143), 
	.D(FE_OFN1217_n105), 
	.C(n74), 
	.B(FE_OFN1215_n106), 
	.A(n73));
   INVX1 U142 (.Y(n74), 
	.A(\fiforeg[2][2] ));
   INVX1 U143 (.Y(n73), 
	.A(\fiforeg[3][2] ));
   AOI22X1 U144 (.Y(n141), 
	.D(\fiforeg[4][2] ), 
	.C(n120), 
	.B(\fiforeg[6][2] ), 
	.A(n119));
   AOI22X1 U145 (.Y(n140), 
	.D(\fiforeg[7][2] ), 
	.C(n122), 
	.B(\fiforeg[5][2] ), 
	.A(n121));
   MUX2X1 U146 (.Y(n282), 
	.S(FE_OFN1216_n103), 
	.B(FE_OFN1168_n145), 
	.A(n63));
   MUX2X1 U147 (.Y(n283), 
	.S(FE_OFN1214_n104), 
	.B(FE_OFN1168_n145), 
	.A(n62));
   MUX2X1 U148 (.Y(n284), 
	.S(FE_OFN1217_n105), 
	.B(FE_OFN1168_n145), 
	.A(n65));
   MUX2X1 U149 (.Y(n285), 
	.S(FE_OFN1215_n106), 
	.B(FE_OFN1168_n145), 
	.A(n64));
   MUX2X1 U150 (.Y(n286), 
	.S(FE_OFN1218_n108), 
	.B(FE_OFN1168_n145), 
	.A(n146));
   INVX1 U151 (.Y(n146), 
	.A(\fiforeg[4][3] ));
   MUX2X1 U152 (.Y(n287), 
	.S(FE_OFN1221_n110), 
	.B(FE_OFN1168_n145), 
	.A(n147));
   INVX1 U153 (.Y(n147), 
	.A(\fiforeg[5][3] ));
   MUX2X1 U154 (.Y(n288), 
	.S(FE_OFN1219_n112), 
	.B(FE_OFN1168_n145), 
	.A(n148));
   INVX1 U155 (.Y(n148), 
	.A(\fiforeg[6][3] ));
   MUX2X1 U156 (.Y(n289), 
	.S(FE_OFN1220_n102), 
	.B(FE_OFN1168_n145), 
	.A(n149));
   INVX1 U157 (.Y(n149), 
	.A(\fiforeg[7][3] ));
   MUX2X1 U158 (.Y(n145), 
	.S(wenable), 
	.B(n150), 
	.A(wdata[3]));
   NAND3X1 U159 (.Y(n150), 
	.C(n153), 
	.B(n152), 
	.A(n151));
   NOR2X1 U160 (.Y(n153), 
	.B(n155), 
	.A(n154));
   OAI22X1 U161 (.Y(n155), 
	.D(FE_OFN1216_n103), 
	.C(n63), 
	.B(FE_OFN1214_n104), 
	.A(n62));
   INVX1 U162 (.Y(n63), 
	.A(\fiforeg[0][3] ));
   INVX1 U163 (.Y(n62), 
	.A(\fiforeg[1][3] ));
   OAI22X1 U164 (.Y(n154), 
	.D(FE_OFN1217_n105), 
	.C(n65), 
	.B(FE_OFN1215_n106), 
	.A(n64));
   INVX1 U165 (.Y(n65), 
	.A(\fiforeg[2][3] ));
   INVX1 U166 (.Y(n64), 
	.A(\fiforeg[3][3] ));
   AOI22X1 U167 (.Y(n152), 
	.D(\fiforeg[4][3] ), 
	.C(n120), 
	.B(\fiforeg[6][3] ), 
	.A(n119));
   AOI22X1 U168 (.Y(n151), 
	.D(\fiforeg[7][3] ), 
	.C(n122), 
	.B(\fiforeg[5][3] ), 
	.A(n121));
   MUX2X1 U169 (.Y(n290), 
	.S(FE_OFN1216_n103), 
	.B(FE_OFN1169_n156), 
	.A(n54));
   MUX2X1 U170 (.Y(n291), 
	.S(FE_OFN1214_n104), 
	.B(FE_OFN1169_n156), 
	.A(n53));
   MUX2X1 U171 (.Y(n292), 
	.S(FE_OFN1217_n105), 
	.B(FE_OFN1169_n156), 
	.A(n56));
   MUX2X1 U172 (.Y(n293), 
	.S(FE_OFN1215_n106), 
	.B(FE_OFN1169_n156), 
	.A(n55));
   MUX2X1 U173 (.Y(n294), 
	.S(FE_OFN1218_n108), 
	.B(FE_OFN1169_n156), 
	.A(n157));
   INVX1 U174 (.Y(n157), 
	.A(\fiforeg[4][4] ));
   MUX2X1 U175 (.Y(n295), 
	.S(FE_OFN1221_n110), 
	.B(FE_OFN1169_n156), 
	.A(n158));
   INVX1 U176 (.Y(n158), 
	.A(\fiforeg[5][4] ));
   MUX2X1 U177 (.Y(n296), 
	.S(FE_OFN1219_n112), 
	.B(FE_OFN1169_n156), 
	.A(n159));
   INVX1 U178 (.Y(n159), 
	.A(\fiforeg[6][4] ));
   MUX2X1 U179 (.Y(n297), 
	.S(FE_OFN1220_n102), 
	.B(FE_OFN1169_n156), 
	.A(n160));
   INVX1 U180 (.Y(n160), 
	.A(\fiforeg[7][4] ));
   MUX2X1 U181 (.Y(n156), 
	.S(wenable), 
	.B(n161), 
	.A(wdata[4]));
   NAND3X1 U182 (.Y(n161), 
	.C(n164), 
	.B(n163), 
	.A(n162));
   NOR2X1 U183 (.Y(n164), 
	.B(n166), 
	.A(n165));
   OAI22X1 U184 (.Y(n166), 
	.D(FE_OFN1216_n103), 
	.C(n54), 
	.B(FE_OFN1214_n104), 
	.A(n53));
   INVX1 U185 (.Y(n54), 
	.A(\fiforeg[0][4] ));
   INVX1 U186 (.Y(n53), 
	.A(\fiforeg[1][4] ));
   OAI22X1 U187 (.Y(n165), 
	.D(FE_OFN1217_n105), 
	.C(n56), 
	.B(FE_OFN1215_n106), 
	.A(n55));
   INVX1 U188 (.Y(n56), 
	.A(\fiforeg[2][4] ));
   INVX1 U189 (.Y(n55), 
	.A(\fiforeg[3][4] ));
   AOI22X1 U190 (.Y(n163), 
	.D(\fiforeg[4][4] ), 
	.C(n120), 
	.B(\fiforeg[6][4] ), 
	.A(n119));
   AOI22X1 U191 (.Y(n162), 
	.D(\fiforeg[7][4] ), 
	.C(n122), 
	.B(\fiforeg[5][4] ), 
	.A(n121));
   MUX2X1 U192 (.Y(n298), 
	.S(FE_OFN1216_n103), 
	.B(FE_OFN1170_n167), 
	.A(n45));
   MUX2X1 U193 (.Y(n299), 
	.S(FE_OFN1214_n104), 
	.B(FE_OFN1170_n167), 
	.A(n44));
   MUX2X1 U194 (.Y(n300), 
	.S(FE_OFN1217_n105), 
	.B(FE_OFN1170_n167), 
	.A(n47));
   MUX2X1 U195 (.Y(n301), 
	.S(FE_OFN1215_n106), 
	.B(FE_OFN1170_n167), 
	.A(n46));
   MUX2X1 U196 (.Y(n302), 
	.S(n108), 
	.B(FE_OFN1170_n167), 
	.A(n168));
   INVX1 U197 (.Y(n168), 
	.A(\fiforeg[4][5] ));
   MUX2X1 U198 (.Y(n303), 
	.S(n110), 
	.B(FE_OFN1170_n167), 
	.A(n169));
   INVX1 U199 (.Y(n169), 
	.A(\fiforeg[5][5] ));
   MUX2X1 U200 (.Y(n304), 
	.S(FE_OFN1219_n112), 
	.B(FE_OFN1170_n167), 
	.A(n170));
   INVX1 U201 (.Y(n170), 
	.A(\fiforeg[6][5] ));
   MUX2X1 U202 (.Y(n305), 
	.S(FE_OFN1220_n102), 
	.B(FE_OFN1170_n167), 
	.A(n171));
   INVX1 U203 (.Y(n171), 
	.A(\fiforeg[7][5] ));
   MUX2X1 U204 (.Y(n167), 
	.S(wenable), 
	.B(n172), 
	.A(wdata[5]));
   NAND3X1 U205 (.Y(n172), 
	.C(n175), 
	.B(n174), 
	.A(n173));
   NOR2X1 U206 (.Y(n175), 
	.B(n177), 
	.A(n176));
   OAI22X1 U207 (.Y(n177), 
	.D(FE_OFN1216_n103), 
	.C(n45), 
	.B(FE_OFN1214_n104), 
	.A(n44));
   INVX1 U208 (.Y(n45), 
	.A(\fiforeg[0][5] ));
   INVX1 U209 (.Y(n44), 
	.A(\fiforeg[1][5] ));
   OAI22X1 U210 (.Y(n176), 
	.D(FE_OFN1217_n105), 
	.C(n47), 
	.B(FE_OFN1215_n106), 
	.A(n46));
   INVX1 U211 (.Y(n47), 
	.A(\fiforeg[2][5] ));
   INVX1 U212 (.Y(n46), 
	.A(\fiforeg[3][5] ));
   AOI22X1 U213 (.Y(n174), 
	.D(\fiforeg[4][5] ), 
	.C(n120), 
	.B(\fiforeg[6][5] ), 
	.A(n119));
   AOI22X1 U214 (.Y(n173), 
	.D(\fiforeg[7][5] ), 
	.C(n122), 
	.B(\fiforeg[5][5] ), 
	.A(n121));
   MUX2X1 U215 (.Y(n306), 
	.S(FE_OFN1216_n103), 
	.B(FE_OFN1171_n178), 
	.A(n36));
   MUX2X1 U216 (.Y(n307), 
	.S(FE_OFN1214_n104), 
	.B(FE_OFN1171_n178), 
	.A(n35));
   MUX2X1 U217 (.Y(n308), 
	.S(FE_OFN1217_n105), 
	.B(FE_OFN1171_n178), 
	.A(n38));
   MUX2X1 U218 (.Y(n309), 
	.S(FE_OFN1215_n106), 
	.B(FE_OFN1171_n178), 
	.A(n37));
   MUX2X1 U219 (.Y(n310), 
	.S(FE_OFN1218_n108), 
	.B(FE_OFN1171_n178), 
	.A(n179));
   INVX1 U220 (.Y(n179), 
	.A(\fiforeg[4][6] ));
   MUX2X1 U221 (.Y(n311), 
	.S(FE_OFN1221_n110), 
	.B(FE_OFN1171_n178), 
	.A(n180));
   INVX1 U222 (.Y(n180), 
	.A(\fiforeg[5][6] ));
   MUX2X1 U223 (.Y(n312), 
	.S(FE_OFN1219_n112), 
	.B(FE_OFN1171_n178), 
	.A(n181));
   INVX1 U224 (.Y(n181), 
	.A(\fiforeg[6][6] ));
   MUX2X1 U225 (.Y(n313), 
	.S(n102), 
	.B(FE_OFN1171_n178), 
	.A(n182));
   INVX1 U226 (.Y(n182), 
	.A(\fiforeg[7][6] ));
   MUX2X1 U227 (.Y(n178), 
	.S(wenable), 
	.B(n183), 
	.A(wdata[6]));
   NAND3X1 U228 (.Y(n183), 
	.C(n186), 
	.B(n185), 
	.A(n184));
   NOR2X1 U229 (.Y(n186), 
	.B(n188), 
	.A(n187));
   OAI22X1 U230 (.Y(n188), 
	.D(FE_OFN1216_n103), 
	.C(n36), 
	.B(FE_OFN1214_n104), 
	.A(n35));
   INVX1 U231 (.Y(n36), 
	.A(\fiforeg[0][6] ));
   INVX1 U232 (.Y(n35), 
	.A(\fiforeg[1][6] ));
   OAI22X1 U233 (.Y(n187), 
	.D(FE_OFN1217_n105), 
	.C(n38), 
	.B(FE_OFN1215_n106), 
	.A(n37));
   INVX1 U234 (.Y(n38), 
	.A(\fiforeg[2][6] ));
   INVX1 U235 (.Y(n37), 
	.A(\fiforeg[3][6] ));
   AOI22X1 U236 (.Y(n185), 
	.D(\fiforeg[4][6] ), 
	.C(n120), 
	.B(\fiforeg[6][6] ), 
	.A(n119));
   AOI22X1 U237 (.Y(n184), 
	.D(\fiforeg[7][6] ), 
	.C(n122), 
	.B(\fiforeg[5][6] ), 
	.A(n121));
   MUX2X1 U238 (.Y(n314), 
	.S(FE_OFN1216_n103), 
	.B(FE_OFN1172_n189), 
	.A(n21));
   MUX2X1 U239 (.Y(n315), 
	.S(FE_OFN1214_n104), 
	.B(FE_OFN1172_n189), 
	.A(n19));
   MUX2X1 U240 (.Y(n316), 
	.S(FE_OFN1217_n105), 
	.B(FE_OFN1172_n189), 
	.A(n25));
   MUX2X1 U241 (.Y(n317), 
	.S(FE_OFN1215_n106), 
	.B(FE_OFN1172_n189), 
	.A(n23));
   MUX2X1 U242 (.Y(n318), 
	.S(n108), 
	.B(FE_OFN1172_n189), 
	.A(n190));
   INVX1 U243 (.Y(n190), 
	.A(\fiforeg[4][7] ));
   MUX2X1 U244 (.Y(n319), 
	.S(n110), 
	.B(FE_OFN1172_n189), 
	.A(n191));
   INVX1 U245 (.Y(n191), 
	.A(\fiforeg[5][7] ));
   MUX2X1 U246 (.Y(n320), 
	.S(n112), 
	.B(FE_OFN1172_n189), 
	.A(n192));
   INVX1 U247 (.Y(n192), 
	.A(\fiforeg[6][7] ));
   MUX2X1 U248 (.Y(n321), 
	.S(n102), 
	.B(FE_OFN1172_n189), 
	.A(n193));
   INVX1 U249 (.Y(n193), 
	.A(\fiforeg[7][7] ));
   MUX2X1 U250 (.Y(n189), 
	.S(wenable), 
	.B(n194), 
	.A(wdata[7]));
   NAND3X1 U251 (.Y(n194), 
	.C(n197), 
	.B(n196), 
	.A(n195));
   NOR2X1 U252 (.Y(n197), 
	.B(n199), 
	.A(n198));
   OAI22X1 U253 (.Y(n199), 
	.D(FE_OFN1216_n103), 
	.C(n21), 
	.B(FE_OFN1214_n104), 
	.A(n19));
   NAND3X1 U254 (.Y(n103), 
	.C(n202), 
	.B(n201), 
	.A(n200));
   INVX1 U255 (.Y(n21), 
	.A(\fiforeg[0][7] ));
   NAND3X1 U256 (.Y(n104), 
	.C(waddr[0]), 
	.B(n201), 
	.A(n200));
   INVX1 U257 (.Y(n19), 
	.A(\fiforeg[1][7] ));
   OAI22X1 U258 (.Y(n198), 
	.D(FE_OFN1217_n105), 
	.C(n25), 
	.B(FE_OFN1215_n106), 
	.A(n23));
   NAND3X1 U259 (.Y(n105), 
	.C(waddr[1]), 
	.B(n201), 
	.A(n202));
   INVX1 U260 (.Y(n25), 
	.A(\fiforeg[2][7] ));
   NAND3X1 U261 (.Y(n106), 
	.C(waddr[1]), 
	.B(n201), 
	.A(waddr[0]));
   INVX1 U262 (.Y(n201), 
	.A(waddr[2]));
   INVX1 U263 (.Y(n23), 
	.A(\fiforeg[3][7] ));
   AOI22X1 U264 (.Y(n196), 
	.D(\fiforeg[4][7] ), 
	.C(n120), 
	.B(\fiforeg[6][7] ), 
	.A(n119));
   INVX2 U265 (.Y(n120), 
	.A(FE_OFN1218_n108));
   NAND3X1 U266 (.Y(n108), 
	.C(waddr[2]), 
	.B(n200), 
	.A(n202));
   INVX2 U267 (.Y(n119), 
	.A(FE_OFN1219_n112));
   NAND3X1 U268 (.Y(n112), 
	.C(waddr[2]), 
	.B(n202), 
	.A(waddr[1]));
   INVX1 U269 (.Y(n202), 
	.A(waddr[0]));
   AOI22X1 U270 (.Y(n195), 
	.D(\fiforeg[7][7] ), 
	.C(n122), 
	.B(\fiforeg[5][7] ), 
	.A(n121));
   INVX2 U271 (.Y(n122), 
	.A(FE_OFN1220_n102));
   NAND3X1 U272 (.Y(n102), 
	.C(waddr[2]), 
	.B(waddr[0]), 
	.A(waddr[1]));
   INVX2 U273 (.Y(n121), 
	.A(FE_OFN1221_n110));
   NAND3X1 U274 (.Y(n110), 
	.C(waddr[2]), 
	.B(n200), 
	.A(waddr[0]));
   INVX1 U275 (.Y(n200), 
	.A(waddr[1]));
endmodule

module write_ptr_1 (
	wclk, 
	rst_n, 
	wenable, 
	wptr, 
	wptr_nxt, 
	FE_OFN3_n3, 
	FE_OFN241_n3, 
	FE_OFN274_n2, 
	FE_OFN782_n3, 
	FE_OFN825_n2);
   input wclk;
   input rst_n;
   input wenable;
   output [3:0] wptr;
   output [3:0] wptr_nxt;
   input FE_OFN3_n3;
   input FE_OFN241_n3;
   input FE_OFN274_n2;
   input FE_OFN782_n3;
   input FE_OFN825_n2;

   // Internal wires
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire [2:0] binary_nxt;
   wire [3:0] binary_r;

   DFFSR \binary_r_reg[0]  (.S(1'b1), 
	.R(FE_OFN782_n3), 
	.Q(binary_r[0]), 
	.D(binary_nxt[0]), 
	.CLK(FE_OFN274_n2));
   DFFSR \binary_r_reg[1]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[1]), 
	.D(binary_nxt[1]), 
	.CLK(FE_OFN825_n2));
   DFFSR \binary_r_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[2]), 
	.D(binary_nxt[2]), 
	.CLK(FE_OFN825_n2));
   DFFSR \binary_r_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[3]), 
	.D(wptr_nxt[3]), 
	.CLK(FE_OFN825_n2));
   DFFSR \gray_r_reg[3]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(wptr[3]), 
	.D(wptr_nxt[3]), 
	.CLK(FE_OFN825_n2));
   DFFSR \gray_r_reg[2]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(wptr[2]), 
	.D(wptr_nxt[2]), 
	.CLK(FE_OFN825_n2));
   DFFSR \gray_r_reg[1]  (.S(1'b1), 
	.R(FE_OFN241_n3), 
	.Q(wptr[1]), 
	.D(wptr_nxt[1]), 
	.CLK(FE_OFN825_n2));
   DFFSR \gray_r_reg[0]  (.S(1'b1), 
	.R(FE_OFN782_n3), 
	.Q(wptr[0]), 
	.D(wptr_nxt[0]), 
	.CLK(wclk));
   XOR2X1 U11 (.Y(wptr_nxt[2]), 
	.B(binary_nxt[2]), 
	.A(wptr_nxt[3]));
   XNOR2X1 U12 (.Y(wptr_nxt[3]), 
	.B(binary_r[3]), 
	.A(n9));
   NAND2X1 U13 (.Y(n9), 
	.B(n10), 
	.A(binary_r[2]));
   XOR2X1 U14 (.Y(wptr_nxt[1]), 
	.B(binary_nxt[1]), 
	.A(binary_nxt[2]));
   XOR2X1 U15 (.Y(wptr_nxt[0]), 
	.B(binary_nxt[0]), 
	.A(binary_nxt[1]));
   XOR2X1 U16 (.Y(binary_nxt[2]), 
	.B(binary_r[2]), 
	.A(n10));
   INVX1 U17 (.Y(n10), 
	.A(n11));
   NAND3X1 U18 (.Y(n11), 
	.C(wenable), 
	.B(binary_r[0]), 
	.A(binary_r[1]));
   XNOR2X1 U19 (.Y(binary_nxt[1]), 
	.B(binary_r[1]), 
	.A(n12));
   NAND2X1 U20 (.Y(n12), 
	.B(binary_r[0]), 
	.A(wenable));
   XOR2X1 U21 (.Y(binary_nxt[0]), 
	.B(wenable), 
	.A(binary_r[0]));
endmodule

module write_fifo_ctrl_1 (
	wclk, 
	rst_n, 
	wenable, 
	rptr, 
	wenable_fifo, 
	wptr, 
	waddr, 
	full_flag, 
	FE_OFN3_n3, 
	FE_OFN31_n2, 
	FE_OFN241_n3, 
	FE_OFN274_n2, 
	FE_OFN782_n3, 
	FE_OFN825_n2);
   input wclk;
   input rst_n;
   input wenable;
   input [3:0] rptr;
   output wenable_fifo;
   output [3:0] wptr;
   output [2:0] waddr;
   output full_flag;
   input FE_OFN3_n3;
   input FE_OFN31_n2;
   input FE_OFN241_n3;
   input FE_OFN274_n2;
   input FE_OFN782_n3;
   input FE_OFN825_n2;

   // Internal wires
   wire FE_OFN1388_FULL;
   wire \gray_wptr[2] ;
   wire N5;
   wire n1;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire [3:0] wptr_nxt;
   wire [3:0] wrptr_r2;
   wire [3:0] wrptr_r1;

   BUFX4 FE_OFC1388_FULL (.Y(full_flag), 
	.A(FE_OFN1388_FULL));
   DFFSR \wrptr_r1_reg[3]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(wrptr_r1[3]), 
	.D(rptr[3]), 
	.CLK(wclk));
   DFFSR \wrptr_r1_reg[2]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(wrptr_r1[2]), 
	.D(rptr[2]), 
	.CLK(wclk));
   DFFSR \wrptr_r1_reg[1]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(wrptr_r1[1]), 
	.D(rptr[1]), 
	.CLK(wclk));
   DFFSR \wrptr_r1_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r1[0]), 
	.D(rptr[0]), 
	.CLK(wclk));
   DFFSR \wrptr_r2_reg[3]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(wrptr_r2[3]), 
	.D(wrptr_r1[3]), 
	.CLK(wclk));
   DFFSR \wrptr_r2_reg[2]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(wrptr_r2[2]), 
	.D(wrptr_r1[2]), 
	.CLK(wclk));
   DFFSR \wrptr_r2_reg[1]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(wrptr_r2[1]), 
	.D(wrptr_r1[1]), 
	.CLK(wclk));
   DFFSR \wrptr_r2_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r2[0]), 
	.D(wrptr_r1[0]), 
	.CLK(wclk));
   DFFSR full_flag_r_reg (.S(1'b1), 
	.R(FE_OFN782_n3), 
	.Q(FE_OFN1388_FULL), 
	.D(N5), 
	.CLK(FE_OFN31_n2));
   DFFSR \waddr_reg[2]  (.S(1'b1), 
	.R(FE_OFN782_n3), 
	.Q(waddr[2]), 
	.D(\gray_wptr[2] ), 
	.CLK(FE_OFN274_n2));
   DFFSR \waddr_reg[1]  (.S(1'b1), 
	.R(FE_OFN782_n3), 
	.Q(waddr[1]), 
	.D(wptr_nxt[1]), 
	.CLK(FE_OFN31_n2));
   DFFSR \waddr_reg[0]  (.S(1'b1), 
	.R(FE_OFN782_n3), 
	.Q(waddr[0]), 
	.D(wptr_nxt[0]), 
	.CLK(FE_OFN31_n2));
   write_ptr_1 WPU1 (.wclk(FE_OFN31_n2), 
	.rst_n(rst_n), 
	.wenable(wenable_fifo), 
	.wptr(wptr), 
	.wptr_nxt(wptr_nxt), 
	.FE_OFN3_n3(FE_OFN3_n3), 
	.FE_OFN241_n3(FE_OFN241_n3), 
	.FE_OFN274_n2(FE_OFN274_n2), 
	.FE_OFN782_n3(FE_OFN782_n3), 
	.FE_OFN825_n2(FE_OFN825_n2));
   OR2X2 U15 (.Y(n1), 
	.B(n15), 
	.A(full_flag));
   INVX4 U16 (.Y(wenable_fifo), 
	.A(n1));
   INVX1 U17 (.Y(n15), 
	.A(wenable));
   NOR2X1 U18 (.Y(N5), 
	.B(n17), 
	.A(n16));
   NAND2X1 U19 (.Y(n17), 
	.B(n19), 
	.A(n18));
   XOR2X1 U20 (.Y(n19), 
	.B(\gray_wptr[2] ), 
	.A(n20));
   XOR2X1 U21 (.Y(\gray_wptr[2] ), 
	.B(wptr_nxt[2]), 
	.A(wptr_nxt[3]));
   XNOR2X1 U22 (.Y(n20), 
	.B(wrptr_r2[2]), 
	.A(wrptr_r2[3]));
   XNOR2X1 U23 (.Y(n18), 
	.B(wptr_nxt[1]), 
	.A(wrptr_r2[1]));
   NAND2X1 U24 (.Y(n16), 
	.B(n22), 
	.A(n21));
   XOR2X1 U25 (.Y(n22), 
	.B(wptr_nxt[3]), 
	.A(wrptr_r2[3]));
   XNOR2X1 U26 (.Y(n21), 
	.B(wptr_nxt[0]), 
	.A(wrptr_r2[0]));
endmodule

module read_ptr_1 (
	rclk, 
	rst_n, 
	renable, 
	rptr, 
	rptr_nxt, 
	FE_OFN3_n3);
   input rclk;
   input rst_n;
   input renable;
   output [3:0] rptr;
   output [3:0] rptr_nxt;
   input FE_OFN3_n3;

   // Internal wires
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire [2:0] binary_nxt;
   wire [3:0] binary_r;

   DFFSR \binary_r_reg[0]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(binary_r[0]), 
	.D(binary_nxt[0]), 
	.CLK(rclk));
   DFFSR \binary_r_reg[1]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(binary_r[1]), 
	.D(binary_nxt[1]), 
	.CLK(rclk));
   DFFSR \binary_r_reg[2]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(binary_r[2]), 
	.D(binary_nxt[2]), 
	.CLK(rclk));
   DFFSR \binary_r_reg[3]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(binary_r[3]), 
	.D(rptr_nxt[3]), 
	.CLK(rclk));
   DFFSR \gray_r_reg[3]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(rptr[3]), 
	.D(rptr_nxt[3]), 
	.CLK(rclk));
   DFFSR \gray_r_reg[2]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(rptr[2]), 
	.D(rptr_nxt[2]), 
	.CLK(rclk));
   DFFSR \gray_r_reg[1]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(rptr[1]), 
	.D(rptr_nxt[1]), 
	.CLK(rclk));
   DFFSR \gray_r_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rptr[0]), 
	.D(rptr_nxt[0]), 
	.CLK(rclk));
   XOR2X1 U11 (.Y(rptr_nxt[2]), 
	.B(binary_nxt[2]), 
	.A(rptr_nxt[3]));
   XNOR2X1 U12 (.Y(rptr_nxt[3]), 
	.B(binary_r[3]), 
	.A(n9));
   NAND2X1 U13 (.Y(n9), 
	.B(n10), 
	.A(binary_r[2]));
   XOR2X1 U14 (.Y(rptr_nxt[1]), 
	.B(binary_nxt[1]), 
	.A(binary_nxt[2]));
   XOR2X1 U15 (.Y(rptr_nxt[0]), 
	.B(binary_nxt[0]), 
	.A(binary_nxt[1]));
   XOR2X1 U16 (.Y(binary_nxt[2]), 
	.B(binary_r[2]), 
	.A(n10));
   INVX1 U17 (.Y(n10), 
	.A(n11));
   NAND3X1 U18 (.Y(n11), 
	.C(renable), 
	.B(binary_r[0]), 
	.A(binary_r[1]));
   XNOR2X1 U19 (.Y(binary_nxt[1]), 
	.B(binary_r[1]), 
	.A(n12));
   NAND2X1 U20 (.Y(n12), 
	.B(binary_r[0]), 
	.A(renable));
   XOR2X1 U21 (.Y(binary_nxt[0]), 
	.B(renable), 
	.A(binary_r[0]));
endmodule

module read_fifo_ctrl_1 (
	rclk, 
	rst_n, 
	renable, 
	wptr, 
	rptr, 
	raddr, 
	empty_flag, 
	FE_OFN3_n3, 
	FE_OFN241_n3, 
	FE_OFN493_n3, 
	FE_OFN782_n3);
   input rclk;
   input rst_n;
   input renable;
   input [3:0] wptr;
   output [3:0] rptr;
   output [2:0] raddr;
   output empty_flag;
   input FE_OFN3_n3;
   input FE_OFN241_n3;
   input FE_OFN493_n3;
   input FE_OFN782_n3;

   // Internal wires
   wire renable_p2;
   wire \gray_rptr[2] ;
   wire N3;
   wire n1;
   wire n2;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire [3:0] rptr_nxt;
   wire [3:0] rwptr_r2;
   wire [3:0] rwptr_r1;

   DFFSR \rwptr_r1_reg[3]  (.S(1'b1), 
	.R(FE_OFN241_n3), 
	.Q(rwptr_r1[3]), 
	.D(wptr[3]), 
	.CLK(rclk));
   DFFSR \rwptr_r1_reg[2]  (.S(1'b1), 
	.R(FE_OFN241_n3), 
	.Q(rwptr_r1[2]), 
	.D(wptr[2]), 
	.CLK(rclk));
   DFFSR \rwptr_r1_reg[1]  (.S(1'b1), 
	.R(FE_OFN241_n3), 
	.Q(rwptr_r1[1]), 
	.D(wptr[1]), 
	.CLK(rclk));
   DFFSR \rwptr_r1_reg[0]  (.S(1'b1), 
	.R(FE_OFN782_n3), 
	.Q(rwptr_r1[0]), 
	.D(wptr[0]), 
	.CLK(rclk));
   DFFSR \rwptr_r2_reg[3]  (.S(1'b1), 
	.R(FE_OFN241_n3), 
	.Q(rwptr_r2[3]), 
	.D(rwptr_r1[3]), 
	.CLK(rclk));
   DFFSR \rwptr_r2_reg[2]  (.S(1'b1), 
	.R(FE_OFN241_n3), 
	.Q(rwptr_r2[2]), 
	.D(rwptr_r1[2]), 
	.CLK(rclk));
   DFFSR \rwptr_r2_reg[1]  (.S(1'b1), 
	.R(FE_OFN241_n3), 
	.Q(rwptr_r2[1]), 
	.D(rwptr_r1[1]), 
	.CLK(rclk));
   DFFSR \rwptr_r2_reg[0]  (.S(1'b1), 
	.R(FE_OFN493_n3), 
	.Q(rwptr_r2[0]), 
	.D(rwptr_r1[0]), 
	.CLK(rclk));
   DFFSR empty_flag_r_reg (.S(FE_OFN241_n3), 
	.R(1'b1), 
	.Q(empty_flag), 
	.D(N3), 
	.CLK(rclk));
   DFFSR \raddr_reg[2]  (.S(1'b1), 
	.R(FE_OFN241_n3), 
	.Q(raddr[2]), 
	.D(\gray_rptr[2] ), 
	.CLK(rclk));
   DFFSR \raddr_reg[1]  (.S(1'b1), 
	.R(FE_OFN241_n3), 
	.Q(raddr[1]), 
	.D(rptr_nxt[1]), 
	.CLK(rclk));
   DFFSR \raddr_reg[0]  (.S(1'b1), 
	.R(FE_OFN3_n3), 
	.Q(raddr[0]), 
	.D(rptr_nxt[0]), 
	.CLK(rclk));
   read_ptr_1 RPU1 (.rclk(rclk), 
	.rst_n(rst_n), 
	.renable(renable_p2), 
	.rptr(rptr), 
	.rptr_nxt(rptr_nxt), 
	.FE_OFN3_n3(FE_OFN241_n3));
   NOR2X1 U15 (.Y(renable_p2), 
	.B(n1), 
	.A(empty_flag));
   INVX4 U16 (.Y(n1), 
	.A(renable));
   NOR2X1 U17 (.Y(N3), 
	.B(n15), 
	.A(n2));
   NAND2X1 U18 (.Y(n15), 
	.B(n17), 
	.A(n16));
   XOR2X1 U19 (.Y(n17), 
	.B(\gray_rptr[2] ), 
	.A(n18));
   XOR2X1 U20 (.Y(\gray_rptr[2] ), 
	.B(rptr_nxt[2]), 
	.A(rptr_nxt[3]));
   XNOR2X1 U21 (.Y(n18), 
	.B(rwptr_r2[2]), 
	.A(rwptr_r2[3]));
   XNOR2X1 U22 (.Y(n16), 
	.B(rptr_nxt[1]), 
	.A(rwptr_r2[1]));
   NAND2X1 U23 (.Y(n2), 
	.B(n20), 
	.A(n19));
   XNOR2X1 U24 (.Y(n20), 
	.B(rptr_nxt[0]), 
	.A(rwptr_r2[0]));
   XNOR2X1 U25 (.Y(n19), 
	.B(rwptr_r2[3]), 
	.A(rptr_nxt[3]));
endmodule

module fifo_1 (
	rclk, 
	wclk, 
	rst_n, 
	renable, 
	wenable, 
	wdata, 
	rdata, 
	empty, 
	full, 
	FE_OFN29_n2, 
	FE_OFN121_n2, 
	FE_OFN240_n3, 
	FE_OFN271_n2, 
	FE_OFN272_n2, 
	FE_OFN274_n2, 
	FE_OFN493_n3, 
	FE_OFN528_n2, 
	FE_OFN530_n2, 
	FE_OFN782_n3, 
	FE_OFN820_n2, 
	FE_OFN822_n2, 
	FE_OFN823_n2, 
	FE_OFN1185_n2, 
	FE_OFN1186_n2, 
	FE_OFN1188_n2, 
	FE_OFN1189_n2);
   input rclk;
   input wclk;
   input rst_n;
   input renable;
   input wenable;
   input [7:0] wdata;
   output [7:0] rdata;
   output empty;
   output full;
   input FE_OFN29_n2;
   input FE_OFN121_n2;
   input FE_OFN240_n3;
   input FE_OFN271_n2;
   input FE_OFN272_n2;
   input FE_OFN274_n2;
   input FE_OFN493_n3;
   input FE_OFN528_n2;
   input FE_OFN530_n2;
   input FE_OFN782_n3;
   input FE_OFN820_n2;
   input FE_OFN822_n2;
   input FE_OFN823_n2;
   input FE_OFN1185_n2;
   input FE_OFN1186_n2;
   input FE_OFN1188_n2;
   input FE_OFN1189_n2;

   // Internal wires
   wire FE_OFN1468_waddr_2_;
   wire FE_OFN1467_waddr_1_;
   wire FE_OFN1466_waddr_0_;
   wire FE_OFN1386_raddr_2_;
   wire FE_OFN1385_raddr_1_;
   wire FE_OFN1384_raddr_0_;
   wire wenable_fifo;
   wire [2:0] waddr;
   wire [2:0] raddr;
   wire [3:0] rptr;
   wire [3:0] wptr;

   BUFX2 FE_OFC1468_waddr_2_ (.Y(FE_OFN1468_waddr_2_), 
	.A(waddr[2]));
   BUFX2 FE_OFC1467_waddr_1_ (.Y(FE_OFN1467_waddr_1_), 
	.A(waddr[1]));
   BUFX2 FE_OFC1466_waddr_0_ (.Y(FE_OFN1466_waddr_0_), 
	.A(waddr[0]));
   BUFX2 FE_OFC1386_raddr_2_ (.Y(FE_OFN1386_raddr_2_), 
	.A(raddr[2]));
   BUFX2 FE_OFC1385_raddr_1_ (.Y(FE_OFN1385_raddr_1_), 
	.A(raddr[1]));
   BUFX2 FE_OFC1384_raddr_0_ (.Y(FE_OFN1384_raddr_0_), 
	.A(raddr[0]));
   fiforam_1 UFIFORAM (.wclk(wclk), 
	.wenable(wenable_fifo), 
	.waddr({ FE_OFN1468_waddr_2_,
		FE_OFN1467_waddr_1_,
		FE_OFN1466_waddr_0_ }), 
	.raddr({ FE_OFN1386_raddr_2_,
		FE_OFN1385_raddr_1_,
		FE_OFN1384_raddr_0_ }), 
	.wdata(wdata), 
	.rdata(rdata), 
	.FE_OFN29_n2(FE_OFN29_n2), 
	.FE_OFN30_n2(FE_OFN271_n2), 
	.FE_OFN31_n2(FE_OFN272_n2), 
	.FE_OFN122_n2(FE_OFN528_n2), 
	.FE_OFN272_n2(FE_OFN272_n2), 
	.FE_OFN274_n2(FE_OFN274_n2), 
	.FE_OFN528_n2(FE_OFN1186_n2), 
	.FE_OFN530_n2(FE_OFN530_n2), 
	.FE_OFN822_n2(FE_OFN822_n2), 
	.FE_OFN823_n2(FE_OFN823_n2), 
	.FE_OFN1185_n2(FE_OFN1185_n2), 
	.FE_OFN1186_n2(FE_OFN1186_n2), 
	.FE_OFN1188_n2(FE_OFN1188_n2), 
	.FE_OFN1189_n2(FE_OFN1189_n2));
   write_fifo_ctrl_1 UWFC (.wclk(FE_OFN820_n2), 
	.rst_n(FE_OFN493_n3), 
	.wenable(wenable), 
	.rptr(rptr), 
	.wenable_fifo(wenable_fifo), 
	.wptr(wptr), 
	.waddr(waddr), 
	.full_flag(full), 
	.FE_OFN3_n3(rst_n), 
	.FE_OFN31_n2(FE_OFN121_n2), 
	.FE_OFN241_n3(rst_n), 
	.FE_OFN274_n2(FE_OFN121_n2), 
	.FE_OFN782_n3(FE_OFN782_n3), 
	.FE_OFN825_n2(FE_OFN820_n2));
   read_fifo_ctrl_1 URFC (.rclk(rclk), 
	.rst_n(FE_OFN240_n3), 
	.renable(renable), 
	.wptr(wptr), 
	.rptr(rptr), 
	.raddr(raddr), 
	.empty_flag(empty), 
	.FE_OFN3_n3(FE_OFN493_n3), 
	.FE_OFN241_n3(rst_n), 
	.FE_OFN493_n3(FE_OFN493_n3), 
	.FE_OFN782_n3(FE_OFN782_n3));
endmodule

module RCV_FIFO_1 (
	CLK, 
	D_CLK, 
	RST_N, 
	R_ENABLE, 
	W_ENABLE, 
	WDATA, 
	R_DATA, 
	EMPTY, 
	FULL, 
	FE_OFN29_n2, 
	FE_OFN121_n2, 
	FE_OFN240_n3, 
	FE_OFN271_n2, 
	FE_OFN272_n2, 
	FE_OFN274_n2, 
	FE_OFN493_n3, 
	FE_OFN528_n2, 
	FE_OFN530_n2, 
	FE_OFN782_n3, 
	FE_OFN820_n2, 
	FE_OFN822_n2, 
	FE_OFN823_n2, 
	FE_OFN1185_n2, 
	FE_OFN1186_n2, 
	FE_OFN1188_n2, 
	FE_OFN1189_n2);
   input CLK;
   input D_CLK;
   input RST_N;
   input R_ENABLE;
   input W_ENABLE;
   input [7:0] WDATA;
   output [7:0] R_DATA;
   output EMPTY;
   output FULL;
   input FE_OFN29_n2;
   input FE_OFN121_n2;
   input FE_OFN240_n3;
   input FE_OFN271_n2;
   input FE_OFN272_n2;
   input FE_OFN274_n2;
   input FE_OFN493_n3;
   input FE_OFN528_n2;
   input FE_OFN530_n2;
   input FE_OFN782_n3;
   input FE_OFN820_n2;
   input FE_OFN822_n2;
   input FE_OFN823_n2;
   input FE_OFN1185_n2;
   input FE_OFN1186_n2;
   input FE_OFN1188_n2;
   input FE_OFN1189_n2;

   fifo_1 MAPPING (.rclk(CLK), 
	.wclk(D_CLK), 
	.rst_n(RST_N), 
	.renable(R_ENABLE), 
	.wenable(W_ENABLE), 
	.wdata(WDATA), 
	.rdata(R_DATA), 
	.empty(EMPTY), 
	.full(FULL), 
	.FE_OFN29_n2(FE_OFN29_n2), 
	.FE_OFN121_n2(FE_OFN121_n2), 
	.FE_OFN240_n3(FE_OFN240_n3), 
	.FE_OFN271_n2(FE_OFN271_n2), 
	.FE_OFN272_n2(FE_OFN272_n2), 
	.FE_OFN274_n2(FE_OFN274_n2), 
	.FE_OFN493_n3(FE_OFN493_n3), 
	.FE_OFN528_n2(FE_OFN528_n2), 
	.FE_OFN530_n2(FE_OFN530_n2), 
	.FE_OFN782_n3(FE_OFN782_n3), 
	.FE_OFN820_n2(FE_OFN820_n2), 
	.FE_OFN822_n2(FE_OFN822_n2), 
	.FE_OFN823_n2(FE_OFN823_n2), 
	.FE_OFN1185_n2(FE_OFN1185_n2), 
	.FE_OFN1186_n2(FE_OFN1186_n2), 
	.FE_OFN1188_n2(FE_OFN1188_n2), 
	.FE_OFN1189_n2(FE_OFN1189_n2));
endmodule

module fiforam_0 (
	wclk, 
	wenable, 
	waddr, 
	raddr, 
	wdata, 
	rdata, 
	FE_OFN28_n2, 
	FE_OFN29_n2, 
	FE_OFN26_n2, 
	FE_OFN270_n2, 
	FE_OFN271_n2, 
	FE_OFN273_n2, 
	FE_OFN526_n2, 
	FE_OFN529_n2, 
	FE_OFN816_n2, 
	FE_OFN817_n2, 
	FE_OFN819_n2, 
	FE_OFN820_n2, 
	FE_OFN821_n2, 
	FE_OFN822_n2, 
	FE_OFN824_n2, 
	FE_OFN823_n2, 
	FE_OFN1183_n2, 
	FE_OFN1184_n2, 
	FE_OFN1185_n2, 
	FE_OFN1187_n2);
   input wclk;
   input wenable;
   input [2:0] waddr;
   input [2:0] raddr;
   input [7:0] wdata;
   output [7:0] rdata;
   input FE_OFN28_n2;
   input FE_OFN29_n2;
   input FE_OFN26_n2;
   input FE_OFN270_n2;
   input FE_OFN271_n2;
   input FE_OFN273_n2;
   input FE_OFN526_n2;
   input FE_OFN529_n2;
   input FE_OFN816_n2;
   input FE_OFN817_n2;
   input FE_OFN819_n2;
   input FE_OFN820_n2;
   input FE_OFN821_n2;
   input FE_OFN822_n2;
   input FE_OFN824_n2;
   input FE_OFN823_n2;
   input FE_OFN1183_n2;
   input FE_OFN1184_n2;
   input FE_OFN1185_n2;
   input FE_OFN1187_n2;

   // Internal wires
   wire FE_OFN1209_n110;
   wire FE_OFN1208_n102;
   wire FE_OFN1207_n112;
   wire FE_OFN1206_n108;
   wire FE_OFN1205_n105;
   wire FE_OFN1204_n103;
   wire FE_OFN1203_n106;
   wire FE_OFN1202_n104;
   wire FE_OFN1201_n24;
   wire FE_OFN1200_n20;
   wire FE_OFN1199_n22;
   wire FE_OFN1198_n18;
   wire FE_OFN1197_n189;
   wire FE_OFN1196_n178;
   wire FE_OFN1195_n167;
   wire FE_OFN1194_n156;
   wire FE_OFN1193_n145;
   wire FE_OFN1192_n134;
   wire FE_OFN1191_n123;
   wire FE_OFN1190_n100;
   wire \fiforeg[0][7] ;
   wire \fiforeg[0][6] ;
   wire \fiforeg[0][5] ;
   wire \fiforeg[0][4] ;
   wire \fiforeg[0][3] ;
   wire \fiforeg[0][2] ;
   wire \fiforeg[0][1] ;
   wire \fiforeg[0][0] ;
   wire \fiforeg[1][7] ;
   wire \fiforeg[1][6] ;
   wire \fiforeg[1][5] ;
   wire \fiforeg[1][4] ;
   wire \fiforeg[1][3] ;
   wire \fiforeg[1][2] ;
   wire \fiforeg[1][1] ;
   wire \fiforeg[1][0] ;
   wire \fiforeg[2][7] ;
   wire \fiforeg[2][6] ;
   wire \fiforeg[2][5] ;
   wire \fiforeg[2][4] ;
   wire \fiforeg[2][3] ;
   wire \fiforeg[2][2] ;
   wire \fiforeg[2][1] ;
   wire \fiforeg[2][0] ;
   wire \fiforeg[3][7] ;
   wire \fiforeg[3][6] ;
   wire \fiforeg[3][5] ;
   wire \fiforeg[3][4] ;
   wire \fiforeg[3][3] ;
   wire \fiforeg[3][2] ;
   wire \fiforeg[3][1] ;
   wire \fiforeg[3][0] ;
   wire \fiforeg[4][7] ;
   wire \fiforeg[4][6] ;
   wire \fiforeg[4][5] ;
   wire \fiforeg[4][4] ;
   wire \fiforeg[4][3] ;
   wire \fiforeg[4][2] ;
   wire \fiforeg[4][1] ;
   wire \fiforeg[4][0] ;
   wire \fiforeg[5][7] ;
   wire \fiforeg[5][6] ;
   wire \fiforeg[5][5] ;
   wire \fiforeg[5][4] ;
   wire \fiforeg[5][3] ;
   wire \fiforeg[5][2] ;
   wire \fiforeg[5][1] ;
   wire \fiforeg[5][0] ;
   wire \fiforeg[6][7] ;
   wire \fiforeg[6][6] ;
   wire \fiforeg[6][5] ;
   wire \fiforeg[6][4] ;
   wire \fiforeg[6][3] ;
   wire \fiforeg[6][2] ;
   wire \fiforeg[6][1] ;
   wire \fiforeg[6][0] ;
   wire \fiforeg[7][7] ;
   wire \fiforeg[7][6] ;
   wire \fiforeg[7][5] ;
   wire \fiforeg[7][4] ;
   wire \fiforeg[7][3] ;
   wire \fiforeg[7][2] ;
   wire \fiforeg[7][1] ;
   wire \fiforeg[7][0] ;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;

   BUFX2 FE_OFC1209_n110 (.Y(FE_OFN1209_n110), 
	.A(n110));
   BUFX2 FE_OFC1208_n102 (.Y(FE_OFN1208_n102), 
	.A(n102));
   BUFX2 FE_OFC1207_n112 (.Y(FE_OFN1207_n112), 
	.A(n112));
   BUFX2 FE_OFC1206_n108 (.Y(FE_OFN1206_n108), 
	.A(n108));
   BUFX4 FE_OFC1205_n105 (.Y(FE_OFN1205_n105), 
	.A(n105));
   BUFX4 FE_OFC1204_n103 (.Y(FE_OFN1204_n103), 
	.A(n103));
   BUFX4 FE_OFC1203_n106 (.Y(FE_OFN1203_n106), 
	.A(n106));
   BUFX4 FE_OFC1202_n104 (.Y(FE_OFN1202_n104), 
	.A(n104));
   BUFX2 FE_OFC1201_n24 (.Y(FE_OFN1201_n24), 
	.A(n24));
   BUFX2 FE_OFC1200_n20 (.Y(FE_OFN1200_n20), 
	.A(n20));
   BUFX2 FE_OFC1199_n22 (.Y(FE_OFN1199_n22), 
	.A(n22));
   BUFX2 FE_OFC1198_n18 (.Y(FE_OFN1198_n18), 
	.A(n18));
   BUFX2 FE_OFC1197_n189 (.Y(FE_OFN1197_n189), 
	.A(n189));
   BUFX2 FE_OFC1196_n178 (.Y(FE_OFN1196_n178), 
	.A(n178));
   BUFX2 FE_OFC1195_n167 (.Y(FE_OFN1195_n167), 
	.A(n167));
   BUFX2 FE_OFC1194_n156 (.Y(FE_OFN1194_n156), 
	.A(n156));
   BUFX2 FE_OFC1193_n145 (.Y(FE_OFN1193_n145), 
	.A(n145));
   BUFX2 FE_OFC1192_n134 (.Y(FE_OFN1192_n134), 
	.A(n134));
   BUFX2 FE_OFC1191_n123 (.Y(FE_OFN1191_n123), 
	.A(n123));
   BUFX2 FE_OFC1190_n100 (.Y(FE_OFN1190_n100), 
	.A(n100));
   DFFPOSX1 \fiforeg_reg[7][7]  (.Q(\fiforeg[7][7] ), 
	.D(n321), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[6][7]  (.Q(\fiforeg[6][7] ), 
	.D(n320), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[5][7]  (.Q(\fiforeg[5][7] ), 
	.D(n319), 
	.CLK(FE_OFN1185_n2));
   DFFPOSX1 \fiforeg_reg[4][7]  (.Q(\fiforeg[4][7] ), 
	.D(n318), 
	.CLK(FE_OFN1185_n2));
   DFFPOSX1 \fiforeg_reg[3][7]  (.Q(\fiforeg[3][7] ), 
	.D(n317), 
	.CLK(FE_OFN271_n2));
   DFFPOSX1 \fiforeg_reg[2][7]  (.Q(\fiforeg[2][7] ), 
	.D(n316), 
	.CLK(FE_OFN1187_n2));
   DFFPOSX1 \fiforeg_reg[1][7]  (.Q(\fiforeg[1][7] ), 
	.D(n315), 
	.CLK(FE_OFN526_n2));
   DFFPOSX1 \fiforeg_reg[0][7]  (.Q(\fiforeg[0][7] ), 
	.D(n314), 
	.CLK(FE_OFN526_n2));
   DFFPOSX1 \fiforeg_reg[7][6]  (.Q(\fiforeg[7][6] ), 
	.D(n313), 
	.CLK(FE_OFN529_n2));
   DFFPOSX1 \fiforeg_reg[6][6]  (.Q(\fiforeg[6][6] ), 
	.D(n312), 
	.CLK(FE_OFN529_n2));
   DFFPOSX1 \fiforeg_reg[5][6]  (.Q(\fiforeg[5][6] ), 
	.D(n311), 
	.CLK(FE_OFN26_n2));
   DFFPOSX1 \fiforeg_reg[4][6]  (.Q(\fiforeg[4][6] ), 
	.D(n310), 
	.CLK(FE_OFN1183_n2));
   DFFPOSX1 \fiforeg_reg[3][6]  (.Q(\fiforeg[3][6] ), 
	.D(n309), 
	.CLK(FE_OFN822_n2));
   DFFPOSX1 \fiforeg_reg[2][6]  (.Q(\fiforeg[2][6] ), 
	.D(n308), 
	.CLK(FE_OFN822_n2));
   DFFPOSX1 \fiforeg_reg[1][6]  (.Q(\fiforeg[1][6] ), 
	.D(n307), 
	.CLK(FE_OFN822_n2));
   DFFPOSX1 \fiforeg_reg[0][6]  (.Q(\fiforeg[0][6] ), 
	.D(n306), 
	.CLK(FE_OFN822_n2));
   DFFPOSX1 \fiforeg_reg[7][5]  (.Q(\fiforeg[7][5] ), 
	.D(n305), 
	.CLK(FE_OFN28_n2));
   DFFPOSX1 \fiforeg_reg[6][5]  (.Q(\fiforeg[6][5] ), 
	.D(n304), 
	.CLK(FE_OFN1185_n2));
   DFFPOSX1 \fiforeg_reg[5][5]  (.Q(\fiforeg[5][5] ), 
	.D(n303), 
	.CLK(FE_OFN817_n2));
   DFFPOSX1 \fiforeg_reg[4][5]  (.Q(\fiforeg[4][5] ), 
	.D(n302), 
	.CLK(FE_OFN817_n2));
   DFFPOSX1 \fiforeg_reg[3][5]  (.Q(\fiforeg[3][5] ), 
	.D(n301), 
	.CLK(FE_OFN270_n2));
   DFFPOSX1 \fiforeg_reg[2][5]  (.Q(\fiforeg[2][5] ), 
	.D(n300), 
	.CLK(FE_OFN270_n2));
   DFFPOSX1 \fiforeg_reg[1][5]  (.Q(\fiforeg[1][5] ), 
	.D(n299), 
	.CLK(FE_OFN821_n2));
   DFFPOSX1 \fiforeg_reg[0][5]  (.Q(\fiforeg[0][5] ), 
	.D(n298), 
	.CLK(FE_OFN526_n2));
   DFFPOSX1 \fiforeg_reg[7][4]  (.Q(\fiforeg[7][4] ), 
	.D(n297), 
	.CLK(FE_OFN273_n2));
   DFFPOSX1 \fiforeg_reg[6][4]  (.Q(\fiforeg[6][4] ), 
	.D(n296), 
	.CLK(FE_OFN819_n2));
   DFFPOSX1 \fiforeg_reg[5][4]  (.Q(\fiforeg[5][4] ), 
	.D(n295), 
	.CLK(FE_OFN29_n2));
   DFFPOSX1 \fiforeg_reg[4][4]  (.Q(\fiforeg[4][4] ), 
	.D(n294), 
	.CLK(FE_OFN819_n2));
   DFFPOSX1 \fiforeg_reg[3][4]  (.Q(\fiforeg[3][4] ), 
	.D(n293), 
	.CLK(FE_OFN824_n2));
   DFFPOSX1 \fiforeg_reg[2][4]  (.Q(\fiforeg[2][4] ), 
	.D(n292), 
	.CLK(FE_OFN824_n2));
   DFFPOSX1 \fiforeg_reg[1][4]  (.Q(\fiforeg[1][4] ), 
	.D(n291), 
	.CLK(FE_OFN822_n2));
   DFFPOSX1 \fiforeg_reg[0][4]  (.Q(\fiforeg[0][4] ), 
	.D(n290), 
	.CLK(FE_OFN822_n2));
   DFFPOSX1 \fiforeg_reg[7][3]  (.Q(\fiforeg[7][3] ), 
	.D(n289), 
	.CLK(FE_OFN1187_n2));
   DFFPOSX1 \fiforeg_reg[6][3]  (.Q(\fiforeg[6][3] ), 
	.D(n288), 
	.CLK(FE_OFN270_n2));
   DFFPOSX1 \fiforeg_reg[5][3]  (.Q(\fiforeg[5][3] ), 
	.D(n287), 
	.CLK(FE_OFN270_n2));
   DFFPOSX1 \fiforeg_reg[4][3]  (.Q(\fiforeg[4][3] ), 
	.D(n286), 
	.CLK(FE_OFN526_n2));
   DFFPOSX1 \fiforeg_reg[3][3]  (.Q(\fiforeg[3][3] ), 
	.D(n285), 
	.CLK(FE_OFN821_n2));
   DFFPOSX1 \fiforeg_reg[2][3]  (.Q(\fiforeg[2][3] ), 
	.D(n284), 
	.CLK(FE_OFN823_n2));
   DFFPOSX1 \fiforeg_reg[1][3]  (.Q(\fiforeg[1][3] ), 
	.D(n283), 
	.CLK(FE_OFN270_n2));
   DFFPOSX1 \fiforeg_reg[0][3]  (.Q(\fiforeg[0][3] ), 
	.D(n282), 
	.CLK(FE_OFN823_n2));
   DFFPOSX1 \fiforeg_reg[7][2]  (.Q(\fiforeg[7][2] ), 
	.D(n281), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[6][2]  (.Q(\fiforeg[6][2] ), 
	.D(n280), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[5][2]  (.Q(\fiforeg[5][2] ), 
	.D(n279), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[4][2]  (.Q(\fiforeg[4][2] ), 
	.D(n278), 
	.CLK(FE_OFN26_n2));
   DFFPOSX1 \fiforeg_reg[3][2]  (.Q(\fiforeg[3][2] ), 
	.D(n277), 
	.CLK(FE_OFN1187_n2));
   DFFPOSX1 \fiforeg_reg[2][2]  (.Q(\fiforeg[2][2] ), 
	.D(n276), 
	.CLK(FE_OFN271_n2));
   DFFPOSX1 \fiforeg_reg[1][2]  (.Q(\fiforeg[1][2] ), 
	.D(n275), 
	.CLK(FE_OFN1184_n2));
   DFFPOSX1 \fiforeg_reg[0][2]  (.Q(\fiforeg[0][2] ), 
	.D(n274), 
	.CLK(FE_OFN1184_n2));
   DFFPOSX1 \fiforeg_reg[7][1]  (.Q(\fiforeg[7][1] ), 
	.D(n273), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[6][1]  (.Q(\fiforeg[6][1] ), 
	.D(n272), 
	.CLK(FE_OFN1183_n2));
   DFFPOSX1 \fiforeg_reg[5][1]  (.Q(\fiforeg[5][1] ), 
	.D(n271), 
	.CLK(FE_OFN819_n2));
   DFFPOSX1 \fiforeg_reg[4][1]  (.Q(\fiforeg[4][1] ), 
	.D(n270), 
	.CLK(FE_OFN273_n2));
   DFFPOSX1 \fiforeg_reg[3][1]  (.Q(\fiforeg[3][1] ), 
	.D(n269), 
	.CLK(FE_OFN824_n2));
   DFFPOSX1 \fiforeg_reg[2][1]  (.Q(\fiforeg[2][1] ), 
	.D(n268), 
	.CLK(FE_OFN824_n2));
   DFFPOSX1 \fiforeg_reg[1][1]  (.Q(\fiforeg[1][1] ), 
	.D(n267), 
	.CLK(FE_OFN824_n2));
   DFFPOSX1 \fiforeg_reg[0][1]  (.Q(\fiforeg[0][1] ), 
	.D(n211), 
	.CLK(FE_OFN824_n2));
   DFFPOSX1 \fiforeg_reg[7][0]  (.Q(\fiforeg[7][0] ), 
	.D(n203), 
	.CLK(FE_OFN1187_n2));
   DFFPOSX1 \fiforeg_reg[6][0]  (.Q(\fiforeg[6][0] ), 
	.D(n210), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[5][0]  (.Q(\fiforeg[5][0] ), 
	.D(n209), 
	.CLK(FE_OFN816_n2));
   DFFPOSX1 \fiforeg_reg[4][0]  (.Q(\fiforeg[4][0] ), 
	.D(n208), 
	.CLK(FE_OFN529_n2));
   DFFPOSX1 \fiforeg_reg[3][0]  (.Q(\fiforeg[3][0] ), 
	.D(n207), 
	.CLK(FE_OFN822_n2));
   DFFPOSX1 \fiforeg_reg[2][0]  (.Q(\fiforeg[2][0] ), 
	.D(n206), 
	.CLK(FE_OFN820_n2));
   DFFPOSX1 \fiforeg_reg[1][0]  (.Q(\fiforeg[1][0] ), 
	.D(n205), 
	.CLK(FE_OFN822_n2));
   DFFPOSX1 \fiforeg_reg[0][0]  (.Q(\fiforeg[0][0] ), 
	.D(n204), 
	.CLK(FE_OFN820_n2));
   NAND3X1 U14 (.Y(rdata[7]), 
	.C(n15), 
	.B(n14), 
	.A(n13));
   NOR2X1 U15 (.Y(n15), 
	.B(n17), 
	.A(n16));
   OAI22X1 U16 (.Y(n17), 
	.D(n21), 
	.C(FE_OFN1200_n20), 
	.B(n19), 
	.A(FE_OFN1198_n18));
   OAI22X1 U17 (.Y(n16), 
	.D(n25), 
	.C(FE_OFN1201_n24), 
	.B(n23), 
	.A(FE_OFN1199_n22));
   AOI22X1 U18 (.Y(n14), 
	.D(n27), 
	.C(\fiforeg[4][7] ), 
	.B(n26), 
	.A(\fiforeg[5][7] ));
   AOI22X1 U19 (.Y(n13), 
	.D(n29), 
	.C(\fiforeg[6][7] ), 
	.B(n28), 
	.A(\fiforeg[7][7] ));
   NAND3X1 U20 (.Y(rdata[6]), 
	.C(n32), 
	.B(n31), 
	.A(n30));
   NOR2X1 U21 (.Y(n32), 
	.B(n34), 
	.A(n33));
   OAI22X1 U22 (.Y(n34), 
	.D(n36), 
	.C(FE_OFN1200_n20), 
	.B(n35), 
	.A(FE_OFN1198_n18));
   OAI22X1 U23 (.Y(n33), 
	.D(n38), 
	.C(FE_OFN1201_n24), 
	.B(n37), 
	.A(FE_OFN1199_n22));
   AOI22X1 U24 (.Y(n31), 
	.D(n27), 
	.C(\fiforeg[4][6] ), 
	.B(n26), 
	.A(\fiforeg[5][6] ));
   AOI22X1 U25 (.Y(n30), 
	.D(n29), 
	.C(\fiforeg[6][6] ), 
	.B(n28), 
	.A(\fiforeg[7][6] ));
   NAND3X1 U26 (.Y(rdata[5]), 
	.C(n41), 
	.B(n40), 
	.A(n39));
   NOR2X1 U27 (.Y(n41), 
	.B(n43), 
	.A(n42));
   OAI22X1 U28 (.Y(n43), 
	.D(n45), 
	.C(FE_OFN1200_n20), 
	.B(n44), 
	.A(FE_OFN1198_n18));
   OAI22X1 U29 (.Y(n42), 
	.D(n47), 
	.C(FE_OFN1201_n24), 
	.B(n46), 
	.A(FE_OFN1199_n22));
   AOI22X1 U30 (.Y(n40), 
	.D(n27), 
	.C(\fiforeg[4][5] ), 
	.B(n26), 
	.A(\fiforeg[5][5] ));
   AOI22X1 U31 (.Y(n39), 
	.D(n29), 
	.C(\fiforeg[6][5] ), 
	.B(n28), 
	.A(\fiforeg[7][5] ));
   NAND3X1 U32 (.Y(rdata[4]), 
	.C(n50), 
	.B(n49), 
	.A(n48));
   NOR2X1 U33 (.Y(n50), 
	.B(n52), 
	.A(n51));
   OAI22X1 U34 (.Y(n52), 
	.D(n54), 
	.C(FE_OFN1200_n20), 
	.B(n53), 
	.A(FE_OFN1198_n18));
   OAI22X1 U35 (.Y(n51), 
	.D(n56), 
	.C(FE_OFN1201_n24), 
	.B(n55), 
	.A(FE_OFN1199_n22));
   AOI22X1 U36 (.Y(n49), 
	.D(n27), 
	.C(\fiforeg[4][4] ), 
	.B(n26), 
	.A(\fiforeg[5][4] ));
   AOI22X1 U37 (.Y(n48), 
	.D(n29), 
	.C(\fiforeg[6][4] ), 
	.B(n28), 
	.A(\fiforeg[7][4] ));
   NAND3X1 U38 (.Y(rdata[3]), 
	.C(n59), 
	.B(n58), 
	.A(n57));
   NOR2X1 U39 (.Y(n59), 
	.B(n61), 
	.A(n60));
   OAI22X1 U40 (.Y(n61), 
	.D(n63), 
	.C(FE_OFN1200_n20), 
	.B(n62), 
	.A(FE_OFN1198_n18));
   OAI22X1 U41 (.Y(n60), 
	.D(n65), 
	.C(FE_OFN1201_n24), 
	.B(n64), 
	.A(FE_OFN1199_n22));
   AOI22X1 U42 (.Y(n58), 
	.D(n27), 
	.C(\fiforeg[4][3] ), 
	.B(n26), 
	.A(\fiforeg[5][3] ));
   AOI22X1 U43 (.Y(n57), 
	.D(n29), 
	.C(\fiforeg[6][3] ), 
	.B(n28), 
	.A(\fiforeg[7][3] ));
   NAND3X1 U44 (.Y(rdata[2]), 
	.C(n68), 
	.B(n67), 
	.A(n66));
   NOR2X1 U45 (.Y(n68), 
	.B(n70), 
	.A(n69));
   OAI22X1 U46 (.Y(n70), 
	.D(n72), 
	.C(FE_OFN1200_n20), 
	.B(n71), 
	.A(FE_OFN1198_n18));
   OAI22X1 U47 (.Y(n69), 
	.D(n74), 
	.C(FE_OFN1201_n24), 
	.B(n73), 
	.A(FE_OFN1199_n22));
   AOI22X1 U48 (.Y(n67), 
	.D(n27), 
	.C(\fiforeg[4][2] ), 
	.B(n26), 
	.A(\fiforeg[5][2] ));
   AOI22X1 U49 (.Y(n66), 
	.D(n29), 
	.C(\fiforeg[6][2] ), 
	.B(n28), 
	.A(\fiforeg[7][2] ));
   NAND3X1 U50 (.Y(rdata[1]), 
	.C(n77), 
	.B(n76), 
	.A(n75));
   NOR2X1 U51 (.Y(n77), 
	.B(n79), 
	.A(n78));
   OAI22X1 U52 (.Y(n79), 
	.D(n81), 
	.C(FE_OFN1200_n20), 
	.B(n80), 
	.A(FE_OFN1198_n18));
   OAI22X1 U53 (.Y(n78), 
	.D(n83), 
	.C(FE_OFN1201_n24), 
	.B(n82), 
	.A(FE_OFN1199_n22));
   AOI22X1 U54 (.Y(n76), 
	.D(n27), 
	.C(\fiforeg[4][1] ), 
	.B(n26), 
	.A(\fiforeg[5][1] ));
   AOI22X1 U55 (.Y(n75), 
	.D(n29), 
	.C(\fiforeg[6][1] ), 
	.B(n28), 
	.A(\fiforeg[7][1] ));
   NAND3X1 U56 (.Y(rdata[0]), 
	.C(n86), 
	.B(n85), 
	.A(n84));
   NOR2X1 U57 (.Y(n86), 
	.B(n88), 
	.A(n87));
   OAI22X1 U58 (.Y(n88), 
	.D(n90), 
	.C(FE_OFN1200_n20), 
	.B(n89), 
	.A(FE_OFN1198_n18));
   NAND3X1 U59 (.Y(n20), 
	.C(n93), 
	.B(n92), 
	.A(n91));
   NAND3X1 U60 (.Y(n18), 
	.C(raddr[0]), 
	.B(n92), 
	.A(n91));
   OAI22X1 U61 (.Y(n87), 
	.D(n95), 
	.C(FE_OFN1201_n24), 
	.B(n94), 
	.A(FE_OFN1199_n22));
   NAND3X1 U62 (.Y(n24), 
	.C(raddr[1]), 
	.B(n92), 
	.A(n93));
   NAND3X1 U63 (.Y(n22), 
	.C(raddr[1]), 
	.B(n92), 
	.A(raddr[0]));
   INVX1 U64 (.Y(n92), 
	.A(raddr[2]));
   AOI22X1 U65 (.Y(n85), 
	.D(n27), 
	.C(\fiforeg[4][0] ), 
	.B(n26), 
	.A(\fiforeg[5][0] ));
   INVX2 U66 (.Y(n27), 
	.A(n96));
   NAND3X1 U67 (.Y(n96), 
	.C(raddr[2]), 
	.B(n91), 
	.A(n93));
   INVX2 U68 (.Y(n26), 
	.A(n97));
   NAND3X1 U69 (.Y(n97), 
	.C(raddr[2]), 
	.B(n91), 
	.A(raddr[0]));
   INVX1 U70 (.Y(n91), 
	.A(raddr[1]));
   AOI22X1 U71 (.Y(n84), 
	.D(n29), 
	.C(\fiforeg[6][0] ), 
	.B(n28), 
	.A(\fiforeg[7][0] ));
   INVX2 U72 (.Y(n29), 
	.A(n98));
   NAND3X1 U73 (.Y(n98), 
	.C(raddr[1]), 
	.B(n93), 
	.A(raddr[2]));
   INVX1 U74 (.Y(n93), 
	.A(raddr[0]));
   INVX2 U75 (.Y(n28), 
	.A(n99));
   NAND3X1 U76 (.Y(n99), 
	.C(raddr[1]), 
	.B(raddr[0]), 
	.A(raddr[2]));
   MUX2X1 U77 (.Y(n203), 
	.S(FE_OFN1208_n102), 
	.B(FE_OFN1190_n100), 
	.A(n101));
   INVX1 U78 (.Y(n101), 
	.A(\fiforeg[7][0] ));
   MUX2X1 U79 (.Y(n204), 
	.S(FE_OFN1204_n103), 
	.B(FE_OFN1190_n100), 
	.A(n90));
   MUX2X1 U80 (.Y(n205), 
	.S(FE_OFN1202_n104), 
	.B(FE_OFN1190_n100), 
	.A(n89));
   MUX2X1 U81 (.Y(n206), 
	.S(FE_OFN1205_n105), 
	.B(FE_OFN1190_n100), 
	.A(n95));
   MUX2X1 U82 (.Y(n207), 
	.S(FE_OFN1203_n106), 
	.B(FE_OFN1190_n100), 
	.A(n94));
   MUX2X1 U83 (.Y(n208), 
	.S(n108), 
	.B(FE_OFN1190_n100), 
	.A(n107));
   INVX1 U84 (.Y(n107), 
	.A(\fiforeg[4][0] ));
   MUX2X1 U85 (.Y(n209), 
	.S(FE_OFN1209_n110), 
	.B(FE_OFN1190_n100), 
	.A(n109));
   INVX1 U86 (.Y(n109), 
	.A(\fiforeg[5][0] ));
   MUX2X1 U87 (.Y(n210), 
	.S(FE_OFN1207_n112), 
	.B(FE_OFN1190_n100), 
	.A(n111));
   INVX1 U88 (.Y(n111), 
	.A(\fiforeg[6][0] ));
   MUX2X1 U89 (.Y(n100), 
	.S(wenable), 
	.B(n113), 
	.A(wdata[0]));
   NAND3X1 U90 (.Y(n113), 
	.C(n116), 
	.B(n115), 
	.A(n114));
   NOR2X1 U91 (.Y(n116), 
	.B(n118), 
	.A(n117));
   OAI22X1 U92 (.Y(n118), 
	.D(FE_OFN1204_n103), 
	.C(n90), 
	.B(FE_OFN1202_n104), 
	.A(n89));
   INVX1 U93 (.Y(n90), 
	.A(\fiforeg[0][0] ));
   INVX1 U94 (.Y(n89), 
	.A(\fiforeg[1][0] ));
   OAI22X1 U95 (.Y(n117), 
	.D(FE_OFN1205_n105), 
	.C(n95), 
	.B(FE_OFN1203_n106), 
	.A(n94));
   INVX1 U96 (.Y(n95), 
	.A(\fiforeg[2][0] ));
   INVX1 U97 (.Y(n94), 
	.A(\fiforeg[3][0] ));
   AOI22X1 U98 (.Y(n115), 
	.D(\fiforeg[4][0] ), 
	.C(n120), 
	.B(\fiforeg[6][0] ), 
	.A(n119));
   AOI22X1 U99 (.Y(n114), 
	.D(\fiforeg[7][0] ), 
	.C(n122), 
	.B(\fiforeg[5][0] ), 
	.A(n121));
   MUX2X1 U100 (.Y(n211), 
	.S(FE_OFN1204_n103), 
	.B(FE_OFN1191_n123), 
	.A(n81));
   MUX2X1 U101 (.Y(n267), 
	.S(FE_OFN1202_n104), 
	.B(FE_OFN1191_n123), 
	.A(n80));
   MUX2X1 U102 (.Y(n268), 
	.S(FE_OFN1205_n105), 
	.B(FE_OFN1191_n123), 
	.A(n83));
   MUX2X1 U103 (.Y(n269), 
	.S(FE_OFN1203_n106), 
	.B(FE_OFN1191_n123), 
	.A(n82));
   MUX2X1 U104 (.Y(n270), 
	.S(FE_OFN1206_n108), 
	.B(FE_OFN1191_n123), 
	.A(n124));
   INVX1 U105 (.Y(n124), 
	.A(\fiforeg[4][1] ));
   MUX2X1 U106 (.Y(n271), 
	.S(n110), 
	.B(FE_OFN1191_n123), 
	.A(n125));
   INVX1 U107 (.Y(n125), 
	.A(\fiforeg[5][1] ));
   MUX2X1 U108 (.Y(n272), 
	.S(n112), 
	.B(FE_OFN1191_n123), 
	.A(n126));
   INVX1 U109 (.Y(n126), 
	.A(\fiforeg[6][1] ));
   MUX2X1 U110 (.Y(n273), 
	.S(FE_OFN1208_n102), 
	.B(FE_OFN1191_n123), 
	.A(n127));
   INVX1 U111 (.Y(n127), 
	.A(\fiforeg[7][1] ));
   MUX2X1 U112 (.Y(n123), 
	.S(wenable), 
	.B(n128), 
	.A(wdata[1]));
   NAND3X1 U113 (.Y(n128), 
	.C(n131), 
	.B(n130), 
	.A(n129));
   NOR2X1 U114 (.Y(n131), 
	.B(n133), 
	.A(n132));
   OAI22X1 U115 (.Y(n133), 
	.D(FE_OFN1204_n103), 
	.C(n81), 
	.B(FE_OFN1202_n104), 
	.A(n80));
   INVX1 U116 (.Y(n81), 
	.A(\fiforeg[0][1] ));
   INVX1 U117 (.Y(n80), 
	.A(\fiforeg[1][1] ));
   OAI22X1 U118 (.Y(n132), 
	.D(FE_OFN1205_n105), 
	.C(n83), 
	.B(FE_OFN1203_n106), 
	.A(n82));
   INVX1 U119 (.Y(n83), 
	.A(\fiforeg[2][1] ));
   INVX1 U120 (.Y(n82), 
	.A(\fiforeg[3][1] ));
   AOI22X1 U121 (.Y(n130), 
	.D(\fiforeg[4][1] ), 
	.C(n120), 
	.B(\fiforeg[6][1] ), 
	.A(n119));
   AOI22X1 U122 (.Y(n129), 
	.D(\fiforeg[7][1] ), 
	.C(n122), 
	.B(\fiforeg[5][1] ), 
	.A(n121));
   MUX2X1 U123 (.Y(n274), 
	.S(FE_OFN1204_n103), 
	.B(FE_OFN1192_n134), 
	.A(n72));
   MUX2X1 U124 (.Y(n275), 
	.S(FE_OFN1202_n104), 
	.B(FE_OFN1192_n134), 
	.A(n71));
   MUX2X1 U125 (.Y(n276), 
	.S(FE_OFN1205_n105), 
	.B(FE_OFN1192_n134), 
	.A(n74));
   MUX2X1 U126 (.Y(n277), 
	.S(FE_OFN1203_n106), 
	.B(FE_OFN1192_n134), 
	.A(n73));
   MUX2X1 U127 (.Y(n278), 
	.S(FE_OFN1206_n108), 
	.B(FE_OFN1192_n134), 
	.A(n135));
   INVX1 U128 (.Y(n135), 
	.A(\fiforeg[4][2] ));
   MUX2X1 U129 (.Y(n279), 
	.S(FE_OFN1209_n110), 
	.B(FE_OFN1192_n134), 
	.A(n136));
   INVX1 U130 (.Y(n136), 
	.A(\fiforeg[5][2] ));
   MUX2X1 U131 (.Y(n280), 
	.S(n112), 
	.B(FE_OFN1192_n134), 
	.A(n137));
   INVX1 U132 (.Y(n137), 
	.A(\fiforeg[6][2] ));
   MUX2X1 U133 (.Y(n281), 
	.S(FE_OFN1208_n102), 
	.B(FE_OFN1192_n134), 
	.A(n138));
   INVX1 U134 (.Y(n138), 
	.A(\fiforeg[7][2] ));
   MUX2X1 U135 (.Y(n134), 
	.S(wenable), 
	.B(n139), 
	.A(wdata[2]));
   NAND3X1 U136 (.Y(n139), 
	.C(n142), 
	.B(n141), 
	.A(n140));
   NOR2X1 U137 (.Y(n142), 
	.B(n144), 
	.A(n143));
   OAI22X1 U138 (.Y(n144), 
	.D(FE_OFN1204_n103), 
	.C(n72), 
	.B(FE_OFN1202_n104), 
	.A(n71));
   INVX1 U139 (.Y(n72), 
	.A(\fiforeg[0][2] ));
   INVX1 U140 (.Y(n71), 
	.A(\fiforeg[1][2] ));
   OAI22X1 U141 (.Y(n143), 
	.D(FE_OFN1205_n105), 
	.C(n74), 
	.B(FE_OFN1203_n106), 
	.A(n73));
   INVX1 U142 (.Y(n74), 
	.A(\fiforeg[2][2] ));
   INVX1 U143 (.Y(n73), 
	.A(\fiforeg[3][2] ));
   AOI22X1 U144 (.Y(n141), 
	.D(\fiforeg[4][2] ), 
	.C(n120), 
	.B(\fiforeg[6][2] ), 
	.A(n119));
   AOI22X1 U145 (.Y(n140), 
	.D(\fiforeg[7][2] ), 
	.C(n122), 
	.B(\fiforeg[5][2] ), 
	.A(n121));
   MUX2X1 U146 (.Y(n282), 
	.S(FE_OFN1204_n103), 
	.B(FE_OFN1193_n145), 
	.A(n63));
   MUX2X1 U147 (.Y(n283), 
	.S(FE_OFN1202_n104), 
	.B(FE_OFN1193_n145), 
	.A(n62));
   MUX2X1 U148 (.Y(n284), 
	.S(FE_OFN1205_n105), 
	.B(FE_OFN1193_n145), 
	.A(n65));
   MUX2X1 U149 (.Y(n285), 
	.S(FE_OFN1203_n106), 
	.B(FE_OFN1193_n145), 
	.A(n64));
   MUX2X1 U150 (.Y(n286), 
	.S(FE_OFN1206_n108), 
	.B(FE_OFN1193_n145), 
	.A(n146));
   INVX1 U151 (.Y(n146), 
	.A(\fiforeg[4][3] ));
   MUX2X1 U152 (.Y(n287), 
	.S(FE_OFN1209_n110), 
	.B(FE_OFN1193_n145), 
	.A(n147));
   INVX1 U153 (.Y(n147), 
	.A(\fiforeg[5][3] ));
   MUX2X1 U154 (.Y(n288), 
	.S(FE_OFN1207_n112), 
	.B(FE_OFN1193_n145), 
	.A(n148));
   INVX1 U155 (.Y(n148), 
	.A(\fiforeg[6][3] ));
   MUX2X1 U156 (.Y(n289), 
	.S(FE_OFN1208_n102), 
	.B(FE_OFN1193_n145), 
	.A(n149));
   INVX1 U157 (.Y(n149), 
	.A(\fiforeg[7][3] ));
   MUX2X1 U158 (.Y(n145), 
	.S(wenable), 
	.B(n150), 
	.A(wdata[3]));
   NAND3X1 U159 (.Y(n150), 
	.C(n153), 
	.B(n152), 
	.A(n151));
   NOR2X1 U160 (.Y(n153), 
	.B(n155), 
	.A(n154));
   OAI22X1 U161 (.Y(n155), 
	.D(FE_OFN1204_n103), 
	.C(n63), 
	.B(FE_OFN1202_n104), 
	.A(n62));
   INVX1 U162 (.Y(n63), 
	.A(\fiforeg[0][3] ));
   INVX1 U163 (.Y(n62), 
	.A(\fiforeg[1][3] ));
   OAI22X1 U164 (.Y(n154), 
	.D(FE_OFN1205_n105), 
	.C(n65), 
	.B(FE_OFN1203_n106), 
	.A(n64));
   INVX1 U165 (.Y(n65), 
	.A(\fiforeg[2][3] ));
   INVX1 U166 (.Y(n64), 
	.A(\fiforeg[3][3] ));
   AOI22X1 U167 (.Y(n152), 
	.D(\fiforeg[4][3] ), 
	.C(n120), 
	.B(\fiforeg[6][3] ), 
	.A(n119));
   AOI22X1 U168 (.Y(n151), 
	.D(\fiforeg[7][3] ), 
	.C(n122), 
	.B(\fiforeg[5][3] ), 
	.A(n121));
   MUX2X1 U169 (.Y(n290), 
	.S(FE_OFN1204_n103), 
	.B(FE_OFN1194_n156), 
	.A(n54));
   MUX2X1 U170 (.Y(n291), 
	.S(FE_OFN1202_n104), 
	.B(FE_OFN1194_n156), 
	.A(n53));
   MUX2X1 U171 (.Y(n292), 
	.S(FE_OFN1205_n105), 
	.B(FE_OFN1194_n156), 
	.A(n56));
   MUX2X1 U172 (.Y(n293), 
	.S(FE_OFN1203_n106), 
	.B(FE_OFN1194_n156), 
	.A(n55));
   MUX2X1 U173 (.Y(n294), 
	.S(FE_OFN1206_n108), 
	.B(FE_OFN1194_n156), 
	.A(n157));
   INVX1 U174 (.Y(n157), 
	.A(\fiforeg[4][4] ));
   MUX2X1 U175 (.Y(n295), 
	.S(n110), 
	.B(FE_OFN1194_n156), 
	.A(n158));
   INVX1 U176 (.Y(n158), 
	.A(\fiforeg[5][4] ));
   MUX2X1 U177 (.Y(n296), 
	.S(n112), 
	.B(FE_OFN1194_n156), 
	.A(n159));
   INVX1 U178 (.Y(n159), 
	.A(\fiforeg[6][4] ));
   MUX2X1 U179 (.Y(n297), 
	.S(FE_OFN1208_n102), 
	.B(FE_OFN1194_n156), 
	.A(n160));
   INVX1 U180 (.Y(n160), 
	.A(\fiforeg[7][4] ));
   MUX2X1 U181 (.Y(n156), 
	.S(wenable), 
	.B(n161), 
	.A(wdata[4]));
   NAND3X1 U182 (.Y(n161), 
	.C(n164), 
	.B(n163), 
	.A(n162));
   NOR2X1 U183 (.Y(n164), 
	.B(n166), 
	.A(n165));
   OAI22X1 U184 (.Y(n166), 
	.D(FE_OFN1204_n103), 
	.C(n54), 
	.B(FE_OFN1202_n104), 
	.A(n53));
   INVX1 U185 (.Y(n54), 
	.A(\fiforeg[0][4] ));
   INVX1 U186 (.Y(n53), 
	.A(\fiforeg[1][4] ));
   OAI22X1 U187 (.Y(n165), 
	.D(FE_OFN1205_n105), 
	.C(n56), 
	.B(FE_OFN1203_n106), 
	.A(n55));
   INVX1 U188 (.Y(n56), 
	.A(\fiforeg[2][4] ));
   INVX1 U189 (.Y(n55), 
	.A(\fiforeg[3][4] ));
   AOI22X1 U190 (.Y(n163), 
	.D(\fiforeg[4][4] ), 
	.C(n120), 
	.B(\fiforeg[6][4] ), 
	.A(n119));
   AOI22X1 U191 (.Y(n162), 
	.D(\fiforeg[7][4] ), 
	.C(n122), 
	.B(\fiforeg[5][4] ), 
	.A(n121));
   MUX2X1 U192 (.Y(n298), 
	.S(FE_OFN1204_n103), 
	.B(FE_OFN1195_n167), 
	.A(n45));
   MUX2X1 U193 (.Y(n299), 
	.S(FE_OFN1202_n104), 
	.B(FE_OFN1195_n167), 
	.A(n44));
   MUX2X1 U194 (.Y(n300), 
	.S(FE_OFN1205_n105), 
	.B(FE_OFN1195_n167), 
	.A(n47));
   MUX2X1 U195 (.Y(n301), 
	.S(FE_OFN1203_n106), 
	.B(FE_OFN1195_n167), 
	.A(n46));
   MUX2X1 U196 (.Y(n302), 
	.S(FE_OFN1206_n108), 
	.B(FE_OFN1195_n167), 
	.A(n168));
   INVX1 U197 (.Y(n168), 
	.A(\fiforeg[4][5] ));
   MUX2X1 U198 (.Y(n303), 
	.S(FE_OFN1209_n110), 
	.B(FE_OFN1195_n167), 
	.A(n169));
   INVX1 U199 (.Y(n169), 
	.A(\fiforeg[5][5] ));
   MUX2X1 U200 (.Y(n304), 
	.S(FE_OFN1207_n112), 
	.B(FE_OFN1195_n167), 
	.A(n170));
   INVX1 U201 (.Y(n170), 
	.A(\fiforeg[6][5] ));
   MUX2X1 U202 (.Y(n305), 
	.S(FE_OFN1208_n102), 
	.B(FE_OFN1195_n167), 
	.A(n171));
   INVX1 U203 (.Y(n171), 
	.A(\fiforeg[7][5] ));
   MUX2X1 U204 (.Y(n167), 
	.S(wenable), 
	.B(n172), 
	.A(wdata[5]));
   NAND3X1 U205 (.Y(n172), 
	.C(n175), 
	.B(n174), 
	.A(n173));
   NOR2X1 U206 (.Y(n175), 
	.B(n177), 
	.A(n176));
   OAI22X1 U207 (.Y(n177), 
	.D(FE_OFN1204_n103), 
	.C(n45), 
	.B(FE_OFN1202_n104), 
	.A(n44));
   INVX1 U208 (.Y(n45), 
	.A(\fiforeg[0][5] ));
   INVX1 U209 (.Y(n44), 
	.A(\fiforeg[1][5] ));
   OAI22X1 U210 (.Y(n176), 
	.D(FE_OFN1205_n105), 
	.C(n47), 
	.B(FE_OFN1203_n106), 
	.A(n46));
   INVX1 U211 (.Y(n47), 
	.A(\fiforeg[2][5] ));
   INVX1 U212 (.Y(n46), 
	.A(\fiforeg[3][5] ));
   AOI22X1 U213 (.Y(n174), 
	.D(\fiforeg[4][5] ), 
	.C(n120), 
	.B(\fiforeg[6][5] ), 
	.A(n119));
   AOI22X1 U214 (.Y(n173), 
	.D(\fiforeg[7][5] ), 
	.C(n122), 
	.B(\fiforeg[5][5] ), 
	.A(n121));
   MUX2X1 U215 (.Y(n306), 
	.S(FE_OFN1204_n103), 
	.B(FE_OFN1196_n178), 
	.A(n36));
   MUX2X1 U216 (.Y(n307), 
	.S(FE_OFN1202_n104), 
	.B(FE_OFN1196_n178), 
	.A(n35));
   MUX2X1 U217 (.Y(n308), 
	.S(FE_OFN1205_n105), 
	.B(FE_OFN1196_n178), 
	.A(n38));
   MUX2X1 U218 (.Y(n309), 
	.S(FE_OFN1203_n106), 
	.B(FE_OFN1196_n178), 
	.A(n37));
   MUX2X1 U219 (.Y(n310), 
	.S(n108), 
	.B(FE_OFN1196_n178), 
	.A(n179));
   INVX1 U220 (.Y(n179), 
	.A(\fiforeg[4][6] ));
   MUX2X1 U221 (.Y(n311), 
	.S(FE_OFN1209_n110), 
	.B(FE_OFN1196_n178), 
	.A(n180));
   INVX1 U222 (.Y(n180), 
	.A(\fiforeg[5][6] ));
   MUX2X1 U223 (.Y(n312), 
	.S(FE_OFN1207_n112), 
	.B(FE_OFN1196_n178), 
	.A(n181));
   INVX1 U224 (.Y(n181), 
	.A(\fiforeg[6][6] ));
   MUX2X1 U225 (.Y(n313), 
	.S(FE_OFN1208_n102), 
	.B(FE_OFN1196_n178), 
	.A(n182));
   INVX1 U226 (.Y(n182), 
	.A(\fiforeg[7][6] ));
   MUX2X1 U227 (.Y(n178), 
	.S(wenable), 
	.B(n183), 
	.A(wdata[6]));
   NAND3X1 U228 (.Y(n183), 
	.C(n186), 
	.B(n185), 
	.A(n184));
   NOR2X1 U229 (.Y(n186), 
	.B(n188), 
	.A(n187));
   OAI22X1 U230 (.Y(n188), 
	.D(FE_OFN1204_n103), 
	.C(n36), 
	.B(FE_OFN1202_n104), 
	.A(n35));
   INVX1 U231 (.Y(n36), 
	.A(\fiforeg[0][6] ));
   INVX1 U232 (.Y(n35), 
	.A(\fiforeg[1][6] ));
   OAI22X1 U233 (.Y(n187), 
	.D(FE_OFN1205_n105), 
	.C(n38), 
	.B(FE_OFN1203_n106), 
	.A(n37));
   INVX1 U234 (.Y(n38), 
	.A(\fiforeg[2][6] ));
   INVX1 U235 (.Y(n37), 
	.A(\fiforeg[3][6] ));
   AOI22X1 U236 (.Y(n185), 
	.D(\fiforeg[4][6] ), 
	.C(n120), 
	.B(\fiforeg[6][6] ), 
	.A(n119));
   AOI22X1 U237 (.Y(n184), 
	.D(\fiforeg[7][6] ), 
	.C(n122), 
	.B(\fiforeg[5][6] ), 
	.A(n121));
   MUX2X1 U238 (.Y(n314), 
	.S(FE_OFN1204_n103), 
	.B(FE_OFN1197_n189), 
	.A(n21));
   MUX2X1 U239 (.Y(n315), 
	.S(FE_OFN1202_n104), 
	.B(FE_OFN1197_n189), 
	.A(n19));
   MUX2X1 U240 (.Y(n316), 
	.S(FE_OFN1205_n105), 
	.B(FE_OFN1197_n189), 
	.A(n25));
   MUX2X1 U241 (.Y(n317), 
	.S(FE_OFN1203_n106), 
	.B(FE_OFN1197_n189), 
	.A(n23));
   MUX2X1 U242 (.Y(n318), 
	.S(FE_OFN1206_n108), 
	.B(FE_OFN1197_n189), 
	.A(n190));
   INVX1 U243 (.Y(n190), 
	.A(\fiforeg[4][7] ));
   MUX2X1 U244 (.Y(n319), 
	.S(FE_OFN1209_n110), 
	.B(FE_OFN1197_n189), 
	.A(n191));
   INVX1 U245 (.Y(n191), 
	.A(\fiforeg[5][7] ));
   MUX2X1 U246 (.Y(n320), 
	.S(FE_OFN1207_n112), 
	.B(FE_OFN1197_n189), 
	.A(n192));
   INVX1 U247 (.Y(n192), 
	.A(\fiforeg[6][7] ));
   MUX2X1 U248 (.Y(n321), 
	.S(FE_OFN1208_n102), 
	.B(FE_OFN1197_n189), 
	.A(n193));
   INVX1 U249 (.Y(n193), 
	.A(\fiforeg[7][7] ));
   MUX2X1 U250 (.Y(n189), 
	.S(wenable), 
	.B(n194), 
	.A(wdata[7]));
   NAND3X1 U251 (.Y(n194), 
	.C(n197), 
	.B(n196), 
	.A(n195));
   NOR2X1 U252 (.Y(n197), 
	.B(n199), 
	.A(n198));
   OAI22X1 U253 (.Y(n199), 
	.D(FE_OFN1204_n103), 
	.C(n21), 
	.B(FE_OFN1202_n104), 
	.A(n19));
   NAND3X1 U254 (.Y(n103), 
	.C(n202), 
	.B(n201), 
	.A(n200));
   INVX1 U255 (.Y(n21), 
	.A(\fiforeg[0][7] ));
   NAND3X1 U256 (.Y(n104), 
	.C(waddr[0]), 
	.B(n201), 
	.A(n200));
   INVX1 U257 (.Y(n19), 
	.A(\fiforeg[1][7] ));
   OAI22X1 U258 (.Y(n198), 
	.D(FE_OFN1205_n105), 
	.C(n25), 
	.B(FE_OFN1203_n106), 
	.A(n23));
   NAND3X1 U259 (.Y(n105), 
	.C(waddr[1]), 
	.B(n201), 
	.A(n202));
   INVX1 U260 (.Y(n25), 
	.A(\fiforeg[2][7] ));
   NAND3X1 U261 (.Y(n106), 
	.C(waddr[1]), 
	.B(n201), 
	.A(waddr[0]));
   INVX1 U262 (.Y(n201), 
	.A(waddr[2]));
   INVX1 U263 (.Y(n23), 
	.A(\fiforeg[3][7] ));
   AOI22X1 U264 (.Y(n196), 
	.D(\fiforeg[4][7] ), 
	.C(n120), 
	.B(\fiforeg[6][7] ), 
	.A(n119));
   INVX2 U265 (.Y(n120), 
	.A(FE_OFN1206_n108));
   NAND3X1 U266 (.Y(n108), 
	.C(waddr[2]), 
	.B(n200), 
	.A(n202));
   INVX2 U267 (.Y(n119), 
	.A(FE_OFN1207_n112));
   NAND3X1 U268 (.Y(n112), 
	.C(waddr[2]), 
	.B(n202), 
	.A(waddr[1]));
   INVX1 U269 (.Y(n202), 
	.A(waddr[0]));
   AOI22X1 U270 (.Y(n195), 
	.D(\fiforeg[7][7] ), 
	.C(n122), 
	.B(\fiforeg[5][7] ), 
	.A(n121));
   INVX2 U271 (.Y(n122), 
	.A(FE_OFN1208_n102));
   NAND3X1 U272 (.Y(n102), 
	.C(waddr[2]), 
	.B(waddr[0]), 
	.A(waddr[1]));
   INVX2 U273 (.Y(n121), 
	.A(FE_OFN1209_n110));
   NAND3X1 U274 (.Y(n110), 
	.C(waddr[2]), 
	.B(n200), 
	.A(waddr[0]));
   INVX1 U275 (.Y(n200), 
	.A(waddr[1]));
endmodule

module write_ptr_0 (
	wclk, 
	rst_n, 
	wenable, 
	wptr, 
	wptr_nxt, 
	FE_OFN2_n3, 
	FE_OFN29_n2, 
	FE_OFN111_n3, 
	FE_OFN121_n2, 
	FE_OFN240_n3, 
	FE_OFN493_n3, 
	FE_OFN782_n3, 
	FE_OFN1180_n2);
   input wclk;
   input rst_n;
   input wenable;
   output [3:0] wptr;
   output [3:0] wptr_nxt;
   input FE_OFN2_n3;
   input FE_OFN29_n2;
   input FE_OFN111_n3;
   input FE_OFN121_n2;
   input FE_OFN240_n3;
   input FE_OFN493_n3;
   input FE_OFN782_n3;
   input FE_OFN1180_n2;

   // Internal wires
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire [2:0] binary_nxt;
   wire [3:0] binary_r;

   DFFSR \binary_r_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[0]), 
	.D(binary_nxt[0]), 
	.CLK(wclk));
   DFFSR \binary_r_reg[1]  (.S(1'b1), 
	.R(FE_OFN782_n3), 
	.Q(binary_r[1]), 
	.D(binary_nxt[1]), 
	.CLK(FE_OFN1180_n2));
   DFFSR \binary_r_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[2]), 
	.D(binary_nxt[2]), 
	.CLK(FE_OFN121_n2));
   DFFSR \binary_r_reg[3]  (.S(1'b1), 
	.R(FE_OFN111_n3), 
	.Q(binary_r[3]), 
	.D(wptr_nxt[3]), 
	.CLK(FE_OFN121_n2));
   DFFSR \gray_r_reg[3]  (.S(1'b1), 
	.R(FE_OFN240_n3), 
	.Q(wptr[3]), 
	.D(wptr_nxt[3]), 
	.CLK(FE_OFN121_n2));
   DFFSR \gray_r_reg[2]  (.S(1'b1), 
	.R(FE_OFN493_n3), 
	.Q(wptr[2]), 
	.D(wptr_nxt[2]), 
	.CLK(FE_OFN121_n2));
   DFFSR \gray_r_reg[1]  (.S(1'b1), 
	.R(FE_OFN782_n3), 
	.Q(wptr[1]), 
	.D(wptr_nxt[1]), 
	.CLK(FE_OFN1180_n2));
   DFFSR \gray_r_reg[0]  (.S(1'b1), 
	.R(FE_OFN2_n3), 
	.Q(wptr[0]), 
	.D(wptr_nxt[0]), 
	.CLK(FE_OFN29_n2));
   XOR2X1 U11 (.Y(wptr_nxt[2]), 
	.B(binary_nxt[2]), 
	.A(wptr_nxt[3]));
   XNOR2X1 U12 (.Y(wptr_nxt[3]), 
	.B(binary_r[3]), 
	.A(n9));
   NAND2X1 U13 (.Y(n9), 
	.B(n10), 
	.A(binary_r[2]));
   XOR2X1 U14 (.Y(wptr_nxt[1]), 
	.B(binary_nxt[1]), 
	.A(binary_nxt[2]));
   XOR2X1 U15 (.Y(wptr_nxt[0]), 
	.B(binary_nxt[0]), 
	.A(binary_nxt[1]));
   XOR2X1 U16 (.Y(binary_nxt[2]), 
	.B(binary_r[2]), 
	.A(n10));
   INVX1 U17 (.Y(n10), 
	.A(n11));
   NAND3X1 U18 (.Y(n11), 
	.C(wenable), 
	.B(binary_r[0]), 
	.A(binary_r[1]));
   XNOR2X1 U19 (.Y(binary_nxt[1]), 
	.B(binary_r[1]), 
	.A(n12));
   NAND2X1 U20 (.Y(n12), 
	.B(binary_r[0]), 
	.A(wenable));
   XOR2X1 U21 (.Y(binary_nxt[0]), 
	.B(wenable), 
	.A(binary_r[0]));
endmodule

module write_fifo_ctrl_0 (
	wclk, 
	rst_n, 
	wenable, 
	rptr, 
	wenable_fifo, 
	wptr, 
	waddr, 
	full_flag, 
	FE_OFN2_n3, 
	FE_OFN29_n2, 
	FE_OFN26_n2, 
	FE_OFN111_n3, 
	FE_OFN121_n2, 
	FE_OFN240_n3, 
	FE_OFN271_n2, 
	FE_OFN493_n3, 
	FE_OFN780_n3, 
	FE_OFN782_n3, 
	FE_OFN1135_n3, 
	FE_OFN1180_n2, 
	FE_OFN1435_n3);
   input wclk;
   input rst_n;
   input wenable;
   input [3:0] rptr;
   output wenable_fifo;
   output [3:0] wptr;
   output [2:0] waddr;
   output full_flag;
   input FE_OFN2_n3;
   input FE_OFN29_n2;
   input FE_OFN26_n2;
   input FE_OFN111_n3;
   input FE_OFN121_n2;
   input FE_OFN240_n3;
   input FE_OFN271_n2;
   input FE_OFN493_n3;
   input FE_OFN780_n3;
   input FE_OFN782_n3;
   input FE_OFN1135_n3;
   input FE_OFN1180_n2;
   input FE_OFN1435_n3;

   // Internal wires
   wire \gray_wptr[2] ;
   wire N5;
   wire n1;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire [3:0] wptr_nxt;
   wire [3:0] wrptr_r2;
   wire [3:0] wrptr_r1;

   DFFSR \wrptr_r1_reg[3]  (.S(1'b1), 
	.R(FE_OFN1135_n3), 
	.Q(wrptr_r1[3]), 
	.D(rptr[3]), 
	.CLK(FE_OFN121_n2));
   DFFSR \wrptr_r1_reg[2]  (.S(1'b1), 
	.R(FE_OFN780_n3), 
	.Q(wrptr_r1[2]), 
	.D(rptr[2]), 
	.CLK(FE_OFN121_n2));
   DFFSR \wrptr_r1_reg[1]  (.S(1'b1), 
	.R(FE_OFN2_n3), 
	.Q(wrptr_r1[1]), 
	.D(rptr[1]), 
	.CLK(FE_OFN271_n2));
   DFFSR \wrptr_r1_reg[0]  (.S(1'b1), 
	.R(FE_OFN111_n3), 
	.Q(wrptr_r1[0]), 
	.D(rptr[0]), 
	.CLK(wclk));
   DFFSR \wrptr_r2_reg[3]  (.S(1'b1), 
	.R(FE_OFN1135_n3), 
	.Q(wrptr_r2[3]), 
	.D(wrptr_r1[3]), 
	.CLK(FE_OFN121_n2));
   DFFSR \wrptr_r2_reg[2]  (.S(1'b1), 
	.R(FE_OFN1135_n3), 
	.Q(wrptr_r2[2]), 
	.D(wrptr_r1[2]), 
	.CLK(FE_OFN121_n2));
   DFFSR \wrptr_r2_reg[1]  (.S(1'b1), 
	.R(FE_OFN2_n3), 
	.Q(wrptr_r2[1]), 
	.D(wrptr_r1[1]), 
	.CLK(wclk));
   DFFSR \wrptr_r2_reg[0]  (.S(1'b1), 
	.R(FE_OFN782_n3), 
	.Q(wrptr_r2[0]), 
	.D(wrptr_r1[0]), 
	.CLK(wclk));
   DFFSR full_flag_r_reg (.S(1'b1), 
	.R(rst_n), 
	.Q(full_flag), 
	.D(N5), 
	.CLK(FE_OFN26_n2));
   DFFSR \waddr_reg[2]  (.S(1'b1), 
	.R(FE_OFN1435_n3), 
	.Q(waddr[2]), 
	.D(\gray_wptr[2] ), 
	.CLK(FE_OFN1180_n2));
   DFFSR \waddr_reg[1]  (.S(1'b1), 
	.R(FE_OFN1435_n3), 
	.Q(waddr[1]), 
	.D(wptr_nxt[1]), 
	.CLK(FE_OFN1180_n2));
   DFFSR \waddr_reg[0]  (.S(1'b1), 
	.R(FE_OFN782_n3), 
	.Q(waddr[0]), 
	.D(wptr_nxt[0]), 
	.CLK(wclk));
   write_ptr_0 WPU1 (.wclk(wclk), 
	.rst_n(FE_OFN1435_n3), 
	.wenable(wenable_fifo), 
	.wptr(wptr), 
	.wptr_nxt(wptr_nxt), 
	.FE_OFN2_n3(FE_OFN2_n3), 
	.FE_OFN29_n2(FE_OFN29_n2), 
	.FE_OFN111_n3(FE_OFN493_n3), 
	.FE_OFN121_n2(FE_OFN121_n2), 
	.FE_OFN240_n3(FE_OFN240_n3), 
	.FE_OFN493_n3(FE_OFN493_n3), 
	.FE_OFN782_n3(FE_OFN1435_n3), 
	.FE_OFN1180_n2(FE_OFN1180_n2));
   OR2X2 U15 (.Y(n1), 
	.B(n15), 
	.A(full_flag));
   INVX4 U16 (.Y(wenable_fifo), 
	.A(n1));
   INVX1 U17 (.Y(n15), 
	.A(wenable));
   NOR2X1 U18 (.Y(N5), 
	.B(n17), 
	.A(n16));
   NAND2X1 U19 (.Y(n17), 
	.B(n19), 
	.A(n18));
   XOR2X1 U20 (.Y(n19), 
	.B(\gray_wptr[2] ), 
	.A(n20));
   XOR2X1 U21 (.Y(\gray_wptr[2] ), 
	.B(wptr_nxt[2]), 
	.A(wptr_nxt[3]));
   XNOR2X1 U22 (.Y(n20), 
	.B(wrptr_r2[2]), 
	.A(wrptr_r2[3]));
   XNOR2X1 U23 (.Y(n18), 
	.B(wptr_nxt[1]), 
	.A(wrptr_r2[1]));
   NAND2X1 U24 (.Y(n16), 
	.B(n22), 
	.A(n21));
   XOR2X1 U25 (.Y(n22), 
	.B(wptr_nxt[3]), 
	.A(wrptr_r2[3]));
   XNOR2X1 U26 (.Y(n21), 
	.B(wptr_nxt[0]), 
	.A(wrptr_r2[0]));
endmodule

module read_ptr_0 (
	rclk, 
	rst_n, 
	renable, 
	rptr, 
	rptr_nxt, 
	FE_OFN2_n3, 
	FE_OFN111_n3, 
	FE_OFN780_n3, 
	FE_OFN814_n1, 
	FE_OFN1176_n1);
   input rclk;
   input rst_n;
   input renable;
   output [3:0] rptr;
   output [3:0] rptr_nxt;
   input FE_OFN2_n3;
   input FE_OFN111_n3;
   input FE_OFN780_n3;
   input FE_OFN814_n1;
   input FE_OFN1176_n1;

   // Internal wires
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire [2:0] binary_nxt;
   wire [3:0] binary_r;

   DFFSR \binary_r_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[0]), 
	.D(binary_nxt[0]), 
	.CLK(FE_OFN814_n1));
   DFFSR \binary_r_reg[1]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[1]), 
	.D(binary_nxt[1]), 
	.CLK(FE_OFN1176_n1));
   DFFSR \binary_r_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[2]), 
	.D(binary_nxt[2]), 
	.CLK(FE_OFN814_n1));
   DFFSR \binary_r_reg[3]  (.S(1'b1), 
	.R(FE_OFN780_n3), 
	.Q(binary_r[3]), 
	.D(rptr_nxt[3]), 
	.CLK(FE_OFN1176_n1));
   DFFSR \gray_r_reg[3]  (.S(1'b1), 
	.R(FE_OFN780_n3), 
	.Q(rptr[3]), 
	.D(rptr_nxt[3]), 
	.CLK(rclk));
   DFFSR \gray_r_reg[2]  (.S(1'b1), 
	.R(FE_OFN780_n3), 
	.Q(rptr[2]), 
	.D(rptr_nxt[2]), 
	.CLK(FE_OFN814_n1));
   DFFSR \gray_r_reg[1]  (.S(1'b1), 
	.R(FE_OFN2_n3), 
	.Q(rptr[1]), 
	.D(rptr_nxt[1]), 
	.CLK(FE_OFN814_n1));
   DFFSR \gray_r_reg[0]  (.S(1'b1), 
	.R(FE_OFN111_n3), 
	.Q(rptr[0]), 
	.D(rptr_nxt[0]), 
	.CLK(FE_OFN814_n1));
   XOR2X1 U11 (.Y(rptr_nxt[2]), 
	.B(binary_nxt[2]), 
	.A(rptr_nxt[3]));
   XNOR2X1 U12 (.Y(rptr_nxt[3]), 
	.B(binary_r[3]), 
	.A(n9));
   NAND2X1 U13 (.Y(n9), 
	.B(n10), 
	.A(binary_r[2]));
   XOR2X1 U14 (.Y(rptr_nxt[1]), 
	.B(binary_nxt[1]), 
	.A(binary_nxt[2]));
   XOR2X1 U15 (.Y(rptr_nxt[0]), 
	.B(binary_nxt[0]), 
	.A(binary_nxt[1]));
   XOR2X1 U16 (.Y(binary_nxt[2]), 
	.B(binary_r[2]), 
	.A(n10));
   INVX1 U17 (.Y(n10), 
	.A(n11));
   NAND3X1 U18 (.Y(n11), 
	.C(renable), 
	.B(binary_r[0]), 
	.A(binary_r[1]));
   XNOR2X1 U19 (.Y(binary_nxt[1]), 
	.B(binary_r[1]), 
	.A(n12));
   NAND2X1 U20 (.Y(n12), 
	.B(binary_r[0]), 
	.A(renable));
   XOR2X1 U21 (.Y(binary_nxt[0]), 
	.B(renable), 
	.A(binary_r[0]));
endmodule

module read_fifo_ctrl_0 (
	rclk, 
	rst_n, 
	renable, 
	wptr, 
	rptr, 
	raddr, 
	empty_flag, 
	FE_OFN2_n3, 
	FE_OFN111_n3, 
	FE_OFN240_n3, 
	FE_OFN493_n3, 
	FE_OFN780_n3, 
	FE_OFN782_n3, 
	FE_OFN1176_n1, 
	FE_OFN1435_n3);
   input rclk;
   input rst_n;
   input renable;
   input [3:0] wptr;
   output [3:0] rptr;
   output [2:0] raddr;
   output empty_flag;
   input FE_OFN2_n3;
   input FE_OFN111_n3;
   input FE_OFN240_n3;
   input FE_OFN493_n3;
   input FE_OFN780_n3;
   input FE_OFN782_n3;
   input FE_OFN1176_n1;
   input FE_OFN1435_n3;

   // Internal wires
   wire FE_OFN1465_EMPTY1;
   wire renable_p2;
   wire \gray_rptr[2] ;
   wire N3;
   wire n1;
   wire n2;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire [3:0] rptr_nxt;
   wire [3:0] rwptr_r2;
   wire [3:0] rwptr_r1;

   BUFX2 FE_OFC1465_EMPTY1 (.Y(empty_flag), 
	.A(FE_OFN1465_EMPTY1));
   DFFSR \rwptr_r1_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rwptr_r1[3]), 
	.D(wptr[3]), 
	.CLK(rclk));
   DFFSR \rwptr_r1_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rwptr_r1[2]), 
	.D(wptr[2]), 
	.CLK(rclk));
   DFFSR \rwptr_r1_reg[1]  (.S(1'b1), 
	.R(FE_OFN782_n3), 
	.Q(rwptr_r1[1]), 
	.D(wptr[1]), 
	.CLK(rclk));
   DFFSR \rwptr_r1_reg[0]  (.S(1'b1), 
	.R(FE_OFN2_n3), 
	.Q(rwptr_r1[0]), 
	.D(wptr[0]), 
	.CLK(FE_OFN1176_n1));
   DFFSR \rwptr_r2_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rwptr_r2[3]), 
	.D(rwptr_r1[3]), 
	.CLK(rclk));
   DFFSR \rwptr_r2_reg[2]  (.S(1'b1), 
	.R(FE_OFN780_n3), 
	.Q(rwptr_r2[2]), 
	.D(rwptr_r1[2]), 
	.CLK(rclk));
   DFFSR \rwptr_r2_reg[1]  (.S(1'b1), 
	.R(FE_OFN2_n3), 
	.Q(rwptr_r2[1]), 
	.D(rwptr_r1[1]), 
	.CLK(FE_OFN1176_n1));
   DFFSR \rwptr_r2_reg[0]  (.S(1'b1), 
	.R(FE_OFN111_n3), 
	.Q(rwptr_r2[0]), 
	.D(rwptr_r1[0]), 
	.CLK(FE_OFN1176_n1));
   DFFSR empty_flag_r_reg (.S(FE_OFN111_n3), 
	.R(1'b1), 
	.Q(FE_OFN1465_EMPTY1), 
	.D(N3), 
	.CLK(FE_OFN1176_n1));
   DFFSR \raddr_reg[2]  (.S(1'b1), 
	.R(FE_OFN240_n3), 
	.Q(raddr[2]), 
	.D(\gray_rptr[2] ), 
	.CLK(FE_OFN1176_n1));
   DFFSR \raddr_reg[1]  (.S(1'b1), 
	.R(FE_OFN240_n3), 
	.Q(raddr[1]), 
	.D(rptr_nxt[1]), 
	.CLK(FE_OFN1176_n1));
   DFFSR \raddr_reg[0]  (.S(1'b1), 
	.R(FE_OFN493_n3), 
	.Q(raddr[0]), 
	.D(rptr_nxt[0]), 
	.CLK(FE_OFN1176_n1));
   read_ptr_0 RPU1 (.rclk(rclk), 
	.rst_n(rst_n), 
	.renable(renable_p2), 
	.rptr(rptr), 
	.rptr_nxt(rptr_nxt), 
	.FE_OFN2_n3(FE_OFN2_n3), 
	.FE_OFN111_n3(FE_OFN1435_n3), 
	.FE_OFN780_n3(FE_OFN780_n3), 
	.FE_OFN814_n1(FE_OFN1176_n1), 
	.FE_OFN1176_n1(FE_OFN1176_n1));
   NOR2X1 U15 (.Y(renable_p2), 
	.B(n1), 
	.A(empty_flag));
   INVX1 U16 (.Y(n1), 
	.A(renable));
   NOR2X1 U17 (.Y(N3), 
	.B(n15), 
	.A(n2));
   NAND2X1 U18 (.Y(n15), 
	.B(n17), 
	.A(n16));
   XOR2X1 U19 (.Y(n17), 
	.B(\gray_rptr[2] ), 
	.A(n18));
   XOR2X1 U20 (.Y(\gray_rptr[2] ), 
	.B(rptr_nxt[2]), 
	.A(rptr_nxt[3]));
   XNOR2X1 U21 (.Y(n18), 
	.B(rwptr_r2[2]), 
	.A(rwptr_r2[3]));
   XNOR2X1 U22 (.Y(n16), 
	.B(rptr_nxt[1]), 
	.A(rwptr_r2[1]));
   NAND2X1 U23 (.Y(n2), 
	.B(n20), 
	.A(n19));
   XNOR2X1 U24 (.Y(n20), 
	.B(rptr_nxt[0]), 
	.A(rwptr_r2[0]));
   XNOR2X1 U25 (.Y(n19), 
	.B(rwptr_r2[3]), 
	.A(rptr_nxt[3]));
endmodule

module fifo_0 (
	rclk, 
	wclk, 
	rst_n, 
	renable, 
	wenable, 
	wdata, 
	rdata, 
	empty, 
	full, 
	FE_OFN27_n2, 
	FE_OFN28_n2, 
	FE_OFN29_n2, 
	FE_OFN121_n2, 
	FE_OFN240_n3, 
	FE_OFN270_n2, 
	FE_OFN271_n2, 
	FE_OFN273_n2, 
	FE_OFN493_n3, 
	FE_OFN526_n2, 
	FE_OFN529_n2, 
	FE_OFN780_n3, 
	FE_OFN782_n3, 
	FE_OFN816_n2, 
	FE_OFN817_n2, 
	FE_OFN819_n2, 
	FE_OFN820_n2, 
	FE_OFN821_n2, 
	FE_OFN822_n2, 
	FE_OFN824_n2, 
	FE_OFN823_n2, 
	FE_OFN1135_n3, 
	FE_OFN1176_n1, 
	FE_OFN1180_n2, 
	FE_OFN1183_n2, 
	FE_OFN1184_n2, 
	FE_OFN1185_n2, 
	FE_OFN1187_n2, 
	FE_OFN1435_n3);
   input rclk;
   input wclk;
   input rst_n;
   input renable;
   input wenable;
   input [7:0] wdata;
   output [7:0] rdata;
   output empty;
   output full;
   input FE_OFN27_n2;
   input FE_OFN28_n2;
   input FE_OFN29_n2;
   input FE_OFN121_n2;
   input FE_OFN240_n3;
   input FE_OFN270_n2;
   input FE_OFN271_n2;
   input FE_OFN273_n2;
   input FE_OFN493_n3;
   input FE_OFN526_n2;
   input FE_OFN529_n2;
   input FE_OFN780_n3;
   input FE_OFN782_n3;
   input FE_OFN816_n2;
   input FE_OFN817_n2;
   input FE_OFN819_n2;
   input FE_OFN820_n2;
   input FE_OFN821_n2;
   input FE_OFN822_n2;
   input FE_OFN824_n2;
   input FE_OFN823_n2;
   input FE_OFN1135_n3;
   input FE_OFN1176_n1;
   input FE_OFN1180_n2;
   input FE_OFN1183_n2;
   input FE_OFN1184_n2;
   input FE_OFN1185_n2;
   input FE_OFN1187_n2;
   input FE_OFN1435_n3;

   // Internal wires
   wire wenable_fifo;
   wire [2:0] waddr;
   wire [2:0] raddr;
   wire [3:0] rptr;
   wire [3:0] wptr;

   fiforam_0 UFIFORAM (.wclk(FE_OFN28_n2), 
	.wenable(wenable_fifo), 
	.waddr(waddr), 
	.raddr(raddr), 
	.wdata(wdata), 
	.rdata(rdata), 
	.FE_OFN28_n2(FE_OFN28_n2), 
	.FE_OFN29_n2(FE_OFN29_n2), 
	.FE_OFN26_n2(wclk), 
	.FE_OFN270_n2(FE_OFN121_n2), 
	.FE_OFN271_n2(FE_OFN821_n2), 
	.FE_OFN273_n2(FE_OFN273_n2), 
	.FE_OFN526_n2(FE_OFN526_n2), 
	.FE_OFN529_n2(FE_OFN529_n2), 
	.FE_OFN816_n2(FE_OFN816_n2), 
	.FE_OFN817_n2(FE_OFN817_n2), 
	.FE_OFN819_n2(FE_OFN273_n2), 
	.FE_OFN820_n2(FE_OFN820_n2), 
	.FE_OFN821_n2(FE_OFN823_n2), 
	.FE_OFN822_n2(FE_OFN822_n2), 
	.FE_OFN824_n2(FE_OFN824_n2), 
	.FE_OFN823_n2(FE_OFN121_n2), 
	.FE_OFN1183_n2(FE_OFN1183_n2), 
	.FE_OFN1184_n2(FE_OFN1184_n2), 
	.FE_OFN1185_n2(FE_OFN1185_n2), 
	.FE_OFN1187_n2(FE_OFN1187_n2));
   write_fifo_ctrl_0 UWFC (.wclk(FE_OFN273_n2), 
	.rst_n(rst_n), 
	.wenable(wenable), 
	.rptr(rptr), 
	.wenable_fifo(wenable_fifo), 
	.wptr(wptr), 
	.waddr(waddr), 
	.full_flag(full), 
	.FE_OFN2_n3(FE_OFN782_n3), 
	.FE_OFN29_n2(FE_OFN27_n2), 
	.FE_OFN26_n2(FE_OFN270_n2), 
	.FE_OFN111_n3(rst_n), 
	.FE_OFN121_n2(FE_OFN819_n2), 
	.FE_OFN240_n3(FE_OFN240_n3), 
	.FE_OFN271_n2(FE_OFN271_n2), 
	.FE_OFN493_n3(FE_OFN240_n3), 
	.FE_OFN780_n3(FE_OFN1135_n3), 
	.FE_OFN782_n3(FE_OFN782_n3), 
	.FE_OFN1135_n3(FE_OFN1135_n3), 
	.FE_OFN1180_n2(FE_OFN1180_n2), 
	.FE_OFN1435_n3(FE_OFN1435_n3));
   read_fifo_ctrl_0 URFC (.rclk(rclk), 
	.rst_n(FE_OFN780_n3), 
	.renable(renable), 
	.wptr(wptr), 
	.rptr(rptr), 
	.raddr(raddr), 
	.empty_flag(empty), 
	.FE_OFN2_n3(FE_OFN782_n3), 
	.FE_OFN111_n3(rst_n), 
	.FE_OFN240_n3(FE_OFN493_n3), 
	.FE_OFN493_n3(FE_OFN493_n3), 
	.FE_OFN780_n3(FE_OFN1135_n3), 
	.FE_OFN782_n3(FE_OFN782_n3), 
	.FE_OFN1176_n1(FE_OFN1176_n1), 
	.FE_OFN1435_n3(FE_OFN1435_n3));
endmodule

module RCV_FIFO_0 (
	CLK, 
	D_CLK, 
	RST_N, 
	R_ENABLE, 
	W_ENABLE, 
	WDATA, 
	R_DATA, 
	EMPTY, 
	FULL, 
	FE_OFN27_n2, 
	FE_OFN28_n2, 
	FE_OFN29_n2, 
	FE_OFN121_n2, 
	FE_OFN240_n3, 
	FE_OFN270_n2, 
	FE_OFN271_n2, 
	FE_OFN273_n2, 
	FE_OFN493_n3, 
	FE_OFN526_n2, 
	FE_OFN529_n2, 
	FE_OFN780_n3, 
	FE_OFN782_n3, 
	FE_OFN816_n2, 
	FE_OFN817_n2, 
	FE_OFN819_n2, 
	FE_OFN820_n2, 
	FE_OFN821_n2, 
	FE_OFN822_n2, 
	FE_OFN824_n2, 
	FE_OFN823_n2, 
	FE_OFN1135_n3, 
	FE_OFN1176_n1, 
	FE_OFN1180_n2, 
	FE_OFN1183_n2, 
	FE_OFN1184_n2, 
	FE_OFN1185_n2, 
	FE_OFN1187_n2, 
	FE_OFN1435_n3);
   input CLK;
   input D_CLK;
   input RST_N;
   input R_ENABLE;
   input W_ENABLE;
   input [7:0] WDATA;
   output [7:0] R_DATA;
   output EMPTY;
   output FULL;
   input FE_OFN27_n2;
   input FE_OFN28_n2;
   input FE_OFN29_n2;
   input FE_OFN121_n2;
   input FE_OFN240_n3;
   input FE_OFN270_n2;
   input FE_OFN271_n2;
   input FE_OFN273_n2;
   input FE_OFN493_n3;
   input FE_OFN526_n2;
   input FE_OFN529_n2;
   input FE_OFN780_n3;
   input FE_OFN782_n3;
   input FE_OFN816_n2;
   input FE_OFN817_n2;
   input FE_OFN819_n2;
   input FE_OFN820_n2;
   input FE_OFN821_n2;
   input FE_OFN822_n2;
   input FE_OFN824_n2;
   input FE_OFN823_n2;
   input FE_OFN1135_n3;
   input FE_OFN1176_n1;
   input FE_OFN1180_n2;
   input FE_OFN1183_n2;
   input FE_OFN1184_n2;
   input FE_OFN1185_n2;
   input FE_OFN1187_n2;
   input FE_OFN1435_n3;

   fifo_0 MAPPING (.rclk(CLK), 
	.wclk(D_CLK), 
	.rst_n(RST_N), 
	.renable(R_ENABLE), 
	.wenable(W_ENABLE), 
	.wdata(WDATA), 
	.rdata(R_DATA), 
	.empty(EMPTY), 
	.full(FULL), 
	.FE_OFN27_n2(FE_OFN27_n2), 
	.FE_OFN28_n2(FE_OFN28_n2), 
	.FE_OFN29_n2(FE_OFN29_n2), 
	.FE_OFN121_n2(FE_OFN121_n2), 
	.FE_OFN240_n3(FE_OFN240_n3), 
	.FE_OFN270_n2(FE_OFN270_n2), 
	.FE_OFN271_n2(FE_OFN271_n2), 
	.FE_OFN273_n2(FE_OFN273_n2), 
	.FE_OFN493_n3(FE_OFN493_n3), 
	.FE_OFN526_n2(FE_OFN526_n2), 
	.FE_OFN529_n2(FE_OFN529_n2), 
	.FE_OFN780_n3(FE_OFN780_n3), 
	.FE_OFN782_n3(FE_OFN782_n3), 
	.FE_OFN816_n2(FE_OFN816_n2), 
	.FE_OFN817_n2(FE_OFN817_n2), 
	.FE_OFN819_n2(FE_OFN819_n2), 
	.FE_OFN820_n2(FE_OFN820_n2), 
	.FE_OFN821_n2(FE_OFN821_n2), 
	.FE_OFN822_n2(FE_OFN822_n2), 
	.FE_OFN824_n2(FE_OFN824_n2), 
	.FE_OFN823_n2(FE_OFN823_n2), 
	.FE_OFN1135_n3(FE_OFN1135_n3), 
	.FE_OFN1176_n1(FE_OFN1176_n1), 
	.FE_OFN1180_n2(FE_OFN1180_n2), 
	.FE_OFN1183_n2(FE_OFN1183_n2), 
	.FE_OFN1184_n2(FE_OFN1184_n2), 
	.FE_OFN1185_n2(FE_OFN1185_n2), 
	.FE_OFN1187_n2(FE_OFN1187_n2), 
	.FE_OFN1435_n3(FE_OFN1435_n3));
endmodule

module USB_SHIFT (
	D_CLK, 
	RST, 
	EOP, 
	SHIFT_ENABLE, 
	D_ORIG, 
	RCV_DATA, 
	CRC_SHIFT, 
	STUFF_ERROR, 
	FE_OFN22_n1, 
	FE_PT1_n3, 
	FE_OFN813_n1, 
	FE_OFN1177_n1);
   input D_CLK;
   input RST;
   input EOP;
   input SHIFT_ENABLE;
   input D_ORIG;
   output [7:0] RCV_DATA;
   output CRC_SHIFT;
   output STUFF_ERROR;
   input FE_OFN22_n1;
   input FE_PT1_n3;
   input FE_OFN813_n1;
   input FE_OFN1177_n1;

   // Internal wires
   wire FE_OFN1134_n3;
   wire N43;
   wire N44;
   wire N45;
   wire N52;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n54;
   wire n55;
   wire n56;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire [1:0] state;
   wire [2:0] ctr;
   wire [1:0] nextstate;

   BUFX2 FE_OFC1134_n3 (.Y(FE_OFN1134_n3), 
	.A(n3));
   LATCH \nextstate_reg[0]  (.Q(nextstate[0]), 
	.D(N44), 
	.CLK(N43));
   DFFSR \state_reg[0]  (.S(FE_PT1_n3), 
	.R(1'b1), 
	.Q(state[0]), 
	.D(nextstate[0]), 
	.CLK(FE_OFN1177_n1));
   LATCH \nextstate_reg[1]  (.Q(nextstate[1]), 
	.D(N45), 
	.CLK(N43));
   DFFSR \state_reg[1]  (.S(FE_PT1_n3), 
	.R(1'b1), 
	.Q(state[1]), 
	.D(nextstate[1]), 
	.CLK(D_CLK));
   DFFPOSX1 \current_reg[7]  (.Q(RCV_DATA[7]), 
	.D(n33), 
	.CLK(D_CLK));
   DFFPOSX1 \current_reg[6]  (.Q(RCV_DATA[6]), 
	.D(n34), 
	.CLK(D_CLK));
   DFFPOSX1 \current_reg[5]  (.Q(RCV_DATA[5]), 
	.D(n47), 
	.CLK(D_CLK));
   DFFPOSX1 \current_reg[4]  (.Q(RCV_DATA[4]), 
	.D(n46), 
	.CLK(D_CLK));
   DFFPOSX1 \current_reg[3]  (.Q(RCV_DATA[3]), 
	.D(n45), 
	.CLK(FE_OFN22_n1));
   DFFPOSX1 \current_reg[2]  (.Q(RCV_DATA[2]), 
	.D(n44), 
	.CLK(FE_OFN22_n1));
   DFFPOSX1 \current_reg[1]  (.Q(RCV_DATA[1]), 
	.D(n43), 
	.CLK(FE_OFN813_n1));
   DFFPOSX1 \current_reg[0]  (.Q(RCV_DATA[0]), 
	.D(n42), 
	.CLK(FE_OFN813_n1));
   DFFSR \ctr_reg[0]  (.S(1'b1), 
	.R(FE_PT1_n3), 
	.Q(ctr[0]), 
	.D(n56), 
	.CLK(FE_OFN1177_n1));
   DFFSR \ctr_reg[1]  (.S(1'b1), 
	.R(FE_PT1_n3), 
	.Q(ctr[1]), 
	.D(n55), 
	.CLK(FE_OFN1177_n1));
   DFFSR \ctr_reg[2]  (.S(1'b1), 
	.R(FE_PT1_n3), 
	.Q(ctr[2]), 
	.D(n54), 
	.CLK(FE_OFN1177_n1));
   AND2X2 U3 (.Y(CRC_SHIFT), 
	.B(n32), 
	.A(SHIFT_ENABLE));
   MUX2X1 U4 (.Y(n33), 
	.S(FE_OFN1134_n3), 
	.B(n1), 
	.A(n2));
   MUX2X1 U5 (.Y(n34), 
	.S(FE_OFN1134_n3), 
	.B(n2), 
	.A(n4));
   INVX1 U6 (.Y(n2), 
	.A(RCV_DATA[7]));
   MUX2X1 U8 (.Y(n56), 
	.S(ctr[0]), 
	.B(n6), 
	.A(n7));
   NAND2X1 U9 (.Y(n6), 
	.B(n7), 
	.A(n8));
   MUX2X1 U10 (.Y(n55), 
	.S(ctr[1]), 
	.B(n9), 
	.A(n10));
   INVX1 U11 (.Y(n10), 
	.A(n11));
   NAND3X1 U12 (.Y(n9), 
	.C(n8), 
	.B(n7), 
	.A(ctr[0]));
   MUX2X1 U13 (.Y(n54), 
	.S(ctr[2]), 
	.B(n12), 
	.A(n13));
   AOI21X1 U14 (.Y(n13), 
	.C(n11), 
	.B(n14), 
	.A(n8));
   OAI21X1 U15 (.Y(n11), 
	.C(n7), 
	.B(n15), 
	.A(ctr[0]));
   NAND2X1 U16 (.Y(n7), 
	.B(n17), 
	.A(n16));
   INVX1 U17 (.Y(n8), 
	.A(n15));
   NAND3X1 U18 (.Y(n12), 
	.C(n18), 
	.B(SHIFT_ENABLE), 
	.A(ctr[0]));
   NOR2X1 U19 (.Y(n18), 
	.B(n14), 
	.A(n15));
   INVX1 U20 (.Y(n14), 
	.A(ctr[1]));
   NAND2X1 U21 (.Y(n15), 
	.B(n16), 
	.A(D_ORIG));
   MUX2X1 U22 (.Y(n47), 
	.S(FE_OFN1134_n3), 
	.B(n4), 
	.A(n19));
   INVX1 U23 (.Y(n4), 
	.A(RCV_DATA[6]));
   MUX2X1 U24 (.Y(n46), 
	.S(FE_OFN1134_n3), 
	.B(n19), 
	.A(n20));
   INVX1 U25 (.Y(n20), 
	.A(RCV_DATA[4]));
   INVX1 U26 (.Y(n19), 
	.A(RCV_DATA[5]));
   INVX1 U27 (.Y(n45), 
	.A(n21));
   MUX2X1 U28 (.Y(n21), 
	.S(FE_OFN1134_n3), 
	.B(RCV_DATA[4]), 
	.A(RCV_DATA[3]));
   INVX1 U29 (.Y(n44), 
	.A(n22));
   MUX2X1 U30 (.Y(n22), 
	.S(FE_OFN1134_n3), 
	.B(RCV_DATA[3]), 
	.A(RCV_DATA[2]));
   INVX1 U31 (.Y(n43), 
	.A(n23));
   MUX2X1 U32 (.Y(n23), 
	.S(FE_OFN1134_n3), 
	.B(RCV_DATA[2]), 
	.A(RCV_DATA[1]));
   INVX1 U33 (.Y(n42), 
	.A(n24));
   MUX2X1 U34 (.Y(n24), 
	.S(FE_OFN1134_n3), 
	.B(RCV_DATA[1]), 
	.A(RCV_DATA[0]));
   NAND3X1 U35 (.Y(n3), 
	.C(SHIFT_ENABLE), 
	.B(FE_PT1_n3), 
	.A(n16));
   INVX1 U37 (.Y(n16), 
	.A(N52));
   OAI21X1 U38 (.Y(N45), 
	.C(n25), 
	.B(n5), 
	.A(EOP));
   AOI21X1 U39 (.Y(n25), 
	.C(n27), 
	.B(state[0]), 
	.A(n26));
   INVX1 U40 (.Y(n27), 
	.A(N43));
   NOR2X1 U41 (.Y(n26), 
	.B(n1), 
	.A(state[1]));
   INVX1 U42 (.Y(n1), 
	.A(D_ORIG));
   NAND2X1 U43 (.Y(n5), 
	.B(n28), 
	.A(state[1]));
   NOR2X1 U44 (.Y(N44), 
	.B(n30), 
	.A(n29));
   NAND2X1 U45 (.Y(n30), 
	.B(ctr[1]), 
	.A(ctr[2]));
   OR2X1 U46 (.Y(n29), 
	.B(ctr[0]), 
	.A(N52));
   NAND3X1 U47 (.Y(N43), 
	.C(state[0]), 
	.B(n31), 
	.A(n17));
   INVX1 U48 (.Y(n17), 
	.A(SHIFT_ENABLE));
   OAI21X1 U49 (.Y(n32), 
	.C(N52), 
	.B(n28), 
	.A(n31));
   NAND2X1 U50 (.Y(N52), 
	.B(n28), 
	.A(n31));
   INVX1 U51 (.Y(n28), 
	.A(state[0]));
   INVX1 U52 (.Y(n31), 
	.A(state[1]));
endmodule

module U_BUFFER (
	D_CLK, 
	RST, 
	W_ENABLE, 
	EOP, 
	W_ENABLE_OUT, 
	RCV_DATA, 
	W_DATA, 
	FE_OFN23_n1, 
	FE_OFN813_n1, 
	FE_OFN1177_n1);
   input D_CLK;
   input RST;
   input W_ENABLE;
   input EOP;
   output W_ENABLE_OUT;
   input [7:0] RCV_DATA;
   output [7:0] W_DATA;
   input FE_OFN23_n1;
   input FE_OFN813_n1;
   input FE_OFN1177_n1;

   // Internal wires
   wire FE_OFN1133_n8;
   wire n44;
   wire n48;
   wire n50;
   wire n52;
   wire n54;
   wire n56;
   wire n58;
   wire n60;
   wire n62;
   wire n64;
   wire n66;
   wire n68;
   wire n70;
   wire n72;
   wire n74;
   wire n76;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n88;
   wire n89;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire [7:0] Byte0;
   wire [7:0] Byte1;
   wire [1:0] ctr;

   BUFX2 FE_OFC1133_n8 (.Y(FE_OFN1133_n8), 
	.A(n8));
   DFFSR \Byte0_reg[7]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte0[7]), 
	.D(n78), 
	.CLK(FE_OFN23_n1));
   DFFSR \Byte0_reg[6]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte0[6]), 
	.D(n76), 
	.CLK(FE_OFN23_n1));
   DFFSR \Byte0_reg[5]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte0[5]), 
	.D(n74), 
	.CLK(FE_OFN1177_n1));
   DFFSR \Byte0_reg[4]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte0[4]), 
	.D(n72), 
	.CLK(D_CLK));
   DFFSR \Byte0_reg[3]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte0[3]), 
	.D(n70), 
	.CLK(D_CLK));
   DFFSR \Byte0_reg[2]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte0[2]), 
	.D(n68), 
	.CLK(D_CLK));
   DFFSR \Byte0_reg[1]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte0[1]), 
	.D(n66), 
	.CLK(FE_OFN813_n1));
   DFFSR \Byte0_reg[0]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte0[0]), 
	.D(n64), 
	.CLK(FE_OFN23_n1));
   DFFSR \Byte1_reg[7]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte1[7]), 
	.D(n62), 
	.CLK(FE_OFN23_n1));
   DFFSR \Byte1_reg[6]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte1[6]), 
	.D(n60), 
	.CLK(FE_OFN23_n1));
   DFFSR \Byte1_reg[5]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte1[5]), 
	.D(n58), 
	.CLK(D_CLK));
   DFFSR \Byte1_reg[4]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte1[4]), 
	.D(n56), 
	.CLK(D_CLK));
   DFFSR \Byte1_reg[3]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte1[3]), 
	.D(n54), 
	.CLK(D_CLK));
   DFFSR \Byte1_reg[2]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte1[2]), 
	.D(n52), 
	.CLK(D_CLK));
   DFFSR \Byte1_reg[1]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte1[1]), 
	.D(n50), 
	.CLK(FE_OFN23_n1));
   DFFSR \Byte1_reg[0]  (.S(1'b1), 
	.R(n33), 
	.Q(Byte1[0]), 
	.D(n48), 
	.CLK(FE_OFN23_n1));
   DFFSR \ctr_reg[0]  (.S(1'b1), 
	.R(n33), 
	.Q(ctr[0]), 
	.D(n89), 
	.CLK(FE_OFN813_n1));
   DFFSR \ctr_reg[1]  (.S(1'b1), 
	.R(n33), 
	.Q(ctr[1]), 
	.D(n88), 
	.CLK(FE_OFN1177_n1));
   DFFPOSX1 W_ENABLE_OUT_reg (.Q(W_ENABLE_OUT), 
	.D(n44), 
	.CLK(FE_OFN23_n1));
   DFFPOSX1 \W_DATA_reg[7]  (.Q(W_DATA[7]), 
	.D(n79), 
	.CLK(FE_OFN23_n1));
   DFFPOSX1 \W_DATA_reg[6]  (.Q(W_DATA[6]), 
	.D(n80), 
	.CLK(FE_OFN23_n1));
   DFFPOSX1 \W_DATA_reg[5]  (.Q(W_DATA[5]), 
	.D(n81), 
	.CLK(D_CLK));
   DFFPOSX1 \W_DATA_reg[4]  (.Q(W_DATA[4]), 
	.D(n82), 
	.CLK(FE_OFN23_n1));
   DFFPOSX1 \W_DATA_reg[3]  (.Q(W_DATA[3]), 
	.D(n83), 
	.CLK(D_CLK));
   DFFPOSX1 \W_DATA_reg[2]  (.Q(W_DATA[2]), 
	.D(n84), 
	.CLK(D_CLK));
   DFFPOSX1 \W_DATA_reg[1]  (.Q(W_DATA[1]), 
	.D(n85), 
	.CLK(FE_OFN23_n1));
   DFFPOSX1 \W_DATA_reg[0]  (.Q(W_DATA[0]), 
	.D(n86), 
	.CLK(FE_OFN23_n1));
   INVX4 U3 (.Y(n6), 
	.A(W_ENABLE));
   INVX4 U4 (.Y(n33), 
	.A(RST));
   MUX2X1 U5 (.Y(n89), 
	.S(ctr[0]), 
	.B(n1), 
	.A(n2));
   NAND2X1 U6 (.Y(n1), 
	.B(n3), 
	.A(n2));
   MUX2X1 U7 (.Y(n88), 
	.S(n2), 
	.B(n4), 
	.A(n5));
   OAI21X1 U8 (.Y(n2), 
	.C(n3), 
	.B(n6), 
	.A(ctr[1]));
   NAND2X1 U9 (.Y(n5), 
	.B(n3), 
	.A(ctr[0]));
   INVX1 U10 (.Y(n3), 
	.A(EOP));
   INVX1 U11 (.Y(n4), 
	.A(ctr[1]));
   INVX1 U12 (.Y(n86), 
	.A(n7));
   MUX2X1 U13 (.Y(n7), 
	.S(FE_OFN1133_n8), 
	.B(Byte1[0]), 
	.A(W_DATA[0]));
   INVX1 U14 (.Y(n85), 
	.A(n9));
   MUX2X1 U15 (.Y(n9), 
	.S(FE_OFN1133_n8), 
	.B(Byte1[1]), 
	.A(W_DATA[1]));
   INVX1 U16 (.Y(n84), 
	.A(n10));
   MUX2X1 U17 (.Y(n10), 
	.S(FE_OFN1133_n8), 
	.B(Byte1[2]), 
	.A(W_DATA[2]));
   INVX1 U18 (.Y(n83), 
	.A(n11));
   MUX2X1 U19 (.Y(n11), 
	.S(FE_OFN1133_n8), 
	.B(Byte1[3]), 
	.A(W_DATA[3]));
   INVX1 U20 (.Y(n82), 
	.A(n12));
   MUX2X1 U21 (.Y(n12), 
	.S(FE_OFN1133_n8), 
	.B(Byte1[4]), 
	.A(W_DATA[4]));
   INVX1 U22 (.Y(n81), 
	.A(n13));
   MUX2X1 U23 (.Y(n13), 
	.S(FE_OFN1133_n8), 
	.B(Byte1[5]), 
	.A(W_DATA[5]));
   INVX1 U24 (.Y(n80), 
	.A(n14));
   MUX2X1 U25 (.Y(n14), 
	.S(FE_OFN1133_n8), 
	.B(Byte1[6]), 
	.A(W_DATA[6]));
   INVX1 U26 (.Y(n79), 
	.A(n15));
   MUX2X1 U27 (.Y(n15), 
	.S(FE_OFN1133_n8), 
	.B(Byte1[7]), 
	.A(W_DATA[7]));
   INVX1 U28 (.Y(n78), 
	.A(n16));
   MUX2X1 U29 (.Y(n16), 
	.S(n6), 
	.B(RCV_DATA[7]), 
	.A(Byte0[7]));
   INVX1 U30 (.Y(n76), 
	.A(n17));
   MUX2X1 U31 (.Y(n17), 
	.S(n6), 
	.B(RCV_DATA[6]), 
	.A(Byte0[6]));
   INVX1 U32 (.Y(n74), 
	.A(n18));
   MUX2X1 U33 (.Y(n18), 
	.S(n6), 
	.B(RCV_DATA[5]), 
	.A(Byte0[5]));
   INVX1 U34 (.Y(n72), 
	.A(n19));
   MUX2X1 U35 (.Y(n19), 
	.S(n6), 
	.B(RCV_DATA[4]), 
	.A(Byte0[4]));
   INVX1 U36 (.Y(n70), 
	.A(n20));
   MUX2X1 U37 (.Y(n20), 
	.S(n6), 
	.B(RCV_DATA[3]), 
	.A(Byte0[3]));
   INVX1 U38 (.Y(n68), 
	.A(n21));
   MUX2X1 U39 (.Y(n21), 
	.S(n6), 
	.B(RCV_DATA[2]), 
	.A(Byte0[2]));
   INVX1 U40 (.Y(n66), 
	.A(n22));
   MUX2X1 U41 (.Y(n22), 
	.S(n6), 
	.B(RCV_DATA[1]), 
	.A(Byte0[1]));
   INVX1 U42 (.Y(n64), 
	.A(n23));
   MUX2X1 U43 (.Y(n23), 
	.S(n6), 
	.B(RCV_DATA[0]), 
	.A(Byte0[0]));
   INVX1 U44 (.Y(n62), 
	.A(n24));
   MUX2X1 U45 (.Y(n24), 
	.S(n6), 
	.B(Byte0[7]), 
	.A(Byte1[7]));
   INVX1 U46 (.Y(n60), 
	.A(n25));
   MUX2X1 U47 (.Y(n25), 
	.S(n6), 
	.B(Byte0[6]), 
	.A(Byte1[6]));
   INVX1 U48 (.Y(n58), 
	.A(n26));
   MUX2X1 U49 (.Y(n26), 
	.S(n6), 
	.B(Byte0[5]), 
	.A(Byte1[5]));
   INVX1 U50 (.Y(n56), 
	.A(n27));
   MUX2X1 U51 (.Y(n27), 
	.S(n6), 
	.B(Byte0[4]), 
	.A(Byte1[4]));
   INVX1 U52 (.Y(n54), 
	.A(n28));
   MUX2X1 U53 (.Y(n28), 
	.S(n6), 
	.B(Byte0[3]), 
	.A(Byte1[3]));
   INVX1 U54 (.Y(n52), 
	.A(n29));
   MUX2X1 U55 (.Y(n29), 
	.S(n6), 
	.B(Byte0[2]), 
	.A(Byte1[2]));
   INVX1 U56 (.Y(n50), 
	.A(n30));
   MUX2X1 U57 (.Y(n30), 
	.S(n6), 
	.B(Byte0[1]), 
	.A(Byte1[1]));
   INVX1 U58 (.Y(n48), 
	.A(n31));
   MUX2X1 U59 (.Y(n31), 
	.S(n6), 
	.B(Byte0[0]), 
	.A(Byte1[0]));
   OAI21X1 U60 (.Y(n44), 
	.C(n32), 
	.B(FE_OFN1133_n8), 
	.A(ctr[0]));
   NAND2X1 U61 (.Y(n32), 
	.B(RST), 
	.A(W_ENABLE_OUT));
   NAND3X1 U62 (.Y(n8), 
	.C(ctr[1]), 
	.B(n33), 
	.A(W_ENABLE));
endmodule

module U_CLKDIV (
	CLK, 
	RST, 
	D_CLK, 
	n3);
   input CLK;
   input RST;
   output D_CLK;
   input n3;

   // Internal wires
   wire FE_UNCONNECTED_5;
   wire FE_UNCONNECTED_4;
   wire FE_UNCONNECTED_3;
   wire N8;
   wire N9;
   wire N15;
   wire n2;
   wire n4;
   wire [1:0] ctr1;
   wire [1:0] ctr0;

   assign D_CLK = N15 ;

   DFFSR \ctr1_reg[0]  (.S(1'b1), 
	.R(n3), 
	.Q(ctr1[0]), 
	.D(N8), 
	.CLK(CLK));
   DFFSR \ctr1_reg[1]  (.S(1'b1), 
	.R(n3), 
	.Q(ctr1[1]), 
	.D(N9), 
	.CLK(CLK));
   \**SEQGEN**  \ctr0_reg[0]  (.clear(RST), 
	.preset(1'b0), 
	.next_state(FE_UNCONNECTED_3), 
	.clocked_on(FE_UNCONNECTED_5), 
	.data_in(1'b0), 
	.enable(1'b0), 
	.Q(ctr0[0]), 
	.synch_clear(1'b0), 
	.synch_preset(1'b0), 
	.synch_toggle(1'b0), 
	.synch_enable(1'b1));
   \**SEQGEN**  \ctr0_reg[1]  (.clear(RST), 
	.preset(1'b0), 
	.next_state(FE_UNCONNECTED_4), 
	.clocked_on(FE_UNCONNECTED_5), 
	.data_in(1'b0), 
	.enable(1'b0), 
	.Q(ctr0[1]), 
	.synch_clear(1'b0), 
	.synch_preset(1'b0), 
	.synch_toggle(1'b0), 
	.synch_enable(1'b1));
   NOR2X1 U7 (.Y(N9), 
	.B(n2), 
	.A(ctr1[1]));
   NOR2X1 U8 (.Y(N8), 
	.B(ctr1[0]), 
	.A(ctr1[1]));
   AOI22X1 U9 (.Y(N15), 
	.D(n2), 
	.C(ctr1[1]), 
	.B(n4), 
	.A(ctr0[1]));
   INVX1 U10 (.Y(n2), 
	.A(ctr1[0]));
   INVX1 U12 (.Y(n4), 
	.A(ctr0[0]));
endmodule

module U_CRC (
	D_CLK, 
	RST_N, 
	CRC_SHIFT, 
	D_ORIG, 
	CRC_EN, 
	CRC_ERROR, 
	FE_OFN17_CRC_SHIFT, 
	FE_OFN27_n2, 
	FE_OFN28_n2, 
	FE_OFN115_CRC_SHIFT, 
	FE_OFN511_CRC_SHIFT, 
	FE_OFN801_CRC_SHIFT, 
	FE_OFN818_n2, 
	FE_OFN817_n2, 
	FE_OFN1161_CRC_SHIFT, 
	FE_OFN1182_n2, 
	FE_OFN1184_n2);
   input D_CLK;
   input RST_N;
   input CRC_SHIFT;
   input D_ORIG;
   input CRC_EN;
   output CRC_ERROR;
   input FE_OFN17_CRC_SHIFT;
   input FE_OFN27_n2;
   input FE_OFN28_n2;
   input FE_OFN115_CRC_SHIFT;
   input FE_OFN511_CRC_SHIFT;
   input FE_OFN801_CRC_SHIFT;
   input FE_OFN818_n2;
   input FE_OFN817_n2;
   input FE_OFN1161_CRC_SHIFT;
   input FE_OFN1182_n2;
   input FE_OFN1184_n2;

   // Internal wires
   wire FE_OFN1464_CRC_EN;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n16;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire [15:0] present_val;

   BUFX2 FE_OFC1464_CRC_EN (.Y(FE_OFN1464_CRC_EN), 
	.A(CRC_EN));
   DFFSR \present_val_reg[0]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[0]), 
	.D(n80), 
	.CLK(FE_OFN818_n2));
   DFFSR \present_val_reg[1]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[1]), 
	.D(n79), 
	.CLK(FE_OFN818_n2));
   DFFSR \present_val_reg[2]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[2]), 
	.D(n78), 
	.CLK(D_CLK));
   DFFSR \present_val_reg[3]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[3]), 
	.D(n77), 
	.CLK(FE_OFN1182_n2));
   DFFSR \present_val_reg[4]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[4]), 
	.D(n76), 
	.CLK(FE_OFN1182_n2));
   DFFSR \present_val_reg[5]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[5]), 
	.D(n75), 
	.CLK(FE_OFN28_n2));
   DFFSR \present_val_reg[6]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[6]), 
	.D(n74), 
	.CLK(FE_OFN817_n2));
   DFFSR \present_val_reg[7]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[7]), 
	.D(n73), 
	.CLK(D_CLK));
   DFFSR \present_val_reg[8]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[8]), 
	.D(n72), 
	.CLK(FE_OFN27_n2));
   DFFSR \present_val_reg[9]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[9]), 
	.D(n71), 
	.CLK(D_CLK));
   DFFSR \present_val_reg[10]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[10]), 
	.D(n70), 
	.CLK(D_CLK));
   DFFSR \present_val_reg[11]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[11]), 
	.D(n69), 
	.CLK(D_CLK));
   DFFSR \present_val_reg[12]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[12]), 
	.D(n68), 
	.CLK(FE_OFN1184_n2));
   DFFSR \present_val_reg[13]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[13]), 
	.D(n67), 
	.CLK(FE_OFN1184_n2));
   DFFSR \present_val_reg[14]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[14]), 
	.D(n66), 
	.CLK(D_CLK));
   DFFSR \present_val_reg[15]  (.S(n60), 
	.R(1'b1), 
	.Q(present_val[15]), 
	.D(n65), 
	.CLK(D_CLK));
   INVX4 U18 (.Y(n60), 
	.A(RST_N));
   NAND2X1 U20 (.Y(n80), 
	.B(n16), 
	.A(FE_OFN1464_CRC_EN));
   INVX1 U21 (.Y(n16), 
	.A(n18));
   OAI21X1 U22 (.Y(n18), 
	.C(n20), 
	.B(n19), 
	.A(FE_OFN115_CRC_SHIFT));
   NAND2X1 U23 (.Y(n79), 
	.B(FE_OFN1464_CRC_EN), 
	.A(n21));
   MUX2X1 U24 (.Y(n21), 
	.S(FE_OFN115_CRC_SHIFT), 
	.B(present_val[1]), 
	.A(present_val[0]));
   OR2X1 U25 (.Y(n78), 
	.B(n23), 
	.A(n22));
   OAI21X1 U26 (.Y(n23), 
	.C(FE_OFN1464_CRC_EN), 
	.B(n20), 
	.A(present_val[1]));
   MUX2X1 U27 (.Y(n22), 
	.S(FE_OFN1161_CRC_SHIFT), 
	.B(n24), 
	.A(n25));
   NAND2X1 U28 (.Y(n25), 
	.B(n26), 
	.A(present_val[1]));
   INVX1 U29 (.Y(n24), 
	.A(present_val[2]));
   NAND2X1 U30 (.Y(n77), 
	.B(FE_OFN1464_CRC_EN), 
	.A(n27));
   MUX2X1 U31 (.Y(n27), 
	.S(FE_OFN1161_CRC_SHIFT), 
	.B(present_val[3]), 
	.A(present_val[2]));
   NAND2X1 U32 (.Y(n76), 
	.B(CRC_EN), 
	.A(n28));
   MUX2X1 U33 (.Y(n28), 
	.S(FE_OFN1161_CRC_SHIFT), 
	.B(present_val[4]), 
	.A(present_val[3]));
   NAND2X1 U34 (.Y(n75), 
	.B(CRC_EN), 
	.A(n29));
   MUX2X1 U35 (.Y(n29), 
	.S(FE_OFN1161_CRC_SHIFT), 
	.B(present_val[5]), 
	.A(present_val[4]));
   NAND2X1 U36 (.Y(n74), 
	.B(FE_OFN1464_CRC_EN), 
	.A(n30));
   MUX2X1 U37 (.Y(n30), 
	.S(FE_OFN1161_CRC_SHIFT), 
	.B(present_val[6]), 
	.A(present_val[5]));
   NAND2X1 U38 (.Y(n73), 
	.B(FE_OFN1464_CRC_EN), 
	.A(n31));
   MUX2X1 U39 (.Y(n31), 
	.S(FE_OFN1161_CRC_SHIFT), 
	.B(present_val[7]), 
	.A(present_val[6]));
   NAND2X1 U40 (.Y(n72), 
	.B(FE_OFN1464_CRC_EN), 
	.A(n32));
   MUX2X1 U41 (.Y(n32), 
	.S(FE_OFN1161_CRC_SHIFT), 
	.B(present_val[8]), 
	.A(present_val[7]));
   NAND2X1 U42 (.Y(n71), 
	.B(FE_OFN1464_CRC_EN), 
	.A(n33));
   MUX2X1 U43 (.Y(n33), 
	.S(FE_OFN511_CRC_SHIFT), 
	.B(present_val[9]), 
	.A(present_val[8]));
   NAND2X1 U44 (.Y(n70), 
	.B(FE_OFN1464_CRC_EN), 
	.A(n34));
   MUX2X1 U45 (.Y(n34), 
	.S(FE_OFN511_CRC_SHIFT), 
	.B(present_val[10]), 
	.A(present_val[9]));
   NAND2X1 U46 (.Y(n69), 
	.B(FE_OFN1464_CRC_EN), 
	.A(n35));
   MUX2X1 U47 (.Y(n35), 
	.S(FE_OFN801_CRC_SHIFT), 
	.B(present_val[11]), 
	.A(present_val[10]));
   NAND2X1 U48 (.Y(n68), 
	.B(FE_OFN1464_CRC_EN), 
	.A(n36));
   MUX2X1 U49 (.Y(n36), 
	.S(FE_OFN801_CRC_SHIFT), 
	.B(present_val[12]), 
	.A(present_val[11]));
   NAND2X1 U50 (.Y(n67), 
	.B(FE_OFN1464_CRC_EN), 
	.A(n37));
   MUX2X1 U51 (.Y(n37), 
	.S(FE_OFN801_CRC_SHIFT), 
	.B(present_val[13]), 
	.A(present_val[12]));
   NAND2X1 U52 (.Y(n66), 
	.B(FE_OFN1464_CRC_EN), 
	.A(n38));
   MUX2X1 U53 (.Y(n38), 
	.S(FE_OFN801_CRC_SHIFT), 
	.B(present_val[14]), 
	.A(present_val[13]));
   OR2X1 U54 (.Y(n65), 
	.B(n40), 
	.A(n39));
   OAI21X1 U55 (.Y(n40), 
	.C(FE_OFN1464_CRC_EN), 
	.B(n20), 
	.A(present_val[14]));
   NAND2X1 U56 (.Y(n20), 
	.B(n41), 
	.A(CRC_SHIFT));
   MUX2X1 U57 (.Y(n39), 
	.S(FE_OFN17_CRC_SHIFT), 
	.B(n42), 
	.A(n43));
   NAND2X1 U58 (.Y(n43), 
	.B(n26), 
	.A(present_val[14]));
   INVX1 U59 (.Y(n26), 
	.A(n41));
   XOR2X1 U60 (.Y(n41), 
	.B(D_ORIG), 
	.A(present_val[15]));
   NAND2X1 U61 (.Y(CRC_ERROR), 
	.B(n45), 
	.A(n44));
   NOR2X1 U62 (.Y(n45), 
	.B(n47), 
	.A(n46));
   NAND3X1 U63 (.Y(n47), 
	.C(n50), 
	.B(n49), 
	.A(n48));
   NOR2X1 U64 (.Y(n50), 
	.B(present_val[14]), 
	.A(present_val[1]));
   INVX1 U65 (.Y(n49), 
	.A(present_val[5]));
   INVX1 U66 (.Y(n48), 
	.A(present_val[4]));
   NAND3X1 U67 (.Y(n46), 
	.C(n53), 
	.B(n52), 
	.A(n51));
   NOR2X1 U68 (.Y(n53), 
	.B(present_val[8]), 
	.A(present_val[9]));
   INVX1 U69 (.Y(n52), 
	.A(present_val[7]));
   INVX1 U70 (.Y(n51), 
	.A(present_val[6]));
   NOR2X1 U71 (.Y(n44), 
	.B(n55), 
	.A(n54));
   NAND3X1 U72 (.Y(n55), 
	.C(n56), 
	.B(present_val[2]), 
	.A(present_val[3]));
   NOR2X1 U73 (.Y(n56), 
	.B(n19), 
	.A(n42));
   INVX1 U74 (.Y(n19), 
	.A(present_val[0]));
   INVX1 U75 (.Y(n42), 
	.A(present_val[15]));
   NAND3X1 U76 (.Y(n54), 
	.C(n59), 
	.B(n58), 
	.A(n57));
   NOR2X1 U77 (.Y(n59), 
	.B(present_val[12]), 
	.A(present_val[13]));
   INVX1 U78 (.Y(n58), 
	.A(present_val[11]));
   INVX1 U79 (.Y(n57), 
	.A(present_val[10]));
endmodule

module U_DECODE (
	D_CLK, 
	rst_n, 
	d_plus, 
	shift_enable, 
	eop, 
	d_orig, 
	n3, 
	FE_OFN780_n3);
   input D_CLK;
   input rst_n;
   input d_plus;
   input shift_enable;
   input eop;
   output d_orig;
   input n3;
   input FE_OFN780_n3;

   // Internal wires
   wire prevbit;
   wire currentbit;
   wire N32;
   wire N34;
   wire N35;
   wire n2;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire [1:0] state;
   wire [1:0] nextstate;

   DFFSR \state_reg[0]  (.S(FE_OFN780_n3), 
	.R(1'b1), 
	.Q(state[0]), 
	.D(nextstate[0]), 
	.CLK(D_CLK));
   DFFSR \state_reg[1]  (.S(1'b1), 
	.R(n3), 
	.Q(state[1]), 
	.D(nextstate[1]), 
	.CLK(D_CLK));
   LATCH prevbit_reg (.Q(prevbit), 
	.D(N35), 
	.CLK(N34));
   LATCH currentbit_reg (.Q(currentbit), 
	.D(d_plus), 
	.CLK(n10));
   LATCH d_orig_reg (.Q(d_orig), 
	.D(N32), 
	.CLK(n10));
   NOR2X1 U4 (.Y(nextstate[1]), 
	.B(n4), 
	.A(n2));
   NAND2X1 U6 (.Y(n4), 
	.B(n5), 
	.A(shift_enable));
   NAND2X1 U7 (.Y(n2), 
	.B(n10), 
	.A(n6));
   NOR2X1 U8 (.Y(nextstate[0]), 
	.B(n5), 
	.A(state[1]));
   INVX1 U9 (.Y(n5), 
	.A(eop));
   MUX2X1 U11 (.Y(N35), 
	.S(n6), 
	.B(state[1]), 
	.A(n7));
   NAND2X1 U12 (.Y(n7), 
	.B(state[1]), 
	.A(d_plus));
   MUX2X1 U13 (.Y(N34), 
	.S(n6), 
	.B(state[1]), 
	.A(n8));
   OR2X1 U14 (.Y(n8), 
	.B(shift_enable), 
	.A(n10));
   INVX1 U15 (.Y(n10), 
	.A(state[1]));
   AOI21X1 U16 (.Y(N32), 
	.C(state[1]), 
	.B(n6), 
	.A(n9));
   INVX1 U17 (.Y(n6), 
	.A(state[0]));
   XOR2X1 U18 (.Y(n9), 
	.B(currentbit), 
	.A(prevbit));
endmodule

module U_EDGE_DETECT (
	D_CLK, 
	rst_n, 
	d_plus, 
	d_edge, 
	FE_PT1_n3);
   input D_CLK;
   input rst_n;
   input d_plus;
   output d_edge;
   input FE_PT1_n3;

   // Internal wires
   wire current;
   wire previous;
   wire N0;

   DFFSR current_reg (.S(FE_PT1_n3), 
	.R(1'b1), 
	.Q(current), 
	.D(d_plus), 
	.CLK(D_CLK));
   DFFSR previous_reg (.S(FE_PT1_n3), 
	.R(1'b1), 
	.Q(previous), 
	.D(current), 
	.CLK(D_CLK));
   DFFSR d_edge_reg (.S(1'b1), 
	.R(FE_PT1_n3), 
	.Q(d_edge), 
	.D(N0), 
	.CLK(D_CLK));
   XOR2X1 U7 (.Y(N0), 
	.B(current), 
	.A(previous));
endmodule

module U_EOP_DETECT (
	D_PLUS, 
	D_MINUS, 
	EOP);
   input D_PLUS;
   input D_MINUS;
   output EOP;

   // Internal wires
   wire FE_OFN8_EOP;
   wire N0;

   assign EOP = N0 ;

   BUFX4 FE_OFC8_EOP (.Y(N0), 
	.A(FE_OFN8_EOP));
   NOR2X1 U1 (.Y(FE_OFN8_EOP), 
	.B(D_MINUS), 
	.A(D_PLUS));
endmodule

module U_FCU (
	D_CLK, 
	RST, 
	EOP, 
	CRC_ERROR, 
	R_ERROR, 
	W_ENABLE1, 
	R_ENABLE0, 
	EMPTY0, 
	FULL0, 
	FULL1, 
	n3, 
	FE_OFN529_n2, 
	FE_OFN780_n3, 
	FE_OFN818_n2, 
	FE_OFN817_n2);
   input D_CLK;
   input RST;
   input EOP;
   input CRC_ERROR;
   input R_ERROR;
   output W_ENABLE1;
   output R_ENABLE0;
   input EMPTY0;
   input FULL0;
   input FULL1;
   input n3;
   input FE_OFN529_n2;
   input FE_OFN780_n3;
   input FE_OFN818_n2;
   input FE_OFN817_n2;

   // Internal wires
   wire n35;
   wire n36;
   wire n1;
   wire n2;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire [2:0] state;
   wire [2:0] nextstate;
   wire [1:0] ctr;

   DFFSR \state_reg[0]  (.S(FE_OFN780_n3), 
	.R(1'b1), 
	.Q(state[0]), 
	.D(nextstate[0]), 
	.CLK(D_CLK));
   DFFSR \state_reg[1]  (.S(n3), 
	.R(1'b1), 
	.Q(state[1]), 
	.D(nextstate[1]), 
	.CLK(FE_OFN817_n2));
   DFFSR \state_reg[2]  (.S(1'b1), 
	.R(n3), 
	.Q(state[2]), 
	.D(nextstate[2]), 
	.CLK(FE_OFN529_n2));
   DFFPOSX1 \ctr_reg[1]  (.Q(ctr[1]), 
	.D(n36), 
	.CLK(FE_OFN818_n2));
   DFFPOSX1 \ctr_reg[0]  (.Q(ctr[0]), 
	.D(n35), 
	.CLK(FE_OFN817_n2));
   NAND2X1 U6 (.Y(nextstate[2]), 
	.B(n2), 
	.A(n1));
   AOI22X1 U7 (.Y(n2), 
	.D(n9), 
	.C(n8), 
	.B(n7), 
	.A(n6));
   NOR2X1 U8 (.Y(n7), 
	.B(n10), 
	.A(CRC_ERROR));
   NAND2X1 U9 (.Y(n10), 
	.B(n12), 
	.A(n11));
   NOR2X1 U10 (.Y(n6), 
	.B(n14), 
	.A(n13));
   AOI22X1 U11 (.Y(n1), 
	.D(FULL1), 
	.C(W_ENABLE1), 
	.B(R_ENABLE0), 
	.A(EMPTY0));
   OAI21X1 U12 (.Y(nextstate[1]), 
	.C(n16), 
	.B(n9), 
	.A(n15));
   AOI21X1 U13 (.Y(n16), 
	.C(n18), 
	.B(R_ENABLE0), 
	.A(n17));
   NOR2X1 U14 (.Y(n17), 
	.B(n19), 
	.A(EMPTY0));
   INVX1 U15 (.Y(n9), 
	.A(n20));
   MUX2X1 U16 (.Y(n20), 
	.S(state[0]), 
	.B(FULL1), 
	.A(EOP));
   INVX1 U17 (.Y(n15), 
	.A(n8));
   NAND2X1 U18 (.Y(nextstate[0]), 
	.B(n22), 
	.A(n21));
   AOI22X1 U19 (.Y(n22), 
	.D(EMPTY0), 
	.C(R_ENABLE0), 
	.B(W_ENABLE1), 
	.A(n23));
   INVX1 U20 (.Y(n23), 
	.A(FULL1));
   AOI21X1 U21 (.Y(n21), 
	.C(n18), 
	.B(n8), 
	.A(state[0]));
   INVX1 U22 (.Y(n18), 
	.A(n24));
   NAND3X1 U23 (.Y(n24), 
	.C(n26), 
	.B(n11), 
	.A(n25));
   MUX2X1 U24 (.Y(n26), 
	.S(EOP), 
	.B(FULL0), 
	.A(n27));
   NOR2X1 U25 (.Y(n27), 
	.B(n14), 
	.A(ctr[1]));
   INVX1 U26 (.Y(n11), 
	.A(R_ERROR));
   NOR2X1 U27 (.Y(n8), 
	.B(state[1]), 
	.A(n28));
   AND2X1 U28 (.Y(n36), 
	.B(ctr[1]), 
	.A(n29));
   MUX2X1 U29 (.Y(n35), 
	.S(n29), 
	.B(n13), 
	.A(n14));
   OAI21X1 U30 (.Y(n29), 
	.C(n3), 
	.B(n12), 
	.A(n13));
   INVX1 U32 (.Y(n12), 
	.A(ctr[1]));
   INVX1 U33 (.Y(n14), 
	.A(ctr[0]));
   NAND2X1 U34 (.Y(n13), 
	.B(n25), 
	.A(EOP));
   INVX1 U35 (.Y(n25), 
	.A(n30));
   NAND3X1 U36 (.Y(n30), 
	.C(state[1]), 
	.B(n28), 
	.A(state[0]));
   INVX1 U37 (.Y(W_ENABLE1), 
	.A(n31));
   NAND3X1 U38 (.Y(n31), 
	.C(state[1]), 
	.B(n28), 
	.A(n19));
   INVX1 U39 (.Y(n28), 
	.A(state[2]));
   INVX1 U40 (.Y(n19), 
	.A(state[0]));
   NOR2X1 U41 (.Y(R_ENABLE0), 
	.B(state[2]), 
	.A(state[1]));
endmodule

module U_RCU (
	D_CLK, 
	rst_n, 
	d_edge, 
	eop, 
	CRC_ERROR, 
	STUFF_ERROR, 
	shift_enable, 
	rcv_data, 
	rcving, 
	w_enable, 
	r_error, 
	CRC_EN, 
	FE_OFN270_n2, 
	n3, 
	FE_OFN529_n2, 
	FE_OFN780_n3, 
	FE_OFN819_n2);
   input D_CLK;
   input rst_n;
   input d_edge;
   input eop;
   input CRC_ERROR;
   input STUFF_ERROR;
   input shift_enable;
   input [7:0] rcv_data;
   output rcving;
   output w_enable;
   output r_error;
   output CRC_EN;
   input FE_OFN270_n2;
   input n3;
   input FE_OFN529_n2;
   input FE_OFN780_n3;
   input FE_OFN819_n2;

   // Internal wires
   wire FE_OFN1439_n49;
   wire FE_OFN1164_n31;
   wire N153;
   wire N154;
   wire N155;
   wire N156;
   wire N157;
   wire N159;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n1;
   wire n2;
   wire n7;
   wire n11;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire [3:0] state;
   wire [3:0] nextstate;
   wire [3:0] shift_ctr;

   BUFX2 FE_OFC1439_n49 (.Y(FE_OFN1439_n49), 
	.A(n49));
   BUFX2 FE_OFC1164_n31 (.Y(FE_OFN1164_n31), 
	.A(n31));
   DFFSR \state_reg[0]  (.S(1'b1), 
	.R(FE_OFN780_n3), 
	.Q(state[0]), 
	.D(nextstate[0]), 
	.CLK(FE_OFN270_n2));
   DFFSR \state_reg[3]  (.S(1'b1), 
	.R(FE_OFN780_n3), 
	.Q(state[3]), 
	.D(nextstate[3]), 
	.CLK(FE_OFN529_n2));
   DFFSR \state_reg[1]  (.S(1'b1), 
	.R(FE_OFN780_n3), 
	.Q(state[1]), 
	.D(nextstate[1]), 
	.CLK(FE_OFN529_n2));
   DFFSR \shift_ctr_reg[0]  (.S(1'b1), 
	.R(n97), 
	.Q(shift_ctr[0]), 
	.D(n108), 
	.CLK(D_CLK));
   DFFSR \shift_ctr_reg[1]  (.S(1'b1), 
	.R(n97), 
	.Q(shift_ctr[1]), 
	.D(n107), 
	.CLK(D_CLK));
   DFFSR \shift_ctr_reg[2]  (.S(1'b1), 
	.R(n97), 
	.Q(shift_ctr[2]), 
	.D(n106), 
	.CLK(D_CLK));
   DFFSR \shift_ctr_reg[3]  (.S(1'b1), 
	.R(n97), 
	.Q(shift_ctr[3]), 
	.D(n109), 
	.CLK(D_CLK));
   DFFSR \state_reg[2]  (.S(1'b1), 
	.R(FE_OFN780_n3), 
	.Q(state[2]), 
	.D(nextstate[2]), 
	.CLK(FE_OFN819_n2));
   LATCH CRC_EN_reg (.Q(CRC_EN), 
	.D(N159), 
	.CLK(n96));
   LATCH rcving_reg (.Q(rcving), 
	.D(N154), 
	.CLK(N153));
   LATCH w_enable_reg (.Q(w_enable), 
	.D(n95), 
	.CLK(N155));
   LATCH r_error_reg (.Q(r_error), 
	.D(N157), 
	.CLK(N156));
   OR2X1 U7 (.Y(nextstate[3]), 
	.B(n2), 
	.A(n1));
   OAI21X1 U11 (.Y(n2), 
	.C(n13), 
	.B(n11), 
	.A(n7));
   MUX2X1 U13 (.Y(n13), 
	.S(d_edge), 
	.B(n14), 
	.A(n15));
   NOR2X1 U14 (.Y(n14), 
	.B(n17), 
	.A(n16));
   OAI21X1 U15 (.Y(n1), 
	.C(n20), 
	.B(n19), 
	.A(n18));
   OAI21X1 U16 (.Y(n20), 
	.C(n22), 
	.B(n19), 
	.A(n21));
   NAND3X1 U17 (.Y(nextstate[2]), 
	.C(n25), 
	.B(n24), 
	.A(n23));
   AOI21X1 U18 (.Y(n25), 
	.C(n27), 
	.B(n26), 
	.A(eop));
   OAI21X1 U19 (.Y(n27), 
	.C(n30), 
	.B(n29), 
	.A(n28));
   NAND2X1 U20 (.Y(n29), 
	.B(n32), 
	.A(FE_OFN1164_n31));
   OAI22X1 U21 (.Y(n26), 
	.D(n21), 
	.C(n35), 
	.B(n34), 
	.A(n33));
   INVX1 U22 (.Y(n24), 
	.A(n36));
   AOI22X1 U23 (.Y(n23), 
	.D(n11), 
	.C(n38), 
	.B(n37), 
	.A(n21));
   INVX1 U24 (.Y(n11), 
	.A(n39));
   NAND3X1 U25 (.Y(nextstate[1]), 
	.C(n41), 
	.B(n18), 
	.A(n40));
   AOI21X1 U26 (.Y(n41), 
	.C(n43), 
	.B(n42), 
	.A(n21));
   OAI21X1 U27 (.Y(n43), 
	.C(n45), 
	.B(n28), 
	.A(n44));
   OAI21X1 U28 (.Y(n45), 
	.C(n19), 
	.B(n47), 
	.A(n46));
   INVX1 U29 (.Y(n19), 
	.A(eop));
   AOI21X1 U30 (.Y(n44), 
	.C(FE_OFN1164_n31), 
	.B(FE_OFN1439_n49), 
	.A(n48));
   INVX1 U31 (.Y(n48), 
	.A(CRC_ERROR));
   AOI21X1 U32 (.Y(n18), 
	.C(n95), 
	.B(n46), 
	.A(n33));
   INVX1 U33 (.Y(n40), 
	.A(n50));
   OAI22X1 U34 (.Y(n50), 
	.D(d_edge), 
	.C(n51), 
	.B(n39), 
	.A(n7));
   NAND3X1 U35 (.Y(nextstate[0]), 
	.C(n54), 
	.B(n53), 
	.A(n52));
   NOR2X1 U36 (.Y(n54), 
	.B(n56), 
	.A(n55));
   OAI21X1 U37 (.Y(n56), 
	.C(n58), 
	.B(n57), 
	.A(n32));
   OAI21X1 U38 (.Y(n58), 
	.C(eop), 
	.B(n47), 
	.A(n38));
   NAND2X1 U39 (.Y(n57), 
	.B(FE_OFN1164_n31), 
	.A(n59));
   NAND3X1 U40 (.Y(n32), 
	.C(n61), 
	.B(rcv_data[0]), 
	.A(n60));
   NOR2X1 U41 (.Y(n61), 
	.B(n63), 
	.A(n62));
   NOR2X1 U42 (.Y(n60), 
	.B(n65), 
	.A(n64));
   INVX1 U43 (.Y(n65), 
	.A(n66));
   XNOR2X1 U44 (.Y(n64), 
	.B(rcv_data[7]), 
	.A(rcv_data[3]));
   OR2X1 U45 (.Y(n55), 
	.B(n46), 
	.A(n95));
   NOR2X1 U46 (.Y(n46), 
	.B(n21), 
	.A(n34));
   INVX1 U47 (.Y(n21), 
	.A(n67));
   AOI22X1 U48 (.Y(n53), 
	.D(n42), 
	.C(n67), 
	.B(d_edge), 
	.A(n68));
   NAND2X1 U49 (.Y(n67), 
	.B(n33), 
	.A(shift_ctr[3]));
   NOR3X1 U50 (.Y(n33), 
	.C(shift_ctr[0]), 
	.B(shift_ctr[2]), 
	.A(shift_ctr[1]));
   INVX1 U51 (.Y(n68), 
	.A(n17));
   AOI21X1 U52 (.Y(n52), 
	.C(n36), 
	.B(n38), 
	.A(n39));
   OAI21X1 U53 (.Y(n36), 
	.C(n70), 
	.B(n69), 
	.A(d_edge));
   INVX1 U54 (.Y(n38), 
	.A(n7));
   NAND2X1 U55 (.Y(n7), 
	.B(n71), 
	.A(FE_OFN1164_n31));
   NOR2X1 U56 (.Y(n39), 
	.B(n73), 
	.A(n72));
   NAND3X1 U57 (.Y(n73), 
	.C(rcv_data[7]), 
	.B(n74), 
	.A(n66));
   INVX1 U58 (.Y(n74), 
	.A(rcv_data[0]));
   NOR2X1 U59 (.Y(n66), 
	.B(n75), 
	.A(rcv_data[2]));
   OR2X1 U60 (.Y(n75), 
	.B(rcv_data[4]), 
	.A(rcv_data[5]));
   NAND3X1 U61 (.Y(n72), 
	.C(n62), 
	.B(n63), 
	.A(n76));
   INVX1 U62 (.Y(n62), 
	.A(rcv_data[1]));
   INVX1 U63 (.Y(n63), 
	.A(rcv_data[6]));
   INVX1 U64 (.Y(n76), 
	.A(rcv_data[3]));
   XOR2X1 U65 (.Y(n109), 
	.B(n77), 
	.A(shift_ctr[3]));
   NOR2X1 U66 (.Y(n77), 
	.B(n79), 
	.A(n78));
   INVX1 U67 (.Y(n79), 
	.A(shift_ctr[2]));
   XNOR2X1 U68 (.Y(n108), 
	.B(n80), 
	.A(shift_ctr[0]));
   XOR2X1 U69 (.Y(n107), 
	.B(n81), 
	.A(shift_ctr[1]));
   XNOR2X1 U70 (.Y(n106), 
	.B(n78), 
	.A(shift_ctr[2]));
   NAND2X1 U71 (.Y(n78), 
	.B(n81), 
	.A(shift_ctr[1]));
   NOR2X1 U72 (.Y(n81), 
	.B(n80), 
	.A(n82));
   NAND3X1 U73 (.Y(n80), 
	.C(shift_enable), 
	.B(n3), 
	.A(n97));
   AND2X1 U75 (.Y(n97), 
	.B(n28), 
	.A(FE_OFN1439_n49));
   INVX1 U76 (.Y(n28), 
	.A(n59));
   INVX1 U77 (.Y(n82), 
	.A(shift_ctr[0]));
   INVX1 U78 (.Y(N159), 
	.A(n83));
   OAI21X1 U79 (.Y(N157), 
	.C(n84), 
	.B(n17), 
	.A(n16));
   NOR2X1 U80 (.Y(n84), 
	.B(n47), 
	.A(n15));
   INVX1 U81 (.Y(n47), 
	.A(n30));
   INVX1 U82 (.Y(n15), 
	.A(n85));
   OR2X1 U83 (.Y(N156), 
	.B(N155), 
	.A(n42));
   NAND2X1 U84 (.Y(N155), 
	.B(n70), 
	.A(n86));
   NAND2X1 U85 (.Y(n70), 
	.B(FE_OFN1439_n49), 
	.A(n59));
   NOR2X1 U86 (.Y(n59), 
	.B(n16), 
	.A(n87));
   INVX1 U87 (.Y(n16), 
	.A(state[3]));
   NAND3X1 U88 (.Y(N154), 
	.C(n88), 
	.B(n83), 
	.A(n30));
   AOI21X1 U89 (.Y(n88), 
	.C(n42), 
	.B(state[1]), 
	.A(FE_OFN1164_n31));
   INVX1 U90 (.Y(n42), 
	.A(n35));
   OR2X1 U91 (.Y(N153), 
	.B(n96), 
	.A(FE_OFN1164_n31));
   NAND2X1 U92 (.Y(n96), 
	.B(n86), 
	.A(n35));
   INVX1 U93 (.Y(n86), 
	.A(n89));
   NAND3X1 U94 (.Y(n89), 
	.C(n90), 
	.B(n83), 
	.A(n17));
   AND2X1 U95 (.Y(n90), 
	.B(n69), 
	.A(n30));
   AND2X1 U96 (.Y(n69), 
	.B(n51), 
	.A(n85));
   NAND3X1 U97 (.Y(n51), 
	.C(state[2]), 
	.B(state[0]), 
	.A(n71));
   NAND3X1 U98 (.Y(n85), 
	.C(state[2]), 
	.B(state[0]), 
	.A(n91));
   NAND3X1 U99 (.Y(n30), 
	.C(state[2]), 
	.B(n92), 
	.A(n71));
   NOR2X1 U100 (.Y(n83), 
	.B(n95), 
	.A(n37));
   INVX1 U101 (.Y(n95), 
	.A(n93));
   NAND3X1 U102 (.Y(n93), 
	.C(state[2]), 
	.B(n92), 
	.A(n91));
   INVX1 U103 (.Y(n37), 
	.A(n34));
   NAND2X1 U104 (.Y(n34), 
	.B(FE_OFN1439_n49), 
	.A(n71));
   NOR2X1 U105 (.Y(n71), 
	.B(state[3]), 
	.A(n87));
   NAND2X1 U106 (.Y(n17), 
	.B(n87), 
	.A(FE_OFN1164_n31));
   AOI21X1 U107 (.Y(n35), 
	.C(n22), 
	.B(n91), 
	.A(FE_OFN1439_n49));
   INVX1 U108 (.Y(n22), 
	.A(n94));
   NAND3X1 U109 (.Y(n94), 
	.C(state[3]), 
	.B(n87), 
	.A(FE_OFN1439_n49));
   INVX1 U110 (.Y(n87), 
	.A(state[1]));
   NOR2X1 U111 (.Y(n91), 
	.B(state[1]), 
	.A(state[3]));
   NOR2X1 U112 (.Y(n49), 
	.B(state[2]), 
	.A(n92));
   INVX1 U113 (.Y(n92), 
	.A(state[0]));
   NOR2X1 U114 (.Y(n31), 
	.B(state[2]), 
	.A(state[0]));
endmodule

module U_TIMER (
	D_CLK, 
	RST_N, 
	D_EDGE, 
	RCVING, 
	SHIFT_ENABLE, 
	n3, 
	FE_OFN28_n2, 
	FE_OFN270_n2, 
	FE_OFN529_n2);
   input D_CLK;
   input RST_N;
   input D_EDGE;
   input RCVING;
   output SHIFT_ENABLE;
   input n3;
   input FE_OFN28_n2;
   input FE_OFN270_n2;
   input FE_OFN529_n2;

   // Internal wires
   wire FE_OFN1162_SHIFT_ENABLE;
   wire FE_OFN1160_n35;
   wire n35;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire [2:0] state;
   wire [2:0] nextstate;
   wire [3:0] ctr2;
   wire [3:0] ctr8;

   BUFX2 FE_OFC1162_SHIFT_ENABLE (.Y(SHIFT_ENABLE), 
	.A(FE_OFN1162_SHIFT_ENABLE));
   BUFX2 FE_OFC1160_n35 (.Y(FE_OFN1160_n35), 
	.A(n35));
   DFFSR \state_reg[2]  (.S(1'b1), 
	.R(n3), 
	.Q(state[2]), 
	.D(nextstate[2]), 
	.CLK(FE_OFN529_n2));
   DFFSR \ctr8_reg[0]  (.S(1'b1), 
	.R(FE_OFN1160_n35), 
	.Q(ctr8[0]), 
	.D(n69), 
	.CLK(FE_OFN28_n2));
   DFFSR \ctr8_reg[3]  (.S(1'b1), 
	.R(FE_OFN1160_n35), 
	.Q(ctr8[3]), 
	.D(n68), 
	.CLK(FE_OFN28_n2));
   DFFSR \state_reg[1]  (.S(1'b1), 
	.R(n3), 
	.Q(state[1]), 
	.D(nextstate[1]), 
	.CLK(FE_OFN529_n2));
   DFFSR \state_reg[0]  (.S(1'b1), 
	.R(n3), 
	.Q(state[0]), 
	.D(nextstate[0]), 
	.CLK(FE_OFN529_n2));
   DFFSR \ctr2_reg[0]  (.S(1'b1), 
	.R(FE_OFN1160_n35), 
	.Q(ctr2[0]), 
	.D(n66), 
	.CLK(FE_OFN270_n2));
   DFFSR \ctr8_reg[1]  (.S(1'b1), 
	.R(FE_OFN1160_n35), 
	.Q(ctr8[1]), 
	.D(n63), 
	.CLK(FE_OFN28_n2));
   DFFSR \ctr8_reg[2]  (.S(1'b1), 
	.R(FE_OFN1160_n35), 
	.Q(ctr8[2]), 
	.D(n62), 
	.CLK(D_CLK));
   DFFSR \ctr2_reg[1]  (.S(FE_OFN1160_n35), 
	.R(1'b1), 
	.Q(ctr2[1]), 
	.D(n65), 
	.CLK(FE_OFN28_n2));
   DFFSR \ctr2_reg[2]  (.S(1'b1), 
	.R(n35), 
	.Q(ctr2[2]), 
	.D(n64), 
	.CLK(FE_OFN28_n2));
   DFFSR \ctr2_reg[3]  (.S(1'b1), 
	.R(n35), 
	.Q(ctr2[3]), 
	.D(n67), 
	.CLK(FE_OFN529_n2));
   NOR2X1 U15 (.Y(nextstate[2]), 
	.B(n14), 
	.A(n13));
   OAI21X1 U16 (.Y(nextstate[1]), 
	.C(n35), 
	.B(n16), 
	.A(n15));
   MUX2X1 U17 (.Y(n16), 
	.S(state[0]), 
	.B(n17), 
	.A(n18));
   OR2X1 U18 (.Y(n18), 
	.B(ctr8[0]), 
	.A(n19));
   NOR2X1 U19 (.Y(nextstate[0]), 
	.B(n20), 
	.A(n15));
   INVX1 U20 (.Y(n20), 
	.A(n21));
   OAI21X1 U21 (.Y(n21), 
	.C(n23), 
	.B(n22), 
	.A(n17));
   NAND3X1 U22 (.Y(n17), 
	.C(n25), 
	.B(n24), 
	.A(ctr2[1]));
   NOR2X1 U23 (.Y(n25), 
	.B(ctr2[2]), 
	.A(ctr2[3]));
   NAND3X1 U24 (.Y(n15), 
	.C(RCVING), 
	.B(n26), 
	.A(n13));
   MUX2X1 U26 (.Y(n69), 
	.S(n28), 
	.B(ctr8[0]), 
	.A(n27));
   NAND2X1 U27 (.Y(n27), 
	.B(FE_OFN1160_n35), 
	.A(ctr8[0]));
   OAI21X1 U28 (.Y(n68), 
	.C(n30), 
	.B(n29), 
	.A(n19));
   OAI21X1 U29 (.Y(n30), 
	.C(ctr8[3]), 
	.B(n32), 
	.A(n31));
   NOR2X1 U30 (.Y(n31), 
	.B(n28), 
	.A(ctr8[2]));
   NAND3X1 U31 (.Y(n19), 
	.C(ctr8[2]), 
	.B(n33), 
	.A(ctr8[1]));
   INVX1 U32 (.Y(n33), 
	.A(ctr8[3]));
   MUX2X1 U33 (.Y(n67), 
	.S(ctr2[3]), 
	.B(n34), 
	.A(n36));
   INVX1 U34 (.Y(n36), 
	.A(n37));
   OAI21X1 U35 (.Y(n37), 
	.C(n39), 
	.B(ctr2[2]), 
	.A(n38));
   NAND2X1 U36 (.Y(n34), 
	.B(n40), 
	.A(ctr2[2]));
   INVX1 U37 (.Y(n40), 
	.A(n41));
   MUX2X1 U38 (.Y(n66), 
	.S(n43), 
	.B(n42), 
	.A(ctr2[0]));
   NAND2X1 U39 (.Y(n42), 
	.B(FE_OFN1160_n35), 
	.A(ctr2[0]));
   NAND2X1 U40 (.Y(n65), 
	.B(FE_OFN1160_n35), 
	.A(n44));
   XNOR2X1 U41 (.Y(n44), 
	.B(n45), 
	.A(ctr2[1]));
   NOR2X1 U42 (.Y(n45), 
	.B(n24), 
	.A(n38));
   INVX1 U43 (.Y(n24), 
	.A(ctr2[0]));
   MUX2X1 U44 (.Y(n64), 
	.S(ctr2[2]), 
	.B(n41), 
	.A(n39));
   MUX2X1 U45 (.Y(n39), 
	.S(n43), 
	.B(n35), 
	.A(n46));
   NAND2X1 U46 (.Y(n46), 
	.B(ctr2[1]), 
	.A(ctr2[0]));
   NAND3X1 U47 (.Y(n41), 
	.C(ctr2[0]), 
	.B(ctr2[1]), 
	.A(n43));
   INVX1 U48 (.Y(n43), 
	.A(n38));
   MUX2X1 U49 (.Y(n63), 
	.S(ctr8[1]), 
	.B(n29), 
	.A(n47));
   INVX1 U50 (.Y(n29), 
	.A(n48));
   MUX2X1 U51 (.Y(n62), 
	.S(ctr8[2]), 
	.B(n49), 
	.A(n50));
   INVX1 U52 (.Y(n50), 
	.A(n32));
   OAI21X1 U53 (.Y(n32), 
	.C(n47), 
	.B(n28), 
	.A(ctr8[1]));
   MUX2X1 U54 (.Y(n47), 
	.S(n28), 
	.B(n51), 
	.A(FE_OFN1160_n35));
   NAND2X1 U55 (.Y(n49), 
	.B(ctr8[1]), 
	.A(n48));
   NOR2X1 U56 (.Y(n48), 
	.B(n28), 
	.A(n51));
   NAND3X1 U57 (.Y(n28), 
	.C(state[1]), 
	.B(n26), 
	.A(n38));
   NAND3X1 U58 (.Y(n38), 
	.C(state[1]), 
	.B(n26), 
	.A(n23));
   INVX1 U59 (.Y(n51), 
	.A(ctr8[0]));
   NAND3X1 U60 (.Y(n35), 
	.C(n52), 
	.B(n22), 
	.A(n13));
   AOI21X1 U61 (.Y(n52), 
	.C(n14), 
	.B(state[0]), 
	.A(state[2]));
   INVX1 U62 (.Y(n14), 
	.A(RCVING));
   INVX1 U63 (.Y(n13), 
	.A(D_EDGE));
   NOR2X1 U64 (.Y(FE_OFN1162_SHIFT_ENABLE), 
	.B(n53), 
	.A(n23));
   NAND2X1 U65 (.Y(n53), 
	.B(n26), 
	.A(n22));
   INVX1 U66 (.Y(n26), 
	.A(state[2]));
   INVX1 U67 (.Y(n22), 
	.A(state[1]));
   INVX1 U68 (.Y(n23), 
	.A(state[0]));
endmodule

module USB_RCVR (
	CLK, 
	D_MINUS, 
	D_PLUS, 
	RST, 
	R_ENABLE, 
	EMPTY, 
	FULL, 
	R_DATA, 
	r_error, 
	rcving, 
	CLK__L4_N21);
   input CLK;
   input D_MINUS;
   input D_PLUS;
   input RST;
   input R_ENABLE;
   output EMPTY;
   output FULL;
   output [7:0] R_DATA;
   output r_error;
   output rcving;
   input CLK__L4_N21;

   // Internal wires
   wire FE_OFN1435_n3;
   wire FE_OFN1188_n2;
   wire FE_OFN1186_n2;
   wire FE_OFN1185_n2;
   wire FE_OFN1184_n2;
   wire FE_OFN1183_n2;
   wire FE_OFN1182_n2;
   wire FE_OFN1181_n2;
   wire FE_OFN1180_n2;
   wire FE_OFN1178_n2;
   wire FE_OFN1177_n1;
   wire FE_OFN1176_n1;
   wire FE_OFN1175_n1;
   wire FE_OFN1161_CRC_SHIFT;
   wire FE_OFN1139_n3;
   wire FE_OFN1138_n3;
   wire FE_OFN1137_n3;
   wire FE_OFN1136_n3;
   wire FE_UNCONNECTED_24;
   wire FE_UNCONNECTED_5;
   wire D_CLK;
   wire W_ENABLE1;
   wire R_ENABLE0;
   wire W_ENABLE_OUT;
   wire EMPTY1;
   wire FULL1;
   wire d_orig;
   wire EOP;
   wire SHIFT_ENABLE;
   wire CRC_SHIFT;
   wire w_enable;
   wire CRC_EN;
   wire CRC_ERROR;
   wire d_edge;
   wire n1;
   wire n2;
   wire n3;
   wire [7:0] R_DATA1;
   wire [7:0] W_DATA;
   wire [7:0] RCV_DATA;

   BUFX4 FE_OFC1435_n3 (.Y(FE_OFN1435_n3), 
	.A(n3));
   BUFX4 FE_OFC1188_n2 (.Y(FE_OFN1188_n2), 
	.A(FE_OFN1185_n2));
   BUFX4 FE_OFC1186_n2 (.Y(FE_OFN1186_n2), 
	.A(FE_OFN1185_n2));
   INVX8 FE_OFC1185_n2 (.Y(FE_OFN1185_n2), 
	.A(FE_OFN1178_n2));
   INVX8 FE_OFC1184_n2 (.Y(FE_OFN1184_n2), 
	.A(FE_OFN1178_n2));
   INVX8 FE_OFC1183_n2 (.Y(FE_OFN1183_n2), 
	.A(FE_OFN1178_n2));
   INVX4 FE_OFC1182_n2 (.Y(FE_OFN1182_n2), 
	.A(FE_OFN1178_n2));
   INVX8 FE_OFC1181_n2 (.Y(FE_OFN1181_n2), 
	.A(FE_OFN1178_n2));
   INVX4 FE_OFC1180_n2 (.Y(FE_OFN1180_n2), 
	.A(FE_OFN1178_n2));
   INVX4 FE_OFC1178_n2 (.Y(FE_OFN1178_n2), 
	.A(n2));
   INVX4 FE_OFC1177_n1 (.Y(FE_OFN1177_n1), 
	.A(FE_OFN1175_n1));
   INVX8 FE_OFC1176_n1 (.Y(FE_OFN1176_n1), 
	.A(FE_OFN1175_n1));
   INVX1 FE_OFC1175_n1 (.Y(FE_OFN1175_n1), 
	.A(n1));
   BUFX4 FE_OFC1161_CRC_SHIFT (.Y(FE_OFN1161_CRC_SHIFT), 
	.A(CRC_SHIFT));
   INVX4 FE_OFC1139_n3 (.Y(FE_OFN1139_n3), 
	.A(FE_OFN1136_n3));
   INVX8 FE_OFC1138_n3 (.Y(FE_OFN1138_n3), 
	.A(FE_OFN1136_n3));
   INVX8 FE_OFC1137_n3 (.Y(FE_OFN1137_n3), 
	.A(FE_OFN1136_n3));
   INVX4 FE_OFC1136_n3 (.Y(FE_OFN1136_n3), 
	.A(FE_OFN1435_n3));
   RCV_FIFO_1 U_5 (.CLK(CLK__L4_N21), 
	.D_CLK(FE_OFN1183_n2), 
	.RST_N(FE_OFN1138_n3), 
	.R_ENABLE(R_ENABLE), 
	.W_ENABLE(W_ENABLE1), 
	.WDATA(R_DATA1), 
	.R_DATA(R_DATA), 
	.EMPTY(EMPTY), 
	.FULL(FULL), 
	.FE_OFN29_n2(FE_OFN1185_n2), 
	.FE_OFN121_n2(FE_OFN1184_n2), 
	.FE_OFN240_n3(FE_OFN1138_n3), 
	.FE_OFN271_n2(FE_OFN1184_n2), 
	.FE_OFN272_n2(FE_OFN1183_n2), 
	.FE_OFN274_n2(FE_OFN1185_n2), 
	.FE_OFN493_n3(FE_OFN1139_n3), 
	.FE_OFN528_n2(FE_OFN1185_n2), 
	.FE_OFN530_n2(FE_OFN1185_n2), 
	.FE_OFN782_n3(FE_OFN1139_n3), 
	.FE_OFN820_n2(FE_OFN1184_n2), 
	.FE_OFN822_n2(FE_OFN1183_n2), 
	.FE_OFN823_n2(FE_OFN1183_n2), 
	.FE_OFN1185_n2(FE_OFN1185_n2), 
	.FE_OFN1186_n2(FE_OFN1186_n2), 
	.FE_OFN1188_n2(FE_OFN1188_n2), 
	.FE_OFN1189_n2(FE_OFN1185_n2));
   RCV_FIFO_0 U_11 (.CLK(n1), 
	.D_CLK(FE_OFN1183_n2), 
	.RST_N(n3), 
	.R_ENABLE(R_ENABLE0), 
	.W_ENABLE(W_ENABLE_OUT), 
	.WDATA(W_DATA), 
	.R_DATA(R_DATA1), 
	.EMPTY(EMPTY1), 
	.FULL(FULL1), 
	.FE_OFN27_n2(FE_OFN1180_n2), 
	.FE_OFN28_n2(FE_OFN1183_n2), 
	.FE_OFN29_n2(FE_OFN1180_n2), 
	.FE_OFN121_n2(FE_OFN1186_n2), 
	.FE_OFN240_n3(n3), 
	.FE_OFN270_n2(FE_OFN1181_n2), 
	.FE_OFN271_n2(FE_OFN1180_n2), 
	.FE_OFN273_n2(FE_OFN1180_n2), 
	.FE_OFN493_n3(FE_OFN1435_n3), 
	.FE_OFN526_n2(FE_OFN1184_n2), 
	.FE_OFN529_n2(FE_OFN1183_n2), 
	.FE_OFN780_n3(n3), 
	.FE_OFN782_n3(n3), 
	.FE_OFN816_n2(FE_OFN1183_n2), 
	.FE_OFN817_n2(FE_OFN1185_n2), 
	.FE_OFN819_n2(n2), 
	.FE_OFN820_n2(FE_OFN1181_n2), 
	.FE_OFN821_n2(FE_OFN1183_n2), 
	.FE_OFN822_n2(FE_OFN1181_n2), 
	.FE_OFN824_n2(FE_OFN1181_n2), 
	.FE_OFN823_n2(FE_OFN1184_n2), 
	.FE_OFN1135_n3(n3), 
	.FE_OFN1176_n1(FE_OFN1176_n1), 
	.FE_OFN1180_n2(FE_OFN1180_n2), 
	.FE_OFN1183_n2(FE_OFN1183_n2), 
	.FE_OFN1184_n2(FE_OFN1184_n2), 
	.FE_OFN1185_n2(FE_OFN1185_n2), 
	.FE_OFN1187_n2(FE_OFN1183_n2), 
	.FE_OFN1435_n3(FE_OFN1435_n3));
   USB_SHIFT U_7 (.D_CLK(FE_OFN1177_n1), 
	.RST(FE_UNCONNECTED_24), 
	.EOP(EOP), 
	.SHIFT_ENABLE(SHIFT_ENABLE), 
	.D_ORIG(d_orig), 
	.RCV_DATA(RCV_DATA), 
	.CRC_SHIFT(CRC_SHIFT), 
	.STUFF_ERROR(FE_UNCONNECTED_5), 
	.FE_OFN22_n1(FE_OFN1176_n1), 
	.FE_PT1_n3(FE_OFN1137_n3), 
	.FE_OFN813_n1(FE_OFN1176_n1), 
	.FE_OFN1177_n1(FE_OFN1177_n1));
   U_BUFFER U_10 (.D_CLK(FE_OFN1176_n1), 
	.RST(RST), 
	.W_ENABLE(w_enable), 
	.EOP(EOP), 
	.W_ENABLE_OUT(W_ENABLE_OUT), 
	.RCV_DATA(RCV_DATA), 
	.W_DATA(W_DATA), 
	.FE_OFN23_n1(FE_OFN1176_n1), 
	.FE_OFN813_n1(FE_OFN1176_n1), 
	.FE_OFN1177_n1(FE_OFN1177_n1));
   U_CLKDIV U_8 (.CLK(CLK), 
	.RST(RST), 
	.D_CLK(D_CLK), 
	.n3(n3));
   U_CRC U_0 (.D_CLK(FE_OFN1184_n2), 
	.RST_N(RST), 
	.CRC_SHIFT(FE_OFN1161_CRC_SHIFT), 
	.D_ORIG(d_orig), 
	.CRC_EN(CRC_EN), 
	.CRC_ERROR(CRC_ERROR), 
	.FE_OFN17_CRC_SHIFT(FE_OFN1161_CRC_SHIFT), 
	.FE_OFN27_n2(FE_OFN1184_n2), 
	.FE_OFN28_n2(FE_OFN1184_n2), 
	.FE_OFN115_CRC_SHIFT(FE_OFN1161_CRC_SHIFT), 
	.FE_OFN511_CRC_SHIFT(CRC_SHIFT), 
	.FE_OFN801_CRC_SHIFT(CRC_SHIFT), 
	.FE_OFN818_n2(FE_OFN1182_n2), 
	.FE_OFN817_n2(FE_OFN1184_n2), 
	.FE_OFN1161_CRC_SHIFT(FE_OFN1161_CRC_SHIFT), 
	.FE_OFN1182_n2(FE_OFN1182_n2), 
	.FE_OFN1184_n2(FE_OFN1184_n2));
   U_DECODE U_1 (.D_CLK(FE_OFN1177_n1), 
	.rst_n(FE_UNCONNECTED_24), 
	.d_plus(D_PLUS), 
	.shift_enable(SHIFT_ENABLE), 
	.eop(EOP), 
	.d_orig(d_orig), 
	.n3(FE_OFN1137_n3), 
	.FE_OFN780_n3(FE_OFN1137_n3));
   U_EDGE_DETECT U_2 (.D_CLK(FE_OFN1177_n1), 
	.rst_n(RST), 
	.d_plus(D_PLUS), 
	.d_edge(d_edge), 
	.FE_PT1_n3(FE_OFN1137_n3));
   U_EOP_DETECT U_3 (.D_PLUS(D_PLUS), 
	.D_MINUS(D_MINUS), 
	.EOP(EOP));
   U_FCU U_12 (.D_CLK(FE_OFN1181_n2), 
	.RST(RST), 
	.EOP(EOP), 
	.CRC_ERROR(CRC_ERROR), 
	.R_ERROR(r_error), 
	.W_ENABLE1(W_ENABLE1), 
	.R_ENABLE0(R_ENABLE0), 
	.EMPTY0(EMPTY1), 
	.FULL0(FULL1), 
	.FULL1(FULL), 
	.n3(FE_OFN1137_n3), 
	.FE_OFN529_n2(FE_OFN1181_n2), 
	.FE_OFN780_n3(FE_OFN1137_n3), 
	.FE_OFN818_n2(FE_OFN1181_n2), 
	.FE_OFN817_n2(FE_OFN1181_n2));
   U_RCU U_4 (.D_CLK(FE_OFN1182_n2), 
	.rst_n(RST), 
	.d_edge(d_edge), 
	.eop(EOP), 
	.CRC_ERROR(CRC_ERROR), 
	.STUFF_ERROR(FE_UNCONNECTED_5), 
	.shift_enable(FE_OFN1161_CRC_SHIFT), 
	.rcv_data(RCV_DATA), 
	.rcving(rcving), 
	.w_enable(w_enable), 
	.r_error(r_error), 
	.CRC_EN(CRC_EN), 
	.FE_OFN270_n2(FE_OFN1181_n2), 
	.n3(FE_OFN1137_n3), 
	.FE_OFN529_n2(FE_OFN1182_n2), 
	.FE_OFN780_n3(FE_OFN1137_n3), 
	.FE_OFN819_n2(FE_OFN1181_n2));
   U_TIMER U_6 (.D_CLK(FE_OFN1182_n2), 
	.RST_N(RST), 
	.D_EDGE(d_edge), 
	.RCVING(rcving), 
	.SHIFT_ENABLE(SHIFT_ENABLE), 
	.n3(FE_OFN1137_n3), 
	.FE_OFN28_n2(FE_OFN1182_n2), 
	.FE_OFN270_n2(FE_OFN1182_n2), 
	.FE_OFN529_n2(FE_OFN1182_n2));
   INVX8 U1 (.Y(n3), 
	.A(RST));
   BUFX2 U2 (.Y(n1), 
	.A(D_CLK));
   BUFX2 U3 (.Y(n2), 
	.A(D_CLK));
endmodule

module B_AppendAccessCode (
	CLK, 
	RST, 
	TRANS_EN, 
	ACESS_CODE, 
	HEADER_EN);
   input CLK;
   input RST;
   input TRANS_EN;
   output [71:0] ACESS_CODE;
   output HEADER_EN;

   // Internal wires
   wire FE_PHN1479_RST;
   wire FE_PHN1476_RST;
   wire n71;

   assign ACESS_CODE[70] = 1'b0 ;
   assign ACESS_CODE[68] = 1'b0 ;
   assign ACESS_CODE[64] = 1'b0 ;
   assign ACESS_CODE[62] = 1'b0 ;
   assign ACESS_CODE[59] = 1'b0 ;
   assign ACESS_CODE[56] = 1'b0 ;
   assign ACESS_CODE[55] = 1'b0 ;
   assign ACESS_CODE[52] = 1'b0 ;
   assign ACESS_CODE[49] = 1'b0 ;
   assign ACESS_CODE[48] = 1'b0 ;
   assign ACESS_CODE[47] = 1'b0 ;
   assign ACESS_CODE[40] = 1'b0 ;
   assign ACESS_CODE[38] = 1'b0 ;
   assign ACESS_CODE[35] = 1'b0 ;
   assign ACESS_CODE[32] = 1'b0 ;
   assign ACESS_CODE[31] = 1'b0 ;
   assign ACESS_CODE[28] = 1'b0 ;
   assign ACESS_CODE[25] = 1'b0 ;
   assign ACESS_CODE[24] = 1'b0 ;
   assign ACESS_CODE[23] = 1'b0 ;
   assign ACESS_CODE[19] = 1'b0 ;
   assign ACESS_CODE[18] = 1'b0 ;
   assign ACESS_CODE[17] = 1'b0 ;
   assign ACESS_CODE[16] = 1'b0 ;
   assign ACESS_CODE[15] = 1'b0 ;
   assign ACESS_CODE[14] = 1'b0 ;
   assign ACESS_CODE[13] = 1'b0 ;
   assign ACESS_CODE[12] = 1'b0 ;
   assign ACESS_CODE[11] = 1'b0 ;
   assign ACESS_CODE[10] = 1'b0 ;
   assign ACESS_CODE[9] = 1'b0 ;
   assign ACESS_CODE[8] = 1'b0 ;
   assign ACESS_CODE[7] = 1'b0 ;
   assign ACESS_CODE[6] = 1'b0 ;
   assign ACESS_CODE[5] = 1'b0 ;
   assign ACESS_CODE[4] = 1'b0 ;
   assign ACESS_CODE[2] = 1'b0 ;
   assign ACESS_CODE[0] = 1'b0 ;

   CLKBUF2 FE_PHC1479_RST (.Y(FE_PHN1479_RST), 
	.A(RST));
   BUFX2 FE_PHC1476_RST (.Y(FE_PHN1476_RST), 
	.A(FE_PHN1479_RST));
   DFFSR HEADER_EN_reg (.S(1'b1), 
	.R(n71), 
	.Q(HEADER_EN), 
	.D(TRANS_EN), 
	.CLK(CLK));
   INVX2 U3 (.Y(n71), 
	.A(FE_PHN1476_RST));
endmodule

module B_Controller_WAITSRAM24_WAITREG5264_WAITBAK49 (
	CLK, 
	RST, 
	NEXT_EN, 
	ANT_LIN, 
	EMPTY, 
	RESEND_EN, 
	TRANS_EN, 
	CLK__L4_N18, 
	CLK__L4_N19);
   input CLK;
   input RST;
   input NEXT_EN;
   input ANT_LIN;
   input EMPTY;
   output RESEND_EN;
   output TRANS_EN;
   input CLK__L4_N18;
   input CLK__L4_N19;

   // Internal wires
   wire FE_OFN1438_n6;
   wire FE_OFN1437_n31;
   wire FE_OFN1436_n30;
   wire FE_OFN1380_bluewait_0_;
   wire FE_OFN1379_state_0_;
   wire FE_OFN1378_state_2_;
   wire FE_OFN1377_state_1_;
   wire FE_OFN1158_N278;
   wire FE_OFN1157_n11;
   wire \bluewait[5] ;
   wire \bluewait[4] ;
   wire \bluewait[3] ;
   wire \bluewait[2] ;
   wire \bluewait[1] ;
   wire \bluewait[0] ;
   wire \nbluewait[5] ;
   wire \nbluewait[4] ;
   wire \nbluewait[3] ;
   wire \nbluewait[2] ;
   wire \nbluewait[1] ;
   wire \nbluewait[0] ;
   wire \edge ;
   wire N60;
   wire N61;
   wire N62;
   wire N63;
   wire N64;
   wire N65;
   wire N66;
   wire N67;
   wire N68;
   wire ebit;
   wire latch_not_empty;
   wire N270;
   wire N271;
   wire N272;
   wire N274;
   wire N275;
   wire N276;
   wire N277;
   wire N278;
   wire N279;
   wire N280;
   wire N281;
   wire N282;
   wire N283;
   wire N284;
   wire N285;
   wire N286;
   wire N287;
   wire N288;
   wire N289;
   wire N290;
   wire N291;
   wire N292;
   wire N293;
   wire N300;
   wire N303;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire [2:0] state;
   wire [2:0] cnt4;
   wire [1:0] cnt2;
   wire [2:0] ncnt4;
   wire [1:0] ncnt2;
   wire [2:0] resynstate;
   wire [2:0] nnstate;

   BUFX2 FE_OFC1438_n6 (.Y(FE_OFN1438_n6), 
	.A(n6));
   BUFX2 FE_OFC1437_n31 (.Y(FE_OFN1437_n31), 
	.A(n31));
   BUFX2 FE_OFC1436_n30 (.Y(FE_OFN1436_n30), 
	.A(n30));
   BUFX2 FE_OFC1380_bluewait_0_ (.Y(FE_OFN1380_bluewait_0_), 
	.A(\bluewait[0] ));
   BUFX2 FE_OFC1379_state_0_ (.Y(FE_OFN1379_state_0_), 
	.A(state[0]));
   BUFX2 FE_OFC1378_state_2_ (.Y(FE_OFN1378_state_2_), 
	.A(state[2]));
   BUFX2 FE_OFC1377_state_1_ (.Y(FE_OFN1377_state_1_), 
	.A(state[1]));
   BUFX2 FE_OFC1158_N278 (.Y(FE_OFN1158_N278), 
	.A(N278));
   BUFX2 FE_OFC1157_n11 (.Y(FE_OFN1157_n11), 
	.A(n11));
   LATCH latch_not_empty_reg (.Q(latch_not_empty), 
	.D(n132), 
	.CLK(N300));
   DFFSR \bluewait_reg[0]  (.S(1'b1), 
	.R(n132), 
	.Q(\bluewait[0] ), 
	.D(N60), 
	.CLK(CLK__L4_N18));
   LATCH \ncnt4_reg[2]  (.Q(ncnt4[2]), 
	.D(N277), 
	.CLK(N274));
   DFFSR \cnt4_reg[2]  (.S(1'b1), 
	.R(n132), 
	.Q(cnt4[2]), 
	.D(ncnt4[2]), 
	.CLK(CLK__L4_N18));
   DFFSR \state_reg[0]  (.S(1'b1), 
	.R(n132), 
	.Q(state[0]), 
	.D(N66), 
	.CLK(CLK__L4_N18));
   LATCH \nnstate_reg[2]  (.Q(nnstate[2]), 
	.D(N293), 
	.CLK(N290));
   LATCH \resynstate_reg[2]  (.Q(resynstate[2]), 
	.D(n131), 
	.CLK(N270));
   DFFSR \state_reg[2]  (.S(1'b1), 
	.R(n132), 
	.Q(state[2]), 
	.D(N68), 
	.CLK(CLK__L4_N18));
   LATCH \nnstate_reg[1]  (.Q(nnstate[1]), 
	.D(N292), 
	.CLK(N290));
   LATCH \resynstate_reg[1]  (.Q(resynstate[1]), 
	.D(N272), 
	.CLK(N270));
   DFFSR \state_reg[1]  (.S(1'b1), 
	.R(n132), 
	.Q(state[1]), 
	.D(N67), 
	.CLK(CLK));
   LATCH ebit_reg (.Q(ebit), 
	.D(N286), 
	.CLK(N285));
   LATCH \ncnt2_reg[0]  (.Q(ncnt2[0]), 
	.D(N288), 
	.CLK(N287));
   DFFSR \cnt2_reg[0]  (.S(1'b1), 
	.R(n132), 
	.Q(cnt2[0]), 
	.D(ncnt2[0]), 
	.CLK(CLK__L4_N18));
   LATCH \ncnt2_reg[1]  (.Q(ncnt2[1]), 
	.D(N289), 
	.CLK(N287));
   DFFSR \cnt2_reg[1]  (.S(1'b1), 
	.R(n132), 
	.Q(cnt2[1]), 
	.D(ncnt2[1]), 
	.CLK(CLK__L4_N18));
   LATCH \nbluewait_reg[1]  (.Q(\nbluewait[1] ), 
	.D(N280), 
	.CLK(FE_OFN1158_N278));
   DFFSR \bluewait_reg[1]  (.S(1'b1), 
	.R(n132), 
	.Q(\bluewait[1] ), 
	.D(N61), 
	.CLK(CLK__L4_N19));
   LATCH \nbluewait_reg[2]  (.Q(\nbluewait[2] ), 
	.D(N281), 
	.CLK(FE_OFN1158_N278));
   DFFSR \bluewait_reg[2]  (.S(1'b1), 
	.R(n132), 
	.Q(\bluewait[2] ), 
	.D(N62), 
	.CLK(CLK__L4_N19));
   LATCH \nbluewait_reg[3]  (.Q(\nbluewait[3] ), 
	.D(N282), 
	.CLK(FE_OFN1158_N278));
   DFFSR \bluewait_reg[3]  (.S(1'b1), 
	.R(n132), 
	.Q(\bluewait[3] ), 
	.D(N63), 
	.CLK(CLK__L4_N18));
   LATCH \nbluewait_reg[4]  (.Q(\nbluewait[4] ), 
	.D(N283), 
	.CLK(FE_OFN1158_N278));
   DFFSR \bluewait_reg[4]  (.S(1'b1), 
	.R(n132), 
	.Q(\bluewait[4] ), 
	.D(N64), 
	.CLK(CLK__L4_N18));
   LATCH \nbluewait_reg[5]  (.Q(\nbluewait[5] ), 
	.D(N284), 
	.CLK(FE_OFN1158_N278));
   DFFSR \bluewait_reg[5]  (.S(1'b1), 
	.R(n132), 
	.Q(\bluewait[5] ), 
	.D(N65), 
	.CLK(CLK));
   LATCH \nbluewait_reg[0]  (.Q(\nbluewait[0] ), 
	.D(N279), 
	.CLK(FE_OFN1158_N278));
   LATCH \nnstate_reg[0]  (.Q(nnstate[0]), 
	.D(N291), 
	.CLK(N290));
   LATCH \resynstate_reg[0]  (.Q(resynstate[0]), 
	.D(N271), 
	.CLK(N270));
   LATCH \ncnt4_reg[1]  (.Q(ncnt4[1]), 
	.D(N276), 
	.CLK(N274));
   DFFSR \cnt4_reg[1]  (.S(1'b1), 
	.R(n132), 
	.Q(cnt4[1]), 
	.D(ncnt4[1]), 
	.CLK(CLK));
   LATCH \ncnt4_reg[0]  (.Q(ncnt4[0]), 
	.D(N275), 
	.CLK(N274));
   DFFSR \cnt4_reg[0]  (.S(1'b1), 
	.R(n132), 
	.Q(cnt4[0]), 
	.D(ncnt4[0]), 
	.CLK(CLK__L4_N18));
   LATCH edge_reg (.Q(\edge ), 
	.D(n130), 
	.CLK(N303));
   INVX8 U3 (.Y(n132), 
	.A(RST));
   INVX1 U5 (.Y(n130), 
	.A(N303));
   INVX1 U6 (.Y(n131), 
	.A(n2));
   AOI22X1 U7 (.Y(n2), 
	.D(n5), 
	.C(n4), 
	.B(nnstate[2]), 
	.A(n3));
   OAI21X1 U8 (.Y(TRANS_EN), 
	.C(n7), 
	.B(FE_OFN1438_n6), 
	.A(EMPTY));
   INVX1 U9 (.Y(n7), 
	.A(RESEND_EN));
   NOR2X1 U10 (.Y(RESEND_EN), 
	.B(FE_OFN1438_n6), 
	.A(n8));
   INVX1 U11 (.Y(N68), 
	.A(n9));
   MUX2X1 U12 (.Y(n9), 
	.S(n10), 
	.B(resynstate[2]), 
	.A(n5));
   OAI21X1 U13 (.Y(n5), 
	.C(n13), 
	.B(n12), 
	.A(FE_OFN1157_n11));
   AOI21X1 U14 (.Y(n13), 
	.C(n15), 
	.B(n14), 
	.A(nnstate[2]));
   INVX1 U15 (.Y(n15), 
	.A(n16));
   OAI21X1 U16 (.Y(n14), 
	.C(n12), 
	.B(n18), 
	.A(n17));
   INVX1 U17 (.Y(N67), 
	.A(n19));
   MUX2X1 U18 (.Y(n19), 
	.S(n10), 
	.B(resynstate[1]), 
	.A(n20));
   INVX1 U19 (.Y(N66), 
	.A(n21));
   MUX2X1 U20 (.Y(n21), 
	.S(n10), 
	.B(resynstate[0]), 
	.A(n22));
   AND2X1 U21 (.Y(N65), 
	.B(n10), 
	.A(\nbluewait[5] ));
   AND2X1 U22 (.Y(N64), 
	.B(n10), 
	.A(\nbluewait[4] ));
   AND2X1 U23 (.Y(N63), 
	.B(n10), 
	.A(\nbluewait[3] ));
   AND2X1 U24 (.Y(N62), 
	.B(n10), 
	.A(\nbluewait[2] ));
   AND2X1 U25 (.Y(N61), 
	.B(n10), 
	.A(\nbluewait[1] ));
   AND2X1 U26 (.Y(N60), 
	.B(n10), 
	.A(\nbluewait[0] ));
   INVX2 U27 (.Y(n10), 
	.A(\edge ));
   OAI21X1 U28 (.Y(N303), 
	.C(n132), 
	.B(n23), 
	.A(\bluewait[5] ));
   NAND2X1 U29 (.Y(N300), 
	.B(n132), 
	.A(EMPTY));
   MUX2X1 U30 (.Y(N293), 
	.S(n26), 
	.B(n24), 
	.A(n25));
   MUX2X1 U31 (.Y(N292), 
	.S(n26), 
	.B(n27), 
	.A(n28));
   OR2X1 U32 (.Y(n27), 
	.B(n18), 
	.A(n8));
   OAI21X1 U33 (.Y(N291), 
	.C(n24), 
	.B(n26), 
	.A(n25));
   OAI21X1 U34 (.Y(N290), 
	.C(FE_OFN1437_n31), 
	.B(FE_OFN1436_n30), 
	.A(n29));
   MUX2X1 U35 (.Y(N289), 
	.S(cnt2[1]), 
	.B(n32), 
	.A(n33));
   NAND2X1 U36 (.Y(n32), 
	.B(cnt2[0]), 
	.A(n34));
   NAND2X1 U37 (.Y(N287), 
	.B(FE_OFN1438_n6), 
	.A(FE_OFN1437_n31));
   NOR2X1 U38 (.Y(N286), 
	.B(n36), 
	.A(n35));
   OAI21X1 U39 (.Y(N285), 
	.C(FE_OFN1437_n31), 
	.B(FE_OFN1436_n30), 
	.A(n35));
   NOR2X1 U40 (.Y(N284), 
	.B(n38), 
	.A(n37));
   XNOR2X1 U41 (.Y(n37), 
	.B(n40), 
	.A(n39));
   NAND2X1 U42 (.Y(n39), 
	.B(\bluewait[4] ), 
	.A(n41));
   NOR2X1 U43 (.Y(N283), 
	.B(n38), 
	.A(n42));
   XNOR2X1 U44 (.Y(n42), 
	.B(n41), 
	.A(\bluewait[4] ));
   NOR2X1 U45 (.Y(n41), 
	.B(n44), 
	.A(n43));
   NOR2X1 U46 (.Y(N282), 
	.B(n38), 
	.A(n45));
   XNOR2X1 U47 (.Y(n45), 
	.B(n44), 
	.A(n43));
   NAND3X1 U48 (.Y(n43), 
	.C(\bluewait[2] ), 
	.B(FE_OFN1380_bluewait_0_), 
	.A(\bluewait[1] ));
   MUX2X1 U49 (.Y(N281), 
	.S(n48), 
	.B(n46), 
	.A(n47));
   NAND3X1 U50 (.Y(n47), 
	.C(n49), 
	.B(FE_OFN1380_bluewait_0_), 
	.A(\bluewait[1] ));
   AOI21X1 U51 (.Y(n46), 
	.C(N279), 
	.B(n50), 
	.A(n49));
   MUX2X1 U52 (.Y(N280), 
	.S(n50), 
	.B(n51), 
	.A(n52));
   NAND2X1 U53 (.Y(n52), 
	.B(FE_OFN1380_bluewait_0_), 
	.A(n49));
   INVX1 U54 (.Y(n49), 
	.A(n38));
   INVX1 U55 (.Y(n51), 
	.A(N279));
   NOR2X1 U56 (.Y(N279), 
	.B(FE_OFN1380_bluewait_0_), 
	.A(n38));
   OAI21X1 U57 (.Y(n38), 
	.C(n17), 
	.B(n54), 
	.A(n53));
   NAND2X1 U58 (.Y(n54), 
	.B(n55), 
	.A(n29));
   NAND2X1 U59 (.Y(n53), 
	.B(n56), 
	.A(n35));
   NAND3X1 U60 (.Y(N278), 
	.C(n57), 
	.B(FE_OFN1437_n31), 
	.A(n29));
   NOR2X1 U61 (.Y(n57), 
	.B(n59), 
	.A(n58));
   OAI22X1 U62 (.Y(N277), 
	.D(n60), 
	.C(n55), 
	.B(n56), 
	.A(FE_OFN1157_n11));
   MUX2X1 U63 (.Y(n60), 
	.S(n63), 
	.B(n61), 
	.A(n62));
   NOR2X1 U64 (.Y(n62), 
	.B(n65), 
	.A(n64));
   NAND2X1 U65 (.Y(n65), 
	.B(n67), 
	.A(n66));
   OAI21X1 U66 (.Y(n61), 
	.C(n68), 
	.B(n36), 
	.A(cnt4[1]));
   INVX1 U67 (.Y(n68), 
	.A(n69));
   NOR2X1 U68 (.Y(N276), 
	.B(n71), 
	.A(n70));
   MUX2X1 U69 (.Y(n71), 
	.S(n64), 
	.B(n69), 
	.A(n72));
   AND2X1 U70 (.Y(n72), 
	.B(n66), 
	.A(n67));
   OAI21X1 U71 (.Y(n69), 
	.C(n67), 
	.B(n36), 
	.A(n66));
   INVX1 U72 (.Y(n67), 
	.A(FE_OFN1436_n30));
   OAI21X1 U73 (.Y(N275), 
	.C(n74), 
	.B(n73), 
	.A(n55));
   MUX2X1 U74 (.Y(n74), 
	.S(n8), 
	.B(n75), 
	.A(n76));
   MUX2X1 U75 (.Y(n73), 
	.S(FE_OFN1436_n30), 
	.B(n77), 
	.A(cnt4[0]));
   OAI21X1 U76 (.Y(n77), 
	.C(ANT_LIN), 
	.B(n64), 
	.A(n66));
   NOR2X1 U77 (.Y(n66), 
	.B(n36), 
	.A(n78));
   INVX1 U78 (.Y(n36), 
	.A(ANT_LIN));
   OAI21X1 U79 (.Y(N274), 
	.C(n80), 
	.B(n79), 
	.A(FE_OFN1436_n30));
   NOR2X1 U80 (.Y(n80), 
	.B(n81), 
	.A(n59));
   MUX2X1 U81 (.Y(n79), 
	.S(n26), 
	.B(n76), 
	.A(n75));
   XNOR2X1 U82 (.Y(n26), 
	.B(ANT_LIN), 
	.A(n8));
   INVX2 U83 (.Y(n8), 
	.A(ebit));
   NAND3X1 U84 (.Y(n30), 
	.C(n82), 
	.B(\bluewait[4] ), 
	.A(\bluewait[3] ));
   NOR2X1 U85 (.Y(n82), 
	.B(n83), 
	.A(\bluewait[5] ));
   NAND3X1 U86 (.Y(N272), 
	.C(n84), 
	.B(n56), 
	.A(n35));
   AOI22X1 U87 (.Y(n84), 
	.D(n3), 
	.C(nnstate[1]), 
	.B(n4), 
	.A(n20));
   NAND3X1 U88 (.Y(n20), 
	.C(n85), 
	.B(n16), 
	.A(n35));
   AOI22X1 U89 (.Y(n85), 
	.D(FE_OFN1157_n11), 
	.C(n88), 
	.B(n87), 
	.A(n86));
   INVX1 U90 (.Y(n88), 
	.A(n56));
   OAI21X1 U91 (.Y(n87), 
	.C(n18), 
	.B(n17), 
	.A(n12));
   AND2X1 U92 (.Y(n12), 
	.B(n24), 
	.A(n28));
   OR2X1 U93 (.Y(n86), 
	.B(nnstate[1]), 
	.A(n17));
   OAI21X1 U94 (.Y(n16), 
	.C(n4), 
	.B(n90), 
	.A(n89));
   OR2X1 U95 (.Y(n90), 
	.B(cnt2[1]), 
	.A(n91));
   INVX1 U96 (.Y(n89), 
	.A(cnt2[0]));
   NAND3X1 U97 (.Y(n56), 
	.C(n92), 
	.B(n64), 
	.A(n78));
   NOR2X1 U98 (.Y(n92), 
	.B(n63), 
	.A(n70));
   NAND2X1 U99 (.Y(N271), 
	.B(n94), 
	.A(n93));
   AOI21X1 U100 (.Y(n94), 
	.C(n95), 
	.B(nnstate[0]), 
	.A(n3));
   INVX1 U101 (.Y(n3), 
	.A(n29));
   NOR2X1 U102 (.Y(n29), 
	.B(n75), 
	.A(n76));
   AOI21X1 U103 (.Y(n93), 
	.C(n58), 
	.B(n22), 
	.A(n4));
   NAND3X1 U104 (.Y(n22), 
	.C(n98), 
	.B(n97), 
	.A(n96));
   AOI21X1 U105 (.Y(n98), 
	.C(n99), 
	.B(n91), 
	.A(NEXT_EN));
   OAI21X1 U106 (.Y(n99), 
	.C(n33), 
	.B(n101), 
	.A(n100));
   INVX1 U107 (.Y(n33), 
	.A(N288));
   NOR2X1 U108 (.Y(N288), 
	.B(cnt2[0]), 
	.A(FE_OFN1438_n6));
   INVX1 U109 (.Y(n101), 
	.A(nnstate[0]));
   AOI21X1 U110 (.Y(n100), 
	.C(n76), 
	.B(FE_OFN1157_n11), 
	.A(n75));
   INVX1 U111 (.Y(n75), 
	.A(n24));
   NAND3X1 U112 (.Y(n24), 
	.C(FE_OFN1378_state_2_), 
	.B(n103), 
	.A(n102));
   INVX1 U113 (.Y(n91), 
	.A(n104));
   MUX2X1 U114 (.Y(n97), 
	.S(n17), 
	.B(n58), 
	.A(n105));
   INVX1 U115 (.Y(n17), 
	.A(FE_OFN1157_n11));
   NOR2X1 U116 (.Y(n11), 
	.B(n107), 
	.A(n106));
   NAND3X1 U117 (.Y(n107), 
	.C(\bluewait[5] ), 
	.B(FE_OFN1380_bluewait_0_), 
	.A(\bluewait[4] ));
   NAND3X1 U118 (.Y(n106), 
	.C(n50), 
	.B(n44), 
	.A(n48));
   NAND2X1 U119 (.Y(n105), 
	.B(n70), 
	.A(n25));
   INVX1 U120 (.Y(n25), 
	.A(n76));
   NAND2X1 U121 (.Y(n76), 
	.B(n28), 
	.A(n18));
   NAND3X1 U122 (.Y(n28), 
	.C(FE_OFN1378_state_2_), 
	.B(n103), 
	.A(FE_OFN1379_state_0_));
   NAND3X1 U123 (.Y(n18), 
	.C(FE_OFN1377_state_1_), 
	.B(n108), 
	.A(FE_OFN1379_state_0_));
   INVX1 U124 (.Y(n58), 
	.A(n35));
   NAND3X1 U125 (.Y(n35), 
	.C(FE_OFN1377_state_1_), 
	.B(n108), 
	.A(n102));
   AOI21X1 U126 (.Y(n96), 
	.C(n95), 
	.B(n34), 
	.A(cnt2[1]));
   NAND2X1 U127 (.Y(n95), 
	.B(n109), 
	.A(n55));
   OAI21X1 U128 (.Y(n109), 
	.C(n81), 
	.B(n110), 
	.A(latch_not_empty));
   INVX1 U129 (.Y(n81), 
	.A(FE_OFN1437_n31));
   INVX1 U130 (.Y(n110), 
	.A(EMPTY));
   OAI21X1 U131 (.Y(n55), 
	.C(n59), 
	.B(n111), 
	.A(n63));
   INVX1 U132 (.Y(n59), 
	.A(n70));
   NAND3X1 U133 (.Y(n70), 
	.C(FE_OFN1379_state_0_), 
	.B(n108), 
	.A(n103));
   NAND2X1 U134 (.Y(n111), 
	.B(n64), 
	.A(n78));
   INVX1 U135 (.Y(n64), 
	.A(cnt4[1]));
   INVX1 U136 (.Y(n78), 
	.A(cnt4[0]));
   INVX1 U137 (.Y(n63), 
	.A(cnt4[2]));
   INVX1 U138 (.Y(n34), 
	.A(FE_OFN1438_n6));
   OR2X1 U139 (.Y(N270), 
	.B(n126), 
	.A(n4));
   OAI21X1 U140 (.Y(n126), 
	.C(FE_OFN1437_n31), 
	.B(n40), 
	.A(n23));
   NAND3X1 U141 (.Y(n31), 
	.C(n102), 
	.B(n108), 
	.A(n103));
   INVX1 U142 (.Y(n108), 
	.A(FE_OFN1378_state_2_));
   INVX1 U143 (.Y(n103), 
	.A(FE_OFN1377_state_1_));
   INVX1 U144 (.Y(n40), 
	.A(\bluewait[5] ));
   NAND3X1 U145 (.Y(n23), 
	.C(n128), 
	.B(n127), 
	.A(n44));
   INVX1 U146 (.Y(n128), 
	.A(n83));
   NAND3X1 U147 (.Y(n83), 
	.C(n129), 
	.B(n48), 
	.A(n50));
   INVX1 U148 (.Y(n129), 
	.A(FE_OFN1380_bluewait_0_));
   INVX1 U149 (.Y(n48), 
	.A(\bluewait[2] ));
   INVX1 U164 (.Y(n50), 
	.A(\bluewait[1] ));
   INVX1 U165 (.Y(n127), 
	.A(\bluewait[4] ));
   INVX1 U166 (.Y(n44), 
	.A(\bluewait[3] ));
   NAND2X1 U167 (.Y(n4), 
	.B(FE_OFN1438_n6), 
	.A(n104));
   NAND3X1 U168 (.Y(n6), 
	.C(FE_OFN1378_state_2_), 
	.B(FE_OFN1379_state_0_), 
	.A(FE_OFN1377_state_1_));
   NAND3X1 U169 (.Y(n104), 
	.C(FE_OFN1378_state_2_), 
	.B(n102), 
	.A(FE_OFN1377_state_1_));
   INVX1 U170 (.Y(n102), 
	.A(FE_OFN1379_state_0_));
endmodule

module B_EncodePacket_STROBCYC15_WAITSRAM24_WAITREG5264 (
	CLK, 
	RST, 
	ENCODE_EN, 
	DATA, 
	PAYLOAD, 
	ESTORE_EN, 
	NEXT_EN, 
	READ_EN, 
	CLK__L4_N3, 
	CLK__L4_N8, 
	CLK__L4_N9);
   input CLK;
   input RST;
   input ENCODE_EN;
   input [7:0] DATA;
   output [7:0] PAYLOAD;
   output ESTORE_EN;
   output NEXT_EN;
   output READ_EN;
   input CLK__L4_N3;
   input CLK__L4_N8;
   input CLK__L4_N9;

   // Internal wires
   wire FE_OFN1376_swcnt_12_;
   wire FE_OFN1155_n8;
   wire FE_OFN1154_n76;
   wire FE_OFN1153_N406;
   wire FE_OFN1152_N394;
   wire \swcnt[14] ;
   wire \swcnt[13] ;
   wire \swcnt[12] ;
   wire \swcnt[11] ;
   wire \swcnt[10] ;
   wire \swcnt[9] ;
   wire \swcnt[8] ;
   wire \swcnt[7] ;
   wire \swcnt[6] ;
   wire \swcnt[5] ;
   wire \swcnt[4] ;
   wire \swcnt[3] ;
   wire \swcnt[2] ;
   wire \swcnt[1] ;
   wire \swcnt[0] ;
   wire nread_en;
   wire \nswcnt[14] ;
   wire \nswcnt[13] ;
   wire \nswcnt[12] ;
   wire \nswcnt[11] ;
   wire \nswcnt[10] ;
   wire \nswcnt[9] ;
   wire \nswcnt[8] ;
   wire \nswcnt[7] ;
   wire \nswcnt[6] ;
   wire \nswcnt[5] ;
   wire \nswcnt[4] ;
   wire \nswcnt[3] ;
   wire \nswcnt[2] ;
   wire \nswcnt[1] ;
   wire \nswcnt[0] ;
   wire txwait;
   wire N372;
   wire N392;
   wire N394;
   wire N395;
   wire N396;
   wire N397;
   wire N398;
   wire N399;
   wire N400;
   wire N401;
   wire N402;
   wire N403;
   wire N404;
   wire N405;
   wire N406;
   wire N407;
   wire N408;
   wire N409;
   wire N410;
   wire N411;
   wire N412;
   wire N413;
   wire N414;
   wire N415;
   wire N416;
   wire N417;
   wire N418;
   wire N419;
   wire N420;
   wire N421;
   wire N422;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n55;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n168;
   wire n185;
   wire n191;
   wire n194;
   wire n199;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire [2:0] state;
   wire [5:0] cnt32;
   wire [3:0] cnt8;
   wire [15:0] lfsr;
   wire [2:0] nstate;
   wire [5:0] ncnt32;
   wire [3:0] ncnt8;
   wire [15:0] nlfsr;

   BUFX2 FE_OFC1376_swcnt_12_ (.Y(FE_OFN1376_swcnt_12_), 
	.A(\swcnt[12] ));
   BUFX2 FE_OFC1155_n8 (.Y(FE_OFN1155_n8), 
	.A(n8));
   BUFX4 FE_OFC1154_n76 (.Y(FE_OFN1154_n76), 
	.A(n76));
   BUFX2 FE_OFC1153_N406 (.Y(FE_OFN1153_N406), 
	.A(N406));
   BUFX2 FE_OFC1152_N394 (.Y(FE_OFN1152_N394), 
	.A(N394));
   LATCH \nswcnt_reg[0]  (.Q(\nswcnt[0] ), 
	.D(N407), 
	.CLK(N406));
   DFFSR \swcnt_reg[0]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[0] ), 
	.D(\nswcnt[0] ), 
	.CLK(CLK));
   LATCH \nswcnt_reg[1]  (.Q(\nswcnt[1] ), 
	.D(N408), 
	.CLK(N406));
   DFFSR \swcnt_reg[1]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[1] ), 
	.D(\nswcnt[1] ), 
	.CLK(CLK));
   LATCH \nswcnt_reg[14]  (.Q(\nswcnt[14] ), 
	.D(N421), 
	.CLK(FE_OFN1153_N406));
   DFFSR \swcnt_reg[14]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[14] ), 
	.D(\nswcnt[14] ), 
	.CLK(CLK));
   DFFSR \state_reg[0]  (.S(1'b1), 
	.R(n245), 
	.Q(state[0]), 
	.D(nstate[0]), 
	.CLK(CLK__L4_N8));
   LATCH \nswcnt_reg[2]  (.Q(\nswcnt[2] ), 
	.D(N409), 
	.CLK(N406));
   DFFSR \swcnt_reg[2]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[2] ), 
	.D(\nswcnt[2] ), 
	.CLK(CLK));
   LATCH \nswcnt_reg[3]  (.Q(\nswcnt[3] ), 
	.D(N410), 
	.CLK(N406));
   DFFSR \swcnt_reg[3]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[3] ), 
	.D(\nswcnt[3] ), 
	.CLK(CLK__L4_N3));
   LATCH \nswcnt_reg[4]  (.Q(\nswcnt[4] ), 
	.D(N411), 
	.CLK(N406));
   DFFSR \swcnt_reg[4]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[4] ), 
	.D(\nswcnt[4] ), 
	.CLK(CLK__L4_N3));
   LATCH \nswcnt_reg[5]  (.Q(\nswcnt[5] ), 
	.D(N412), 
	.CLK(FE_OFN1153_N406));
   DFFSR \swcnt_reg[5]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[5] ), 
	.D(\nswcnt[5] ), 
	.CLK(CLK));
   LATCH \nswcnt_reg[6]  (.Q(\nswcnt[6] ), 
	.D(N413), 
	.CLK(FE_OFN1153_N406));
   DFFSR \swcnt_reg[6]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[6] ), 
	.D(\nswcnt[6] ), 
	.CLK(CLK));
   LATCH \nswcnt_reg[7]  (.Q(\nswcnt[7] ), 
	.D(N414), 
	.CLK(FE_OFN1153_N406));
   DFFSR \swcnt_reg[7]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[7] ), 
	.D(\nswcnt[7] ), 
	.CLK(CLK__L4_N3));
   LATCH \nswcnt_reg[8]  (.Q(\nswcnt[8] ), 
	.D(N415), 
	.CLK(FE_OFN1153_N406));
   DFFSR \swcnt_reg[8]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[8] ), 
	.D(\nswcnt[8] ), 
	.CLK(CLK));
   LATCH \nswcnt_reg[9]  (.Q(\nswcnt[9] ), 
	.D(N416), 
	.CLK(FE_OFN1153_N406));
   DFFSR \swcnt_reg[9]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[9] ), 
	.D(\nswcnt[9] ), 
	.CLK(CLK__L4_N3));
   LATCH \nswcnt_reg[10]  (.Q(\nswcnt[10] ), 
	.D(N417), 
	.CLK(FE_OFN1153_N406));
   DFFSR \swcnt_reg[10]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[10] ), 
	.D(\nswcnt[10] ), 
	.CLK(CLK__L4_N3));
   LATCH \nswcnt_reg[11]  (.Q(\nswcnt[11] ), 
	.D(N418), 
	.CLK(FE_OFN1153_N406));
   DFFSR \swcnt_reg[11]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[11] ), 
	.D(\nswcnt[11] ), 
	.CLK(CLK));
   LATCH \nswcnt_reg[12]  (.Q(\nswcnt[12] ), 
	.D(N419), 
	.CLK(FE_OFN1153_N406));
   DFFSR \swcnt_reg[12]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[12] ), 
	.D(\nswcnt[12] ), 
	.CLK(CLK));
   LATCH \nswcnt_reg[13]  (.Q(\nswcnt[13] ), 
	.D(N420), 
	.CLK(N406));
   DFFSR \swcnt_reg[13]  (.S(1'b1), 
	.R(n245), 
	.Q(\swcnt[13] ), 
	.D(\nswcnt[13] ), 
	.CLK(CLK));
   LATCH \ncnt32_reg[0]  (.Q(ncnt32[0]), 
	.D(N395), 
	.CLK(FE_OFN1152_N394));
   DFFSR \cnt32_reg[0]  (.S(1'b1), 
	.R(n245), 
	.Q(cnt32[0]), 
	.D(ncnt32[0]), 
	.CLK(CLK__L4_N8));
   LATCH \ncnt8_reg[3]  (.Q(ncnt8[3]), 
	.D(N405), 
	.CLK(N401));
   DFFSR \cnt8_reg[3]  (.S(1'b1), 
	.R(n245), 
	.Q(cnt8[3]), 
	.D(ncnt8[3]), 
	.CLK(CLK__L4_N9));
   DFFSR \state_reg[2]  (.S(1'b1), 
	.R(n245), 
	.Q(state[2]), 
	.D(nstate[2]), 
	.CLK(CLK__L4_N8));
   DFFSR \state_reg[1]  (.S(1'b1), 
	.R(n245), 
	.Q(state[1]), 
	.D(nstate[1]), 
	.CLK(CLK__L4_N8));
   LATCH \ncnt8_reg[0]  (.Q(ncnt8[0]), 
	.D(N402), 
	.CLK(N401));
   DFFSR \cnt8_reg[0]  (.S(1'b1), 
	.R(n245), 
	.Q(cnt8[0]), 
	.D(ncnt8[0]), 
	.CLK(CLK__L4_N9));
   LATCH \ncnt8_reg[1]  (.Q(ncnt8[1]), 
	.D(N403), 
	.CLK(N401));
   DFFSR \cnt8_reg[1]  (.S(1'b1), 
	.R(n245), 
	.Q(cnt8[1]), 
	.D(ncnt8[1]), 
	.CLK(CLK__L4_N8));
   LATCH \ncnt8_reg[2]  (.Q(ncnt8[2]), 
	.D(N404), 
	.CLK(N401));
   DFFSR \cnt8_reg[2]  (.S(1'b1), 
	.R(n245), 
	.Q(cnt8[2]), 
	.D(ncnt8[2]), 
	.CLK(CLK__L4_N9));
   LATCH NEXT_EN_reg (.Q(NEXT_EN), 
	.D(n243), 
	.CLK(N372));
   LATCH txwait_reg (.Q(txwait), 
	.D(n244), 
	.CLK(N422));
   LATCH \ncnt32_reg[5]  (.Q(ncnt32[5]), 
	.D(N400), 
	.CLK(FE_OFN1152_N394));
   DFFSR \cnt32_reg[5]  (.S(1'b1), 
	.R(n245), 
	.Q(cnt32[5]), 
	.D(ncnt32[5]), 
	.CLK(CLK__L4_N8));
   LATCH \ncnt32_reg[1]  (.Q(ncnt32[1]), 
	.D(N396), 
	.CLK(FE_OFN1152_N394));
   DFFSR \cnt32_reg[1]  (.S(1'b1), 
	.R(n245), 
	.Q(cnt32[1]), 
	.D(ncnt32[1]), 
	.CLK(CLK__L4_N8));
   LATCH \ncnt32_reg[2]  (.Q(ncnt32[2]), 
	.D(N397), 
	.CLK(FE_OFN1152_N394));
   DFFSR \cnt32_reg[2]  (.S(1'b1), 
	.R(n245), 
	.Q(cnt32[2]), 
	.D(ncnt32[2]), 
	.CLK(CLK__L4_N8));
   LATCH \ncnt32_reg[3]  (.Q(ncnt32[3]), 
	.D(N398), 
	.CLK(FE_OFN1152_N394));
   DFFSR \cnt32_reg[3]  (.S(1'b1), 
	.R(n245), 
	.Q(cnt32[3]), 
	.D(ncnt32[3]), 
	.CLK(CLK__L4_N8));
   LATCH \ncnt32_reg[4]  (.Q(ncnt32[4]), 
	.D(N399), 
	.CLK(FE_OFN1152_N394));
   DFFSR \cnt32_reg[4]  (.S(1'b1), 
	.R(n245), 
	.Q(cnt32[4]), 
	.D(ncnt32[4]), 
	.CLK(CLK__L4_N8));
   LATCH nread_en_reg (.Q(nread_en), 
	.D(n242), 
	.CLK(N392));
   DFFSR READ_EN_reg (.S(1'b1), 
	.R(n245), 
	.Q(READ_EN), 
	.D(nread_en), 
	.CLK(CLK__L4_N9));
   INVX8 U18 (.Y(n245), 
	.A(RST));
   OR2X2 U20 (.Y(N406), 
	.B(N372), 
	.A(n114));
   INVX2 U30 (.Y(n3), 
	.A(n58));
   OAI21X1 U31 (.Y(nstate[2]), 
	.C(n6), 
	.B(n5), 
	.A(n4));
   NAND3X1 U32 (.Y(nstate[1]), 
	.C(n9), 
	.B(FE_OFN1155_n8), 
	.A(n7));
   AOI22X1 U33 (.Y(n9), 
	.D(n59), 
	.C(n58), 
	.B(n57), 
	.A(n55));
   NAND2X1 U34 (.Y(nstate[0]), 
	.B(n61), 
	.A(n60));
   INVX1 U35 (.Y(n61), 
	.A(n62));
   AOI22X1 U36 (.Y(n60), 
	.D(n243), 
	.C(ENCODE_EN), 
	.B(n63), 
	.A(n58));
   OAI21X1 U37 (.Y(n63), 
	.C(n66), 
	.B(n65), 
	.A(n64));
   NOR2X1 U38 (.Y(n242), 
	.B(n67), 
	.A(FE_OFN1155_n8));
   NAND2X1 U39 (.Y(n67), 
	.B(n69), 
	.A(n68));
   INVX1 U40 (.Y(n69), 
	.A(n70));
   OAI21X1 U41 (.Y(N422), 
	.C(n72), 
	.B(n71), 
	.A(FE_OFN1155_n8));
   AOI21X1 U42 (.Y(n72), 
	.C(n243), 
	.B(n74), 
	.A(n73));
   INVX1 U43 (.Y(n71), 
	.A(n75));
   NOR2X1 U44 (.Y(N421), 
	.B(n77), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U67 (.Y(n77), 
	.B(n78), 
	.A(\swcnt[14] ));
   NOR2X1 U69 (.Y(n78), 
	.B(n80), 
	.A(n79));
   NOR2X1 U70 (.Y(N420), 
	.B(n81), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U71 (.Y(n81), 
	.B(n79), 
	.A(n80));
   NAND2X1 U72 (.Y(n80), 
	.B(FE_OFN1376_swcnt_12_), 
	.A(n82));
   NOR2X1 U73 (.Y(N419), 
	.B(n83), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U74 (.Y(n83), 
	.B(n82), 
	.A(FE_OFN1376_swcnt_12_));
   NOR2X1 U75 (.Y(n82), 
	.B(n85), 
	.A(n84));
   NOR2X1 U76 (.Y(N418), 
	.B(n86), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U77 (.Y(n86), 
	.B(n85), 
	.A(n84));
   NAND2X1 U78 (.Y(n84), 
	.B(\swcnt[10] ), 
	.A(n87));
   NOR2X1 U79 (.Y(N417), 
	.B(n88), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U80 (.Y(n88), 
	.B(n87), 
	.A(\swcnt[10] ));
   NOR2X1 U81 (.Y(n87), 
	.B(n90), 
	.A(n89));
   NOR2X1 U82 (.Y(N416), 
	.B(n91), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U83 (.Y(n91), 
	.B(n90), 
	.A(n89));
   INVX1 U84 (.Y(n90), 
	.A(\swcnt[9] ));
   NAND2X1 U85 (.Y(n89), 
	.B(\swcnt[8] ), 
	.A(n92));
   NOR2X1 U86 (.Y(N415), 
	.B(n93), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U87 (.Y(n93), 
	.B(n92), 
	.A(\swcnt[8] ));
   NOR2X1 U88 (.Y(n92), 
	.B(n95), 
	.A(n94));
   NOR2X1 U89 (.Y(N414), 
	.B(n96), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U90 (.Y(n96), 
	.B(n95), 
	.A(n94));
   NAND2X1 U91 (.Y(n94), 
	.B(\swcnt[6] ), 
	.A(n97));
   NOR2X1 U92 (.Y(N413), 
	.B(n98), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U93 (.Y(n98), 
	.B(n97), 
	.A(\swcnt[6] ));
   NOR2X1 U94 (.Y(n97), 
	.B(n100), 
	.A(n99));
   NOR2X1 U95 (.Y(N412), 
	.B(n101), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U96 (.Y(n101), 
	.B(n100), 
	.A(n99));
   NAND2X1 U97 (.Y(n99), 
	.B(\swcnt[4] ), 
	.A(n102));
   NOR2X1 U98 (.Y(N411), 
	.B(n103), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U99 (.Y(n103), 
	.B(n102), 
	.A(\swcnt[4] ));
   NOR2X1 U100 (.Y(n102), 
	.B(n105), 
	.A(n104));
   NOR2X1 U101 (.Y(N410), 
	.B(n106), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U102 (.Y(n106), 
	.B(n105), 
	.A(n104));
   NAND2X1 U103 (.Y(n104), 
	.B(n107), 
	.A(\swcnt[2] ));
   NOR2X1 U104 (.Y(N409), 
	.B(n108), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U105 (.Y(n108), 
	.B(n107), 
	.A(\swcnt[2] ));
   AOI21X1 U106 (.Y(n107), 
	.C(n111), 
	.B(n110), 
	.A(n109));
   NOR2X1 U107 (.Y(N408), 
	.B(n112), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U108 (.Y(n112), 
	.B(n110), 
	.A(n113));
   XNOR2X1 U109 (.Y(n113), 
	.B(n111), 
	.A(n109));
   NAND2X1 U110 (.Y(n109), 
	.B(n114), 
	.A(\swcnt[0] ));
   NOR2X1 U111 (.Y(N407), 
	.B(n115), 
	.A(FE_OFN1154_n76));
   XNOR2X1 U112 (.Y(n115), 
	.B(n114), 
	.A(\swcnt[0] ));
   NOR2X1 U113 (.Y(n76), 
	.B(n62), 
	.A(n116));
   OAI22X1 U114 (.Y(n62), 
	.D(n110), 
	.C(n55), 
	.B(FE_OFN1155_n8), 
	.A(n75));
   NOR2X1 U115 (.Y(n55), 
	.B(n118), 
	.A(n117));
   NAND3X1 U116 (.Y(n118), 
	.C(\swcnt[9] ), 
	.B(\swcnt[14] ), 
	.A(\swcnt[6] ));
   NAND3X1 U117 (.Y(n117), 
	.C(n119), 
	.B(n68), 
	.A(FE_OFN1376_swcnt_12_));
   NOR2X1 U118 (.Y(n119), 
	.B(n120), 
	.A(\swcnt[0] ));
   OAI22X1 U119 (.Y(n116), 
	.D(n73), 
	.C(n121), 
	.B(n4), 
	.A(n5));
   NAND3X1 U120 (.Y(n114), 
	.C(FE_OFN1155_n8), 
	.B(n122), 
	.A(n5));
   NOR2X1 U121 (.Y(N405), 
	.B(n7), 
	.A(n123));
   XNOR2X1 U122 (.Y(n123), 
	.B(n124), 
	.A(cnt8[3]));
   NOR2X1 U123 (.Y(n124), 
	.B(n126), 
	.A(n125));
   NOR2X1 U124 (.Y(N404), 
	.B(n7), 
	.A(n127));
   XNOR2X1 U125 (.Y(n127), 
	.B(n126), 
	.A(n125));
   INVX1 U126 (.Y(N403), 
	.A(n128));
   AOI22X1 U127 (.Y(n128), 
	.D(n130), 
	.C(n129), 
	.B(N402), 
	.A(cnt8[1]));
   NOR2X1 U128 (.Y(N402), 
	.B(cnt8[0]), 
	.A(n7));
   INVX2 U129 (.Y(n7), 
	.A(n129));
   NOR2X1 U130 (.Y(n129), 
	.B(n131), 
	.A(n3));
   NAND2X1 U131 (.Y(N401), 
	.B(n133), 
	.A(n132));
   OAI21X1 U132 (.Y(n133), 
	.C(n135), 
	.B(n134), 
	.A(n73));
   INVX1 U133 (.Y(n135), 
	.A(n136));
   MUX2X1 U134 (.Y(N400), 
	.S(cnt32[5]), 
	.B(n137), 
	.A(n138));
   AOI21X1 U135 (.Y(n138), 
	.C(n141), 
	.B(n140), 
	.A(n139));
   OR2X1 U136 (.Y(n137), 
	.B(n142), 
	.A(n140));
   MUX2X1 U137 (.Y(N399), 
	.S(n140), 
	.B(n143), 
	.A(n142));
   INVX1 U138 (.Y(n140), 
	.A(cnt32[4]));
   NAND3X1 U139 (.Y(n142), 
	.C(cnt32[3]), 
	.B(n144), 
	.A(n139));
   INVX1 U140 (.Y(n143), 
	.A(n141));
   OAI21X1 U141 (.Y(n141), 
	.C(n146), 
	.B(n145), 
	.A(cnt32[3]));
   MUX2X1 U142 (.Y(N398), 
	.S(cnt32[3]), 
	.B(n147), 
	.A(n146));
   INVX1 U143 (.Y(n146), 
	.A(n148));
   OAI21X1 U144 (.Y(n148), 
	.C(n149), 
	.B(n145), 
	.A(n144));
   NAND2X1 U145 (.Y(n147), 
	.B(n144), 
	.A(n139));
   INVX1 U146 (.Y(n144), 
	.A(n150));
   NAND3X1 U147 (.Y(n150), 
	.C(cnt32[2]), 
	.B(cnt32[0]), 
	.A(cnt32[1]));
   MUX2X1 U148 (.Y(N397), 
	.S(n153), 
	.B(n151), 
	.A(n152));
   NAND3X1 U149 (.Y(n152), 
	.C(n139), 
	.B(cnt32[0]), 
	.A(cnt32[1]));
   INVX1 U150 (.Y(n151), 
	.A(n154));
   OAI21X1 U151 (.Y(n154), 
	.C(n155), 
	.B(cnt32[1]), 
	.A(n145));
   MUX2X1 U152 (.Y(N396), 
	.S(cnt32[1]), 
	.B(n156), 
	.A(n155));
   INVX1 U153 (.Y(n155), 
	.A(n157));
   OAI21X1 U154 (.Y(n157), 
	.C(n149), 
	.B(n145), 
	.A(cnt32[0]));
   NAND2X1 U155 (.Y(n156), 
	.B(cnt32[0]), 
	.A(n139));
   MUX2X1 U156 (.Y(N395), 
	.S(cnt32[0]), 
	.B(n145), 
	.A(n149));
   NAND2X1 U157 (.Y(n149), 
	.B(n158), 
	.A(n244));
   INVX1 U158 (.Y(n244), 
	.A(FE_OFN1155_n8));
   INVX1 U159 (.Y(n145), 
	.A(n139));
   NOR2X1 U160 (.Y(n139), 
	.B(FE_OFN1155_n8), 
	.A(n158));
   NAND3X1 U161 (.Y(N394), 
	.C(n132), 
	.B(n6), 
	.A(FE_OFN1155_n8));
   NAND3X1 U162 (.Y(n6), 
	.C(n64), 
	.B(n131), 
	.A(n58));
   INVX1 U163 (.Y(n64), 
	.A(n59));
   NAND2X1 U164 (.Y(n59), 
	.B(n159), 
	.A(cnt32[5]));
   INVX1 U165 (.Y(n159), 
	.A(n160));
   INVX1 U166 (.Y(n131), 
	.A(n65));
   OAI21X1 U167 (.Y(N392), 
	.C(n132), 
	.B(FE_OFN1155_n8), 
	.A(n75));
   NAND3X1 U168 (.Y(n8), 
	.C(state[0]), 
	.B(n161), 
	.A(state[1]));
   NOR2X1 U169 (.Y(n75), 
	.B(n163), 
	.A(n162));
   NAND3X1 U170 (.Y(n163), 
	.C(\swcnt[4] ), 
	.B(n164), 
	.A(\swcnt[3] ));
   NAND3X1 U171 (.Y(n162), 
	.C(n166), 
	.B(n95), 
	.A(n165));
   INVX1 U172 (.Y(n95), 
	.A(\swcnt[7] ));
   INVX1 U174 (.Y(n122), 
	.A(n74));
   NOR2X1 U175 (.Y(n74), 
	.B(n136), 
	.A(n134));
   NOR2X1 U207 (.Y(n130), 
	.B(cnt8[1]), 
	.A(n191));
   NAND2X1 U210 (.Y(n125), 
	.B(cnt8[0]), 
	.A(cnt8[1]));
   NAND3X1 U212 (.Y(n65), 
	.C(cnt8[3]), 
	.B(n134), 
	.A(n199));
   INVX1 U213 (.Y(n134), 
	.A(txwait));
   INVX1 U214 (.Y(n199), 
	.A(n185));
   NAND3X1 U215 (.Y(n185), 
	.C(n191), 
	.B(n126), 
	.A(n194));
   INVX1 U216 (.Y(n191), 
	.A(cnt8[0]));
   INVX1 U217 (.Y(n126), 
	.A(cnt8[2]));
   INVX1 U218 (.Y(n194), 
	.A(cnt8[1]));
   INVX1 U219 (.Y(N372), 
	.A(n168));
   NOR2X1 U220 (.Y(n168), 
	.B(n57), 
	.A(n243));
   INVX1 U221 (.Y(n243), 
	.A(n132));
   NOR2X1 U261 (.Y(n4), 
	.B(n224), 
	.A(n223));
   NAND3X1 U262 (.Y(n224), 
	.C(n225), 
	.B(\swcnt[5] ), 
	.A(\swcnt[8] ));
   NOR2X1 U263 (.Y(n225), 
	.B(n79), 
	.A(n85));
   NAND3X1 U264 (.Y(n223), 
	.C(n227), 
	.B(n226), 
	.A(n111));
   NOR2X1 U265 (.Y(n227), 
	.B(n70), 
	.A(\swcnt[0] ));
   NAND3X1 U266 (.Y(n70), 
	.C(n229), 
	.B(n165), 
	.A(n228));
   NOR2X1 U268 (.Y(n73), 
	.B(n231), 
	.A(n230));
   NAND3X1 U269 (.Y(n231), 
	.C(\swcnt[7] ), 
	.B(\swcnt[4] ), 
	.A(\swcnt[10] ));
   NAND3X1 U270 (.Y(n230), 
	.C(n164), 
	.B(n105), 
	.A(FE_OFN1376_swcnt_12_));
   NAND3X1 U273 (.Y(n5), 
	.C(state[2]), 
	.B(n233), 
	.A(n232));
   INVX1 U275 (.Y(n57), 
	.A(n110));
   NAND3X1 U276 (.Y(n110), 
	.C(state[0]), 
	.B(n161), 
	.A(n233));
   NAND3X1 U278 (.Y(n158), 
	.C(n164), 
	.B(n165), 
	.A(n228));
   INVX1 U279 (.Y(n164), 
	.A(n234));
   NAND3X1 U280 (.Y(n234), 
	.C(n68), 
	.B(n235), 
	.A(n229));
   NOR2X1 U281 (.Y(n68), 
	.B(n237), 
	.A(n236));
   NAND3X1 U282 (.Y(n237), 
	.C(n85), 
	.B(n111), 
	.A(n79));
   INVX1 U283 (.Y(n85), 
	.A(\swcnt[11] ));
   INVX1 U284 (.Y(n111), 
	.A(\swcnt[1] ));
   INVX1 U285 (.Y(n79), 
	.A(\swcnt[13] ));
   NAND3X1 U286 (.Y(n236), 
	.C(n226), 
	.B(n238), 
	.A(n100));
   INVX1 U287 (.Y(n226), 
	.A(\swcnt[2] ));
   INVX1 U288 (.Y(n238), 
	.A(\swcnt[8] ));
   INVX1 U289 (.Y(n100), 
	.A(\swcnt[5] ));
   INVX1 U290 (.Y(n235), 
	.A(\swcnt[0] ));
   NOR3X1 U291 (.Y(n229), 
	.C(\swcnt[14] ), 
	.B(\swcnt[9] ), 
	.A(\swcnt[6] ));
   INVX1 U292 (.Y(n165), 
	.A(FE_OFN1376_swcnt_12_));
   INVX1 U293 (.Y(n228), 
	.A(n120));
   NAND3X1 U294 (.Y(n120), 
	.C(n239), 
	.B(n105), 
	.A(n166));
   NOR2X1 U295 (.Y(n239), 
	.B(\swcnt[4] ), 
	.A(\swcnt[7] ));
   INVX1 U296 (.Y(n105), 
	.A(\swcnt[3] ));
   INVX1 U297 (.Y(n166), 
	.A(\swcnt[10] ));
   NAND3X1 U298 (.Y(n132), 
	.C(n232), 
	.B(n161), 
	.A(n233));
   INVX1 U299 (.Y(n233), 
	.A(state[1]));
   NAND2X1 U300 (.Y(n136), 
	.B(n66), 
	.A(n58));
   OR2X1 U301 (.Y(n66), 
	.B(cnt32[5]), 
	.A(n160));
   NAND3X1 U302 (.Y(n160), 
	.C(n241), 
	.B(n153), 
	.A(n240));
   NOR2X1 U303 (.Y(n241), 
	.B(cnt32[0]), 
	.A(cnt32[1]));
   INVX1 U304 (.Y(n153), 
	.A(cnt32[2]));
   NOR2X1 U305 (.Y(n240), 
	.B(cnt32[3]), 
	.A(cnt32[4]));
   INVX1 U306 (.Y(n58), 
	.A(n121));
   NAND3X1 U307 (.Y(n121), 
	.C(state[1]), 
	.B(n161), 
	.A(n232));
   INVX1 U308 (.Y(n161), 
	.A(state[2]));
   INVX1 U309 (.Y(n232), 
	.A(state[0]));
endmodule

module B_Header_WAITREG5264_DW01_inc_0 (
	A, 
	SUM);
   input [16:0] A;
   output [16:0] SUM;

   // Internal wires
   wire [16:2] carry;

   HAX1 U1_1_15 (.YS(SUM[15]), 
	.YC(carry[16]), 
	.B(carry[15]), 
	.A(A[15]));
   HAX1 U1_1_14 (.YS(SUM[14]), 
	.YC(carry[15]), 
	.B(carry[14]), 
	.A(A[14]));
   HAX1 U1_1_13 (.YS(SUM[13]), 
	.YC(carry[14]), 
	.B(carry[13]), 
	.A(A[13]));
   HAX1 U1_1_12 (.YS(SUM[12]), 
	.YC(carry[13]), 
	.B(carry[12]), 
	.A(A[12]));
   HAX1 U1_1_11 (.YS(SUM[11]), 
	.YC(carry[12]), 
	.B(carry[11]), 
	.A(A[11]));
   HAX1 U1_1_10 (.YS(SUM[10]), 
	.YC(carry[11]), 
	.B(carry[10]), 
	.A(A[10]));
   HAX1 U1_1_9 (.YS(SUM[9]), 
	.YC(carry[10]), 
	.B(carry[9]), 
	.A(A[9]));
   HAX1 U1_1_8 (.YS(SUM[8]), 
	.YC(carry[9]), 
	.B(carry[8]), 
	.A(A[8]));
   HAX1 U1_1_7 (.YS(SUM[7]), 
	.YC(carry[8]), 
	.B(carry[7]), 
	.A(A[7]));
   HAX1 U1_1_6 (.YS(SUM[6]), 
	.YC(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   HAX1 U1_1_5 (.YS(SUM[5]), 
	.YC(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   HAX1 U1_1_4 (.YS(SUM[4]), 
	.YC(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   HAX1 U1_1_3 (.YS(SUM[3]), 
	.YC(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   HAX1 U1_1_2 (.YS(SUM[2]), 
	.YC(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   HAX1 U1_1_1 (.YS(SUM[1]), 
	.YC(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   INVX2 U1 (.Y(SUM[0]), 
	.A(A[0]));
   XOR2X1 U2 (.Y(SUM[16]), 
	.B(A[16]), 
	.A(carry[16]));
endmodule

module B_Header_WAITREG5264 (
	CLK, 
	RST, 
	HEADER_EN, 
	HEADER, 
	TRANS_EN, 
	ENCODE_EN, 
	CLK__L4_N9);
   input CLK;
   input RST;
   input HEADER_EN;
   output [53:0] HEADER;
   output TRANS_EN;
   output ENCODE_EN;
   input CLK__L4_N9;

   // Internal wires
   wire FE_OFN1151_n17;
   wire FE_OFN1150_n20;
   wire \waitcnt[16] ;
   wire \waitcnt[15] ;
   wire \waitcnt[14] ;
   wire \waitcnt[13] ;
   wire \waitcnt[12] ;
   wire \waitcnt[11] ;
   wire \waitcnt[10] ;
   wire \waitcnt[9] ;
   wire \waitcnt[8] ;
   wire \waitcnt[7] ;
   wire \waitcnt[6] ;
   wire \waitcnt[5] ;
   wire \waitcnt[4] ;
   wire \waitcnt[3] ;
   wire \waitcnt[2] ;
   wire \waitcnt[1] ;
   wire \waitcnt[0] ;
   wire waittx;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n1;
   wire n16;
   wire n17;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n198;

   assign HEADER[50] = 1'b0 ;
   assign HEADER[49] = 1'b0 ;
   assign HEADER[48] = 1'b0 ;
   assign HEADER[47] = 1'b0 ;
   assign HEADER[46] = 1'b0 ;
   assign HEADER[45] = 1'b0 ;
   assign HEADER[8] = 1'b0 ;
   assign HEADER[7] = 1'b0 ;
   assign HEADER[6] = 1'b0 ;
   assign HEADER[5] = 1'b0 ;
   assign HEADER[4] = 1'b0 ;
   assign HEADER[3] = 1'b0 ;

   BUFX4 FE_OFC1151_n17 (.Y(FE_OFN1151_n17), 
	.A(n17));
   BUFX4 FE_OFC1150_n20 (.Y(FE_OFN1150_n20), 
	.A(n20));
   DFFSR \waitcnt_reg[0]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[0] ), 
	.D(n197), 
	.CLK(CLK));
   DFFSR waittx_reg (.S(1'b1), 
	.R(n198), 
	.Q(waittx), 
	.D(n195), 
	.CLK(CLK__L4_N9));
   DFFSR \waitcnt_reg[16]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[16] ), 
	.D(n196), 
	.CLK(CLK));
   DFFSR \waitcnt_reg[1]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[1] ), 
	.D(n194), 
	.CLK(CLK));
   DFFSR \waitcnt_reg[2]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[2] ), 
	.D(n193), 
	.CLK(CLK));
   DFFSR \waitcnt_reg[3]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[3] ), 
	.D(n192), 
	.CLK(CLK));
   DFFSR \waitcnt_reg[4]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[4] ), 
	.D(n191), 
	.CLK(CLK));
   DFFSR \waitcnt_reg[5]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[5] ), 
	.D(n190), 
	.CLK(CLK));
   DFFSR \waitcnt_reg[6]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[6] ), 
	.D(n189), 
	.CLK(CLK));
   DFFSR \waitcnt_reg[7]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[7] ), 
	.D(n188), 
	.CLK(CLK));
   DFFSR \waitcnt_reg[8]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[8] ), 
	.D(n187), 
	.CLK(CLK));
   DFFSR \waitcnt_reg[9]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[9] ), 
	.D(n186), 
	.CLK(CLK));
   DFFSR \waitcnt_reg[10]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[10] ), 
	.D(n185), 
	.CLK(CLK));
   DFFSR \waitcnt_reg[11]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[11] ), 
	.D(n184), 
	.CLK(CLK));
   DFFSR \waitcnt_reg[12]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[12] ), 
	.D(n183), 
	.CLK(CLK__L4_N9));
   DFFSR \waitcnt_reg[13]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[13] ), 
	.D(n182), 
	.CLK(CLK__L4_N9));
   DFFSR \waitcnt_reg[14]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[14] ), 
	.D(n181), 
	.CLK(CLK));
   DFFSR \waitcnt_reg[15]  (.S(1'b1), 
	.R(n198), 
	.Q(\waitcnt[15] ), 
	.D(n180), 
	.CLK(CLK));
   DFFSR ENCODE_EN_reg (.S(1'b1), 
	.R(n198), 
	.Q(ENCODE_EN), 
	.D(n179), 
	.CLK(CLK__L4_N9));
   B_Header_WAITREG5264_DW01_inc_0 add_80 (.A({ \waitcnt[16] ,
		\waitcnt[15] ,
		\waitcnt[14] ,
		\waitcnt[13] ,
		\waitcnt[12] ,
		\waitcnt[11] ,
		\waitcnt[10] ,
		\waitcnt[9] ,
		\waitcnt[8] ,
		\waitcnt[7] ,
		\waitcnt[6] ,
		\waitcnt[5] ,
		\waitcnt[4] ,
		\waitcnt[3] ,
		\waitcnt[2] ,
		\waitcnt[1] ,
		\waitcnt[0]  }), 
	.SUM({ N30,
		N29,
		N28,
		N27,
		N26,
		N25,
		N24,
		N23,
		N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16,
		N15,
		N14 }));
   INVX8 U3 (.Y(n198), 
	.A(RST));
   INVX2 U4 (.Y(n1), 
	.A(n55));
   OAI21X1 U31 (.Y(n197), 
	.C(n19), 
	.B(N14), 
	.A(n1));
   NAND2X1 U32 (.Y(n19), 
	.B(FE_OFN1150_n20), 
	.A(N14));
   OAI21X1 U33 (.Y(n196), 
	.C(n22), 
	.B(n21), 
	.A(n1));
   NAND2X1 U34 (.Y(n22), 
	.B(FE_OFN1150_n20), 
	.A(N30));
   INVX1 U35 (.Y(n21), 
	.A(\waitcnt[16] ));
   OAI21X1 U36 (.Y(n195), 
	.C(n16), 
	.B(n24), 
	.A(n23));
   INVX1 U37 (.Y(n16), 
	.A(HEADER_EN));
   OAI21X1 U38 (.Y(n194), 
	.C(n26), 
	.B(n25), 
	.A(n1));
   NAND2X1 U39 (.Y(n26), 
	.B(FE_OFN1150_n20), 
	.A(N15));
   OAI21X1 U40 (.Y(n193), 
	.C(n28), 
	.B(n27), 
	.A(n1));
   NAND2X1 U41 (.Y(n28), 
	.B(FE_OFN1150_n20), 
	.A(N16));
   INVX1 U42 (.Y(n27), 
	.A(\waitcnt[2] ));
   OAI21X1 U43 (.Y(n192), 
	.C(n30), 
	.B(n29), 
	.A(n1));
   NAND2X1 U44 (.Y(n30), 
	.B(FE_OFN1150_n20), 
	.A(N17));
   INVX1 U45 (.Y(n29), 
	.A(\waitcnt[3] ));
   OAI21X1 U46 (.Y(n191), 
	.C(n32), 
	.B(n31), 
	.A(n1));
   NAND2X1 U47 (.Y(n32), 
	.B(FE_OFN1150_n20), 
	.A(N18));
   INVX1 U48 (.Y(n31), 
	.A(\waitcnt[4] ));
   OAI21X1 U49 (.Y(n190), 
	.C(n34), 
	.B(n33), 
	.A(FE_OFN1151_n17));
   NAND2X1 U50 (.Y(n34), 
	.B(FE_OFN1150_n20), 
	.A(N19));
   INVX1 U51 (.Y(n33), 
	.A(\waitcnt[5] ));
   OAI21X1 U52 (.Y(n189), 
	.C(n36), 
	.B(n35), 
	.A(FE_OFN1151_n17));
   NAND2X1 U53 (.Y(n36), 
	.B(FE_OFN1150_n20), 
	.A(N20));
   OAI21X1 U54 (.Y(n188), 
	.C(n38), 
	.B(n37), 
	.A(FE_OFN1151_n17));
   NAND2X1 U55 (.Y(n38), 
	.B(FE_OFN1150_n20), 
	.A(N21));
   INVX1 U56 (.Y(n37), 
	.A(\waitcnt[7] ));
   OAI21X1 U57 (.Y(n187), 
	.C(n40), 
	.B(n39), 
	.A(FE_OFN1151_n17));
   NAND2X1 U58 (.Y(n40), 
	.B(FE_OFN1150_n20), 
	.A(N22));
   INVX1 U59 (.Y(n39), 
	.A(\waitcnt[8] ));
   OAI21X1 U60 (.Y(n186), 
	.C(n42), 
	.B(n41), 
	.A(FE_OFN1151_n17));
   NAND2X1 U61 (.Y(n42), 
	.B(FE_OFN1150_n20), 
	.A(N23));
   INVX1 U62 (.Y(n41), 
	.A(\waitcnt[9] ));
   OAI21X1 U63 (.Y(n185), 
	.C(n44), 
	.B(n43), 
	.A(FE_OFN1151_n17));
   NAND2X1 U64 (.Y(n44), 
	.B(FE_OFN1150_n20), 
	.A(N24));
   OAI21X1 U65 (.Y(n184), 
	.C(n46), 
	.B(n45), 
	.A(FE_OFN1151_n17));
   NAND2X1 U66 (.Y(n46), 
	.B(FE_OFN1150_n20), 
	.A(N25));
   OAI21X1 U67 (.Y(n183), 
	.C(n48), 
	.B(n47), 
	.A(FE_OFN1151_n17));
   NAND2X1 U68 (.Y(n48), 
	.B(FE_OFN1150_n20), 
	.A(N26));
   INVX1 U69 (.Y(n47), 
	.A(\waitcnt[12] ));
   OAI21X1 U70 (.Y(n182), 
	.C(n50), 
	.B(n49), 
	.A(FE_OFN1151_n17));
   NAND2X1 U71 (.Y(n50), 
	.B(FE_OFN1150_n20), 
	.A(N27));
   INVX1 U72 (.Y(n49), 
	.A(\waitcnt[13] ));
   OAI21X1 U73 (.Y(n181), 
	.C(n52), 
	.B(n51), 
	.A(FE_OFN1151_n17));
   NAND2X1 U74 (.Y(n52), 
	.B(FE_OFN1150_n20), 
	.A(N28));
   OAI21X1 U75 (.Y(n180), 
	.C(n54), 
	.B(n53), 
	.A(FE_OFN1151_n17));
   NAND2X1 U76 (.Y(n54), 
	.B(FE_OFN1150_n20), 
	.A(N29));
   NOR2X1 U77 (.Y(n20), 
	.B(n23), 
	.A(n55));
   INVX1 U78 (.Y(n23), 
	.A(n56));
   OAI21X1 U79 (.Y(n179), 
	.C(n57), 
	.B(n56), 
	.A(n55));
   OAI21X1 U80 (.Y(n57), 
	.C(ENCODE_EN), 
	.B(waittx), 
	.A(HEADER_EN));
   NAND2X1 U81 (.Y(n56), 
	.B(n59), 
	.A(n58));
   NOR2X1 U82 (.Y(n59), 
	.B(n61), 
	.A(n60));
   NAND3X1 U83 (.Y(n61), 
	.C(n62), 
	.B(n25), 
	.A(n53));
   NOR2X1 U84 (.Y(n62), 
	.B(\waitcnt[2] ), 
	.A(\waitcnt[3] ));
   INVX1 U85 (.Y(n25), 
	.A(\waitcnt[1] ));
   INVX1 U86 (.Y(n53), 
	.A(\waitcnt[15] ));
   NAND3X1 U87 (.Y(n60), 
	.C(n64), 
	.B(n35), 
	.A(n63));
   NOR2X1 U88 (.Y(n64), 
	.B(\waitcnt[4] ), 
	.A(\waitcnt[5] ));
   INVX1 U89 (.Y(n35), 
	.A(\waitcnt[6] ));
   NOR2X1 U90 (.Y(n63), 
	.B(\waitcnt[7] ), 
	.A(\waitcnt[9] ));
   NOR2X1 U91 (.Y(n58), 
	.B(n66), 
	.A(n65));
   NAND3X1 U92 (.Y(n66), 
	.C(n67), 
	.B(\waitcnt[16] ), 
	.A(\waitcnt[8] ));
   NOR2X1 U93 (.Y(n67), 
	.B(n51), 
	.A(n45));
   INVX1 U94 (.Y(n51), 
	.A(\waitcnt[14] ));
   INVX1 U95 (.Y(n45), 
	.A(\waitcnt[11] ));
   NAND3X1 U96 (.Y(n65), 
	.C(n68), 
	.B(n43), 
	.A(N14));
   NOR2X1 U97 (.Y(n68), 
	.B(\waitcnt[12] ), 
	.A(\waitcnt[13] ));
   INVX1 U98 (.Y(n43), 
	.A(\waitcnt[10] ));
   INVX1 U100 (.Y(n55), 
	.A(FE_OFN1151_n17));
   NOR2X1 U101 (.Y(n17), 
	.B(HEADER_EN), 
	.A(n24));
   INVX1 U102 (.Y(n24), 
	.A(waittx));
endmodule

module B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869_DW01_inc_0 (
	A, 
	SUM);
   input [12:0] A;
   output [12:0] SUM;

   // Internal wires
   wire [12:2] carry;

   HAX1 U1_1_11 (.YS(SUM[11]), 
	.YC(carry[12]), 
	.B(carry[11]), 
	.A(A[11]));
   HAX1 U1_1_10 (.YS(SUM[10]), 
	.YC(carry[11]), 
	.B(carry[10]), 
	.A(A[10]));
   HAX1 U1_1_9 (.YS(SUM[9]), 
	.YC(carry[10]), 
	.B(carry[9]), 
	.A(A[9]));
   HAX1 U1_1_8 (.YS(SUM[8]), 
	.YC(carry[9]), 
	.B(carry[8]), 
	.A(A[8]));
   HAX1 U1_1_7 (.YS(SUM[7]), 
	.YC(carry[8]), 
	.B(carry[7]), 
	.A(A[7]));
   HAX1 U1_1_6 (.YS(SUM[6]), 
	.YC(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   HAX1 U1_1_5 (.YS(SUM[5]), 
	.YC(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   HAX1 U1_1_4 (.YS(SUM[4]), 
	.YC(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   HAX1 U1_1_3 (.YS(SUM[3]), 
	.YC(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   HAX1 U1_1_2 (.YS(SUM[2]), 
	.YC(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   HAX1 U1_1_1 (.YS(SUM[1]), 
	.YC(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   INVX2 U1 (.Y(SUM[0]), 
	.A(A[0]));
   XOR2X1 U2 (.Y(SUM[12]), 
	.B(A[12]), 
	.A(carry[12]));
endmodule

module B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869 (
	CLK, 
	RST, 
	REPLY_EN, 
	ERR, 
	DATAOUT);
   input CLK;
   input RST;
   input REPLY_EN;
   input ERR;
   output DATAOUT;

   // Internal wires
   wire FE_OFN1373_run;
   wire FE_OFN1372_DATAOUT1;
   wire FE_OFN1371_cnt8_0_;
   wire FE_OFN1149_n9;
   wire FE_OFN1148_n2;
   wire \bluewait[12] ;
   wire \bluewait[11] ;
   wire \bluewait[10] ;
   wire \bluewait[9] ;
   wire \bluewait[8] ;
   wire \bluewait[7] ;
   wire \bluewait[6] ;
   wire \bluewait[5] ;
   wire \bluewait[4] ;
   wire \bluewait[3] ;
   wire \bluewait[2] ;
   wire \bluewait[1] ;
   wire \bluewait[0] ;
   wire stop;
   wire run;
   wire N33;
   wire N34;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire N45;
   wire b;
   wire a;
   wire N125;
   wire N126;
   wire N127;
   wire N128;
   wire N129;
   wire n78;
   wire n80;
   wire n82;
   wire n84;
   wire n86;
   wire n88;
   wire n90;
   wire n92;
   wire n94;
   wire n96;
   wire n98;
   wire n100;
   wire n102;
   wire n104;
   wire n106;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n118;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire [3:0] cnt8;
   wire [7:0] txbuff;

   BUFX2 FE_OFC1373_run (.Y(FE_OFN1373_run), 
	.A(run));
   BUFX2 FE_OFC1372_DATAOUT1 (.Y(DATAOUT), 
	.A(FE_OFN1372_DATAOUT1));
   BUFX2 FE_OFC1371_cnt8_0_ (.Y(FE_OFN1371_cnt8_0_), 
	.A(cnt8[0]));
   BUFX4 FE_OFC1149_n9 (.Y(FE_OFN1149_n9), 
	.A(n9));
   BUFX2 FE_OFC1148_n2 (.Y(FE_OFN1148_n2), 
	.A(n2));
   LATCH b_reg (.Q(b), 
	.D(N127), 
	.CLK(N128));
   LATCH run_reg (.Q(run), 
	.D(N126), 
	.CLK(N125));
   DFFSR \bluewait_reg[12]  (.S(1'b1), 
	.R(n67), 
	.Q(\bluewait[12] ), 
	.D(n109), 
	.CLK(CLK));
   DFFSR \bluewait_reg[3]  (.S(1'b1), 
	.R(n67), 
	.Q(\bluewait[3] ), 
	.D(n106), 
	.CLK(CLK));
   DFFSR \bluewait_reg[0]  (.S(1'b1), 
	.R(n67), 
	.Q(\bluewait[0] ), 
	.D(n104), 
	.CLK(CLK));
   DFFSR \bluewait_reg[1]  (.S(1'b1), 
	.R(n67), 
	.Q(\bluewait[1] ), 
	.D(n102), 
	.CLK(CLK));
   DFFSR \bluewait_reg[2]  (.S(1'b1), 
	.R(n67), 
	.Q(\bluewait[2] ), 
	.D(n100), 
	.CLK(CLK));
   DFFSR \bluewait_reg[4]  (.S(1'b1), 
	.R(n67), 
	.Q(\bluewait[4] ), 
	.D(n98), 
	.CLK(CLK));
   DFFSR \bluewait_reg[5]  (.S(1'b1), 
	.R(n67), 
	.Q(\bluewait[5] ), 
	.D(n96), 
	.CLK(CLK));
   DFFSR \bluewait_reg[6]  (.S(1'b1), 
	.R(n67), 
	.Q(\bluewait[6] ), 
	.D(n94), 
	.CLK(CLK));
   DFFSR \bluewait_reg[7]  (.S(1'b1), 
	.R(n67), 
	.Q(\bluewait[7] ), 
	.D(n92), 
	.CLK(CLK));
   DFFSR \bluewait_reg[8]  (.S(1'b1), 
	.R(n67), 
	.Q(\bluewait[8] ), 
	.D(n90), 
	.CLK(CLK));
   DFFSR \bluewait_reg[9]  (.S(1'b1), 
	.R(n67), 
	.Q(\bluewait[9] ), 
	.D(n88), 
	.CLK(CLK));
   DFFSR \bluewait_reg[10]  (.S(1'b1), 
	.R(n67), 
	.Q(\bluewait[10] ), 
	.D(n86), 
	.CLK(CLK));
   DFFSR \bluewait_reg[11]  (.S(1'b1), 
	.R(n67), 
	.Q(\bluewait[11] ), 
	.D(n84), 
	.CLK(CLK));
   DFFSR \txbuff_reg[1]  (.S(1'b1), 
	.R(n67), 
	.Q(txbuff[1]), 
	.D(n82), 
	.CLK(CLK));
   DFFSR \txbuff_reg[2]  (.S(1'b1), 
	.R(n67), 
	.Q(txbuff[2]), 
	.D(n80), 
	.CLK(CLK));
   DFFSR \txbuff_reg[3]  (.S(1'b1), 
	.R(n67), 
	.Q(txbuff[3]), 
	.D(n78), 
	.CLK(CLK));
   DFFSR \txbuff_reg[4]  (.S(1'b1), 
	.R(n67), 
	.Q(txbuff[4]), 
	.D(n63), 
	.CLK(CLK));
   DFFSR \txbuff_reg[5]  (.S(1'b1), 
	.R(n67), 
	.Q(txbuff[5]), 
	.D(n64), 
	.CLK(CLK));
   DFFSR \txbuff_reg[6]  (.S(1'b1), 
	.R(n67), 
	.Q(txbuff[6]), 
	.D(n65), 
	.CLK(CLK));
   DFFSR \txbuff_reg[7]  (.S(1'b1), 
	.R(n67), 
	.Q(txbuff[7]), 
	.D(n66), 
	.CLK(CLK));
   DFFSR DATAOUT_reg (.S(1'b1), 
	.R(n67), 
	.Q(FE_OFN1372_DATAOUT1), 
	.D(n118), 
	.CLK(CLK));
   DFFSR \cnt8_reg[0]  (.S(1'b1), 
	.R(n67), 
	.Q(cnt8[0]), 
	.D(n113), 
	.CLK(CLK));
   DFFSR \cnt8_reg[1]  (.S(1'b1), 
	.R(n67), 
	.Q(cnt8[1]), 
	.D(n112), 
	.CLK(CLK));
   DFFSR \cnt8_reg[2]  (.S(1'b1), 
	.R(n67), 
	.Q(cnt8[2]), 
	.D(n111), 
	.CLK(CLK));
   DFFSR stop_reg (.S(1'b1), 
	.R(n67), 
	.Q(stop), 
	.D(n110), 
	.CLK(CLK));
   LATCH a_reg (.Q(a), 
	.D(N129), 
	.CLK(N128));
   B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869_DW01_inc_0 r78 (.A({ \bluewait[12] ,
		\bluewait[11] ,
		\bluewait[10] ,
		\bluewait[9] ,
		\bluewait[8] ,
		\bluewait[7] ,
		\bluewait[6] ,
		\bluewait[5] ,
		\bluewait[4] ,
		\bluewait[3] ,
		\bluewait[2] ,
		\bluewait[1] ,
		\bluewait[0]  }), 
	.SUM({ N45,
		N44,
		N43,
		N42,
		N41,
		N40,
		N39,
		N38,
		N37,
		N36,
		N35,
		N34,
		N33 }));
   INVX8 U3 (.Y(n67), 
	.A(RST));
   INVX1 U4 (.Y(n63), 
	.A(n1));
   MUX2X1 U5 (.Y(n1), 
	.S(FE_OFN1148_n2), 
	.B(txbuff[4]), 
	.A(ERR));
   INVX1 U6 (.Y(n64), 
	.A(n3));
   MUX2X1 U7 (.Y(n3), 
	.S(FE_OFN1148_n2), 
	.B(txbuff[5]), 
	.A(n4));
   INVX1 U8 (.Y(n65), 
	.A(n5));
   MUX2X1 U9 (.Y(n5), 
	.S(FE_OFN1148_n2), 
	.B(txbuff[6]), 
	.A(ERR));
   INVX1 U10 (.Y(n66), 
	.A(n6));
   MUX2X1 U11 (.Y(n6), 
	.S(FE_OFN1148_n2), 
	.B(txbuff[7]), 
	.A(n4));
   INVX1 U12 (.Y(n4), 
	.A(ERR));
   OAI21X1 U13 (.Y(n98), 
	.C(n8), 
	.B(n7), 
	.A(run));
   NAND2X1 U14 (.Y(n8), 
	.B(FE_OFN1149_n9), 
	.A(N37));
   OAI21X1 U15 (.Y(n96), 
	.C(n11), 
	.B(n10), 
	.A(run));
   NAND2X1 U16 (.Y(n11), 
	.B(FE_OFN1149_n9), 
	.A(N38));
   OAI21X1 U17 (.Y(n94), 
	.C(n13), 
	.B(n12), 
	.A(run));
   NAND2X1 U18 (.Y(n13), 
	.B(FE_OFN1149_n9), 
	.A(N39));
   INVX1 U19 (.Y(n12), 
	.A(\bluewait[6] ));
   OAI21X1 U20 (.Y(n92), 
	.C(n15), 
	.B(n14), 
	.A(run));
   NAND2X1 U21 (.Y(n15), 
	.B(FE_OFN1149_n9), 
	.A(N40));
   INVX1 U22 (.Y(n14), 
	.A(\bluewait[7] ));
   OAI21X1 U23 (.Y(n90), 
	.C(n17), 
	.B(n16), 
	.A(run));
   NAND2X1 U24 (.Y(n17), 
	.B(FE_OFN1149_n9), 
	.A(N41));
   INVX1 U25 (.Y(n16), 
	.A(\bluewait[8] ));
   OAI21X1 U26 (.Y(n88), 
	.C(n19), 
	.B(n18), 
	.A(run));
   NAND2X1 U27 (.Y(n19), 
	.B(FE_OFN1149_n9), 
	.A(N42));
   INVX1 U28 (.Y(n18), 
	.A(\bluewait[9] ));
   OAI21X1 U29 (.Y(n86), 
	.C(n21), 
	.B(n20), 
	.A(FE_OFN1373_run));
   NAND2X1 U30 (.Y(n21), 
	.B(FE_OFN1149_n9), 
	.A(N43));
   OAI21X1 U31 (.Y(n84), 
	.C(n23), 
	.B(n22), 
	.A(FE_OFN1373_run));
   NAND2X1 U32 (.Y(n23), 
	.B(FE_OFN1149_n9), 
	.A(N44));
   OR2X1 U33 (.Y(n82), 
	.B(FE_OFN1148_n2), 
	.A(txbuff[1]));
   OR2X1 U34 (.Y(n80), 
	.B(FE_OFN1148_n2), 
	.A(txbuff[2]));
   OR2X1 U35 (.Y(n78), 
	.B(FE_OFN1148_n2), 
	.A(txbuff[3]));
   NOR2X1 U36 (.Y(n2), 
	.B(n25), 
	.A(n24));
   NAND3X1 U37 (.Y(n25), 
	.C(FE_OFN1373_run), 
	.B(N33), 
	.A(n26));
   NAND3X1 U38 (.Y(n24), 
	.C(n30), 
	.B(n29), 
	.A(n28));
   NOR2X1 U39 (.Y(n30), 
	.B(\bluewait[8] ), 
	.A(\bluewait[9] ));
   MUX2X1 U40 (.Y(n118), 
	.S(run), 
	.B(n31), 
	.A(n32));
   MUX2X1 U41 (.Y(n32), 
	.S(cnt8[2]), 
	.B(n33), 
	.A(n34));
   MUX2X1 U42 (.Y(n34), 
	.S(cnt8[1]), 
	.B(n35), 
	.A(n36));
   MUX2X1 U43 (.Y(n36), 
	.S(FE_OFN1371_cnt8_0_), 
	.B(txbuff[6]), 
	.A(txbuff[7]));
   MUX2X1 U44 (.Y(n35), 
	.S(FE_OFN1371_cnt8_0_), 
	.B(txbuff[4]), 
	.A(txbuff[5]));
   MUX2X1 U45 (.Y(n33), 
	.S(cnt8[1]), 
	.B(n37), 
	.A(n38));
   MUX2X1 U46 (.Y(n38), 
	.S(FE_OFN1371_cnt8_0_), 
	.B(txbuff[2]), 
	.A(txbuff[3]));
   NAND2X1 U47 (.Y(n37), 
	.B(FE_OFN1371_cnt8_0_), 
	.A(txbuff[1]));
   NAND2X1 U48 (.Y(n31), 
	.B(DATAOUT), 
	.A(REPLY_EN));
   XOR2X1 U49 (.Y(n113), 
	.B(n39), 
	.A(FE_OFN1371_cnt8_0_));
   XOR2X1 U50 (.Y(n112), 
	.B(n41), 
	.A(n40));
   XOR2X1 U51 (.Y(n111), 
	.B(n42), 
	.A(cnt8[2]));
   NOR2X1 U52 (.Y(n42), 
	.B(n41), 
	.A(n40));
   INVX1 U53 (.Y(n40), 
	.A(cnt8[1]));
   INVX1 U54 (.Y(n110), 
	.A(n43));
   MUX2X1 U55 (.Y(n43), 
	.S(n44), 
	.B(run), 
	.A(stop));
   AOI22X1 U56 (.Y(n44), 
	.D(n47), 
	.C(REPLY_EN), 
	.B(n46), 
	.A(n45));
   INVX1 U57 (.Y(n46), 
	.A(n41));
   NAND2X1 U58 (.Y(n41), 
	.B(FE_OFN1371_cnt8_0_), 
	.A(n39));
   AND2X1 U59 (.Y(n39), 
	.B(FE_OFN1373_run), 
	.A(n48));
   AND2X1 U60 (.Y(n45), 
	.B(cnt8[2]), 
	.A(cnt8[1]));
   OAI21X1 U61 (.Y(n109), 
	.C(n49), 
	.B(n28), 
	.A(FE_OFN1373_run));
   NAND2X1 U62 (.Y(n49), 
	.B(FE_OFN1149_n9), 
	.A(N45));
   INVX1 U63 (.Y(n28), 
	.A(\bluewait[12] ));
   OAI21X1 U64 (.Y(n106), 
	.C(n51), 
	.B(n50), 
	.A(run));
   NAND2X1 U65 (.Y(n51), 
	.B(FE_OFN1149_n9), 
	.A(N36));
   INVX1 U66 (.Y(n50), 
	.A(\bluewait[3] ));
   OAI21X1 U67 (.Y(n104), 
	.C(n52), 
	.B(N33), 
	.A(FE_OFN1373_run));
   NAND2X1 U68 (.Y(n52), 
	.B(FE_OFN1149_n9), 
	.A(N33));
   OAI21X1 U70 (.Y(n102), 
	.C(n54), 
	.B(n53), 
	.A(FE_OFN1373_run));
   NAND2X1 U71 (.Y(n54), 
	.B(FE_OFN1149_n9), 
	.A(N34));
   INVX1 U72 (.Y(n53), 
	.A(\bluewait[1] ));
   OAI21X1 U73 (.Y(n100), 
	.C(n55), 
	.B(n29), 
	.A(FE_OFN1373_run));
   NAND2X1 U74 (.Y(n55), 
	.B(FE_OFN1149_n9), 
	.A(N35));
   NOR2X1 U75 (.Y(n9), 
	.B(n48), 
	.A(n47));
   NOR2X1 U76 (.Y(n48), 
	.B(n57), 
	.A(n56));
   NAND3X1 U77 (.Y(n57), 
	.C(\bluewait[9] ), 
	.B(\bluewait[2] ), 
	.A(\bluewait[8] ));
   NAND3X1 U78 (.Y(n56), 
	.C(\bluewait[12] ), 
	.B(n26), 
	.A(\bluewait[0] ));
   NOR2X1 U79 (.Y(n26), 
	.B(n59), 
	.A(n58));
   NAND3X1 U80 (.Y(n59), 
	.C(n60), 
	.B(n22), 
	.A(n20));
   NOR2X1 U81 (.Y(n60), 
	.B(\bluewait[1] ), 
	.A(\bluewait[3] ));
   INVX1 U82 (.Y(n22), 
	.A(\bluewait[11] ));
   INVX1 U83 (.Y(n20), 
	.A(\bluewait[10] ));
   NAND3X1 U84 (.Y(n58), 
	.C(n61), 
	.B(n10), 
	.A(n7));
   NOR2X1 U85 (.Y(n61), 
	.B(\bluewait[6] ), 
	.A(\bluewait[7] ));
   INVX1 U86 (.Y(n10), 
	.A(\bluewait[5] ));
   INVX1 U87 (.Y(n7), 
	.A(\bluewait[4] ));
   INVX1 U88 (.Y(n47), 
	.A(FE_OFN1373_run));
   INVX1 U89 (.Y(n29), 
	.A(\bluewait[2] ));
   AND2X1 U90 (.Y(N129), 
	.B(REPLY_EN), 
	.A(n67));
   NAND2X1 U91 (.Y(N128), 
	.B(n67), 
	.A(stop));
   NOR2X1 U92 (.Y(N127), 
	.B(n62), 
	.A(RST));
   OAI21X1 U93 (.Y(N125), 
	.C(N126), 
	.B(n62), 
	.A(b));
   NOR2X1 U94 (.Y(N126), 
	.B(stop), 
	.A(RST));
   INVX1 U95 (.Y(n62), 
	.A(a));
endmodule

module B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_0 (
	A, 
	SUM);
   input [9:0] A;
   output [9:0] SUM;

   // Internal wires
   wire [9:2] carry;
endmodule

module B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_2 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;
endmodule

module B_UAT_WAITSRAM24_WAITREG5264 (
	CLK, 
	RST, 
	ACCESS_CODE, 
	HEADER, 
	PAYLOAD, 
	TRAN_EN, 
	ESTORE_EN, 
	ANT_LOUT);
   input CLK;
   input RST;
   input [71:0] ACCESS_CODE;
   input [53:0] HEADER;
   input [7:0] PAYLOAD;
   input TRAN_EN;
   input ESTORE_EN;
   output ANT_LOUT;

   // Internal wires
   wire FE_UNCONNECTED_24;
   wire FE_UNCONNECTED_23;
   wire FE_UNCONNECTED_22;
   wire FE_UNCONNECTED_21;
   wire FE_UNCONNECTED_20;
   wire FE_UNCONNECTED_19;
   wire FE_UNCONNECTED_18;
   wire FE_UNCONNECTED_17;
   wire FE_UNCONNECTED_16;
   wire FE_UNCONNECTED_15;
   wire FE_UNCONNECTED_14;
   wire FE_UNCONNECTED_13;
   wire FE_UNCONNECTED_12;
   wire FE_UNCONNECTED_11;
   wire FE_UNCONNECTED_10;
   wire FE_UNCONNECTED_9;
   wire FE_UNCONNECTED_8;
   wire FE_UNCONNECTED_7;
   wire [1:0] state;
   wire [1:0] nxtstate;
   wire [7:0] cnt128;
   wire [9:0] cnt658;
   wire [9:0] nxtcnt658;
   wire [7:0] nxtcnt128;
   wire [5:0] cnt34;
   wire [5:0] nxtcnt34;
   wire [3:0] cnt8;
   wire [3:0] nxtcnt8;
   wire [127:0] tHeader;
   wire [7:0] pLoad;

   B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_0 r117 (.A(cnt658), 
	.SUM({ FE_UNCONNECTED_16,
		FE_UNCONNECTED_15,
		FE_UNCONNECTED_14,
		FE_UNCONNECTED_13,
		FE_UNCONNECTED_12,
		FE_UNCONNECTED_11,
		FE_UNCONNECTED_10,
		FE_UNCONNECTED_9,
		FE_UNCONNECTED_8,
		FE_UNCONNECTED_7 }));
   B_UAT_WAITSRAM24_WAITREG5264_DW01_inc_2 add_74 (.A(cnt128), 
	.SUM({ FE_UNCONNECTED_24,
		FE_UNCONNECTED_23,
		FE_UNCONNECTED_22,
		FE_UNCONNECTED_21,
		FE_UNCONNECTED_20,
		FE_UNCONNECTED_19,
		FE_UNCONNECTED_18,
		FE_UNCONNECTED_17 }));
endmodule

module bToothTop (
	CLK, 
	DATA, 
	EMPTY, 
	READ_EN1, 
	RST, 
	DATAOUT, 
	EMPTY_SRAM, 
	READ_EN, 
	RESEND_EN, 
	CLK__L4_N17, 
	CLK__L4_N18, 
	CLK__L4_N19, 
	CLK__L4_N3, 
	CLK__L4_N8, 
	CLK__L4_N9, 
	FE_OFN668_RST, 
	FE_PHN1026_RST, 
	FE_OFN1434_RST, 
	FE_PHN1485_RST);
   input CLK;
   input [7:0] DATA;
   input EMPTY;
   input READ_EN1;
   input RST;
   output [7:0] DATAOUT;
   output EMPTY_SRAM;
   output READ_EN;
   output RESEND_EN;
   input CLK__L4_N17;
   input CLK__L4_N18;
   input CLK__L4_N19;
   input CLK__L4_N3;
   input CLK__L4_N8;
   input CLK__L4_N9;
   input FE_OFN668_RST;
   input FE_PHN1026_RST;
   input FE_OFN1434_RST;
   input FE_PHN1485_RST;

   // Internal wires
   wire FE_OFN1474_RST;
   wire FE_OFN1463_NEXT_EN;
   wire FE_OFN1381_HEADER_EN;
   wire FE_UNCONNECTED_7;
   wire FE_UNCONNECTED_6;
   wire FE_UNCONNECTED_5;
   wire TRANS_EN;
   wire HEADER_EN;
   wire DATAOUT1;
   wire NEXT_EN;
   wire ENCODE_EN;
   wire ERR;
   wire REPLY_EN;
   wire [71:0] ACESS_CODE;
   wire [7:0] PAYLOAD;
   wire [53:0] HEADER;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;
   wire SYNOPSYS_UNCONNECTED__4;
   wire SYNOPSYS_UNCONNECTED__5;
   wire SYNOPSYS_UNCONNECTED__6;
   wire SYNOPSYS_UNCONNECTED__7;
   wire SYNOPSYS_UNCONNECTED__8;
   wire SYNOPSYS_UNCONNECTED__9;
   wire SYNOPSYS_UNCONNECTED__10;
   wire SYNOPSYS_UNCONNECTED__11;
   wire SYNOPSYS_UNCONNECTED__12;
   wire SYNOPSYS_UNCONNECTED__13;
   wire SYNOPSYS_UNCONNECTED__14;
   wire SYNOPSYS_UNCONNECTED__15;
   wire SYNOPSYS_UNCONNECTED__16;
   wire SYNOPSYS_UNCONNECTED__17;
   wire SYNOPSYS_UNCONNECTED__18;
   wire SYNOPSYS_UNCONNECTED__19;
   wire SYNOPSYS_UNCONNECTED__20;
   wire SYNOPSYS_UNCONNECTED__21;
   wire SYNOPSYS_UNCONNECTED__22;
   wire SYNOPSYS_UNCONNECTED__23;
   wire SYNOPSYS_UNCONNECTED__24;
   wire SYNOPSYS_UNCONNECTED__25;
   wire SYNOPSYS_UNCONNECTED__26;
   wire SYNOPSYS_UNCONNECTED__27;
   wire SYNOPSYS_UNCONNECTED__28;
   wire SYNOPSYS_UNCONNECTED__29;
   wire SYNOPSYS_UNCONNECTED__30;
   wire SYNOPSYS_UNCONNECTED__31;
   wire SYNOPSYS_UNCONNECTED__32;
   wire SYNOPSYS_UNCONNECTED__33;
   wire SYNOPSYS_UNCONNECTED__34;
   wire SYNOPSYS_UNCONNECTED__35;
   wire SYNOPSYS_UNCONNECTED__36;
   wire SYNOPSYS_UNCONNECTED__37;
   wire SYNOPSYS_UNCONNECTED__38;
   wire SYNOPSYS_UNCONNECTED__39;
   wire SYNOPSYS_UNCONNECTED__40;
   wire SYNOPSYS_UNCONNECTED__41;
   wire SYNOPSYS_UNCONNECTED__42;
   wire SYNOPSYS_UNCONNECTED__43;
   wire SYNOPSYS_UNCONNECTED__44;
   wire SYNOPSYS_UNCONNECTED__45;
   wire SYNOPSYS_UNCONNECTED__46;
   wire SYNOPSYS_UNCONNECTED__47;
   wire SYNOPSYS_UNCONNECTED__48;
   wire SYNOPSYS_UNCONNECTED__49;

   BUFX2 FE_OFC1474_RST (.Y(FE_OFN1474_RST), 
	.A(FE_PHN1026_RST));
   BUFX2 FE_OFC1463_NEXT_EN (.Y(FE_OFN1463_NEXT_EN), 
	.A(NEXT_EN));
   BUFX2 FE_OFC1381_HEADER_EN (.Y(FE_OFN1381_HEADER_EN), 
	.A(HEADER_EN));
   B_AppendAccessCode U_0 (.CLK(CLK__L4_N19), 
	.RST(FE_PHN1485_RST), 
	.TRANS_EN(TRANS_EN), 
	.ACESS_CODE({ ACESS_CODE[71],
		SYNOPSYS_UNCONNECTED__0,
		ACESS_CODE[69],
		SYNOPSYS_UNCONNECTED__1,
		ACESS_CODE[67],
		ACESS_CODE[66],
		ACESS_CODE[65],
		SYNOPSYS_UNCONNECTED__2,
		ACESS_CODE[63],
		SYNOPSYS_UNCONNECTED__3,
		ACESS_CODE[61],
		ACESS_CODE[60],
		SYNOPSYS_UNCONNECTED__4,
		ACESS_CODE[58],
		ACESS_CODE[57],
		SYNOPSYS_UNCONNECTED__5,
		SYNOPSYS_UNCONNECTED__6,
		ACESS_CODE[54],
		ACESS_CODE[53],
		SYNOPSYS_UNCONNECTED__7,
		ACESS_CODE[51],
		ACESS_CODE[50],
		SYNOPSYS_UNCONNECTED__8,
		SYNOPSYS_UNCONNECTED__9,
		SYNOPSYS_UNCONNECTED__10,
		ACESS_CODE[46],
		ACESS_CODE[45],
		ACESS_CODE[44],
		ACESS_CODE[43],
		ACESS_CODE[42],
		ACESS_CODE[41],
		SYNOPSYS_UNCONNECTED__11,
		ACESS_CODE[39],
		SYNOPSYS_UNCONNECTED__12,
		ACESS_CODE[37],
		ACESS_CODE[36],
		SYNOPSYS_UNCONNECTED__13,
		ACESS_CODE[34],
		ACESS_CODE[33],
		SYNOPSYS_UNCONNECTED__14,
		SYNOPSYS_UNCONNECTED__15,
		ACESS_CODE[30],
		ACESS_CODE[29],
		SYNOPSYS_UNCONNECTED__16,
		ACESS_CODE[27],
		ACESS_CODE[26],
		SYNOPSYS_UNCONNECTED__17,
		SYNOPSYS_UNCONNECTED__18,
		SYNOPSYS_UNCONNECTED__19,
		ACESS_CODE[22],
		ACESS_CODE[21],
		ACESS_CODE[20],
		SYNOPSYS_UNCONNECTED__20,
		SYNOPSYS_UNCONNECTED__21,
		SYNOPSYS_UNCONNECTED__22,
		SYNOPSYS_UNCONNECTED__23,
		SYNOPSYS_UNCONNECTED__24,
		SYNOPSYS_UNCONNECTED__25,
		SYNOPSYS_UNCONNECTED__26,
		SYNOPSYS_UNCONNECTED__27,
		SYNOPSYS_UNCONNECTED__28,
		SYNOPSYS_UNCONNECTED__29,
		SYNOPSYS_UNCONNECTED__30,
		SYNOPSYS_UNCONNECTED__31,
		SYNOPSYS_UNCONNECTED__32,
		SYNOPSYS_UNCONNECTED__33,
		SYNOPSYS_UNCONNECTED__34,
		SYNOPSYS_UNCONNECTED__35,
		ACESS_CODE[3],
		SYNOPSYS_UNCONNECTED__36,
		ACESS_CODE[1],
		SYNOPSYS_UNCONNECTED__37 }), 
	.HEADER_EN(HEADER_EN));
   B_Controller_WAITSRAM24_WAITREG5264_WAITBAK49 U_4 (.CLK(CLK__L4_N17), 
	.RST(FE_OFN1474_RST), 
	.NEXT_EN(FE_OFN1463_NEXT_EN), 
	.ANT_LIN(DATAOUT1), 
	.EMPTY(EMPTY), 
	.RESEND_EN(RESEND_EN), 
	.TRANS_EN(TRANS_EN), 
	.CLK__L4_N18(CLK__L4_N18), 
	.CLK__L4_N19(CLK__L4_N19));
   B_EncodePacket_STROBCYC15_WAITSRAM24_WAITREG5264 U_2 (.CLK(CLK), 
	.RST(FE_OFN668_RST), 
	.ENCODE_EN(ENCODE_EN), 
	.DATA(DATA), 
	.PAYLOAD(PAYLOAD), 
	.ESTORE_EN(FE_UNCONNECTED_5), 
	.NEXT_EN(NEXT_EN), 
	.READ_EN(READ_EN), 
	.CLK__L4_N3(CLK__L4_N3), 
	.CLK__L4_N8(CLK__L4_N8), 
	.CLK__L4_N9(CLK__L4_N9));
   B_Header_WAITREG5264 U_1 (.CLK(CLK__L4_N8), 
	.RST(FE_OFN1434_RST), 
	.HEADER_EN(FE_OFN1381_HEADER_EN), 
	.HEADER({ HEADER[53],
		HEADER[52],
		HEADER[51],
		SYNOPSYS_UNCONNECTED__38,
		SYNOPSYS_UNCONNECTED__39,
		SYNOPSYS_UNCONNECTED__40,
		SYNOPSYS_UNCONNECTED__41,
		SYNOPSYS_UNCONNECTED__42,
		SYNOPSYS_UNCONNECTED__43,
		HEADER[44],
		HEADER[43],
		HEADER[42],
		HEADER[41],
		HEADER[40],
		HEADER[39],
		HEADER[38],
		HEADER[37],
		HEADER[36],
		HEADER[35],
		HEADER[34],
		HEADER[33],
		HEADER[32],
		HEADER[31],
		HEADER[30],
		HEADER[29],
		HEADER[28],
		HEADER[27],
		HEADER[26],
		HEADER[25],
		HEADER[24],
		HEADER[23],
		HEADER[22],
		HEADER[21],
		HEADER[20],
		HEADER[19],
		HEADER[18],
		HEADER[17],
		HEADER[16],
		HEADER[15],
		HEADER[14],
		HEADER[13],
		HEADER[12],
		HEADER[11],
		HEADER[10],
		HEADER[9],
		SYNOPSYS_UNCONNECTED__44,
		SYNOPSYS_UNCONNECTED__45,
		SYNOPSYS_UNCONNECTED__46,
		SYNOPSYS_UNCONNECTED__47,
		SYNOPSYS_UNCONNECTED__48,
		SYNOPSYS_UNCONNECTED__49,
		HEADER[2],
		HEADER[1],
		HEADER[0] }), 
	.TRANS_EN(FE_UNCONNECTED_6), 
	.ENCODE_EN(ENCODE_EN), 
	.CLK__L4_N9(CLK__L4_N9));
   B_NextPacket_WAITSRAM24_WAITREG5264_WAITBAK4869 U_6 (.CLK(CLK__L4_N17), 
	.RST(FE_OFN1474_RST), 
	.REPLY_EN(REPLY_EN), 
	.ERR(ERR), 
	.DATAOUT(DATAOUT1));
   B_StripPayload U_5 (.ANTINR(FE_UNCONNECTED_7), 
	.CLK(CLK), 
	.READ_EN(READ_EN1), 
	.RST(RST), 
	.DATAOUT(DATAOUT), 
	.EMPTY_SRAM(EMPTY_SRAM), 
	.ERR(ERR), 
	.REPLY_EN(REPLY_EN));
   B_UAT_WAITSRAM24_WAITREG5264 U_3 (.CLK(CLK), 
	.RST(RST), 
	.ACCESS_CODE({ ACESS_CODE[71],
		1'b0,
		ACESS_CODE[69],
		1'b0,
		ACESS_CODE[67],
		ACESS_CODE[66],
		ACESS_CODE[65],
		1'b0,
		ACESS_CODE[63],
		1'b0,
		ACESS_CODE[61],
		ACESS_CODE[60],
		1'b0,
		ACESS_CODE[58],
		ACESS_CODE[57],
		1'b0,
		1'b0,
		ACESS_CODE[54],
		ACESS_CODE[53],
		1'b0,
		ACESS_CODE[51],
		ACESS_CODE[50],
		1'b0,
		1'b0,
		1'b0,
		ACESS_CODE[46],
		ACESS_CODE[45],
		ACESS_CODE[44],
		ACESS_CODE[43],
		ACESS_CODE[42],
		ACESS_CODE[41],
		1'b0,
		ACESS_CODE[39],
		1'b0,
		ACESS_CODE[37],
		ACESS_CODE[36],
		1'b0,
		ACESS_CODE[34],
		ACESS_CODE[33],
		1'b0,
		1'b0,
		ACESS_CODE[30],
		ACESS_CODE[29],
		1'b0,
		ACESS_CODE[27],
		ACESS_CODE[26],
		1'b0,
		1'b0,
		1'b0,
		ACESS_CODE[22],
		ACESS_CODE[21],
		ACESS_CODE[20],
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		ACESS_CODE[3],
		1'b0,
		ACESS_CODE[1],
		1'b0 }), 
	.HEADER({ HEADER[53],
		HEADER[52],
		HEADER[51],
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		HEADER[44],
		HEADER[43],
		HEADER[42],
		HEADER[41],
		HEADER[40],
		HEADER[39],
		HEADER[38],
		HEADER[37],
		HEADER[36],
		HEADER[35],
		HEADER[34],
		HEADER[33],
		HEADER[32],
		HEADER[31],
		HEADER[30],
		HEADER[29],
		HEADER[28],
		HEADER[27],
		HEADER[26],
		HEADER[25],
		HEADER[24],
		HEADER[23],
		HEADER[22],
		HEADER[21],
		HEADER[20],
		HEADER[19],
		HEADER[18],
		HEADER[17],
		HEADER[16],
		HEADER[15],
		HEADER[14],
		HEADER[13],
		HEADER[12],
		HEADER[11],
		HEADER[10],
		HEADER[9],
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		HEADER[2],
		HEADER[1],
		HEADER[0] }), 
	.PAYLOAD(PAYLOAD), 
	.TRAN_EN(FE_UNCONNECTED_6), 
	.ESTORE_EN(FE_UNCONNECTED_5), 
	.ANT_LOUT(FE_UNCONNECTED_7));
endmodule

module s_Control_DW01_dec_0 (
	A, 
	SUM);
   input [11:0] A;
   output [11:0] SUM;

   // Internal wires
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n14;
   wire n15;
   wire n17;
   wire n18;
   wire n20;
   wire n21;
   wire n23;
   wire n24;

   INVX2 U5 (.Y(n5), 
	.A(A[0]));
   INVX2 U6 (.Y(n6), 
	.A(A[1]));
   INVX2 U7 (.Y(n7), 
	.A(A[3]));
   INVX2 U8 (.Y(n8), 
	.A(A[5]));
   INVX2 U9 (.Y(n9), 
	.A(A[7]));
   INVX2 U10 (.Y(n10), 
	.A(A[9]));
   OAI21X1 U11 (.Y(SUM[9]), 
	.C(n12), 
	.B(n10), 
	.A(n11));
   AOI21X1 U12 (.Y(SUM[8]), 
	.C(n11), 
	.B(A[8]), 
	.A(n14));
   OAI21X1 U13 (.Y(SUM[7]), 
	.C(n14), 
	.B(n9), 
	.A(n15));
   AOI21X1 U14 (.Y(SUM[6]), 
	.C(n15), 
	.B(A[6]), 
	.A(n17));
   OAI21X1 U15 (.Y(SUM[5]), 
	.C(n17), 
	.B(n8), 
	.A(n18));
   AOI21X1 U16 (.Y(SUM[4]), 
	.C(n18), 
	.B(A[4]), 
	.A(n20));
   OAI21X1 U17 (.Y(SUM[3]), 
	.C(n20), 
	.B(n7), 
	.A(n21));
   AOI21X1 U18 (.Y(SUM[2]), 
	.C(n21), 
	.B(A[2]), 
	.A(n23));
   OAI21X1 U19 (.Y(SUM[1]), 
	.C(n23), 
	.B(n6), 
	.A(n5));
   XOR2X1 U20 (.Y(SUM[11]), 
	.B(n24), 
	.A(A[11]));
   NOR2X1 U21 (.Y(n24), 
	.B(n12), 
	.A(A[10]));
   XNOR2X1 U22 (.Y(SUM[10]), 
	.B(n12), 
	.A(A[10]));
   NAND2X1 U23 (.Y(n12), 
	.B(n10), 
	.A(n11));
   NOR2X1 U24 (.Y(n11), 
	.B(A[8]), 
	.A(n14));
   NAND2X1 U25 (.Y(n14), 
	.B(n9), 
	.A(n15));
   NOR2X1 U26 (.Y(n15), 
	.B(A[6]), 
	.A(n17));
   NAND2X1 U27 (.Y(n17), 
	.B(n8), 
	.A(n18));
   NOR2X1 U28 (.Y(n18), 
	.B(A[4]), 
	.A(n20));
   NAND2X1 U29 (.Y(n20), 
	.B(n7), 
	.A(n21));
   NOR2X1 U30 (.Y(n21), 
	.B(A[2]), 
	.A(n23));
   NAND2X1 U31 (.Y(n23), 
	.B(n5), 
	.A(n6));
endmodule

module s_Control_DW01_inc_0 (
	A, 
	SUM);
   input [11:0] A;
   output [11:0] SUM;

   // Internal wires
   wire [11:2] carry;

   HAX1 U1_1_10 (.YS(SUM[10]), 
	.YC(carry[11]), 
	.B(carry[10]), 
	.A(A[10]));
   HAX1 U1_1_9 (.YS(SUM[9]), 
	.YC(carry[10]), 
	.B(carry[9]), 
	.A(A[9]));
   HAX1 U1_1_8 (.YS(SUM[8]), 
	.YC(carry[9]), 
	.B(carry[8]), 
	.A(A[8]));
   HAX1 U1_1_7 (.YS(SUM[7]), 
	.YC(carry[8]), 
	.B(carry[7]), 
	.A(A[7]));
   HAX1 U1_1_6 (.YS(SUM[6]), 
	.YC(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   HAX1 U1_1_5 (.YS(SUM[5]), 
	.YC(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   HAX1 U1_1_4 (.YS(SUM[4]), 
	.YC(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   HAX1 U1_1_3 (.YS(SUM[3]), 
	.YC(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   HAX1 U1_1_2 (.YS(SUM[2]), 
	.YC(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   HAX1 U1_1_1 (.YS(SUM[1]), 
	.YC(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   INVX2 U1 (.Y(SUM[0]), 
	.A(A[0]));
   XOR2X1 U2 (.Y(SUM[11]), 
	.B(A[11]), 
	.A(carry[11]));
endmodule

module s_Control_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO);
   input [11:0] A;
   input [11:0] B;
   input CI;
   output [11:0] DIFF;
   output CO;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire [12:0] carry;

   FAX1 U2_11 (.YS(DIFF[11]), 
	.C(carry[11]), 
	.B(n2), 
	.A(A[11]));
   FAX1 U2_10 (.YS(DIFF[10]), 
	.YC(carry[11]), 
	.C(carry[10]), 
	.B(n3), 
	.A(A[10]));
   FAX1 U2_9 (.YS(DIFF[9]), 
	.YC(carry[10]), 
	.C(carry[9]), 
	.B(n12), 
	.A(A[9]));
   FAX1 U2_8 (.YS(DIFF[8]), 
	.YC(carry[9]), 
	.C(carry[8]), 
	.B(n11), 
	.A(A[8]));
   FAX1 U2_7 (.YS(DIFF[7]), 
	.YC(carry[8]), 
	.C(carry[7]), 
	.B(n10), 
	.A(A[7]));
   FAX1 U2_6 (.YS(DIFF[6]), 
	.YC(carry[7]), 
	.C(carry[6]), 
	.B(n9), 
	.A(A[6]));
   FAX1 U2_5 (.YS(DIFF[5]), 
	.YC(carry[6]), 
	.C(carry[5]), 
	.B(n8), 
	.A(A[5]));
   FAX1 U2_4 (.YS(DIFF[4]), 
	.YC(carry[5]), 
	.C(carry[4]), 
	.B(n7), 
	.A(A[4]));
   FAX1 U2_3 (.YS(DIFF[3]), 
	.YC(carry[4]), 
	.C(carry[3]), 
	.B(n6), 
	.A(A[3]));
   FAX1 U2_2 (.YS(DIFF[2]), 
	.YC(carry[3]), 
	.C(carry[2]), 
	.B(n5), 
	.A(A[2]));
   FAX1 U2_1 (.YS(DIFF[1]), 
	.YC(carry[2]), 
	.C(carry[1]), 
	.B(n4), 
	.A(A[1]));
   OR2X2 U1 (.Y(carry[1]), 
	.B(n1), 
	.A(A[0]));
   XNOR2X1 U2 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n1));
   INVX2 U3 (.Y(n1), 
	.A(B[0]));
   INVX2 U4 (.Y(n2), 
	.A(B[11]));
   INVX2 U5 (.Y(n3), 
	.A(B[10]));
   INVX2 U6 (.Y(n4), 
	.A(B[1]));
   INVX2 U7 (.Y(n5), 
	.A(B[2]));
   INVX2 U8 (.Y(n6), 
	.A(B[3]));
   INVX2 U9 (.Y(n7), 
	.A(B[4]));
   INVX2 U10 (.Y(n8), 
	.A(B[5]));
   INVX2 U11 (.Y(n9), 
	.A(B[6]));
   INVX2 U12 (.Y(n10), 
	.A(B[7]));
   INVX2 U13 (.Y(n11), 
	.A(B[8]));
   INVX2 U14 (.Y(n12), 
	.A(B[9]));
endmodule

module s_Control (
	clk, 
	rst, 
	full, 
	resend, 
	r_enable_in, 
	empty, 
	r_enable_out, 
	r_enable_s, 
	ADDR, 
	w_enable_out, 
	CLK__L4_N18, 
	CLK__L4_N19, 
	CLK__L4_N20, 
	CLK__L4_N9, 
	FE_OFN668_RST, 
	FE_PHN1026_RST, 
	FE_PHN1028_RST);
   input clk;
   input rst;
   input full;
   input resend;
   input r_enable_in;
   output empty;
   output r_enable_out;
   output r_enable_s;
   output [11:0] ADDR;
   output w_enable_out;
   input CLK__L4_N18;
   input CLK__L4_N19;
   input CLK__L4_N20;
   input CLK__L4_N9;
   input FE_OFN668_RST;
   input FE_PHN1026_RST;
   input FE_PHN1028_RST;

   // Internal wires
   wire FE_OFN1462_RADDR_4_;
   wire FE_OFN1461_RADDR_7_;
   wire FE_OFN1460_RADDR_8_;
   wire FE_OFN1370_state_1_;
   wire FE_OFN1369_state_0_;
   wire FE_OFN1368_WADDR_0_;
   wire FE_OFN1367_WADDR_1_;
   wire FE_OFN1366_WADDR_2_;
   wire FE_OFN1365_WADDR_3_;
   wire FE_OFN1364_WADDR_4_;
   wire FE_OFN1363_WADDR_5_;
   wire FE_OFN1362_RADDR_0_;
   wire FE_OFN1361_RADDR_11_;
   wire FE_OFN1359_RADDR_3_;
   wire FE_OFN1357_RADDR_5_;
   wire FE_OFN1356_RADDR_6_;
   wire FE_OFN1147_n13;
   wire FE_OFN1146_n170;
   wire FE_OFN1145_n170;
   wire FE_OFN1144_n170;
   wire FE_OFN1143_N229;
   wire FE_OFN1142_n67;
   wire FE_OFN1141_n64;
   wire FE_OFN1140_N242;
   wire sWrite;
   wire N51;
   wire N52;
   wire N53;
   wire N54;
   wire N55;
   wire N56;
   wire N57;
   wire N58;
   wire N59;
   wire N60;
   wire N61;
   wire N62;
   wire N147;
   wire N148;
   wire N149;
   wire N150;
   wire N151;
   wire N152;
   wire N153;
   wire N154;
   wire N155;
   wire N156;
   wire N157;
   wire N158;
   wire N164;
   wire N165;
   wire N166;
   wire N167;
   wire N168;
   wire N169;
   wire N170;
   wire N171;
   wire N172;
   wire N173;
   wire N174;
   wire N215;
   wire N217;
   wire N218;
   wire N219;
   wire N220;
   wire N221;
   wire N222;
   wire N223;
   wire N224;
   wire N225;
   wire N226;
   wire N227;
   wire N228;
   wire N229;
   wire N230;
   wire N231;
   wire N232;
   wire N233;
   wire N234;
   wire N235;
   wire N236;
   wire N237;
   wire N238;
   wire N239;
   wire N240;
   wire N241;
   wire N242;
   wire N243;
   wire N244;
   wire N245;
   wire N246;
   wire N247;
   wire N248;
   wire N249;
   wire N250;
   wire N251;
   wire N252;
   wire N253;
   wire N254;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n1;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n74;
   wire n75;
   wire n76;
   wire n78;
   wire n79;
   wire n80;
   wire n82;
   wire n83;
   wire n84;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n170;
   wire [1:0] state;
   wire [2:0] cnt8;
   wire [2:0] icnt8;
   wire [11:0] RADDR;
   wire [11:0] PRADDR;
   wire [11:0] WADDR;
   wire [2:0] incnt8;
   wire [11:0] nRADDR;
   wire [11:0] nPRADDR;
   wire [11:0] nWADDR;
   wire SYNOPSYS_UNCONNECTED__0;

   BUFX2 FE_OFC1462_RADDR_4_ (.Y(FE_OFN1462_RADDR_4_), 
	.A(RADDR[4]));
   BUFX2 FE_OFC1461_RADDR_7_ (.Y(FE_OFN1461_RADDR_7_), 
	.A(RADDR[7]));
   BUFX2 FE_OFC1460_RADDR_8_ (.Y(FE_OFN1460_RADDR_8_), 
	.A(RADDR[8]));
   BUFX4 FE_OFC1370_state_1_ (.Y(FE_OFN1370_state_1_), 
	.A(state[1]));
   BUFX4 FE_OFC1369_state_0_ (.Y(FE_OFN1369_state_0_), 
	.A(state[0]));
   BUFX2 FE_OFC1368_WADDR_0_ (.Y(FE_OFN1368_WADDR_0_), 
	.A(WADDR[0]));
   BUFX2 FE_OFC1367_WADDR_1_ (.Y(FE_OFN1367_WADDR_1_), 
	.A(WADDR[1]));
   BUFX2 FE_OFC1366_WADDR_2_ (.Y(FE_OFN1366_WADDR_2_), 
	.A(WADDR[2]));
   BUFX2 FE_OFC1365_WADDR_3_ (.Y(FE_OFN1365_WADDR_3_), 
	.A(WADDR[3]));
   BUFX2 FE_OFC1364_WADDR_4_ (.Y(FE_OFN1364_WADDR_4_), 
	.A(WADDR[4]));
   BUFX2 FE_OFC1363_WADDR_5_ (.Y(FE_OFN1363_WADDR_5_), 
	.A(WADDR[5]));
   BUFX2 FE_OFC1362_RADDR_0_ (.Y(FE_OFN1362_RADDR_0_), 
	.A(RADDR[0]));
   BUFX2 FE_OFC1361_RADDR_11_ (.Y(FE_OFN1361_RADDR_11_), 
	.A(RADDR[11]));
   BUFX2 FE_OFC1359_RADDR_3_ (.Y(FE_OFN1359_RADDR_3_), 
	.A(RADDR[3]));
   BUFX2 FE_OFC1357_RADDR_5_ (.Y(FE_OFN1357_RADDR_5_), 
	.A(RADDR[5]));
   BUFX2 FE_OFC1356_RADDR_6_ (.Y(FE_OFN1356_RADDR_6_), 
	.A(RADDR[6]));
   BUFX2 FE_OFC1147_n13 (.Y(FE_OFN1147_n13), 
	.A(n13));
   INVX8 FE_OFC1146_n170 (.Y(FE_OFN1146_n170), 
	.A(FE_OFN1144_n170));
   BUFX4 FE_OFC1145_n170 (.Y(FE_OFN1145_n170), 
	.A(n170));
   INVX1 FE_OFC1144_n170 (.Y(FE_OFN1144_n170), 
	.A(n170));
   BUFX4 FE_OFC1143_N229 (.Y(FE_OFN1143_N229), 
	.A(N229));
   BUFX4 FE_OFC1142_n67 (.Y(FE_OFN1142_n67), 
	.A(n67));
   BUFX4 FE_OFC1141_n64 (.Y(FE_OFN1141_n64), 
	.A(n64));
   BUFX2 FE_OFC1140_N242 (.Y(FE_OFN1140_N242), 
	.A(N242));
   DFFSR \icnt8_reg[0]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(icnt8[0]), 
	.D(incnt8[0]), 
	.CLK(CLK__L4_N9));
   DFFSR \icnt8_reg[2]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(icnt8[2]), 
	.D(incnt8[2]), 
	.CLK(CLK__L4_N19));
   DFFSR \state_reg[1]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(state[1]), 
	.D(n168), 
	.CLK(CLK__L4_N19));
   DFFSR \state_reg[0]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(state[0]), 
	.D(n169), 
	.CLK(CLK__L4_N9));
   DFFSR \cnt8_reg[0]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(cnt8[0]), 
	.D(n167), 
	.CLK(CLK__L4_N9));
   DFFSR \cnt8_reg[1]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(cnt8[1]), 
	.D(n166), 
	.CLK(CLK__L4_N19));
   DFFSR \cnt8_reg[2]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(cnt8[2]), 
	.D(n165), 
	.CLK(CLK__L4_N9));
   DFFSR \icnt8_reg[1]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(icnt8[1]), 
	.D(incnt8[1]), 
	.CLK(CLK__L4_N19));
   LATCH sWrite_reg (.Q(sWrite), 
	.D(n170), 
	.CLK(N215));
   LATCH \nWADDR_reg[0]  (.Q(nWADDR[0]), 
	.D(N217), 
	.CLK(n5));
   DFFSR \WADDR_reg[0]  (.S(1'b1), 
	.R(n170), 
	.Q(WADDR[0]), 
	.D(nWADDR[0]), 
	.CLK(CLK__L4_N19));
   LATCH \nWADDR_reg[1]  (.Q(nWADDR[1]), 
	.D(N218), 
	.CLK(n5));
   DFFSR \WADDR_reg[1]  (.S(1'b1), 
	.R(FE_OFN1145_n170), 
	.Q(WADDR[1]), 
	.D(nWADDR[1]), 
	.CLK(CLK__L4_N18));
   LATCH \nWADDR_reg[2]  (.Q(nWADDR[2]), 
	.D(N219), 
	.CLK(n5));
   DFFSR \WADDR_reg[2]  (.S(1'b1), 
	.R(FE_OFN1145_n170), 
	.Q(WADDR[2]), 
	.D(nWADDR[2]), 
	.CLK(CLK__L4_N18));
   LATCH \nWADDR_reg[3]  (.Q(nWADDR[3]), 
	.D(N220), 
	.CLK(n5));
   DFFSR \WADDR_reg[3]  (.S(1'b1), 
	.R(FE_OFN1145_n170), 
	.Q(WADDR[3]), 
	.D(nWADDR[3]), 
	.CLK(CLK__L4_N18));
   LATCH \nWADDR_reg[4]  (.Q(nWADDR[4]), 
	.D(N221), 
	.CLK(n5));
   DFFSR \WADDR_reg[4]  (.S(1'b1), 
	.R(FE_OFN1145_n170), 
	.Q(WADDR[4]), 
	.D(nWADDR[4]), 
	.CLK(CLK__L4_N18));
   LATCH \nWADDR_reg[5]  (.Q(nWADDR[5]), 
	.D(N222), 
	.CLK(n5));
   DFFSR \WADDR_reg[5]  (.S(1'b1), 
	.R(FE_OFN1145_n170), 
	.Q(WADDR[5]), 
	.D(nWADDR[5]), 
	.CLK(CLK__L4_N18));
   LATCH \nWADDR_reg[6]  (.Q(nWADDR[6]), 
	.D(N223), 
	.CLK(n5));
   DFFSR \WADDR_reg[6]  (.S(1'b1), 
	.R(n170), 
	.Q(WADDR[6]), 
	.D(nWADDR[6]), 
	.CLK(CLK__L4_N20));
   LATCH \nWADDR_reg[7]  (.Q(nWADDR[7]), 
	.D(N224), 
	.CLK(n5));
   DFFSR \WADDR_reg[7]  (.S(1'b1), 
	.R(n170), 
	.Q(WADDR[7]), 
	.D(nWADDR[7]), 
	.CLK(clk));
   LATCH \nWADDR_reg[8]  (.Q(nWADDR[8]), 
	.D(N225), 
	.CLK(n5));
   DFFSR \WADDR_reg[8]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(WADDR[8]), 
	.D(nWADDR[8]), 
	.CLK(CLK__L4_N19));
   LATCH \nWADDR_reg[9]  (.Q(nWADDR[9]), 
	.D(N226), 
	.CLK(n5));
   DFFSR \WADDR_reg[9]  (.S(1'b1), 
	.R(n170), 
	.Q(WADDR[9]), 
	.D(nWADDR[9]), 
	.CLK(CLK__L4_N19));
   LATCH \nWADDR_reg[10]  (.Q(nWADDR[10]), 
	.D(N227), 
	.CLK(n5));
   DFFSR \WADDR_reg[10]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(WADDR[10]), 
	.D(nWADDR[10]), 
	.CLK(CLK__L4_N19));
   LATCH \nWADDR_reg[11]  (.Q(nWADDR[11]), 
	.D(N228), 
	.CLK(n5));
   DFFSR \WADDR_reg[11]  (.S(1'b1), 
	.R(n170), 
	.Q(WADDR[11]), 
	.D(nWADDR[11]), 
	.CLK(CLK__L4_N19));
   LATCH \nRADDR_reg[0]  (.Q(nRADDR[0]), 
	.D(N230), 
	.CLK(FE_OFN1143_N229));
   DFFSR \RADDR_reg[0]  (.S(1'b1), 
	.R(n170), 
	.Q(RADDR[0]), 
	.D(nRADDR[0]), 
	.CLK(CLK__L4_N19));
   LATCH \nPRADDR_reg[0]  (.Q(nPRADDR[0]), 
	.D(N243), 
	.CLK(N242));
   DFFSR \PRADDR_reg[0]  (.S(1'b1), 
	.R(n170), 
	.Q(PRADDR[0]), 
	.D(nPRADDR[0]), 
	.CLK(CLK__L4_N19));
   LATCH \nPRADDR_reg[1]  (.Q(nPRADDR[1]), 
	.D(N244), 
	.CLK(FE_OFN1140_N242));
   DFFSR \PRADDR_reg[1]  (.S(1'b1), 
	.R(n170), 
	.Q(PRADDR[1]), 
	.D(nPRADDR[1]), 
	.CLK(CLK__L4_N19));
   LATCH \nPRADDR_reg[2]  (.Q(nPRADDR[2]), 
	.D(N245), 
	.CLK(FE_OFN1140_N242));
   DFFSR \PRADDR_reg[2]  (.S(1'b1), 
	.R(n170), 
	.Q(PRADDR[2]), 
	.D(nPRADDR[2]), 
	.CLK(CLK__L4_N19));
   LATCH \nPRADDR_reg[3]  (.Q(nPRADDR[3]), 
	.D(N246), 
	.CLK(FE_OFN1140_N242));
   DFFSR \PRADDR_reg[3]  (.S(1'b1), 
	.R(n170), 
	.Q(PRADDR[3]), 
	.D(nPRADDR[3]), 
	.CLK(CLK__L4_N18));
   LATCH \nPRADDR_reg[4]  (.Q(nPRADDR[4]), 
	.D(N247), 
	.CLK(FE_OFN1140_N242));
   DFFSR \PRADDR_reg[4]  (.S(1'b1), 
	.R(n170), 
	.Q(PRADDR[4]), 
	.D(nPRADDR[4]), 
	.CLK(CLK__L4_N18));
   LATCH \nPRADDR_reg[5]  (.Q(nPRADDR[5]), 
	.D(N248), 
	.CLK(FE_OFN1140_N242));
   DFFSR \PRADDR_reg[5]  (.S(1'b1), 
	.R(n170), 
	.Q(PRADDR[5]), 
	.D(nPRADDR[5]), 
	.CLK(CLK__L4_N19));
   LATCH \nPRADDR_reg[6]  (.Q(nPRADDR[6]), 
	.D(N249), 
	.CLK(FE_OFN1140_N242));
   DFFSR \PRADDR_reg[6]  (.S(1'b1), 
	.R(n170), 
	.Q(PRADDR[6]), 
	.D(nPRADDR[6]), 
	.CLK(CLK__L4_N20));
   LATCH \nPRADDR_reg[7]  (.Q(nPRADDR[7]), 
	.D(N250), 
	.CLK(FE_OFN1140_N242));
   DFFSR \PRADDR_reg[7]  (.S(1'b1), 
	.R(n170), 
	.Q(PRADDR[7]), 
	.D(nPRADDR[7]), 
	.CLK(CLK__L4_N20));
   LATCH \nPRADDR_reg[8]  (.Q(nPRADDR[8]), 
	.D(N251), 
	.CLK(FE_OFN1140_N242));
   DFFSR \PRADDR_reg[8]  (.S(1'b1), 
	.R(n170), 
	.Q(PRADDR[8]), 
	.D(nPRADDR[8]), 
	.CLK(CLK__L4_N19));
   LATCH \nPRADDR_reg[9]  (.Q(nPRADDR[9]), 
	.D(N252), 
	.CLK(N242));
   DFFSR \PRADDR_reg[9]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(PRADDR[9]), 
	.D(nPRADDR[9]), 
	.CLK(CLK__L4_N19));
   LATCH \nPRADDR_reg[10]  (.Q(nPRADDR[10]), 
	.D(N253), 
	.CLK(N242));
   DFFSR \PRADDR_reg[10]  (.S(1'b1), 
	.R(n170), 
	.Q(PRADDR[10]), 
	.D(nPRADDR[10]), 
	.CLK(CLK__L4_N19));
   LATCH \nPRADDR_reg[11]  (.Q(nPRADDR[11]), 
	.D(N254), 
	.CLK(N242));
   DFFSR \PRADDR_reg[11]  (.S(1'b1), 
	.R(n170), 
	.Q(PRADDR[11]), 
	.D(nPRADDR[11]), 
	.CLK(CLK__L4_N19));
   LATCH \nRADDR_reg[11]  (.Q(nRADDR[11]), 
	.D(N241), 
	.CLK(FE_OFN1143_N229));
   DFFSR \RADDR_reg[11]  (.S(1'b1), 
	.R(n170), 
	.Q(RADDR[11]), 
	.D(nRADDR[11]), 
	.CLK(CLK__L4_N19));
   LATCH \nRADDR_reg[10]  (.Q(nRADDR[10]), 
	.D(N240), 
	.CLK(FE_OFN1143_N229));
   DFFSR \RADDR_reg[10]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(RADDR[10]), 
	.D(nRADDR[10]), 
	.CLK(CLK__L4_N19));
   LATCH \nRADDR_reg[1]  (.Q(nRADDR[1]), 
	.D(N231), 
	.CLK(FE_OFN1143_N229));
   DFFSR \RADDR_reg[1]  (.S(1'b1), 
	.R(n170), 
	.Q(RADDR[1]), 
	.D(nRADDR[1]), 
	.CLK(CLK__L4_N18));
   LATCH \nRADDR_reg[2]  (.Q(nRADDR[2]), 
	.D(N232), 
	.CLK(FE_OFN1143_N229));
   DFFSR \RADDR_reg[2]  (.S(1'b1), 
	.R(n170), 
	.Q(RADDR[2]), 
	.D(nRADDR[2]), 
	.CLK(CLK__L4_N18));
   LATCH \nRADDR_reg[3]  (.Q(nRADDR[3]), 
	.D(N233), 
	.CLK(FE_OFN1143_N229));
   DFFSR \RADDR_reg[3]  (.S(1'b1), 
	.R(FE_OFN1145_n170), 
	.Q(RADDR[3]), 
	.D(nRADDR[3]), 
	.CLK(CLK__L4_N18));
   LATCH \nRADDR_reg[4]  (.Q(nRADDR[4]), 
	.D(N234), 
	.CLK(FE_OFN1143_N229));
   DFFSR \RADDR_reg[4]  (.S(1'b1), 
	.R(FE_OFN1145_n170), 
	.Q(RADDR[4]), 
	.D(nRADDR[4]), 
	.CLK(CLK__L4_N18));
   LATCH \nRADDR_reg[5]  (.Q(nRADDR[5]), 
	.D(N235), 
	.CLK(FE_OFN1143_N229));
   DFFSR \RADDR_reg[5]  (.S(1'b1), 
	.R(FE_OFN1145_n170), 
	.Q(RADDR[5]), 
	.D(nRADDR[5]), 
	.CLK(CLK__L4_N18));
   LATCH \nRADDR_reg[6]  (.Q(nRADDR[6]), 
	.D(N236), 
	.CLK(FE_OFN1143_N229));
   DFFSR \RADDR_reg[6]  (.S(1'b1), 
	.R(n170), 
	.Q(RADDR[6]), 
	.D(nRADDR[6]), 
	.CLK(CLK__L4_N20));
   LATCH \nRADDR_reg[7]  (.Q(nRADDR[7]), 
	.D(N237), 
	.CLK(FE_OFN1143_N229));
   DFFSR \RADDR_reg[7]  (.S(1'b1), 
	.R(n170), 
	.Q(RADDR[7]), 
	.D(nRADDR[7]), 
	.CLK(clk));
   LATCH \nRADDR_reg[8]  (.Q(nRADDR[8]), 
	.D(N238), 
	.CLK(FE_OFN1143_N229));
   DFFSR \RADDR_reg[8]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(RADDR[8]), 
	.D(nRADDR[8]), 
	.CLK(CLK__L4_N19));
   LATCH \nRADDR_reg[9]  (.Q(nRADDR[9]), 
	.D(N239), 
	.CLK(FE_OFN1143_N229));
   DFFSR \RADDR_reg[9]  (.S(1'b1), 
	.R(FE_OFN1146_n170), 
	.Q(RADDR[9]), 
	.D(nRADDR[9]), 
	.CLK(CLK__L4_N19));
   s_Control_DW01_dec_0 sub_129 (.A({ FE_OFN1361_RADDR_11_,
		RADDR[10],
		RADDR[9],
		FE_OFN1460_RADDR_8_,
		FE_OFN1461_RADDR_7_,
		FE_OFN1356_RADDR_6_,
		FE_OFN1357_RADDR_5_,
		FE_OFN1462_RADDR_4_,
		FE_OFN1359_RADDR_3_,
		RADDR[2],
		RADDR[1],
		FE_OFN1362_RADDR_0_ }), 
	.SUM({ N174,
		N173,
		N172,
		N171,
		N170,
		N169,
		N168,
		N167,
		N166,
		N165,
		N164,
		SYNOPSYS_UNCONNECTED__0 }));
   s_Control_DW01_inc_0 add_120 (.A({ WADDR[11],
		WADDR[10],
		WADDR[9],
		WADDR[8],
		WADDR[7],
		WADDR[6],
		FE_OFN1363_WADDR_5_,
		FE_OFN1364_WADDR_4_,
		FE_OFN1365_WADDR_3_,
		FE_OFN1366_WADDR_2_,
		FE_OFN1367_WADDR_1_,
		FE_OFN1368_WADDR_0_ }), 
	.SUM({ N158,
		N157,
		N156,
		N155,
		N154,
		N153,
		N152,
		N151,
		N150,
		N149,
		N148,
		N147 }));
   s_Control_DW01_sub_0 sub_81 (.A(PRADDR), 
	.B({ FE_OFN1361_RADDR_11_,
		RADDR[10],
		RADDR[9],
		FE_OFN1460_RADDR_8_,
		FE_OFN1461_RADDR_7_,
		FE_OFN1356_RADDR_6_,
		FE_OFN1357_RADDR_5_,
		FE_OFN1462_RADDR_4_,
		FE_OFN1359_RADDR_3_,
		RADDR[2],
		RADDR[1],
		FE_OFN1362_RADDR_0_ }), 
	.CI(1'b0), 
	.DIFF({ N62,
		N61,
		N60,
		N59,
		N58,
		N57,
		N56,
		N55,
		N54,
		N53,
		N52,
		N51 }));
   TBUFX1 \ADDR_tri[0]  (.Y(ADDR[0]), 
	.EN(FE_OFN1369_state_0_), 
	.A(n119));
   TBUFX1 \ADDR_tri[1]  (.Y(ADDR[1]), 
	.EN(FE_OFN1369_state_0_), 
	.A(n118));
   TBUFX1 \ADDR_tri[2]  (.Y(ADDR[2]), 
	.EN(FE_OFN1369_state_0_), 
	.A(n117));
   TBUFX1 \ADDR_tri[3]  (.Y(ADDR[3]), 
	.EN(FE_OFN1369_state_0_), 
	.A(n116));
   TBUFX1 \ADDR_tri[4]  (.Y(ADDR[4]), 
	.EN(FE_OFN1369_state_0_), 
	.A(n115));
   TBUFX1 \ADDR_tri[5]  (.Y(ADDR[5]), 
	.EN(FE_OFN1369_state_0_), 
	.A(n114));
   TBUFX1 \ADDR_tri[6]  (.Y(ADDR[6]), 
	.EN(FE_OFN1369_state_0_), 
	.A(n113));
   TBUFX1 \ADDR_tri[7]  (.Y(ADDR[7]), 
	.EN(FE_OFN1369_state_0_), 
	.A(n112));
   TBUFX1 \ADDR_tri[8]  (.Y(ADDR[8]), 
	.EN(FE_OFN1369_state_0_), 
	.A(n111));
   TBUFX1 \ADDR_tri[9]  (.Y(ADDR[9]), 
	.EN(FE_OFN1369_state_0_), 
	.A(n110));
   TBUFX1 \ADDR_tri[10]  (.Y(ADDR[10]), 
	.EN(FE_OFN1369_state_0_), 
	.A(n109));
   TBUFX1 \ADDR_tri[11]  (.Y(ADDR[11]), 
	.EN(FE_OFN1369_state_0_), 
	.A(n108));
   AND2X2 U3 (.Y(n1), 
	.B(n9), 
	.A(FE_OFN1146_n170));
   INVX4 U6 (.Y(n5), 
	.A(n1));
   INVX8 U7 (.Y(n170), 
	.A(FE_PHN1028_RST));
   OR2X2 U9 (.Y(N242), 
	.B(n61), 
	.A(n60));
   INVX2 U11 (.Y(n7), 
	.A(n16));
   OAI21X1 U12 (.Y(w_enable_out), 
	.C(n9), 
	.B(n8), 
	.A(n7));
   OAI21X1 U13 (.Y(n169), 
	.C(n12), 
	.B(n11), 
	.A(n10));
   OAI21X1 U14 (.Y(n12), 
	.C(FE_OFN1369_state_0_), 
	.B(FE_OFN1147_n13), 
	.A(n10));
   AND2X1 U15 (.Y(n11), 
	.B(n14), 
	.A(n9));
   OAI21X1 U16 (.Y(n14), 
	.C(n8), 
	.B(r_enable_in), 
	.A(full));
   MUX2X1 U17 (.Y(n168), 
	.S(n10), 
	.B(n15), 
	.A(n16));
   INVX1 U18 (.Y(n10), 
	.A(n17));
   OAI21X1 U19 (.Y(n17), 
	.C(N215), 
	.B(FE_OFN1147_n13), 
	.A(FE_PHN1026_RST));
   AOI22X1 U20 (.Y(n15), 
	.D(n21), 
	.C(n20), 
	.B(n19), 
	.A(n18));
   NOR2X1 U21 (.Y(n19), 
	.B(FE_OFN1369_state_0_), 
	.A(n7));
   NOR2X1 U22 (.Y(n18), 
	.B(n22), 
	.A(full));
   INVX1 U23 (.Y(n22), 
	.A(r_enable_in));
   MUX2X1 U24 (.Y(n167), 
	.S(cnt8[0]), 
	.B(n23), 
	.A(n24));
   NAND2X1 U25 (.Y(n23), 
	.B(n21), 
	.A(n25));
   MUX2X1 U26 (.Y(n166), 
	.S(cnt8[1]), 
	.B(n26), 
	.A(n27));
   INVX1 U27 (.Y(n27), 
	.A(n28));
   OAI21X1 U28 (.Y(n165), 
	.C(n30), 
	.B(n26), 
	.A(n29));
   OAI21X1 U29 (.Y(n30), 
	.C(cnt8[2]), 
	.B(n28), 
	.A(n25));
   OAI21X1 U30 (.Y(n28), 
	.C(n24), 
	.B(n31), 
	.A(cnt8[0]));
   AOI22X1 U31 (.Y(n24), 
	.D(n25), 
	.C(FE_OFN1147_n13), 
	.B(r_enable_out), 
	.A(FE_OFN1146_n170));
   INVX1 U32 (.Y(r_enable_out), 
	.A(n9));
   NAND3X1 U33 (.Y(n26), 
	.C(n25), 
	.B(n21), 
	.A(cnt8[0]));
   INVX1 U34 (.Y(n25), 
	.A(n31));
   NAND2X1 U35 (.Y(n31), 
	.B(FE_OFN1146_n170), 
	.A(n20));
   INVX1 U36 (.Y(n29), 
	.A(cnt8[1]));
   MUX2X1 U37 (.Y(n119), 
	.S(FE_OFN1370_state_1_), 
	.B(FE_OFN1368_WADDR_0_), 
	.A(FE_OFN1362_RADDR_0_));
   MUX2X1 U38 (.Y(n118), 
	.S(FE_OFN1370_state_1_), 
	.B(FE_OFN1367_WADDR_1_), 
	.A(RADDR[1]));
   MUX2X1 U39 (.Y(n117), 
	.S(FE_OFN1370_state_1_), 
	.B(FE_OFN1366_WADDR_2_), 
	.A(RADDR[2]));
   MUX2X1 U40 (.Y(n116), 
	.S(FE_OFN1370_state_1_), 
	.B(FE_OFN1365_WADDR_3_), 
	.A(FE_OFN1359_RADDR_3_));
   MUX2X1 U41 (.Y(n115), 
	.S(FE_OFN1370_state_1_), 
	.B(FE_OFN1364_WADDR_4_), 
	.A(FE_OFN1462_RADDR_4_));
   MUX2X1 U42 (.Y(n114), 
	.S(FE_OFN1370_state_1_), 
	.B(FE_OFN1363_WADDR_5_), 
	.A(FE_OFN1357_RADDR_5_));
   MUX2X1 U43 (.Y(n113), 
	.S(FE_OFN1370_state_1_), 
	.B(WADDR[6]), 
	.A(FE_OFN1356_RADDR_6_));
   MUX2X1 U44 (.Y(n112), 
	.S(FE_OFN1370_state_1_), 
	.B(WADDR[7]), 
	.A(FE_OFN1461_RADDR_7_));
   MUX2X1 U45 (.Y(n111), 
	.S(FE_OFN1370_state_1_), 
	.B(WADDR[8]), 
	.A(FE_OFN1460_RADDR_8_));
   MUX2X1 U46 (.Y(n110), 
	.S(FE_OFN1370_state_1_), 
	.B(WADDR[9]), 
	.A(RADDR[9]));
   MUX2X1 U47 (.Y(n109), 
	.S(n7), 
	.B(WADDR[10]), 
	.A(RADDR[10]));
   MUX2X1 U48 (.Y(n108), 
	.S(n7), 
	.B(WADDR[11]), 
	.A(FE_OFN1361_RADDR_11_));
   MUX2X1 U49 (.Y(incnt8[2]), 
	.S(icnt8[2]), 
	.B(n32), 
	.A(n33));
   INVX1 U50 (.Y(n33), 
	.A(n34));
   OAI21X1 U51 (.Y(n34), 
	.C(n36), 
	.B(icnt8[1]), 
	.A(n35));
   NAND3X1 U52 (.Y(n32), 
	.C(n37), 
	.B(icnt8[0]), 
	.A(icnt8[1]));
   MUX2X1 U53 (.Y(incnt8[1]), 
	.S(icnt8[1]), 
	.B(n38), 
	.A(n36));
   INVX1 U54 (.Y(n36), 
	.A(incnt8[0]));
   NAND2X1 U55 (.Y(n38), 
	.B(icnt8[0]), 
	.A(n37));
   INVX1 U56 (.Y(n37), 
	.A(n35));
   NOR2X1 U57 (.Y(incnt8[0]), 
	.B(icnt8[0]), 
	.A(n35));
   OAI21X1 U58 (.Y(n35), 
	.C(FE_OFN1146_n170), 
	.B(r_enable_s), 
	.A(n20));
   INVX1 U59 (.Y(n20), 
	.A(n39));
   NAND3X1 U60 (.Y(n39), 
	.C(FE_OFN1369_state_0_), 
	.B(n16), 
	.A(n40));
   INVX1 U61 (.Y(n16), 
	.A(FE_OFN1370_state_1_));
   NAND3X1 U62 (.Y(n40), 
	.C(n41), 
	.B(cnt8[1]), 
	.A(cnt8[2]));
   AND2X1 U63 (.Y(n41), 
	.B(cnt8[0]), 
	.A(n21));
   AND2X1 U64 (.Y(empty), 
	.B(n43), 
	.A(n42));
   NOR2X1 U65 (.Y(n43), 
	.B(n45), 
	.A(n44));
   NAND3X1 U66 (.Y(n45), 
	.C(n48), 
	.B(n47), 
	.A(n46));
   NAND3X1 U67 (.Y(n44), 
	.C(n51), 
	.B(n50), 
	.A(n49));
   NOR2X1 U68 (.Y(n42), 
	.B(n53), 
	.A(n52));
   NAND3X1 U69 (.Y(n53), 
	.C(N147), 
	.B(n55), 
	.A(n54));
   NAND3X1 U70 (.Y(n52), 
	.C(n59), 
	.B(n58), 
	.A(n57));
   NOR2X1 U71 (.Y(N254), 
	.B(n55), 
	.A(rst));
   INVX1 U72 (.Y(n55), 
	.A(WADDR[11]));
   NOR2X1 U73 (.Y(N253), 
	.B(n54), 
	.A(rst));
   INVX1 U74 (.Y(n54), 
	.A(WADDR[10]));
   NOR2X1 U75 (.Y(N252), 
	.B(n50), 
	.A(FE_OFN668_RST));
   INVX1 U76 (.Y(n50), 
	.A(WADDR[9]));
   NOR2X1 U77 (.Y(N251), 
	.B(n49), 
	.A(FE_OFN668_RST));
   INVX1 U78 (.Y(n49), 
	.A(WADDR[8]));
   NOR2X1 U79 (.Y(N250), 
	.B(n51), 
	.A(FE_OFN668_RST));
   INVX1 U80 (.Y(n51), 
	.A(WADDR[7]));
   NOR2X1 U81 (.Y(N249), 
	.B(n47), 
	.A(FE_PHN1028_RST));
   INVX1 U82 (.Y(n47), 
	.A(WADDR[6]));
   NOR2X1 U83 (.Y(N248), 
	.B(n46), 
	.A(FE_PHN1028_RST));
   INVX1 U84 (.Y(n46), 
	.A(FE_OFN1363_WADDR_5_));
   NOR2X1 U85 (.Y(N247), 
	.B(n48), 
	.A(FE_PHN1028_RST));
   INVX1 U86 (.Y(n48), 
	.A(FE_OFN1364_WADDR_4_));
   NOR2X1 U87 (.Y(N246), 
	.B(n58), 
	.A(FE_PHN1028_RST));
   INVX1 U88 (.Y(n58), 
	.A(FE_OFN1365_WADDR_3_));
   NOR2X1 U89 (.Y(N245), 
	.B(n57), 
	.A(FE_PHN1028_RST));
   INVX1 U90 (.Y(n57), 
	.A(FE_OFN1366_WADDR_2_));
   NOR2X1 U91 (.Y(N244), 
	.B(n59), 
	.A(FE_PHN1028_RST));
   INVX1 U92 (.Y(n59), 
	.A(FE_OFN1367_WADDR_1_));
   NOR2X1 U93 (.Y(N243), 
	.B(N147), 
	.A(rst));
   OAI21X1 U95 (.Y(n61), 
	.C(n170), 
	.B(n63), 
	.A(n62));
   OAI21X1 U96 (.Y(N241), 
	.C(n66), 
	.B(n65), 
	.A(FE_OFN1141_n64));
   AOI22X1 U97 (.Y(n66), 
	.D(n68), 
	.C(nPRADDR[11]), 
	.B(WADDR[11]), 
	.A(FE_OFN1142_n67));
   INVX1 U98 (.Y(n65), 
	.A(N174));
   OAI21X1 U99 (.Y(N240), 
	.C(n70), 
	.B(n69), 
	.A(FE_OFN1141_n64));
   AOI22X1 U100 (.Y(n70), 
	.D(n68), 
	.C(nPRADDR[10]), 
	.B(WADDR[10]), 
	.A(FE_OFN1142_n67));
   INVX1 U101 (.Y(n69), 
	.A(N173));
   OAI21X1 U102 (.Y(N239), 
	.C(n72), 
	.B(n71), 
	.A(FE_OFN1141_n64));
   AOI22X1 U103 (.Y(n72), 
	.D(n68), 
	.C(nPRADDR[9]), 
	.B(WADDR[9]), 
	.A(FE_OFN1142_n67));
   INVX1 U104 (.Y(n71), 
	.A(N172));
   OAI21X1 U105 (.Y(N238), 
	.C(n74), 
	.B(N171), 
	.A(FE_OFN1141_n64));
   AOI22X1 U106 (.Y(n74), 
	.D(n68), 
	.C(nPRADDR[8]), 
	.B(WADDR[8]), 
	.A(FE_OFN1142_n67));
   OAI21X1 U108 (.Y(N237), 
	.C(n76), 
	.B(n75), 
	.A(FE_OFN1141_n64));
   AOI22X1 U109 (.Y(n76), 
	.D(n68), 
	.C(nPRADDR[7]), 
	.B(WADDR[7]), 
	.A(FE_OFN1142_n67));
   INVX1 U110 (.Y(n75), 
	.A(N170));
   OAI21X1 U111 (.Y(N236), 
	.C(n78), 
	.B(N169), 
	.A(FE_OFN1141_n64));
   AOI22X1 U112 (.Y(n78), 
	.D(n68), 
	.C(nPRADDR[6]), 
	.B(WADDR[6]), 
	.A(FE_OFN1142_n67));
   OAI21X1 U114 (.Y(N235), 
	.C(n80), 
	.B(n79), 
	.A(FE_OFN1141_n64));
   AOI22X1 U115 (.Y(n80), 
	.D(n68), 
	.C(nPRADDR[5]), 
	.B(FE_OFN1363_WADDR_5_), 
	.A(FE_OFN1142_n67));
   INVX1 U116 (.Y(n79), 
	.A(N168));
   OAI21X1 U117 (.Y(N234), 
	.C(n82), 
	.B(N167), 
	.A(FE_OFN1141_n64));
   AOI22X1 U118 (.Y(n82), 
	.D(n68), 
	.C(nPRADDR[4]), 
	.B(FE_OFN1364_WADDR_4_), 
	.A(FE_OFN1142_n67));
   OAI21X1 U120 (.Y(N233), 
	.C(n84), 
	.B(n83), 
	.A(FE_OFN1141_n64));
   AOI22X1 U121 (.Y(n84), 
	.D(n68), 
	.C(nPRADDR[3]), 
	.B(FE_OFN1365_WADDR_3_), 
	.A(FE_OFN1142_n67));
   INVX1 U122 (.Y(n83), 
	.A(N166));
   OAI21X1 U123 (.Y(N232), 
	.C(n86), 
	.B(N165), 
	.A(FE_OFN1141_n64));
   AOI22X1 U124 (.Y(n86), 
	.D(n68), 
	.C(nPRADDR[2]), 
	.B(FE_OFN1366_WADDR_2_), 
	.A(FE_OFN1142_n67));
   OAI21X1 U126 (.Y(N231), 
	.C(n88), 
	.B(n87), 
	.A(FE_OFN1141_n64));
   AOI22X1 U127 (.Y(n88), 
	.D(n68), 
	.C(nPRADDR[1]), 
	.B(FE_OFN1367_WADDR_1_), 
	.A(FE_OFN1142_n67));
   INVX1 U128 (.Y(n87), 
	.A(N164));
   OAI21X1 U129 (.Y(N230), 
	.C(n89), 
	.B(FE_OFN1141_n64), 
	.A(FE_OFN1362_RADDR_0_));
   AOI22X1 U130 (.Y(n89), 
	.D(n68), 
	.C(nPRADDR[0]), 
	.B(FE_OFN1368_WADDR_0_), 
	.A(FE_OFN1142_n67));
   INVX4 U131 (.Y(n68), 
	.A(n90));
   NAND3X1 U132 (.Y(n90), 
	.C(n91), 
	.B(n62), 
	.A(resend));
   AOI21X1 U133 (.Y(n67), 
	.C(n92), 
	.B(resend), 
	.A(n62));
   NAND2X1 U134 (.Y(n62), 
	.B(n94), 
	.A(n93));
   NOR2X1 U135 (.Y(n94), 
	.B(n96), 
	.A(n95));
   NAND3X1 U136 (.Y(n96), 
	.C(N56), 
	.B(N54), 
	.A(N55));
   NAND3X1 U137 (.Y(n95), 
	.C(N53), 
	.B(N51), 
	.A(N52));
   NOR2X1 U138 (.Y(n93), 
	.B(n98), 
	.A(n97));
   NAND3X1 U139 (.Y(n98), 
	.C(N62), 
	.B(N60), 
	.A(N61));
   NAND3X1 U140 (.Y(n97), 
	.C(N59), 
	.B(N57), 
	.A(N58));
   NAND3X1 U141 (.Y(n64), 
	.C(r_enable_s), 
	.B(FE_OFN1146_n170), 
	.A(n21));
   INVX1 U142 (.Y(r_enable_s), 
	.A(n99));
   INVX1 U143 (.Y(n21), 
	.A(FE_OFN1147_n13));
   NAND3X1 U144 (.Y(N229), 
	.C(n91), 
	.B(n63), 
	.A(n100));
   INVX1 U145 (.Y(n91), 
	.A(n92));
   OAI21X1 U146 (.Y(n92), 
	.C(FE_OFN1146_n170), 
	.B(n99), 
	.A(FE_OFN1147_n13));
   NAND3X1 U147 (.Y(n13), 
	.C(icnt8[2]), 
	.B(icnt8[0]), 
	.A(icnt8[1]));
   INVX1 U148 (.Y(n63), 
	.A(resend));
   INVX1 U149 (.Y(n100), 
	.A(n60));
   OAI21X1 U150 (.Y(n60), 
	.C(sWrite), 
	.B(n102), 
	.A(n101));
   NAND2X1 U151 (.Y(n102), 
	.B(n104), 
	.A(n103));
   NOR3X1 U152 (.Y(n104), 
	.C(FE_OFN1362_RADDR_0_), 
	.B(FE_OFN1361_RADDR_11_), 
	.A(RADDR[10]));
   NOR3X1 U153 (.Y(n103), 
	.C(RADDR[1]), 
	.B(FE_OFN1359_RADDR_3_), 
	.A(RADDR[2]));
   NAND2X1 U154 (.Y(n101), 
	.B(n106), 
	.A(n105));
   NOR3X1 U155 (.Y(n106), 
	.C(FE_OFN1462_RADDR_4_), 
	.B(FE_OFN1356_RADDR_6_), 
	.A(FE_OFN1357_RADDR_5_));
   NOR3X1 U156 (.Y(n105), 
	.C(FE_OFN1461_RADDR_7_), 
	.B(RADDR[9]), 
	.A(FE_OFN1460_RADDR_8_));
   AND2X1 U157 (.Y(N228), 
	.B(FE_OFN1146_n170), 
	.A(N158));
   AND2X1 U158 (.Y(N227), 
	.B(FE_OFN1146_n170), 
	.A(N157));
   AND2X1 U159 (.Y(N226), 
	.B(FE_OFN1146_n170), 
	.A(N156));
   AND2X1 U160 (.Y(N225), 
	.B(FE_OFN1146_n170), 
	.A(N155));
   AND2X1 U161 (.Y(N224), 
	.B(n170), 
	.A(N154));
   AND2X1 U162 (.Y(N223), 
	.B(n170), 
	.A(N153));
   AND2X1 U163 (.Y(N222), 
	.B(FE_OFN1145_n170), 
	.A(N152));
   AND2X1 U164 (.Y(N221), 
	.B(FE_OFN1145_n170), 
	.A(N151));
   AND2X1 U165 (.Y(N220), 
	.B(FE_OFN1145_n170), 
	.A(N150));
   AND2X1 U166 (.Y(N219), 
	.B(FE_OFN1145_n170), 
	.A(N149));
   AND2X1 U167 (.Y(N218), 
	.B(FE_OFN1145_n170), 
	.A(N148));
   AND2X1 U168 (.Y(N217), 
	.B(n170), 
	.A(N147));
   NAND2X1 U169 (.Y(n9), 
	.B(n8), 
	.A(n7));
   INVX1 U170 (.Y(n8), 
	.A(FE_OFN1369_state_0_));
   NAND2X1 U171 (.Y(N215), 
	.B(n99), 
	.A(FE_OFN1146_n170));
   NAND2X1 U216 (.Y(n99), 
	.B(FE_OFN1369_state_0_), 
	.A(n7));
endmodule

module BENC (
	CLK, 
	DATA, 
	D_MINUS, 
	D_PLUS, 
	READ_EN1, 
	RENABLE, 
	RST, 
	ADDR, 
	DATAOUT, 
	EMPTY_SRAM, 
	RDATA, 
	r_enable_out, 
	r_enable_s, 
	r_error, 
	rcving, 
	w_enable_out);
   input CLK;
   input [7:0] DATA;
   input D_MINUS;
   input D_PLUS;
   input READ_EN1;
   input RENABLE;
   input RST;
   output [11:0] ADDR;
   output [7:0] DATAOUT;
   output EMPTY_SRAM;
   output [7:0] RDATA;
   output r_enable_out;
   output r_enable_s;
   output r_error;
   output rcving;
   output w_enable_out;

   // Internal wires
   wire FE_PHN1485_RST;
   wire FE_PHN1481_RST;
   wire FE_OFN1433_RST;
   wire FE_OFN1389_FULL;
   wire FE_OFN1374_r_enable_in;
   wire CLK__L4_N25;
   wire CLK__L4_N24;
   wire CLK__L4_N23;
   wire CLK__L4_N22;
   wire CLK__L4_N21;
   wire CLK__L4_N20;
   wire CLK__L4_N19;
   wire CLK__L4_N18;
   wire CLK__L4_N17;
   wire CLK__L4_N16;
   wire CLK__L4_N15;
   wire CLK__L4_N14;
   wire CLK__L4_N13;
   wire CLK__L4_N12;
   wire CLK__L4_N11;
   wire CLK__L4_N10;
   wire CLK__L4_N9;
   wire CLK__L4_N8;
   wire CLK__L4_N7;
   wire CLK__L4_N6;
   wire CLK__L4_N5;
   wire CLK__L4_N4;
   wire CLK__L4_N3;
   wire CLK__L4_N2;
   wire CLK__L4_N1;
   wire CLK__L4_N0;
   wire CLK__L3_N5;
   wire CLK__L3_N4;
   wire CLK__L3_N3;
   wire CLK__L3_N2;
   wire CLK__L3_N1;
   wire CLK__L3_N0;
   wire CLK__L2_N2;
   wire CLK__L2_N1;
   wire CLK__L2_N0;
   wire CLK__L1_N0;
   wire EMPTY;
   wire FULL;
   wire FULL1;
   wire R_ENABLE;
   wire empty1;
   wire r_enable_in;
   wire resend;
   wire [7:0] R_DATA;

   BUFX4 FE_PHC1485_RST (.Y(FE_PHN1485_RST), 
	.A(RST));
   BUFX4 FE_PHC1481_RST (.Y(FE_PHN1481_RST), 
	.A(FE_PHN1485_RST));
   BUFX4 FE_OFC1433_RST (.Y(FE_OFN1433_RST), 
	.A(FE_PHN1485_RST));
   BUFX4 FE_OFC1389_FULL (.Y(FE_OFN1389_FULL), 
	.A(FULL));
   BUFX2 FE_OFC1374_r_enable_in (.Y(FE_OFN1374_r_enable_in), 
	.A(r_enable_in));
   INVX8 CLK__L4_I25 (.Y(CLK__L4_N25), 
	.A(CLK__L3_N5));
   INVX8 CLK__L4_I24 (.Y(CLK__L4_N24), 
	.A(CLK__L3_N5));
   INVX8 CLK__L4_I23 (.Y(CLK__L4_N23), 
	.A(CLK__L3_N5));
   INVX8 CLK__L4_I22 (.Y(CLK__L4_N22), 
	.A(CLK__L3_N5));
   INVX8 CLK__L4_I21 (.Y(CLK__L4_N21), 
	.A(CLK__L3_N5));
   INVX8 CLK__L4_I20 (.Y(CLK__L4_N20), 
	.A(CLK__L3_N4));
   INVX8 CLK__L4_I19 (.Y(CLK__L4_N19), 
	.A(CLK__L3_N4));
   INVX8 CLK__L4_I18 (.Y(CLK__L4_N18), 
	.A(CLK__L3_N4));
   INVX8 CLK__L4_I17 (.Y(CLK__L4_N17), 
	.A(CLK__L3_N4));
   INVX8 CLK__L4_I16 (.Y(CLK__L4_N16), 
	.A(CLK__L3_N3));
   INVX8 CLK__L4_I15 (.Y(CLK__L4_N15), 
	.A(CLK__L3_N3));
   INVX8 CLK__L4_I14 (.Y(CLK__L4_N14), 
	.A(CLK__L3_N3));
   INVX8 CLK__L4_I13 (.Y(CLK__L4_N13), 
	.A(CLK__L3_N3));
   INVX8 CLK__L4_I12 (.Y(CLK__L4_N12), 
	.A(CLK__L3_N3));
   INVX8 CLK__L4_I11 (.Y(CLK__L4_N11), 
	.A(CLK__L3_N2));
   INVX8 CLK__L4_I10 (.Y(CLK__L4_N10), 
	.A(CLK__L3_N2));
   INVX8 CLK__L4_I9 (.Y(CLK__L4_N9), 
	.A(CLK__L3_N2));
   INVX8 CLK__L4_I8 (.Y(CLK__L4_N8), 
	.A(CLK__L3_N2));
   INVX8 CLK__L4_I7 (.Y(CLK__L4_N7), 
	.A(CLK__L3_N1));
   INVX8 CLK__L4_I6 (.Y(CLK__L4_N6), 
	.A(CLK__L3_N1));
   INVX8 CLK__L4_I5 (.Y(CLK__L4_N5), 
	.A(CLK__L3_N1));
   INVX8 CLK__L4_I4 (.Y(CLK__L4_N4), 
	.A(CLK__L3_N1));
   INVX8 CLK__L4_I3 (.Y(CLK__L4_N3), 
	.A(CLK__L3_N0));
   INVX8 CLK__L4_I2 (.Y(CLK__L4_N2), 
	.A(CLK__L3_N0));
   INVX8 CLK__L4_I1 (.Y(CLK__L4_N1), 
	.A(CLK__L3_N0));
   INVX8 CLK__L4_I0 (.Y(CLK__L4_N0), 
	.A(CLK__L3_N0));
   INVX8 CLK__L3_I5 (.Y(CLK__L3_N5), 
	.A(CLK__L2_N2));
   INVX8 CLK__L3_I4 (.Y(CLK__L3_N4), 
	.A(CLK__L2_N2));
   INVX8 CLK__L3_I3 (.Y(CLK__L3_N3), 
	.A(CLK__L2_N1));
   INVX8 CLK__L3_I2 (.Y(CLK__L3_N2), 
	.A(CLK__L2_N1));
   INVX8 CLK__L3_I1 (.Y(CLK__L3_N1), 
	.A(CLK__L2_N1));
   INVX8 CLK__L3_I0 (.Y(CLK__L3_N0), 
	.A(CLK__L2_N1));
   INVX8 CLK__L2_I2 (.Y(CLK__L2_N2), 
	.A(CLK__L1_N0));
   INVX8 CLK__L2_I1 (.Y(CLK__L2_N1), 
	.A(CLK__L1_N0));
   INVX8 CLK__L2_I0 (.Y(CLK__L2_N0), 
	.A(CLK__L1_N0));
   INVX8 CLK__L1_I0 (.Y(CLK__L1_N0), 
	.A(CLK));
   ENCRYPTION U_0 (.CLK(CLK__L2_N0), 
	.DATA(R_DATA), 
	.EMPTY(EMPTY), 
	.FULL(FE_OFN1389_FULL), 
	.RENABLE(RENABLE), 
	.RST(FE_OFN1433_RST), 
	.FULL1(FULL1), 
	.RDATA(RDATA), 
	.R_ENABLE(R_ENABLE), 
	.CLK__L4_N0(CLK__L4_N0), 
	.CLK__L4_N1(CLK__L4_N1), 
	.CLK__L4_N10(CLK__L4_N10), 
	.CLK__L4_N11(CLK__L4_N11), 
	.CLK__L4_N12(CLK__L4_N12), 
	.CLK__L4_N13(CLK__L4_N13), 
	.CLK__L4_N14(CLK__L4_N14), 
	.CLK__L4_N15(CLK__L4_N15), 
	.CLK__L4_N16(CLK__L4_N16), 
	.CLK__L4_N19(CLK__L4_N19), 
	.CLK__L4_N2(CLK__L4_N2), 
	.CLK__L4_N20(CLK__L4_N20), 
	.CLK__L4_N22(CLK__L4_N22), 
	.CLK__L4_N23(CLK__L4_N23), 
	.CLK__L4_N24(CLK__L4_N24), 
	.CLK__L4_N25(CLK__L4_N25), 
	.CLK__L4_N3(CLK__L4_N3), 
	.CLK__L4_N4(CLK__L4_N4), 
	.CLK__L4_N5(CLK__L4_N5), 
	.CLK__L4_N6(CLK__L4_N6), 
	.CLK__L4_N7(CLK__L4_N7), 
	.CLK__L4_N9(CLK__L4_N9));
   USB_RCVR U_1 (.CLK(CLK__L4_N20), 
	.D_MINUS(D_MINUS), 
	.D_PLUS(D_PLUS), 
	.RST(FE_OFN1433_RST), 
	.R_ENABLE(R_ENABLE), 
	.EMPTY(EMPTY), 
	.FULL(FULL), 
	.R_DATA(R_DATA), 
	.r_error(r_error), 
	.rcving(rcving), 
	.CLK__L4_N21(CLK__L4_N21));
   bToothTop U_2 (.CLK(CLK__L4_N11), 
	.DATA(DATA), 
	.EMPTY(empty1), 
	.READ_EN1(READ_EN1), 
	.RST(RST), 
	.DATAOUT(DATAOUT), 
	.EMPTY_SRAM(EMPTY_SRAM), 
	.READ_EN(r_enable_in), 
	.RESEND_EN(resend), 
	.CLK__L4_N17(CLK__L4_N17), 
	.CLK__L4_N18(CLK__L4_N18), 
	.CLK__L4_N19(CLK__L4_N19), 
	.CLK__L4_N3(CLK__L4_N3), 
	.CLK__L4_N8(CLK__L4_N8), 
	.CLK__L4_N9(CLK__L4_N9), 
	.FE_OFN668_RST(FE_PHN1481_RST), 
	.FE_PHN1026_RST(RST), 
	.FE_OFN1434_RST(FE_PHN1481_RST), 
	.FE_PHN1485_RST(FE_PHN1485_RST));
   s_Control U_4 (.clk(CLK__L4_N10), 
	.rst(RST), 
	.full(FULL1), 
	.resend(resend), 
	.r_enable_in(FE_OFN1374_r_enable_in), 
	.empty(empty1), 
	.r_enable_out(r_enable_out), 
	.r_enable_s(r_enable_s), 
	.ADDR(ADDR), 
	.w_enable_out(w_enable_out), 
	.CLK__L4_N18(CLK__L4_N18), 
	.CLK__L4_N19(CLK__L4_N19), 
	.CLK__L4_N20(CLK__L4_N20), 
	.CLK__L4_N9(CLK__L4_N9), 
	.FE_OFN668_RST(FE_PHN1485_RST), 
	.FE_PHN1026_RST(FE_PHN1481_RST), 
	.FE_PHN1028_RST(FE_PHN1485_RST));
endmodule

