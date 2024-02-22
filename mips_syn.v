/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun May  8 16:15:06 2022
/////////////////////////////////////////////////////////////


module controller ( clk, reset, op, zero, memread, memwrite, alusrca, memtoreg, 
        iord, pcen, regwrite, regdst, pcsource, alusrcb, aluop, irwrite );
  input [5:0] op;
  output [1:0] pcsource;
  output [1:0] alusrcb;
  output [1:0] aluop;
  output [3:0] irwrite;
  input clk, reset, zero;
  output memread, memwrite, alusrca, memtoreg, iord, pcen, regwrite, regdst;
  wire   N45, N47, N48, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;
  wire   [3:0] state;

  DFFPOSX1 state_reg_0_ ( .D(N45), .CLK(clk), .Q(state[0]) );
  DFFPOSX1 state_reg_3_ ( .D(N48), .CLK(clk), .Q(state[3]) );
  DFFPOSX1 state_reg_2_ ( .D(N47), .CLK(clk), .Q(state[2]) );
  DFFPOSX1 state_reg_1_ ( .D(n4), .CLK(clk), .Q(state[1]) );
  INVX2 U3 ( .A(n27), .Y(memtoreg) );
  INVX2 U4 ( .A(n35), .Y(irwrite[1]) );
  INVX2 U5 ( .A(n36), .Y(pcsource[0]) );
  AND2X2 U6 ( .A(n39), .B(n22), .Y(N48) );
  AND2X2 U7 ( .A(n19), .B(state[0]), .Y(n42) );
  INVX2 U8 ( .A(n37), .Y(aluop[1]) );
  INVX2 U9 ( .A(n33), .Y(irwrite[3]) );
  OR2X1 U33 ( .A(regdst), .B(memtoreg), .Y(regwrite) );
  NOR2X1 U34 ( .A(n21), .B(n24), .Y(regdst) );
  NOR2X1 U35 ( .A(n25), .B(n26), .Y(pcsource[1]) );
  NAND2X1 U36 ( .A(state[2]), .B(state[0]), .Y(n26) );
  NAND2X1 U37 ( .A(state[3]), .B(n21), .Y(n25) );
  NAND3X1 U38 ( .A(n28), .B(n21), .C(state[3]), .Y(n27) );
  NAND2X1 U39 ( .A(n15), .B(n29), .Y(memread) );
  OR2X1 U40 ( .A(memwrite), .B(n13), .Y(iord) );
  NOR2X1 U41 ( .A(n24), .B(state[1]), .Y(memwrite) );
  NAND3X1 U42 ( .A(state[3]), .B(n20), .C(state[0]), .Y(n24) );
  NAND2X1 U43 ( .A(n30), .B(n31), .Y(alusrcb[1]) );
  NAND2X1 U44 ( .A(n15), .B(n30), .Y(alusrcb[0]) );
  NAND3X1 U45 ( .A(n33), .B(n17), .C(n34), .Y(n32) );
  NOR2X1 U46 ( .A(irwrite[0]), .B(irwrite[1]), .Y(n34) );
  NAND3X1 U47 ( .A(n36), .B(n37), .C(n31), .Y(alusrca) );
  NAND3X1 U48 ( .A(state[3]), .B(n21), .C(n38), .Y(n36) );
  OAI21X1 U49 ( .A(n40), .B(n9), .C(n41), .Y(n39) );
  NOR2X1 U50 ( .A(aluop[1]), .B(n13), .Y(n41) );
  NAND3X1 U51 ( .A(state[2]), .B(state[1]), .C(n42), .Y(n29) );
  AOI22X1 U52 ( .A(n14), .B(n43), .C(n18), .D(n44), .Y(n40) );
  OAI21X1 U53 ( .A(op[2]), .B(n7), .C(n45), .Y(n44) );
  OAI21X1 U54 ( .A(n11), .B(n46), .C(n47), .Y(n43) );
  NAND3X1 U55 ( .A(op[3]), .B(n48), .C(op[5]), .Y(n47) );
  AOI21X1 U56 ( .A(n49), .B(n50), .C(reset), .Y(N47) );
  NOR2X1 U57 ( .A(irwrite[2]), .B(irwrite[3]), .Y(n50) );
  NAND3X1 U58 ( .A(n21), .B(n19), .C(n38), .Y(n33) );
  NOR2X1 U59 ( .A(n51), .B(n21), .Y(irwrite[2]) );
  AOI21X1 U60 ( .A(n52), .B(n53), .C(n54), .Y(n49) );
  OAI21X1 U61 ( .A(n55), .B(n7), .C(n45), .Y(n53) );
  XNOR2X1 U62 ( .A(op[1]), .B(op[2]), .Y(n55) );
  OAI21X1 U63 ( .A(n58), .B(n59), .C(n22), .Y(n57) );
  OAI21X1 U64 ( .A(n8), .B(n46), .C(n5), .Y(n59) );
  OAI21X1 U65 ( .A(n60), .B(n61), .C(n62), .Y(n54) );
  NAND3X1 U66 ( .A(op[5]), .B(n48), .C(n52), .Y(n62) );
  NAND2X1 U67 ( .A(n63), .B(n14), .Y(n61) );
  NAND3X1 U68 ( .A(state[1]), .B(n19), .C(n38), .Y(n31) );
  NOR2X1 U69 ( .A(n20), .B(state[0]), .Y(n38) );
  NAND3X1 U70 ( .A(n12), .B(n10), .C(n64), .Y(n60) );
  XNOR2X1 U71 ( .A(n6), .B(op[2]), .Y(n64) );
  NAND2X1 U72 ( .A(n56), .B(n12), .Y(n46) );
  NOR2X1 U73 ( .A(n9), .B(n30), .Y(n52) );
  NAND3X1 U74 ( .A(n16), .B(n37), .C(n35), .Y(n58) );
  NAND3X1 U75 ( .A(n28), .B(n19), .C(state[1]), .Y(n35) );
  NAND3X1 U76 ( .A(state[3]), .B(n28), .C(state[1]), .Y(n37) );
  NOR2X1 U77 ( .A(state[2]), .B(state[0]), .Y(n28) );
  NOR2X1 U78 ( .A(n51), .B(state[1]), .Y(irwrite[0]) );
  NAND3X1 U79 ( .A(n20), .B(n19), .C(state[0]), .Y(n51) );
  NAND3X1 U80 ( .A(state[0]), .B(n65), .C(n66), .Y(N45) );
  NOR2X1 U81 ( .A(state[3]), .B(reset), .Y(n66) );
  OAI21X1 U82 ( .A(n67), .B(n68), .C(n18), .Y(n65) );
  NAND3X1 U83 ( .A(state[2]), .B(state[0]), .C(n69), .Y(n30) );
  NOR2X1 U84 ( .A(state[3]), .B(state[1]), .Y(n69) );
  OAI21X1 U85 ( .A(n11), .B(n12), .C(n63), .Y(n68) );
  NOR2X1 U86 ( .A(op[4]), .B(op[0]), .Y(n63) );
  OAI21X1 U87 ( .A(n56), .B(n48), .C(n45), .Y(n67) );
  NAND3X1 U88 ( .A(n48), .B(n6), .C(op[3]), .Y(n45) );
  NOR2X1 U89 ( .A(op[2]), .B(op[1]), .Y(n48) );
  NOR2X1 U90 ( .A(op[3]), .B(op[5]), .Y(n56) );
  INVX1 U10 ( .A(1'b1), .Y(pcen) );
  INVX2 U12 ( .A(n36), .Y(aluop[0]) );
  INVX2 U13 ( .A(n57), .Y(n4) );
  INVX2 U14 ( .A(n54), .Y(n5) );
  INVX2 U15 ( .A(op[5]), .Y(n6) );
  INVX2 U16 ( .A(n56), .Y(n7) );
  INVX2 U17 ( .A(n52), .Y(n8) );
  INVX2 U18 ( .A(n63), .Y(n9) );
  INVX2 U19 ( .A(op[3]), .Y(n10) );
  INVX2 U20 ( .A(op[2]), .Y(n11) );
  INVX2 U21 ( .A(op[1]), .Y(n12) );
  INVX2 U22 ( .A(n29), .Y(n13) );
  INVX2 U23 ( .A(n31), .Y(n14) );
  INVX2 U24 ( .A(n32), .Y(n15) );
  INVX2 U25 ( .A(irwrite[0]), .Y(n16) );
  INVX2 U26 ( .A(irwrite[2]), .Y(n17) );
  INVX2 U27 ( .A(n30), .Y(n18) );
  INVX2 U28 ( .A(state[3]), .Y(n19) );
  INVX2 U29 ( .A(state[2]), .Y(n20) );
  INVX2 U30 ( .A(state[1]), .Y(n21) );
  INVX2 U31 ( .A(reset), .Y(n22) );
endmodule


module alucontrol ( aluop, funct, alucont );
  input [1:0] aluop;
  input [5:0] funct;
  output [2:0] alucont;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n3, n4, n5, n6;

  INVX2 U3 ( .A(n14), .Y(alucont[0]) );
  OAI21X1 U10 ( .A(aluop[1]), .B(n6), .C(n8), .Y(alucont[2]) );
  OAI21X1 U11 ( .A(n9), .B(n10), .C(aluop[1]), .Y(n8) );
  OAI21X1 U12 ( .A(funct[2]), .B(n5), .C(funct[5]), .Y(n10) );
  NAND3X1 U13 ( .A(n4), .B(n1), .C(n11), .Y(n9) );
  OAI21X1 U14 ( .A(n12), .B(n13), .C(aluop[1]), .Y(alucont[1]) );
  NAND2X1 U15 ( .A(funct[5]), .B(n11), .Y(n13) );
  NAND2X1 U16 ( .A(funct[3]), .B(n4), .Y(n11) );
  NAND3X1 U17 ( .A(n3), .B(n1), .C(n5), .Y(n12) );
  OAI21X1 U18 ( .A(n15), .B(n16), .C(aluop[1]), .Y(n14) );
  OAI21X1 U19 ( .A(n4), .B(n3), .C(funct[5]), .Y(n16) );
  NAND3X1 U20 ( .A(n2), .B(n1), .C(n5), .Y(n15) );
  INVX2 U4 ( .A(funct[4]), .Y(n1) );
  INVX2 U5 ( .A(funct[3]), .Y(n2) );
  INVX2 U6 ( .A(funct[2]), .Y(n3) );
  INVX2 U7 ( .A(funct[1]), .Y(n4) );
  INVX2 U8 ( .A(funct[0]), .Y(n5) );
  INVX2 U9 ( .A(aluop[0]), .Y(n6) );
endmodule


module mux23 ( d0, d1, s, y );
  input [2:0] d0;
  input [2:0] d1;
  output [2:0] y;
  input s;
  wire   n5, n6, n7, n1;

  INVX2 U1 ( .A(n5), .Y(y[2]) );
  INVX2 U2 ( .A(n6), .Y(y[1]) );
  INVX2 U3 ( .A(n7), .Y(y[0]) );
  AOI22X1 U5 ( .A(d0[2]), .B(n1), .C(s), .D(d1[2]), .Y(n5) );
  AOI22X1 U6 ( .A(d0[1]), .B(n1), .C(d1[1]), .D(s), .Y(n6) );
  AOI22X1 U7 ( .A(d0[0]), .B(n1), .C(d1[0]), .D(s), .Y(n7) );
  INVX2 U4 ( .A(s), .Y(n1) );
endmodule


module flopen_3 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13, n14, n15, n16,
         n17;

  DFFPOSX1 q_reg_7_ ( .D(n2), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(n10), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(n11), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(n12), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(n13), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(n14), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(n15), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(n16), .CLK(clk), .Q(q[0]) );
  AOI22X1 U3 ( .A(en), .B(d[0]), .C(q[0]), .D(n17), .Y(n1) );
  AOI22X1 U5 ( .A(d[1]), .B(en), .C(q[1]), .D(n17), .Y(n3) );
  AOI22X1 U7 ( .A(d[2]), .B(en), .C(q[2]), .D(n17), .Y(n4) );
  AOI22X1 U9 ( .A(d[3]), .B(en), .C(q[3]), .D(n17), .Y(n5) );
  AOI22X1 U11 ( .A(d[4]), .B(en), .C(q[4]), .D(n17), .Y(n6) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n17), .Y(n7) );
  AOI22X1 U15 ( .A(d[6]), .B(en), .C(q[6]), .D(n17), .Y(n8) );
  AOI22X1 U17 ( .A(d[7]), .B(en), .C(q[7]), .D(n17), .Y(n9) );
  INVX2 U2 ( .A(n9), .Y(n2) );
  INVX2 U4 ( .A(n8), .Y(n10) );
  INVX2 U6 ( .A(n7), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n5), .Y(n13) );
  INVX2 U12 ( .A(n4), .Y(n14) );
  INVX2 U14 ( .A(n3), .Y(n15) );
  INVX2 U16 ( .A(n1), .Y(n16) );
  INVX2 U18 ( .A(en), .Y(n17) );
endmodule


module flopen_2 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25;

  DFFPOSX1 q_reg_7_ ( .D(n2), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(n10), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(n11), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(n12), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(n13), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(n14), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(n15), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(n16), .CLK(clk), .Q(q[0]) );
  AOI22X1 U3 ( .A(en), .B(d[0]), .C(q[0]), .D(n17), .Y(n25) );
  AOI22X1 U5 ( .A(d[1]), .B(en), .C(q[1]), .D(n17), .Y(n24) );
  AOI22X1 U7 ( .A(d[2]), .B(en), .C(q[2]), .D(n17), .Y(n23) );
  AOI22X1 U9 ( .A(d[3]), .B(en), .C(q[3]), .D(n17), .Y(n22) );
  AOI22X1 U11 ( .A(d[4]), .B(en), .C(q[4]), .D(n17), .Y(n21) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n17), .Y(n20) );
  AOI22X1 U15 ( .A(d[6]), .B(en), .C(q[6]), .D(n17), .Y(n19) );
  AOI22X1 U17 ( .A(d[7]), .B(en), .C(q[7]), .D(n17), .Y(n18) );
  INVX2 U2 ( .A(n18), .Y(n2) );
  INVX2 U4 ( .A(n19), .Y(n10) );
  INVX2 U6 ( .A(n20), .Y(n11) );
  INVX2 U8 ( .A(n21), .Y(n12) );
  INVX2 U10 ( .A(n22), .Y(n13) );
  INVX2 U12 ( .A(n23), .Y(n14) );
  INVX2 U14 ( .A(n24), .Y(n15) );
  INVX2 U16 ( .A(n25), .Y(n16) );
  INVX2 U18 ( .A(en), .Y(n17) );
endmodule


module flopen_1 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 q_reg_7_ ( .D(n11), .CLK(n2), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(n12), .CLK(n2), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(n13), .CLK(n2), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(n14), .CLK(n2), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(n15), .CLK(n2), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(n16), .CLK(n2), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(n17), .CLK(n2), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(n18), .CLK(n2), .Q(q[0]) );
  AOI22X1 U3 ( .A(en), .B(d[0]), .C(q[0]), .D(n19), .Y(n27) );
  AOI22X1 U5 ( .A(d[1]), .B(en), .C(q[1]), .D(n19), .Y(n26) );
  AOI22X1 U7 ( .A(d[2]), .B(en), .C(q[2]), .D(n19), .Y(n25) );
  AOI22X1 U9 ( .A(d[3]), .B(en), .C(q[3]), .D(n19), .Y(n24) );
  AOI22X1 U11 ( .A(d[4]), .B(en), .C(q[4]), .D(n19), .Y(n23) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n19), .Y(n22) );
  AOI22X1 U15 ( .A(d[6]), .B(en), .C(q[6]), .D(n19), .Y(n21) );
  AOI22X1 U17 ( .A(d[7]), .B(en), .C(q[7]), .D(n19), .Y(n20) );
  INVX2 U2 ( .A(n10), .Y(n2) );
  INVX2 U4 ( .A(clk), .Y(n10) );
  INVX2 U6 ( .A(n20), .Y(n11) );
  INVX2 U8 ( .A(n21), .Y(n12) );
  INVX2 U10 ( .A(n22), .Y(n13) );
  INVX2 U12 ( .A(n23), .Y(n14) );
  INVX2 U14 ( .A(n24), .Y(n15) );
  INVX2 U16 ( .A(n25), .Y(n16) );
  INVX2 U18 ( .A(n26), .Y(n17) );
  INVX2 U19 ( .A(n27), .Y(n18) );
  INVX2 U20 ( .A(en), .Y(n19) );
endmodule


module flopen_0 ( clk, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, en;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25;

  DFFPOSX1 q_reg_7_ ( .D(n2), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(n10), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(n11), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(n12), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(n13), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(n14), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(n15), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(n16), .CLK(clk), .Q(q[0]) );
  AOI22X1 U3 ( .A(en), .B(d[0]), .C(q[0]), .D(n17), .Y(n25) );
  AOI22X1 U5 ( .A(d[1]), .B(en), .C(q[1]), .D(n17), .Y(n24) );
  AOI22X1 U7 ( .A(d[2]), .B(en), .C(q[2]), .D(n17), .Y(n23) );
  AOI22X1 U9 ( .A(d[3]), .B(en), .C(q[3]), .D(n17), .Y(n22) );
  AOI22X1 U11 ( .A(d[4]), .B(en), .C(q[4]), .D(n17), .Y(n21) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n17), .Y(n20) );
  AOI22X1 U15 ( .A(d[6]), .B(en), .C(q[6]), .D(n17), .Y(n19) );
  AOI22X1 U17 ( .A(d[7]), .B(en), .C(q[7]), .D(n17), .Y(n18) );
  INVX2 U2 ( .A(n18), .Y(n2) );
  INVX2 U4 ( .A(n19), .Y(n10) );
  INVX2 U6 ( .A(n20), .Y(n11) );
  INVX2 U8 ( .A(n21), .Y(n12) );
  INVX2 U10 ( .A(n22), .Y(n13) );
  INVX2 U12 ( .A(n23), .Y(n14) );
  INVX2 U14 ( .A(n24), .Y(n15) );
  INVX2 U16 ( .A(n25), .Y(n16) );
  INVX2 U18 ( .A(en), .Y(n17) );
endmodule


module flopenr ( clk, reset, en, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk, reset, en;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n1, n2, n3, n4, n5,
         n6, n7, n8, n9;

  DFFPOSX1 q_reg_7_ ( .D(n2), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(n3), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(n4), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(n5), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(n6), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(n7), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(n8), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(n1), .CLK(clk), .Q(q[0]) );
  AOI22X1 U12 ( .A(d[0]), .B(n11), .C(q[0]), .D(n12), .Y(n10) );
  AOI22X1 U13 ( .A(d[1]), .B(n11), .C(q[1]), .D(n12), .Y(n13) );
  AOI22X1 U14 ( .A(d[2]), .B(n11), .C(q[2]), .D(n12), .Y(n14) );
  AOI22X1 U15 ( .A(d[3]), .B(n11), .C(q[3]), .D(n12), .Y(n15) );
  AOI22X1 U16 ( .A(d[4]), .B(n11), .C(q[4]), .D(n12), .Y(n16) );
  AOI22X1 U17 ( .A(d[5]), .B(n11), .C(q[5]), .D(n12), .Y(n17) );
  AOI22X1 U18 ( .A(d[6]), .B(n11), .C(q[6]), .D(n12), .Y(n18) );
  AOI22X1 U19 ( .A(d[7]), .B(n11), .C(q[7]), .D(n12), .Y(n19) );
  NOR2X1 U20 ( .A(reset), .B(n11), .Y(n12) );
  NOR2X1 U21 ( .A(n9), .B(reset), .Y(n11) );
  INVX2 U3 ( .A(n10), .Y(n1) );
  INVX2 U4 ( .A(n19), .Y(n2) );
  INVX2 U5 ( .A(n18), .Y(n3) );
  INVX2 U6 ( .A(n17), .Y(n4) );
  INVX2 U7 ( .A(n16), .Y(n5) );
  INVX2 U8 ( .A(n15), .Y(n6) );
  INVX2 U9 ( .A(n14), .Y(n7) );
  INVX2 U10 ( .A(n13), .Y(n8) );
  INVX2 U11 ( .A(en), .Y(n9) );
endmodule


module flop_3 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;


  DFFPOSX1 q_reg_7_ ( .D(d[7]), .CLK(clk), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(d[6]), .CLK(clk), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(d[5]), .CLK(clk), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(d[4]), .CLK(clk), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(d[3]), .CLK(clk), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(d[2]), .CLK(clk), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(d[1]), .CLK(clk), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(d[0]), .CLK(clk), .Q(q[0]) );
endmodule


module flop_2 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;
  wire   n1, n2;

  DFFPOSX1 q_reg_7_ ( .D(d[7]), .CLK(n1), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(d[6]), .CLK(n1), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(d[5]), .CLK(n1), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(d[4]), .CLK(n1), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(d[3]), .CLK(n1), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(d[2]), .CLK(n1), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(d[1]), .CLK(n1), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(d[0]), .CLK(n1), .Q(q[0]) );
  INVX2 U3 ( .A(n2), .Y(n1) );
  INVX2 U4 ( .A(clk), .Y(n2) );
endmodule


module flop_1 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;
  wire   n1, n2;

  DFFPOSX1 q_reg_7_ ( .D(d[7]), .CLK(n1), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(d[6]), .CLK(n1), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(d[5]), .CLK(n1), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(d[4]), .CLK(n1), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(d[3]), .CLK(n1), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(d[2]), .CLK(n1), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(d[1]), .CLK(n1), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(d[0]), .CLK(n1), .Q(q[0]) );
  INVX2 U3 ( .A(n2), .Y(n1) );
  INVX2 U4 ( .A(clk), .Y(n2) );
endmodule


module flop_0 ( clk, d, q );
  input [7:0] d;
  output [7:0] q;
  input clk;
  wire   n1, n2;

  DFFPOSX1 q_reg_7_ ( .D(d[7]), .CLK(n1), .Q(q[7]) );
  DFFPOSX1 q_reg_6_ ( .D(d[6]), .CLK(n1), .Q(q[6]) );
  DFFPOSX1 q_reg_5_ ( .D(d[5]), .CLK(n1), .Q(q[5]) );
  DFFPOSX1 q_reg_4_ ( .D(d[4]), .CLK(n1), .Q(q[4]) );
  DFFPOSX1 q_reg_3_ ( .D(d[3]), .CLK(n1), .Q(q[3]) );
  DFFPOSX1 q_reg_2_ ( .D(d[2]), .CLK(n1), .Q(q[2]) );
  DFFPOSX1 q_reg_1_ ( .D(d[1]), .CLK(n1), .Q(q[1]) );
  DFFPOSX1 q_reg_0_ ( .D(d[0]), .CLK(n1), .Q(q[0]) );
  INVX2 U3 ( .A(n2), .Y(n1) );
  INVX2 U4 ( .A(clk), .Y(n2) );
endmodule


module mux2_2 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n1;

  INVX2 U1 ( .A(n10), .Y(y[7]) );
  INVX2 U2 ( .A(n11), .Y(y[6]) );
  INVX2 U3 ( .A(n12), .Y(y[5]) );
  INVX2 U4 ( .A(n13), .Y(y[4]) );
  INVX2 U5 ( .A(n14), .Y(y[3]) );
  INVX2 U6 ( .A(n15), .Y(y[2]) );
  INVX2 U7 ( .A(n16), .Y(y[1]) );
  INVX2 U8 ( .A(n17), .Y(y[0]) );
  AOI22X1 U10 ( .A(d0[7]), .B(n1), .C(s), .D(d1[7]), .Y(n10) );
  AOI22X1 U11 ( .A(d0[6]), .B(n1), .C(d1[6]), .D(s), .Y(n11) );
  AOI22X1 U12 ( .A(d0[5]), .B(n1), .C(d1[5]), .D(s), .Y(n12) );
  AOI22X1 U13 ( .A(d0[4]), .B(n1), .C(d1[4]), .D(s), .Y(n13) );
  AOI22X1 U14 ( .A(d0[3]), .B(n1), .C(d1[3]), .D(s), .Y(n14) );
  AOI22X1 U15 ( .A(d0[2]), .B(n1), .C(d1[2]), .D(s), .Y(n15) );
  AOI22X1 U16 ( .A(d0[1]), .B(n1), .C(d1[1]), .D(s), .Y(n16) );
  AOI22X1 U17 ( .A(d0[0]), .B(n1), .C(d1[0]), .D(s), .Y(n17) );
  INVX2 U9 ( .A(s), .Y(n1) );
endmodule


module mux2_1 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  INVX2 U1 ( .A(n9), .Y(y[7]) );
  INVX2 U2 ( .A(n8), .Y(y[6]) );
  INVX2 U3 ( .A(n7), .Y(y[5]) );
  INVX2 U4 ( .A(n6), .Y(y[4]) );
  INVX2 U5 ( .A(n5), .Y(y[3]) );
  INVX2 U6 ( .A(n4), .Y(y[2]) );
  INVX2 U7 ( .A(n3), .Y(y[1]) );
  INVX2 U8 ( .A(n2), .Y(y[0]) );
  AOI22X1 U10 ( .A(d0[7]), .B(n1), .C(s), .D(d1[7]), .Y(n9) );
  AOI22X1 U11 ( .A(d0[6]), .B(n1), .C(d1[6]), .D(s), .Y(n8) );
  AOI22X1 U12 ( .A(d0[5]), .B(n1), .C(d1[5]), .D(s), .Y(n7) );
  AOI22X1 U13 ( .A(d0[4]), .B(n1), .C(d1[4]), .D(s), .Y(n6) );
  AOI22X1 U14 ( .A(d0[3]), .B(n1), .C(d1[3]), .D(s), .Y(n5) );
  AOI22X1 U15 ( .A(d0[2]), .B(n1), .C(d1[2]), .D(s), .Y(n4) );
  AOI22X1 U16 ( .A(d0[1]), .B(n1), .C(d1[1]), .D(s), .Y(n3) );
  AOI22X1 U17 ( .A(d0[0]), .B(n1), .C(d1[0]), .D(s), .Y(n2) );
  INVX2 U9 ( .A(s), .Y(n1) );
endmodule


module mux4_1 ( d0, d1, d2, d3, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input [1:0] s;
  output [7:0] y;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n1;

  AND2X2 U1 ( .A(s[1]), .B(n1), .Y(n5) );
  AND2X2 U2 ( .A(s[1]), .B(s[0]), .Y(n4) );
  NAND2X1 U4 ( .A(n2), .B(n3), .Y(y[7]) );
  AOI22X1 U5 ( .A(d3[7]), .B(n4), .C(d2[7]), .D(n5), .Y(n3) );
  AOI22X1 U6 ( .A(d1[7]), .B(n6), .C(d0[7]), .D(n7), .Y(n2) );
  NAND2X1 U7 ( .A(n8), .B(n9), .Y(y[6]) );
  AOI22X1 U8 ( .A(d3[6]), .B(n4), .C(d2[6]), .D(n5), .Y(n9) );
  AOI22X1 U9 ( .A(d1[6]), .B(n6), .C(d0[6]), .D(n7), .Y(n8) );
  NAND2X1 U10 ( .A(n10), .B(n11), .Y(y[5]) );
  AOI22X1 U11 ( .A(d3[5]), .B(n4), .C(d2[5]), .D(n5), .Y(n11) );
  AOI22X1 U12 ( .A(d1[5]), .B(n6), .C(d0[5]), .D(n7), .Y(n10) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Y(y[4]) );
  AOI22X1 U14 ( .A(d3[4]), .B(n4), .C(d2[4]), .D(n5), .Y(n13) );
  AOI22X1 U15 ( .A(d1[4]), .B(n6), .C(d0[4]), .D(n7), .Y(n12) );
  NAND2X1 U16 ( .A(n14), .B(n15), .Y(y[3]) );
  AOI22X1 U17 ( .A(d3[3]), .B(n4), .C(d2[3]), .D(n5), .Y(n15) );
  AOI22X1 U18 ( .A(d1[3]), .B(n6), .C(d0[3]), .D(n7), .Y(n14) );
  NAND2X1 U19 ( .A(n16), .B(n17), .Y(y[2]) );
  AOI22X1 U20 ( .A(d3[2]), .B(n4), .C(d2[2]), .D(n5), .Y(n17) );
  AOI22X1 U21 ( .A(d1[2]), .B(n6), .C(d0[2]), .D(n7), .Y(n16) );
  NAND2X1 U22 ( .A(n18), .B(n19), .Y(y[1]) );
  AOI22X1 U23 ( .A(d3[1]), .B(n4), .C(d2[1]), .D(n5), .Y(n19) );
  AOI22X1 U24 ( .A(d1[1]), .B(n6), .C(d0[1]), .D(n7), .Y(n18) );
  NAND2X1 U25 ( .A(n20), .B(n21), .Y(y[0]) );
  AOI22X1 U26 ( .A(d3[0]), .B(n4), .C(d2[0]), .D(n5), .Y(n21) );
  AOI22X1 U27 ( .A(d1[0]), .B(n6), .C(d0[0]), .D(n7), .Y(n20) );
  NOR2X1 U28 ( .A(s[0]), .B(s[1]), .Y(n7) );
  NOR2X1 U29 ( .A(n1), .B(s[1]), .Y(n6) );
  INVX2 U3 ( .A(s[0]), .Y(n1) );
endmodule


module mux4_0 ( d0, d1, d2, d3, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input [1:0] s;
  output [7:0] y;
  wire   n1, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41;

  AND2X2 U1 ( .A(s[1]), .B(n1), .Y(n38) );
  AND2X2 U2 ( .A(s[1]), .B(s[0]), .Y(n39) );
  NAND2X1 U4 ( .A(n41), .B(n40), .Y(y[7]) );
  AOI22X1 U5 ( .A(d3[7]), .B(n39), .C(d2[7]), .D(n38), .Y(n40) );
  AOI22X1 U6 ( .A(d1[7]), .B(n37), .C(d0[7]), .D(n36), .Y(n41) );
  NAND2X1 U7 ( .A(n35), .B(n34), .Y(y[6]) );
  AOI22X1 U8 ( .A(d3[6]), .B(n39), .C(d2[6]), .D(n38), .Y(n34) );
  AOI22X1 U9 ( .A(d1[6]), .B(n37), .C(d0[6]), .D(n36), .Y(n35) );
  NAND2X1 U10 ( .A(n33), .B(n32), .Y(y[5]) );
  AOI22X1 U11 ( .A(d3[5]), .B(n39), .C(d2[5]), .D(n38), .Y(n32) );
  AOI22X1 U12 ( .A(d1[5]), .B(n37), .C(d0[5]), .D(n36), .Y(n33) );
  NAND2X1 U13 ( .A(n31), .B(n30), .Y(y[4]) );
  AOI22X1 U14 ( .A(d3[4]), .B(n39), .C(d2[4]), .D(n38), .Y(n30) );
  AOI22X1 U15 ( .A(d1[4]), .B(n37), .C(d0[4]), .D(n36), .Y(n31) );
  NAND2X1 U16 ( .A(n29), .B(n28), .Y(y[3]) );
  AOI22X1 U17 ( .A(d3[3]), .B(n39), .C(d2[3]), .D(n38), .Y(n28) );
  AOI22X1 U18 ( .A(d1[3]), .B(n37), .C(d0[3]), .D(n36), .Y(n29) );
  NAND2X1 U19 ( .A(n27), .B(n26), .Y(y[2]) );
  AOI22X1 U20 ( .A(d3[2]), .B(n39), .C(d2[2]), .D(n38), .Y(n26) );
  AOI22X1 U21 ( .A(d1[2]), .B(n37), .C(d0[2]), .D(n36), .Y(n27) );
  NAND2X1 U22 ( .A(n25), .B(n24), .Y(y[1]) );
  AOI22X1 U23 ( .A(d3[1]), .B(n39), .C(d2[1]), .D(n38), .Y(n24) );
  AOI22X1 U24 ( .A(d1[1]), .B(n37), .C(d0[1]), .D(n36), .Y(n25) );
  NAND2X1 U25 ( .A(n23), .B(n22), .Y(y[0]) );
  AOI22X1 U26 ( .A(d3[0]), .B(n39), .C(d2[0]), .D(n38), .Y(n22) );
  AOI22X1 U27 ( .A(d1[0]), .B(n37), .C(d0[0]), .D(n36), .Y(n23) );
  NOR2X1 U28 ( .A(s[0]), .B(s[1]), .Y(n36) );
  NOR2X1 U29 ( .A(n1), .B(s[1]), .Y(n37) );
  INVX2 U3 ( .A(s[0]), .Y(n1) );
endmodule


module mux2_0 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  INVX2 U1 ( .A(n9), .Y(y[7]) );
  INVX2 U2 ( .A(n8), .Y(y[6]) );
  INVX2 U3 ( .A(n7), .Y(y[5]) );
  INVX2 U4 ( .A(n6), .Y(y[4]) );
  INVX2 U5 ( .A(n5), .Y(y[3]) );
  INVX2 U6 ( .A(n4), .Y(y[2]) );
  INVX2 U7 ( .A(n3), .Y(y[1]) );
  INVX2 U8 ( .A(n2), .Y(y[0]) );
  AOI22X1 U10 ( .A(d0[7]), .B(n1), .C(s), .D(d1[7]), .Y(n9) );
  AOI22X1 U11 ( .A(d0[6]), .B(n1), .C(d1[6]), .D(s), .Y(n8) );
  AOI22X1 U12 ( .A(d0[5]), .B(n1), .C(d1[5]), .D(s), .Y(n7) );
  AOI22X1 U13 ( .A(d0[4]), .B(n1), .C(d1[4]), .D(s), .Y(n6) );
  AOI22X1 U14 ( .A(d0[3]), .B(n1), .C(d1[3]), .D(s), .Y(n5) );
  AOI22X1 U15 ( .A(d0[2]), .B(n1), .C(d1[2]), .D(s), .Y(n4) );
  AOI22X1 U16 ( .A(d0[1]), .B(n1), .C(d1[1]), .D(s), .Y(n3) );
  AOI22X1 U17 ( .A(d0[0]), .B(n1), .C(d1[0]), .D(s), .Y(n2) );
  INVX2 U9 ( .A(s), .Y(n1) );
endmodule


module regfile ( clk, regwrite, ra1, ra2, wa, wd, rd1, rd2 );
  input [2:0] ra1;
  input [2:0] ra2;
  input [2:0] wa;
  input [7:0] wd;
  output [7:0] rd1;
  output [7:0] rd2;
  input clk, regwrite;
  wire   n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n118, n119, n120;
  wire   [31:0] REGS;

  DFFPOSX1 REGS_reg_4__7_ ( .D(n11), .CLK(clk), .Q(REGS[31]) );
  DFFPOSX1 REGS_reg_4__6_ ( .D(n15), .CLK(clk), .Q(REGS[30]) );
  DFFPOSX1 REGS_reg_4__5_ ( .D(n19), .CLK(clk), .Q(REGS[29]) );
  DFFPOSX1 REGS_reg_4__4_ ( .D(n23), .CLK(clk), .Q(REGS[28]) );
  DFFPOSX1 REGS_reg_4__3_ ( .D(n27), .CLK(clk), .Q(REGS[27]) );
  DFFPOSX1 REGS_reg_4__2_ ( .D(n31), .CLK(clk), .Q(REGS[26]) );
  DFFPOSX1 REGS_reg_4__1_ ( .D(n35), .CLK(n6), .Q(REGS[25]) );
  DFFPOSX1 REGS_reg_4__0_ ( .D(n39), .CLK(n6), .Q(REGS[24]) );
  DFFPOSX1 REGS_reg_3__7_ ( .D(n10), .CLK(n6), .Q(REGS[23]) );
  DFFPOSX1 REGS_reg_3__6_ ( .D(n14), .CLK(n6), .Q(REGS[22]) );
  DFFPOSX1 REGS_reg_3__5_ ( .D(n18), .CLK(n6), .Q(REGS[21]) );
  DFFPOSX1 REGS_reg_3__4_ ( .D(n22), .CLK(n6), .Q(REGS[20]) );
  DFFPOSX1 REGS_reg_3__3_ ( .D(n26), .CLK(n6), .Q(REGS[19]) );
  DFFPOSX1 REGS_reg_3__2_ ( .D(n30), .CLK(n6), .Q(REGS[18]) );
  DFFPOSX1 REGS_reg_3__1_ ( .D(n34), .CLK(n6), .Q(REGS[17]) );
  DFFPOSX1 REGS_reg_3__0_ ( .D(n38), .CLK(n6), .Q(REGS[16]) );
  DFFPOSX1 REGS_reg_2__7_ ( .D(n9), .CLK(n6), .Q(REGS[15]) );
  DFFPOSX1 REGS_reg_2__6_ ( .D(n13), .CLK(n6), .Q(REGS[14]) );
  DFFPOSX1 REGS_reg_2__5_ ( .D(n17), .CLK(n6), .Q(REGS[13]) );
  DFFPOSX1 REGS_reg_2__4_ ( .D(n21), .CLK(n5), .Q(REGS[12]) );
  DFFPOSX1 REGS_reg_2__3_ ( .D(n25), .CLK(n5), .Q(REGS[11]) );
  DFFPOSX1 REGS_reg_2__2_ ( .D(n29), .CLK(n5), .Q(REGS[10]) );
  DFFPOSX1 REGS_reg_2__1_ ( .D(n33), .CLK(n5), .Q(REGS[9]) );
  DFFPOSX1 REGS_reg_2__0_ ( .D(n37), .CLK(n5), .Q(REGS[8]) );
  DFFPOSX1 REGS_reg_1__7_ ( .D(n8), .CLK(n5), .Q(REGS[7]) );
  DFFPOSX1 REGS_reg_1__6_ ( .D(n12), .CLK(n5), .Q(REGS[6]) );
  DFFPOSX1 REGS_reg_1__5_ ( .D(n16), .CLK(n5), .Q(REGS[5]) );
  DFFPOSX1 REGS_reg_1__4_ ( .D(n20), .CLK(n5), .Q(REGS[4]) );
  DFFPOSX1 REGS_reg_1__3_ ( .D(n24), .CLK(n5), .Q(REGS[3]) );
  DFFPOSX1 REGS_reg_1__2_ ( .D(n28), .CLK(n5), .Q(REGS[2]) );
  DFFPOSX1 REGS_reg_1__1_ ( .D(n32), .CLK(n5), .Q(REGS[1]) );
  DFFPOSX1 REGS_reg_1__0_ ( .D(n36), .CLK(n5), .Q(REGS[0]) );
  AND2X2 U2 ( .A(ra2[1]), .B(n119), .Y(n45) );
  AND2X2 U3 ( .A(ra2[1]), .B(ra2[0]), .Y(n44) );
  AND2X2 U4 ( .A(ra1[1]), .B(n118), .Y(n64) );
  AND2X2 U5 ( .A(ra1[1]), .B(ra1[0]), .Y(n63) );
  NAND2X1 U47 ( .A(n42), .B(n43), .Y(rd2[7]) );
  AOI22X1 U48 ( .A(REGS[23]), .B(n44), .C(REGS[15]), .D(n45), .Y(n43) );
  AOI22X1 U49 ( .A(REGS[7]), .B(n46), .C(ra2[2]), .D(REGS[31]), .Y(n42) );
  NAND2X1 U50 ( .A(n47), .B(n48), .Y(rd2[6]) );
  AOI22X1 U51 ( .A(REGS[22]), .B(n44), .C(REGS[14]), .D(n45), .Y(n48) );
  AOI22X1 U52 ( .A(REGS[6]), .B(n46), .C(REGS[30]), .D(ra2[2]), .Y(n47) );
  NAND2X1 U53 ( .A(n49), .B(n50), .Y(rd2[5]) );
  AOI22X1 U54 ( .A(REGS[21]), .B(n44), .C(REGS[13]), .D(n45), .Y(n50) );
  AOI22X1 U55 ( .A(REGS[5]), .B(n46), .C(REGS[29]), .D(ra2[2]), .Y(n49) );
  NAND2X1 U56 ( .A(n51), .B(n52), .Y(rd2[4]) );
  AOI22X1 U57 ( .A(REGS[20]), .B(n44), .C(REGS[12]), .D(n45), .Y(n52) );
  AOI22X1 U58 ( .A(REGS[4]), .B(n46), .C(REGS[28]), .D(ra2[2]), .Y(n51) );
  NAND2X1 U59 ( .A(n53), .B(n54), .Y(rd2[3]) );
  AOI22X1 U60 ( .A(REGS[19]), .B(n44), .C(REGS[11]), .D(n45), .Y(n54) );
  AOI22X1 U61 ( .A(REGS[3]), .B(n46), .C(REGS[27]), .D(ra2[2]), .Y(n53) );
  NAND2X1 U62 ( .A(n55), .B(n56), .Y(rd2[2]) );
  AOI22X1 U63 ( .A(REGS[18]), .B(n44), .C(REGS[10]), .D(n45), .Y(n56) );
  AOI22X1 U64 ( .A(REGS[2]), .B(n46), .C(REGS[26]), .D(ra2[2]), .Y(n55) );
  NAND2X1 U65 ( .A(n57), .B(n58), .Y(rd2[1]) );
  AOI22X1 U66 ( .A(REGS[17]), .B(n44), .C(REGS[9]), .D(n45), .Y(n58) );
  AOI22X1 U67 ( .A(REGS[1]), .B(n46), .C(REGS[25]), .D(ra2[2]), .Y(n57) );
  NAND2X1 U68 ( .A(n59), .B(n60), .Y(rd2[0]) );
  AOI22X1 U69 ( .A(REGS[16]), .B(n44), .C(REGS[8]), .D(n45), .Y(n60) );
  AOI22X1 U70 ( .A(REGS[0]), .B(n46), .C(REGS[24]), .D(ra2[2]), .Y(n59) );
  NOR2X1 U71 ( .A(n119), .B(ra2[1]), .Y(n46) );
  NAND2X1 U72 ( .A(n61), .B(n62), .Y(rd1[7]) );
  AOI22X1 U73 ( .A(n63), .B(REGS[23]), .C(n64), .D(REGS[15]), .Y(n62) );
  AOI22X1 U74 ( .A(n65), .B(REGS[7]), .C(ra1[2]), .D(REGS[31]), .Y(n61) );
  NAND2X1 U75 ( .A(n66), .B(n67), .Y(rd1[6]) );
  AOI22X1 U76 ( .A(n63), .B(REGS[22]), .C(n64), .D(REGS[14]), .Y(n67) );
  AOI22X1 U77 ( .A(n65), .B(REGS[6]), .C(ra1[2]), .D(REGS[30]), .Y(n66) );
  NAND2X1 U78 ( .A(n68), .B(n69), .Y(rd1[5]) );
  AOI22X1 U79 ( .A(n63), .B(REGS[21]), .C(n64), .D(REGS[13]), .Y(n69) );
  AOI22X1 U80 ( .A(n65), .B(REGS[5]), .C(ra1[2]), .D(REGS[29]), .Y(n68) );
  NAND2X1 U81 ( .A(n70), .B(n71), .Y(rd1[4]) );
  AOI22X1 U82 ( .A(n63), .B(REGS[20]), .C(n64), .D(REGS[12]), .Y(n71) );
  AOI22X1 U83 ( .A(n65), .B(REGS[4]), .C(ra1[2]), .D(REGS[28]), .Y(n70) );
  NAND2X1 U84 ( .A(n72), .B(n73), .Y(rd1[3]) );
  AOI22X1 U85 ( .A(n63), .B(REGS[19]), .C(n64), .D(REGS[11]), .Y(n73) );
  AOI22X1 U86 ( .A(n65), .B(REGS[3]), .C(ra1[2]), .D(REGS[27]), .Y(n72) );
  NAND2X1 U87 ( .A(n74), .B(n75), .Y(rd1[2]) );
  AOI22X1 U88 ( .A(n63), .B(REGS[18]), .C(n64), .D(REGS[10]), .Y(n75) );
  AOI22X1 U89 ( .A(n65), .B(REGS[2]), .C(ra1[2]), .D(REGS[26]), .Y(n74) );
  NAND2X1 U90 ( .A(n76), .B(n77), .Y(rd1[1]) );
  AOI22X1 U91 ( .A(n63), .B(REGS[17]), .C(n64), .D(REGS[9]), .Y(n77) );
  AOI22X1 U92 ( .A(n65), .B(REGS[1]), .C(ra1[2]), .D(REGS[25]), .Y(n76) );
  NAND2X1 U93 ( .A(n78), .B(n79), .Y(rd1[0]) );
  AOI22X1 U94 ( .A(n63), .B(REGS[16]), .C(n64), .D(REGS[8]), .Y(n79) );
  AOI22X1 U95 ( .A(n65), .B(REGS[0]), .C(ra1[2]), .D(REGS[24]), .Y(n78) );
  NOR2X1 U96 ( .A(n118), .B(ra1[1]), .Y(n65) );
  AOI22X1 U97 ( .A(wd[0]), .B(n4), .C(n82), .D(REGS[0]), .Y(n81) );
  AOI22X1 U98 ( .A(wd[1]), .B(n4), .C(n82), .D(REGS[1]), .Y(n83) );
  AOI22X1 U99 ( .A(wd[2]), .B(n4), .C(n82), .D(REGS[2]), .Y(n84) );
  AOI22X1 U100 ( .A(wd[3]), .B(n4), .C(n82), .D(REGS[3]), .Y(n85) );
  AOI22X1 U101 ( .A(wd[4]), .B(n4), .C(n82), .D(REGS[4]), .Y(n86) );
  AOI22X1 U102 ( .A(wd[5]), .B(n4), .C(n82), .D(REGS[5]), .Y(n87) );
  AOI22X1 U103 ( .A(wd[6]), .B(n4), .C(n82), .D(REGS[6]), .Y(n88) );
  AOI22X1 U104 ( .A(wd[7]), .B(n4), .C(n82), .D(REGS[7]), .Y(n89) );
  NAND3X1 U105 ( .A(n80), .B(n40), .C(wa[0]), .Y(n82) );
  AOI22X1 U106 ( .A(wd[0]), .B(n3), .C(n91), .D(REGS[8]), .Y(n90) );
  AOI22X1 U107 ( .A(wd[1]), .B(n3), .C(n91), .D(REGS[9]), .Y(n92) );
  AOI22X1 U108 ( .A(wd[2]), .B(n3), .C(n91), .D(REGS[10]), .Y(n93) );
  AOI22X1 U109 ( .A(wd[3]), .B(n3), .C(n91), .D(REGS[11]), .Y(n94) );
  AOI22X1 U110 ( .A(wd[4]), .B(n3), .C(n91), .D(REGS[12]), .Y(n95) );
  AOI22X1 U111 ( .A(wd[5]), .B(n3), .C(n91), .D(REGS[13]), .Y(n96) );
  AOI22X1 U112 ( .A(wd[6]), .B(n3), .C(n91), .D(REGS[14]), .Y(n97) );
  AOI22X1 U113 ( .A(wd[7]), .B(n3), .C(n91), .D(REGS[15]), .Y(n98) );
  NAND3X1 U114 ( .A(n80), .B(n41), .C(wa[1]), .Y(n91) );
  AOI22X1 U115 ( .A(wd[0]), .B(n2), .C(n100), .D(REGS[16]), .Y(n99) );
  AOI22X1 U116 ( .A(wd[1]), .B(n2), .C(n100), .D(REGS[17]), .Y(n101) );
  AOI22X1 U117 ( .A(wd[2]), .B(n2), .C(n100), .D(REGS[18]), .Y(n102) );
  AOI22X1 U118 ( .A(wd[3]), .B(n2), .C(n100), .D(REGS[19]), .Y(n103) );
  AOI22X1 U119 ( .A(wd[4]), .B(n2), .C(n100), .D(REGS[20]), .Y(n104) );
  AOI22X1 U120 ( .A(wd[5]), .B(n2), .C(n100), .D(REGS[21]), .Y(n105) );
  AOI22X1 U121 ( .A(wd[6]), .B(n2), .C(n100), .D(REGS[22]), .Y(n106) );
  AOI22X1 U122 ( .A(wd[7]), .B(n2), .C(n100), .D(REGS[23]), .Y(n107) );
  NAND3X1 U123 ( .A(wa[0]), .B(n80), .C(wa[1]), .Y(n100) );
  NOR2X1 U124 ( .A(n120), .B(wa[2]), .Y(n80) );
  AOI22X1 U125 ( .A(wd[0]), .B(n1), .C(n109), .D(REGS[24]), .Y(n108) );
  AOI22X1 U126 ( .A(wd[1]), .B(n1), .C(n109), .D(REGS[25]), .Y(n110) );
  AOI22X1 U127 ( .A(wd[2]), .B(n1), .C(n109), .D(REGS[26]), .Y(n111) );
  AOI22X1 U128 ( .A(wd[3]), .B(n1), .C(n109), .D(REGS[27]), .Y(n112) );
  AOI22X1 U129 ( .A(wd[4]), .B(n1), .C(n109), .D(REGS[28]), .Y(n113) );
  AOI22X1 U130 ( .A(wd[5]), .B(n1), .C(n109), .D(REGS[29]), .Y(n114) );
  AOI22X1 U131 ( .A(wd[6]), .B(n1), .C(n109), .D(REGS[30]), .Y(n115) );
  AOI22X1 U132 ( .A(wd[7]), .B(n1), .C(n109), .D(REGS[31]), .Y(n116) );
  NAND3X1 U133 ( .A(wa[2]), .B(regwrite), .C(n117), .Y(n109) );
  NOR2X1 U134 ( .A(wa[1]), .B(wa[0]), .Y(n117) );
  INVX2 U6 ( .A(n7), .Y(n5) );
  INVX2 U7 ( .A(n7), .Y(n6) );
  INVX2 U8 ( .A(clk), .Y(n7) );
  INVX2 U9 ( .A(n82), .Y(n4) );
  INVX2 U10 ( .A(n91), .Y(n3) );
  INVX2 U11 ( .A(n100), .Y(n2) );
  INVX2 U12 ( .A(n109), .Y(n1) );
  INVX2 U13 ( .A(n89), .Y(n8) );
  INVX2 U14 ( .A(n98), .Y(n9) );
  INVX2 U15 ( .A(n107), .Y(n10) );
  INVX2 U16 ( .A(n116), .Y(n11) );
  INVX2 U17 ( .A(n88), .Y(n12) );
  INVX2 U18 ( .A(n97), .Y(n13) );
  INVX2 U19 ( .A(n106), .Y(n14) );
  INVX2 U20 ( .A(n115), .Y(n15) );
  INVX2 U21 ( .A(n87), .Y(n16) );
  INVX2 U22 ( .A(n96), .Y(n17) );
  INVX2 U23 ( .A(n105), .Y(n18) );
  INVX2 U24 ( .A(n114), .Y(n19) );
  INVX2 U25 ( .A(n86), .Y(n20) );
  INVX2 U26 ( .A(n95), .Y(n21) );
  INVX2 U27 ( .A(n104), .Y(n22) );
  INVX2 U28 ( .A(n113), .Y(n23) );
  INVX2 U29 ( .A(n85), .Y(n24) );
  INVX2 U30 ( .A(n94), .Y(n25) );
  INVX2 U31 ( .A(n103), .Y(n26) );
  INVX2 U32 ( .A(n112), .Y(n27) );
  INVX2 U33 ( .A(n84), .Y(n28) );
  INVX2 U34 ( .A(n93), .Y(n29) );
  INVX2 U35 ( .A(n102), .Y(n30) );
  INVX2 U36 ( .A(n111), .Y(n31) );
  INVX2 U37 ( .A(n83), .Y(n32) );
  INVX2 U38 ( .A(n92), .Y(n33) );
  INVX2 U39 ( .A(n101), .Y(n34) );
  INVX2 U40 ( .A(n110), .Y(n35) );
  INVX2 U41 ( .A(n81), .Y(n36) );
  INVX2 U42 ( .A(n90), .Y(n37) );
  INVX2 U43 ( .A(n99), .Y(n38) );
  INVX2 U44 ( .A(n108), .Y(n39) );
  INVX2 U45 ( .A(wa[1]), .Y(n40) );
  INVX2 U46 ( .A(wa[0]), .Y(n41) );
  INVX2 U135 ( .A(ra1[0]), .Y(n118) );
  INVX2 U136 ( .A(ra2[0]), .Y(n119) );
  INVX2 U137 ( .A(regwrite), .Y(n120) );
endmodule


module alu_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;

  wire   [7:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(carry[1]), .YC(carry[2]), .YS(SUM[1]) );
  FAX1 U1_0 ( .A(A[0]), .B(B[0]), .C(CI), .YC(carry[1]), .YS(SUM[0]) );
endmodule


module alu ( a, b, alucont, result );
  input [7:0] a;
  input [7:0] b;
  input [2:0] alucont;
  output [7:0] result;
  wire   n13, n14, n15, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n17;
  wire   [7:0] b2;
  wire   [7:0] sum;

  AND2X2 U2 ( .A(alucont[1]), .B(sum[7]), .Y(n32) );
  OAI21X1 U13 ( .A(n17), .B(n13), .C(n14), .Y(result[7]) );
  AOI22X1 U14 ( .A(sum[7]), .B(n15), .C(n1), .D(n16), .Y(n14) );
  OR2X1 U15 ( .A(a[7]), .B(b[7]), .Y(n16) );
  NAND2X1 U16 ( .A(a[7]), .B(n2), .Y(n13) );
  OAI21X1 U17 ( .A(n5), .B(n6), .C(n18), .Y(result[6]) );
  AOI22X1 U18 ( .A(b[6]), .B(n19), .C(sum[6]), .D(n15), .Y(n18) );
  OAI21X1 U19 ( .A(alucont[1]), .B(n6), .C(n5), .Y(n19) );
  OAI21X1 U20 ( .A(n5), .B(n7), .C(n20), .Y(result[5]) );
  AOI22X1 U21 ( .A(b[5]), .B(n21), .C(sum[5]), .D(n15), .Y(n20) );
  OAI21X1 U22 ( .A(alucont[1]), .B(n7), .C(n5), .Y(n21) );
  OAI21X1 U23 ( .A(n5), .B(n8), .C(n22), .Y(result[4]) );
  AOI22X1 U24 ( .A(b[4]), .B(n23), .C(sum[4]), .D(n15), .Y(n22) );
  OAI21X1 U25 ( .A(alucont[1]), .B(n8), .C(n5), .Y(n23) );
  OAI21X1 U26 ( .A(n5), .B(n9), .C(n24), .Y(result[3]) );
  AOI22X1 U27 ( .A(b[3]), .B(n25), .C(sum[3]), .D(n15), .Y(n24) );
  OAI21X1 U28 ( .A(alucont[1]), .B(n9), .C(n5), .Y(n25) );
  OAI21X1 U29 ( .A(n5), .B(n10), .C(n26), .Y(result[2]) );
  AOI22X1 U30 ( .A(b[2]), .B(n27), .C(sum[2]), .D(n15), .Y(n26) );
  OAI21X1 U31 ( .A(alucont[1]), .B(n10), .C(n5), .Y(n27) );
  OAI21X1 U32 ( .A(n5), .B(n11), .C(n28), .Y(result[1]) );
  AOI22X1 U33 ( .A(b[1]), .B(n29), .C(sum[1]), .D(n15), .Y(n28) );
  OAI21X1 U34 ( .A(alucont[1]), .B(n11), .C(n5), .Y(n29) );
  NAND2X1 U35 ( .A(n30), .B(n31), .Y(result[0]) );
  AOI22X1 U36 ( .A(n32), .B(alucont[0]), .C(b[0]), .D(n33), .Y(n31) );
  OAI21X1 U37 ( .A(alucont[1]), .B(n12), .C(n5), .Y(n33) );
  AOI22X1 U38 ( .A(sum[0]), .B(n15), .C(a[0]), .D(n1), .Y(n30) );
  NOR2X1 U40 ( .A(n2), .B(alucont[0]), .Y(n15) );
  XNOR2X1 U41 ( .A(n17), .B(n4), .Y(b2[7]) );
  XOR2X1 U42 ( .A(b[6]), .B(n4), .Y(b2[6]) );
  XOR2X1 U43 ( .A(b[5]), .B(n4), .Y(b2[5]) );
  XOR2X1 U44 ( .A(b[4]), .B(alucont[2]), .Y(b2[4]) );
  XOR2X1 U45 ( .A(b[3]), .B(alucont[2]), .Y(b2[3]) );
  XOR2X1 U46 ( .A(b[2]), .B(alucont[2]), .Y(b2[2]) );
  XOR2X1 U47 ( .A(b[1]), .B(alucont[2]), .Y(b2[1]) );
  XOR2X1 U48 ( .A(b[0]), .B(n4), .Y(b2[0]) );
  alu_DW01_add_0 add_1_root_add_12_2 ( .A(a), .B(b2), .CI(n4), .SUM(sum) );
  AND2X2 U3 ( .A(alucont[0]), .B(n2), .Y(n1) );
  INVX2 U4 ( .A(n3), .Y(n4) );
  INVX2 U5 ( .A(alucont[2]), .Y(n3) );
  INVX2 U6 ( .A(n1), .Y(n5) );
  INVX2 U7 ( .A(alucont[1]), .Y(n2) );
  INVX2 U8 ( .A(a[6]), .Y(n6) );
  INVX2 U9 ( .A(a[5]), .Y(n7) );
  INVX2 U10 ( .A(a[4]), .Y(n8) );
  INVX2 U11 ( .A(a[3]), .Y(n9) );
  INVX2 U12 ( .A(a[2]), .Y(n10) );
  INVX2 U39 ( .A(a[1]), .Y(n11) );
  INVX2 U49 ( .A(a[0]), .Y(n12) );
  INVX2 U50 ( .A(b[7]), .Y(n17) );
endmodule


module zerodetect ( a, y );
  input [7:0] a;
  output y;
  wire   n1, n2, n3, n4, n5, n6;

  NOR2X1 U1 ( .A(n1), .B(n2), .Y(y) );
  NAND2X1 U2 ( .A(n3), .B(n4), .Y(n2) );
  NOR2X1 U3 ( .A(a[3]), .B(a[2]), .Y(n4) );
  NOR2X1 U4 ( .A(a[1]), .B(a[0]), .Y(n3) );
  NAND2X1 U5 ( .A(n5), .B(n6), .Y(n1) );
  NOR2X1 U6 ( .A(a[7]), .B(a[6]), .Y(n6) );
  NOR2X1 U7 ( .A(a[5]), .B(a[4]), .Y(n5) );
endmodule


module datapath ( clk, reset, memdata, alusrca, memtoreg, iord, pcen, regwrite, 
        regdst, pcsource, alusrcb, irwrite, alucont, zero, instr, adr, 
        writedata );
  input [7:0] memdata;
  input [1:0] pcsource;
  input [1:0] alusrcb;
  input [3:0] irwrite;
  input [2:0] alucont;
  output [31:0] instr;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset, alusrca, memtoreg, iord, pcen, regwrite, regdst;
  output zero;
  wire   n1, n2, n3;
  wire   [2:0] wa;
  wire   [7:0] nextpc;
  wire   [7:0] pc;
  wire   [7:0] md;
  wire   [7:0] rd1;
  wire   [7:0] a;
  wire   [7:0] rd2;
  wire   [7:0] aluresult;
  wire   [7:0] aluout;
  wire   [7:0] src1;
  wire   [7:0] src2;
  wire   [7:0] wd;
  wire   [2:0] ra1;
  wire   [2:0] ra2;

  mux23 regmux ( .d0(instr[18:16]), .d1(instr[13:11]), .s(regdst), .y(wa) );
  flopen_3 ir0 ( .clk(n2), .en(irwrite[0]), .d(memdata), .q(instr[7:0]) );
  flopen_2 ir1 ( .clk(n3), .en(irwrite[1]), .d(memdata), .q(instr[15:8]) );
  flopen_1 ir2 ( .clk(n2), .en(irwrite[2]), .d(memdata), .q(instr[23:16]) );
  flopen_0 ir3 ( .clk(n2), .en(irwrite[3]), .d(memdata), .q(instr[31:24]) );
  flopenr pcreg ( .clk(n1), .reset(reset), .en(pcen), .d(nextpc), .q(pc) );
  flop_3 mdr ( .clk(n1), .d(memdata), .q(md) );
  flop_2 areg ( .clk(n1), .d(rd1), .q(a) );
  flop_1 wrd ( .clk(n3), .d(rd2), .q(writedata) );
  flop_0 res ( .clk(n3), .d(aluresult), .q(aluout) );
  mux2_2 adrmux ( .d0(pc), .d1(aluout), .s(iord), .y(adr) );
  mux2_1 src1mux ( .d0(pc), .d1(a), .s(alusrca), .y(src1) );
  mux4_1 src2mux ( .d0(writedata), .d1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1}), .d2(instr[7:0]), .d3({instr[5:0], 1'b0, 1'b0}), .s(
        alusrcb), .y(src2) );
  mux4_0 pcmux ( .d0(aluresult), .d1(aluout), .d2({instr[5:0], 1'b0, 1'b0}), 
        .d3({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s(pcsource), 
        .y(nextpc) );
  mux2_0 wdmux ( .d0(aluout), .d1(md), .s(memtoreg), .y(wd) );
  regfile rf ( .clk(n3), .regwrite(regwrite), .ra1({1'b0, 1'b0, 1'b0}), .ra2({
        1'b0, 1'b0, 1'b0}), .wa(wa), .wd(wd), .rd1(rd1), .rd2(rd2) );
  alu alunlt ( .a(src1), .b(src2), .alucont(alucont), .result(aluresult) );
  zerodetect zd ( .a(aluresult), .y(zero) );
  BUFX2 U3 ( .A(clk), .Y(n3) );
  BUFX2 U4 ( .A(clk), .Y(n1) );
  BUFX2 U5 ( .A(clk), .Y(n2) );
endmodule


module mips ( clk, reset, memdata, memread, memwrite, adr, writedata );
  input [7:0] memdata;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset;
  output memread, memwrite;
  wire   zero, alusrca, memtoreg, iord, regwrite, regdst, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20;
  wire   [31:0] instr;
  wire   [1:0] pcsource;
  wire   [1:0] alusrcb;
  wire   [1:0] aluop;
  wire   [3:0] irwrite;
  wire   [2:0] alucont;

  controller cont ( .clk(n19), .reset(n18), .op(instr[31:26]), .zero(zero), 
        .memread(memread), .memwrite(memwrite), .alusrca(alusrca), .memtoreg(
        memtoreg), .iord(iord), .regwrite(regwrite), .regdst(regdst), 
        .pcsource(pcsource), .alusrcb(alusrcb), .aluop(aluop), .irwrite(
        irwrite) );
  alucontrol ac ( .aluop(aluop), .funct(instr[5:0]), .alucont(alucont) );
  datapath dp ( .clk(n19), .reset(n18), .memdata({n16, n14, n12, n10, n8, n6, 
        n4, n2}), .alusrca(alusrca), .memtoreg(memtoreg), .iord(iord), .pcen(
        1'b0), .regwrite(regwrite), .regdst(regdst), .pcsource(pcsource), 
        .alusrcb(alusrcb), .irwrite(irwrite), .alucont(alucont), .zero(zero), 
        .instr({instr[31:26], SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, instr[5:0]}), .adr(
        adr), .writedata(writedata) );
  INVX2 U1 ( .A(memdata[0]), .Y(n1) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U3 ( .A(memdata[1]), .Y(n3) );
  INVX2 U4 ( .A(n3), .Y(n4) );
  INVX2 U5 ( .A(memdata[2]), .Y(n5) );
  INVX2 U6 ( .A(n5), .Y(n6) );
  INVX2 U7 ( .A(memdata[3]), .Y(n7) );
  INVX2 U8 ( .A(n7), .Y(n8) );
  INVX2 U9 ( .A(memdata[4]), .Y(n9) );
  INVX2 U10 ( .A(n9), .Y(n10) );
  INVX2 U11 ( .A(memdata[5]), .Y(n11) );
  INVX2 U12 ( .A(n11), .Y(n12) );
  INVX2 U13 ( .A(memdata[6]), .Y(n13) );
  INVX2 U14 ( .A(n13), .Y(n14) );
  INVX2 U15 ( .A(memdata[7]), .Y(n15) );
  INVX2 U16 ( .A(n15), .Y(n16) );
  INVX2 U17 ( .A(reset), .Y(n17) );
  INVX2 U18 ( .A(n17), .Y(n18) );
  INVX2 U19 ( .A(n20), .Y(n19) );
  INVX2 U20 ( .A(clk), .Y(n20) );
endmodule

