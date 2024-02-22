/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun May  8 16:15:13 2022
/////////////////////////////////////////////////////////////


module alucontrol ( aluop, funct, alucont );
  input [1:0] aluop;
  input [5:0] funct;
  output [2:0] alucont;
  wire   n8, n9, n10, n11, n12, n13, n14, n7, n15, n16, n17, n18, n19;

  INVX2 U3 ( .A(n13), .Y(alucont[0]) );
  OAI21X1 U10 ( .A(aluop[1]), .B(n19), .C(n8), .Y(alucont[2]) );
  OAI21X1 U11 ( .A(n9), .B(n10), .C(aluop[1]), .Y(n8) );
  OAI21X1 U12 ( .A(funct[2]), .B(n18), .C(n17), .Y(n10) );
  OAI21X1 U13 ( .A(n11), .B(n12), .C(aluop[1]), .Y(alucont[1]) );
  OAI21X1 U14 ( .A(funct[1]), .B(n15), .C(funct[5]), .Y(n12) );
  NAND3X1 U15 ( .A(n16), .B(n7), .C(n18), .Y(n11) );
  OAI21X1 U16 ( .A(n9), .B(n14), .C(aluop[1]), .Y(n13) );
  OAI21X1 U17 ( .A(n17), .B(n16), .C(n18), .Y(n14) );
  NAND3X1 U18 ( .A(n15), .B(n7), .C(funct[5]), .Y(n9) );
  INVX2 U4 ( .A(funct[4]), .Y(n7) );
  INVX2 U5 ( .A(funct[3]), .Y(n15) );
  INVX2 U6 ( .A(funct[2]), .Y(n16) );
  INVX2 U7 ( .A(funct[1]), .Y(n17) );
  INVX2 U8 ( .A(funct[0]), .Y(n18) );
  INVX2 U9 ( .A(aluop[0]), .Y(n19) );
endmodule


module mux23 ( d0, d1, s, y );
  input [2:0] d0;
  input [2:0] d1;
  output [2:0] y;
  input s;
  wire   n5, n6, n7, n2;

  INVX2 U1 ( .A(n5), .Y(y[2]) );
  INVX2 U2 ( .A(n6), .Y(y[1]) );
  INVX2 U3 ( .A(n7), .Y(y[0]) );
  AOI22X1 U5 ( .A(d0[2]), .B(n2), .C(s), .D(d1[2]), .Y(n5) );
  AOI22X1 U6 ( .A(d0[1]), .B(n2), .C(d1[1]), .D(s), .Y(n6) );
  AOI22X1 U7 ( .A(d0[0]), .B(n2), .C(d1[0]), .D(s), .Y(n7) );
  INVX2 U4 ( .A(s), .Y(n2) );
endmodule


module mux2_2 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n2;

  INVX2 U1 ( .A(n10), .Y(y[7]) );
  INVX2 U2 ( .A(n11), .Y(y[6]) );
  INVX2 U3 ( .A(n12), .Y(y[5]) );
  INVX2 U4 ( .A(n13), .Y(y[4]) );
  INVX2 U5 ( .A(n14), .Y(y[3]) );
  INVX2 U6 ( .A(n15), .Y(y[2]) );
  INVX2 U7 ( .A(n16), .Y(y[1]) );
  INVX2 U8 ( .A(n17), .Y(y[0]) );
  AOI22X1 U10 ( .A(d0[7]), .B(n2), .C(s), .D(d1[7]), .Y(n10) );
  AOI22X1 U11 ( .A(d0[6]), .B(n2), .C(d1[6]), .D(s), .Y(n11) );
  AOI22X1 U12 ( .A(d0[5]), .B(n2), .C(d1[5]), .D(s), .Y(n12) );
  AOI22X1 U13 ( .A(d0[4]), .B(n2), .C(d1[4]), .D(s), .Y(n13) );
  AOI22X1 U14 ( .A(d0[3]), .B(n2), .C(d1[3]), .D(s), .Y(n14) );
  AOI22X1 U15 ( .A(d0[2]), .B(n2), .C(d1[2]), .D(s), .Y(n15) );
  AOI22X1 U16 ( .A(d0[1]), .B(n2), .C(d1[1]), .D(s), .Y(n16) );
  AOI22X1 U17 ( .A(d0[0]), .B(n2), .C(d1[0]), .D(s), .Y(n17) );
  INVX2 U9 ( .A(s), .Y(n2) );
endmodule


module mux2_1 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18;

  INVX2 U1 ( .A(n10), .Y(y[7]) );
  INVX2 U2 ( .A(n11), .Y(y[6]) );
  INVX2 U3 ( .A(n12), .Y(y[5]) );
  INVX2 U4 ( .A(n13), .Y(y[4]) );
  INVX2 U5 ( .A(n14), .Y(y[3]) );
  INVX2 U6 ( .A(n15), .Y(y[2]) );
  INVX2 U7 ( .A(n16), .Y(y[1]) );
  INVX2 U8 ( .A(n17), .Y(y[0]) );
  AOI22X1 U10 ( .A(d0[7]), .B(n18), .C(s), .D(d1[7]), .Y(n10) );
  AOI22X1 U11 ( .A(d0[6]), .B(n18), .C(d1[6]), .D(s), .Y(n11) );
  AOI22X1 U12 ( .A(d0[5]), .B(n18), .C(d1[5]), .D(s), .Y(n12) );
  AOI22X1 U13 ( .A(d0[4]), .B(n18), .C(d1[4]), .D(s), .Y(n13) );
  AOI22X1 U14 ( .A(d0[3]), .B(n18), .C(d1[3]), .D(s), .Y(n14) );
  AOI22X1 U15 ( .A(d0[2]), .B(n18), .C(d1[2]), .D(s), .Y(n15) );
  AOI22X1 U16 ( .A(d0[1]), .B(n18), .C(d1[1]), .D(s), .Y(n16) );
  AOI22X1 U17 ( .A(d0[0]), .B(n18), .C(d1[0]), .D(s), .Y(n17) );
  INVX2 U9 ( .A(s), .Y(n18) );
endmodule


module mux4_1 ( d0, d1, d2, d3, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input [1:0] s;
  output [7:0] y;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;

  AND2X2 U1 ( .A(s[0]), .B(s[1]), .Y(n5) );
  AND2X2 U2 ( .A(s[1]), .B(n22), .Y(n4) );
  NAND2X1 U4 ( .A(n2), .B(n3), .Y(y[7]) );
  AOI22X1 U5 ( .A(d2[7]), .B(n4), .C(d3[7]), .D(n5), .Y(n3) );
  AOI22X1 U6 ( .A(d0[7]), .B(n6), .C(d1[7]), .D(n7), .Y(n2) );
  NAND2X1 U7 ( .A(n8), .B(n9), .Y(y[6]) );
  AOI22X1 U8 ( .A(d2[6]), .B(n4), .C(d3[6]), .D(n5), .Y(n9) );
  AOI22X1 U9 ( .A(d0[6]), .B(n6), .C(d1[6]), .D(n7), .Y(n8) );
  NAND2X1 U10 ( .A(n10), .B(n11), .Y(y[5]) );
  AOI22X1 U11 ( .A(d2[5]), .B(n4), .C(d3[5]), .D(n5), .Y(n11) );
  AOI22X1 U12 ( .A(d0[5]), .B(n6), .C(d1[5]), .D(n7), .Y(n10) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Y(y[4]) );
  AOI22X1 U14 ( .A(d2[4]), .B(n4), .C(d3[4]), .D(n5), .Y(n13) );
  AOI22X1 U15 ( .A(d0[4]), .B(n6), .C(d1[4]), .D(n7), .Y(n12) );
  NAND2X1 U16 ( .A(n14), .B(n15), .Y(y[3]) );
  AOI22X1 U17 ( .A(d2[3]), .B(n4), .C(d3[3]), .D(n5), .Y(n15) );
  AOI22X1 U18 ( .A(d0[3]), .B(n6), .C(d1[3]), .D(n7), .Y(n14) );
  NAND2X1 U19 ( .A(n16), .B(n17), .Y(y[2]) );
  AOI22X1 U20 ( .A(d2[2]), .B(n4), .C(d3[2]), .D(n5), .Y(n17) );
  AOI22X1 U21 ( .A(d0[2]), .B(n6), .C(d1[2]), .D(n7), .Y(n16) );
  NAND2X1 U22 ( .A(n18), .B(n19), .Y(y[1]) );
  AOI22X1 U23 ( .A(d2[1]), .B(n4), .C(d3[1]), .D(n5), .Y(n19) );
  AOI22X1 U24 ( .A(d0[1]), .B(n6), .C(d1[1]), .D(n7), .Y(n18) );
  NAND2X1 U25 ( .A(n20), .B(n21), .Y(y[0]) );
  AOI22X1 U26 ( .A(d2[0]), .B(n4), .C(d3[0]), .D(n5), .Y(n21) );
  AOI22X1 U27 ( .A(d0[0]), .B(n6), .C(d1[0]), .D(n7), .Y(n20) );
  NOR2X1 U28 ( .A(n22), .B(s[1]), .Y(n7) );
  NOR2X1 U29 ( .A(s[0]), .B(s[1]), .Y(n6) );
  INVX2 U3 ( .A(s[0]), .Y(n22) );
endmodule


module mux4_0 ( d0, d1, d2, d3, s, y );
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input [1:0] s;
  output [7:0] y;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n42;

  AND2X2 U1 ( .A(s[0]), .B(s[1]), .Y(n5) );
  AND2X2 U2 ( .A(s[1]), .B(n42), .Y(n4) );
  NAND2X1 U4 ( .A(n2), .B(n3), .Y(y[7]) );
  AOI22X1 U5 ( .A(d2[7]), .B(n4), .C(d3[7]), .D(n5), .Y(n3) );
  AOI22X1 U6 ( .A(d0[7]), .B(n6), .C(d1[7]), .D(n7), .Y(n2) );
  NAND2X1 U7 ( .A(n8), .B(n9), .Y(y[6]) );
  AOI22X1 U8 ( .A(d2[6]), .B(n4), .C(d3[6]), .D(n5), .Y(n9) );
  AOI22X1 U9 ( .A(d0[6]), .B(n6), .C(d1[6]), .D(n7), .Y(n8) );
  NAND2X1 U10 ( .A(n10), .B(n11), .Y(y[5]) );
  AOI22X1 U11 ( .A(d2[5]), .B(n4), .C(d3[5]), .D(n5), .Y(n11) );
  AOI22X1 U12 ( .A(d0[5]), .B(n6), .C(d1[5]), .D(n7), .Y(n10) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Y(y[4]) );
  AOI22X1 U14 ( .A(d2[4]), .B(n4), .C(d3[4]), .D(n5), .Y(n13) );
  AOI22X1 U15 ( .A(d0[4]), .B(n6), .C(d1[4]), .D(n7), .Y(n12) );
  NAND2X1 U16 ( .A(n14), .B(n15), .Y(y[3]) );
  AOI22X1 U17 ( .A(d2[3]), .B(n4), .C(d3[3]), .D(n5), .Y(n15) );
  AOI22X1 U18 ( .A(d0[3]), .B(n6), .C(d1[3]), .D(n7), .Y(n14) );
  NAND2X1 U19 ( .A(n16), .B(n17), .Y(y[2]) );
  AOI22X1 U20 ( .A(d2[2]), .B(n4), .C(d3[2]), .D(n5), .Y(n17) );
  AOI22X1 U21 ( .A(d0[2]), .B(n6), .C(d1[2]), .D(n7), .Y(n16) );
  NAND2X1 U22 ( .A(n18), .B(n19), .Y(y[1]) );
  AOI22X1 U23 ( .A(d2[1]), .B(n4), .C(d3[1]), .D(n5), .Y(n19) );
  AOI22X1 U24 ( .A(d0[1]), .B(n6), .C(d1[1]), .D(n7), .Y(n18) );
  NAND2X1 U25 ( .A(n20), .B(n21), .Y(y[0]) );
  AOI22X1 U26 ( .A(d2[0]), .B(n4), .C(d3[0]), .D(n5), .Y(n21) );
  AOI22X1 U27 ( .A(d0[0]), .B(n6), .C(d1[0]), .D(n7), .Y(n20) );
  NOR2X1 U28 ( .A(n42), .B(s[1]), .Y(n7) );
  NOR2X1 U29 ( .A(s[0]), .B(s[1]), .Y(n6) );
  INVX2 U3 ( .A(s[0]), .Y(n42) );
endmodule


module mux2_0 ( d0, d1, s, y );
  input [7:0] d0;
  input [7:0] d1;
  output [7:0] y;
  input s;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26;

  INVX2 U1 ( .A(n26), .Y(y[7]) );
  INVX2 U2 ( .A(n25), .Y(y[6]) );
  INVX2 U3 ( .A(n24), .Y(y[5]) );
  INVX2 U4 ( .A(n23), .Y(y[4]) );
  INVX2 U5 ( .A(n22), .Y(y[3]) );
  INVX2 U6 ( .A(n21), .Y(y[2]) );
  INVX2 U7 ( .A(n20), .Y(y[1]) );
  INVX2 U8 ( .A(n19), .Y(y[0]) );
  AOI22X1 U10 ( .A(d0[7]), .B(n18), .C(s), .D(d1[7]), .Y(n26) );
  AOI22X1 U11 ( .A(d0[6]), .B(n18), .C(d1[6]), .D(s), .Y(n25) );
  AOI22X1 U12 ( .A(d0[5]), .B(n18), .C(d1[5]), .D(s), .Y(n24) );
  AOI22X1 U13 ( .A(d0[4]), .B(n18), .C(d1[4]), .D(s), .Y(n23) );
  AOI22X1 U14 ( .A(d0[3]), .B(n18), .C(d1[3]), .D(s), .Y(n22) );
  AOI22X1 U15 ( .A(d0[2]), .B(n18), .C(d1[2]), .D(s), .Y(n21) );
  AOI22X1 U16 ( .A(d0[1]), .B(n18), .C(d1[1]), .D(s), .Y(n20) );
  AOI22X1 U17 ( .A(d0[0]), .B(n18), .C(d1[0]), .D(s), .Y(n19) );
  INVX2 U9 ( .A(s), .Y(n18) );
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
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n18, n19, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58;
  wire   [7:0] b2;
  wire   [7:0] sum;

  OAI21X1 U21 ( .A(n20), .B(n41), .C(n21), .Y(result[7]) );
  AOI22X1 U22 ( .A(b[7]), .B(n22), .C(n56), .D(a[7]), .Y(n21) );
  OAI21X1 U23 ( .A(alucont[1]), .B(n48), .C(n23), .Y(n22) );
  OAI21X1 U24 ( .A(n20), .B(n42), .C(n24), .Y(result[6]) );
  AOI22X1 U25 ( .A(b[6]), .B(n25), .C(a[6]), .D(n56), .Y(n24) );
  OAI21X1 U26 ( .A(alucont[1]), .B(n49), .C(n23), .Y(n25) );
  OAI21X1 U27 ( .A(n20), .B(n43), .C(n26), .Y(result[5]) );
  AOI22X1 U28 ( .A(b[5]), .B(n27), .C(a[5]), .D(n56), .Y(n26) );
  OAI21X1 U29 ( .A(alucont[1]), .B(n50), .C(n23), .Y(n27) );
  OAI21X1 U30 ( .A(n20), .B(n44), .C(n28), .Y(result[4]) );
  AOI22X1 U31 ( .A(b[4]), .B(n29), .C(a[4]), .D(n56), .Y(n28) );
  OAI21X1 U32 ( .A(alucont[1]), .B(n51), .C(n23), .Y(n29) );
  OAI21X1 U33 ( .A(n20), .B(n45), .C(n30), .Y(result[3]) );
  AOI22X1 U34 ( .A(b[3]), .B(n31), .C(a[3]), .D(n56), .Y(n30) );
  OAI21X1 U35 ( .A(alucont[1]), .B(n52), .C(n23), .Y(n31) );
  OAI21X1 U36 ( .A(n20), .B(n46), .C(n32), .Y(result[2]) );
  AOI22X1 U37 ( .A(b[2]), .B(n33), .C(a[2]), .D(n56), .Y(n32) );
  OAI21X1 U38 ( .A(alucont[1]), .B(n53), .C(n23), .Y(n33) );
  OAI21X1 U39 ( .A(n20), .B(n47), .C(n34), .Y(result[1]) );
  AOI22X1 U40 ( .A(b[1]), .B(n35), .C(a[1]), .D(n56), .Y(n34) );
  OAI21X1 U41 ( .A(alucont[1]), .B(n54), .C(n23), .Y(n35) );
  NAND2X1 U42 ( .A(n36), .B(n37), .Y(result[0]) );
  AOI22X1 U43 ( .A(n38), .B(sum[7]), .C(b[0]), .D(n39), .Y(n37) );
  OAI21X1 U44 ( .A(alucont[1]), .B(n55), .C(n23), .Y(n39) );
  NOR2X1 U45 ( .A(n58), .B(n18), .Y(n38) );
  AOI22X1 U46 ( .A(a[0]), .B(n56), .C(sum[0]), .D(n57), .Y(n36) );
  NAND2X1 U47 ( .A(alucont[1]), .B(n58), .Y(n20) );
  NAND2X1 U48 ( .A(alucont[0]), .B(n18), .Y(n23) );
  XOR2X1 U49 ( .A(b[7]), .B(n40), .Y(b2[7]) );
  XOR2X1 U50 ( .A(b[6]), .B(n40), .Y(b2[6]) );
  XOR2X1 U51 ( .A(b[5]), .B(n40), .Y(b2[5]) );
  XOR2X1 U52 ( .A(b[4]), .B(alucont[2]), .Y(b2[4]) );
  XOR2X1 U53 ( .A(b[3]), .B(alucont[2]), .Y(b2[3]) );
  XOR2X1 U54 ( .A(b[2]), .B(alucont[2]), .Y(b2[2]) );
  XOR2X1 U55 ( .A(b[1]), .B(alucont[2]), .Y(b2[1]) );
  XOR2X1 U56 ( .A(b[0]), .B(n40), .Y(b2[0]) );
  alu_DW01_add_0 add_1_root_add_12_2 ( .A(a), .B(b2), .CI(n40), .SUM(sum) );
  INVX2 U2 ( .A(n19), .Y(n40) );
  INVX2 U3 ( .A(alucont[2]), .Y(n19) );
  INVX2 U4 ( .A(alucont[1]), .Y(n18) );
  INVX2 U5 ( .A(sum[7]), .Y(n41) );
  INVX2 U6 ( .A(sum[6]), .Y(n42) );
  INVX2 U7 ( .A(sum[5]), .Y(n43) );
  INVX2 U8 ( .A(sum[4]), .Y(n44) );
  INVX2 U9 ( .A(sum[3]), .Y(n45) );
  INVX2 U10 ( .A(sum[2]), .Y(n46) );
  INVX2 U11 ( .A(sum[1]), .Y(n47) );
  INVX2 U12 ( .A(a[7]), .Y(n48) );
  INVX2 U13 ( .A(a[6]), .Y(n49) );
  INVX2 U14 ( .A(a[5]), .Y(n50) );
  INVX2 U15 ( .A(a[4]), .Y(n51) );
  INVX2 U16 ( .A(a[3]), .Y(n52) );
  INVX2 U17 ( .A(a[2]), .Y(n53) );
  INVX2 U18 ( .A(a[1]), .Y(n54) );
  INVX2 U19 ( .A(a[0]), .Y(n55) );
  INVX2 U20 ( .A(n23), .Y(n56) );
  INVX2 U57 ( .A(n20), .Y(n57) );
  INVX2 U58 ( .A(alucont[0]), .Y(n58) );
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


module flop_test_0 ( clk, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, test_si, test_se;


  DFFPOSX1_SCAN q_reg_7_ ( .D(d[7]), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(d[6]), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(d[5]), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(d[4]), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(d[3]), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(d[2]), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(d[1]), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(d[0]), .TI(test_si), .TE(test_se), .CLK(clk), 
        .Q(q[0]) );
endmodule


module flopen_test_0 ( clk, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, en, test_si, test_se;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n34, n35, n36, n37, n38, n39,
         n40, n41, n42;

  AOI22X1 U11 ( .A(en), .B(d[7]), .C(q[7]), .D(n42), .Y(n10) );
  AOI22X1 U12 ( .A(d[6]), .B(en), .C(q[6]), .D(n42), .Y(n11) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n42), .Y(n12) );
  AOI22X1 U14 ( .A(d[4]), .B(en), .C(q[4]), .D(n42), .Y(n13) );
  AOI22X1 U15 ( .A(d[3]), .B(en), .C(q[3]), .D(n42), .Y(n14) );
  AOI22X1 U16 ( .A(d[2]), .B(en), .C(q[2]), .D(n42), .Y(n15) );
  AOI22X1 U17 ( .A(d[1]), .B(en), .C(q[1]), .D(n42), .Y(n16) );
  AOI22X1 U18 ( .A(d[0]), .B(en), .C(q[0]), .D(n42), .Y(n17) );
  DFFPOSX1_SCAN q_reg_7_ ( .D(n34), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n35), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n36), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n37), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n38), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n39), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n40), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n41), .TI(test_si), .TE(test_se), .CLK(clk), .Q(
        q[0]) );
  INVX2 U26 ( .A(n10), .Y(n34) );
  INVX2 U27 ( .A(n11), .Y(n35) );
  INVX2 U28 ( .A(n12), .Y(n36) );
  INVX2 U29 ( .A(n13), .Y(n37) );
  INVX2 U30 ( .A(n14), .Y(n38) );
  INVX2 U31 ( .A(n15), .Y(n39) );
  INVX2 U32 ( .A(n16), .Y(n40) );
  INVX2 U33 ( .A(n17), .Y(n41) );
  INVX2 U34 ( .A(en), .Y(n42) );
endmodule


module flopen_test_1 ( clk, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, en, test_si, test_se;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n42, n43, n44, n45, n46, n47,
         n48, n49, n50;

  AOI22X1 U11 ( .A(en), .B(d[7]), .C(q[7]), .D(n50), .Y(n10) );
  AOI22X1 U12 ( .A(d[6]), .B(en), .C(q[6]), .D(n50), .Y(n11) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n50), .Y(n12) );
  AOI22X1 U14 ( .A(d[4]), .B(en), .C(q[4]), .D(n50), .Y(n13) );
  AOI22X1 U15 ( .A(d[3]), .B(en), .C(q[3]), .D(n50), .Y(n14) );
  AOI22X1 U16 ( .A(d[2]), .B(en), .C(q[2]), .D(n50), .Y(n15) );
  AOI22X1 U17 ( .A(d[1]), .B(en), .C(q[1]), .D(n50), .Y(n16) );
  AOI22X1 U18 ( .A(d[0]), .B(en), .C(q[0]), .D(n50), .Y(n17) );
  DFFPOSX1_SCAN q_reg_7_ ( .D(n42), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n43), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n44), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n45), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n46), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n47), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n48), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n49), .TI(test_si), .TE(test_se), .CLK(clk), .Q(
        q[0]) );
  INVX2 U26 ( .A(n10), .Y(n42) );
  INVX2 U27 ( .A(n11), .Y(n43) );
  INVX2 U28 ( .A(n12), .Y(n44) );
  INVX2 U29 ( .A(n13), .Y(n45) );
  INVX2 U30 ( .A(n14), .Y(n46) );
  INVX2 U31 ( .A(n15), .Y(n47) );
  INVX2 U32 ( .A(n16), .Y(n48) );
  INVX2 U33 ( .A(n17), .Y(n49) );
  INVX2 U34 ( .A(en), .Y(n50) );
endmodule


module flopen_test_2 ( clk, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, en, test_si, test_se;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n44, n45, n46, n47, n48, n49,
         n50, n51, n52;

  AOI22X1 U11 ( .A(en), .B(d[7]), .C(q[7]), .D(n52), .Y(n10) );
  AOI22X1 U12 ( .A(d[6]), .B(en), .C(q[6]), .D(n52), .Y(n11) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n52), .Y(n12) );
  AOI22X1 U14 ( .A(d[4]), .B(en), .C(q[4]), .D(n52), .Y(n13) );
  AOI22X1 U15 ( .A(d[3]), .B(en), .C(q[3]), .D(n52), .Y(n14) );
  AOI22X1 U16 ( .A(d[2]), .B(en), .C(q[2]), .D(n52), .Y(n15) );
  AOI22X1 U17 ( .A(d[1]), .B(en), .C(q[1]), .D(n52), .Y(n16) );
  AOI22X1 U18 ( .A(d[0]), .B(en), .C(q[0]), .D(n52), .Y(n17) );
  DFFPOSX1_SCAN q_reg_7_ ( .D(n44), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n45), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n46), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n47), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n48), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n49), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n50), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n51), .TI(test_si), .TE(test_se), .CLK(clk), .Q(
        q[0]) );
  INVX2 U26 ( .A(n10), .Y(n44) );
  INVX2 U27 ( .A(n11), .Y(n45) );
  INVX2 U28 ( .A(n12), .Y(n46) );
  INVX2 U29 ( .A(n13), .Y(n47) );
  INVX2 U30 ( .A(n14), .Y(n48) );
  INVX2 U31 ( .A(n15), .Y(n49) );
  INVX2 U32 ( .A(n16), .Y(n50) );
  INVX2 U33 ( .A(n17), .Y(n51) );
  INVX2 U34 ( .A(en), .Y(n52) );
endmodule


module flopen_test_3 ( clk, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, en, test_si, test_se;
  wire   n26, n27, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60;

  AOI22X1 U11 ( .A(en), .B(d[7]), .C(q[7]), .D(n52), .Y(n60) );
  AOI22X1 U12 ( .A(d[6]), .B(en), .C(q[6]), .D(n52), .Y(n59) );
  AOI22X1 U13 ( .A(d[5]), .B(en), .C(q[5]), .D(n52), .Y(n58) );
  AOI22X1 U14 ( .A(d[4]), .B(en), .C(q[4]), .D(n52), .Y(n57) );
  AOI22X1 U15 ( .A(d[3]), .B(en), .C(q[3]), .D(n52), .Y(n56) );
  AOI22X1 U16 ( .A(d[2]), .B(en), .C(q[2]), .D(n52), .Y(n55) );
  AOI22X1 U17 ( .A(d[1]), .B(en), .C(q[1]), .D(n52), .Y(n54) );
  AOI22X1 U18 ( .A(d[0]), .B(en), .C(q[0]), .D(n52), .Y(n53) );
  DFFPOSX1_SCAN q_reg_7_ ( .D(n44), .TI(q[6]), .TE(test_se), .CLK(n26), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n45), .TI(q[5]), .TE(test_se), .CLK(n26), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n46), .TI(q[4]), .TE(test_se), .CLK(n26), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n47), .TI(q[3]), .TE(test_se), .CLK(n26), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n48), .TI(q[2]), .TE(test_se), .CLK(n26), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n49), .TI(q[1]), .TE(test_se), .CLK(n26), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n50), .TI(q[0]), .TE(test_se), .CLK(n26), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n51), .TI(test_si), .TE(test_se), .CLK(n26), .Q(
        q[0]) );
  INVX2 U2 ( .A(n27), .Y(n26) );
  INVX2 U3 ( .A(clk), .Y(n27) );
  INVX2 U28 ( .A(n60), .Y(n44) );
  INVX2 U29 ( .A(n59), .Y(n45) );
  INVX2 U30 ( .A(n58), .Y(n46) );
  INVX2 U31 ( .A(n57), .Y(n47) );
  INVX2 U32 ( .A(n56), .Y(n48) );
  INVX2 U33 ( .A(n55), .Y(n49) );
  INVX2 U34 ( .A(n54), .Y(n50) );
  INVX2 U35 ( .A(n53), .Y(n51) );
  INVX2 U36 ( .A(en), .Y(n52) );
endmodule


module flop_test_1 ( clk, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, test_si, test_se;
  wire   n1, n2;

  DFFPOSX1_SCAN q_reg_7_ ( .D(d[7]), .TI(q[6]), .TE(test_se), .CLK(n1), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(d[6]), .TI(q[5]), .TE(test_se), .CLK(n1), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(d[5]), .TI(q[4]), .TE(test_se), .CLK(n1), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(d[4]), .TI(q[3]), .TE(test_se), .CLK(n1), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(d[3]), .TI(q[2]), .TE(test_se), .CLK(n1), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(d[2]), .TI(q[1]), .TE(test_se), .CLK(n1), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(d[1]), .TI(q[0]), .TE(test_se), .CLK(n1), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(d[0]), .TI(test_si), .TE(test_se), .CLK(n1), .Q(
        q[0]) );
  INVX2 U3 ( .A(n2), .Y(n1) );
  INVX2 U4 ( .A(clk), .Y(n2) );
endmodule


module flopenr_test_1 ( clk, reset, en, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, reset, en, test_si, test_se;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n38, n39,
         n40, n41, n42, n43, n44, n45, n46;

  AOI22X1 U12 ( .A(q[7]), .B(n11), .C(d[7]), .D(n12), .Y(n10) );
  AOI22X1 U13 ( .A(q[6]), .B(n11), .C(d[6]), .D(n12), .Y(n13) );
  AOI22X1 U14 ( .A(q[5]), .B(n11), .C(d[5]), .D(n12), .Y(n14) );
  AOI22X1 U15 ( .A(q[4]), .B(n11), .C(d[4]), .D(n12), .Y(n15) );
  AOI22X1 U16 ( .A(q[3]), .B(n11), .C(d[3]), .D(n12), .Y(n16) );
  AOI22X1 U17 ( .A(q[2]), .B(n11), .C(d[2]), .D(n12), .Y(n17) );
  AOI22X1 U18 ( .A(q[1]), .B(n11), .C(d[1]), .D(n12), .Y(n18) );
  AOI22X1 U19 ( .A(q[0]), .B(n11), .C(d[0]), .D(n12), .Y(n19) );
  NOR2X1 U20 ( .A(n12), .B(reset), .Y(n11) );
  NOR2X1 U21 ( .A(n46), .B(reset), .Y(n12) );
  DFFPOSX1_SCAN q_reg_7_ ( .D(n38), .TI(q[6]), .TE(test_se), .CLK(n20), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(n40), .TI(q[5]), .TE(test_se), .CLK(n20), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(n41), .TI(q[4]), .TE(test_se), .CLK(n20), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(n42), .TI(q[3]), .TE(test_se), .CLK(n20), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(n43), .TI(q[2]), .TE(test_se), .CLK(n20), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(n44), .TI(q[1]), .TE(test_se), .CLK(n20), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(n45), .TI(q[0]), .TE(test_se), .CLK(n20), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(n39), .TI(test_si), .TE(test_se), .CLK(n20), .Q(
        q[0]) );
  INVX2 U3 ( .A(n21), .Y(n20) );
  INVX2 U4 ( .A(clk), .Y(n21) );
  INVX2 U31 ( .A(n10), .Y(n38) );
  INVX2 U32 ( .A(n19), .Y(n39) );
  INVX2 U33 ( .A(n13), .Y(n40) );
  INVX2 U34 ( .A(n14), .Y(n41) );
  INVX2 U35 ( .A(n15), .Y(n42) );
  INVX2 U36 ( .A(n16), .Y(n43) );
  INVX2 U37 ( .A(n17), .Y(n44) );
  INVX2 U38 ( .A(n18), .Y(n45) );
  INVX2 U39 ( .A(en), .Y(n46) );
endmodule


module flop_test_2 ( clk, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, test_si, test_se;


  DFFPOSX1_SCAN q_reg_7_ ( .D(d[7]), .TI(q[6]), .TE(test_se), .CLK(clk), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(d[6]), .TI(q[5]), .TE(test_se), .CLK(clk), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(d[5]), .TI(q[4]), .TE(test_se), .CLK(clk), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(d[4]), .TI(q[3]), .TE(test_se), .CLK(clk), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(d[3]), .TI(q[2]), .TE(test_se), .CLK(clk), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(d[2]), .TI(q[1]), .TE(test_se), .CLK(clk), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(d[1]), .TI(q[0]), .TE(test_se), .CLK(clk), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(d[0]), .TI(test_si), .TE(test_se), .CLK(clk), 
        .Q(q[0]) );
endmodule


module regfile_test_1 ( clk, regwrite, ra1, ra2, wa, wd, rd1, rd2, test_si, 
        test_so, test_se );
  input [2:0] ra1;
  input [2:0] ra2;
  input [2:0] wa;
  input [7:0] wd;
  output [7:0] rd1;
  output [7:0] rd2;
  input clk, regwrite, test_si, test_se;
  output test_so;
  wire   REGS_30_, REGS_29_, REGS_28_, REGS_27_, REGS_26_, REGS_25_, REGS_24_,
         REGS_23_, REGS_22_, REGS_21_, REGS_20_, REGS_19_, REGS_18_, REGS_17_,
         REGS_16_, REGS_15_, REGS_14_, REGS_13_, REGS_12_, REGS_11_, REGS_10_,
         REGS_9_, REGS_8_, REGS_7_, REGS_6_, REGS_5_, REGS_4_, REGS_3_,
         REGS_2_, REGS_1_, REGS_0_, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n121, n122, n123, n124, n125, n126, n127, n128, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229;

  AND2X2 U2 ( .A(ra2[0]), .B(ra2[1]), .Y(n45) );
  AND2X2 U3 ( .A(ra2[1]), .B(n228), .Y(n44) );
  AND2X2 U4 ( .A(ra1[0]), .B(ra1[1]), .Y(n64) );
  AND2X2 U5 ( .A(ra1[1]), .B(n227), .Y(n63) );
  NAND2X1 U47 ( .A(n42), .B(n43), .Y(rd2[7]) );
  AOI22X1 U48 ( .A(REGS_15_), .B(n44), .C(REGS_23_), .D(n45), .Y(n43) );
  AOI22X1 U49 ( .A(REGS_7_), .B(n46), .C(ra2[2]), .D(test_so), .Y(n42) );
  NAND2X1 U50 ( .A(n47), .B(n48), .Y(rd2[6]) );
  AOI22X1 U51 ( .A(REGS_14_), .B(n44), .C(REGS_22_), .D(n45), .Y(n48) );
  AOI22X1 U52 ( .A(REGS_6_), .B(n46), .C(REGS_30_), .D(ra2[2]), .Y(n47) );
  NAND2X1 U53 ( .A(n49), .B(n50), .Y(rd2[5]) );
  AOI22X1 U54 ( .A(REGS_13_), .B(n44), .C(REGS_21_), .D(n45), .Y(n50) );
  AOI22X1 U55 ( .A(REGS_5_), .B(n46), .C(REGS_29_), .D(ra2[2]), .Y(n49) );
  NAND2X1 U56 ( .A(n51), .B(n52), .Y(rd2[4]) );
  AOI22X1 U57 ( .A(REGS_12_), .B(n44), .C(REGS_20_), .D(n45), .Y(n52) );
  AOI22X1 U58 ( .A(REGS_4_), .B(n46), .C(REGS_28_), .D(ra2[2]), .Y(n51) );
  NAND2X1 U59 ( .A(n53), .B(n54), .Y(rd2[3]) );
  AOI22X1 U60 ( .A(REGS_11_), .B(n44), .C(REGS_19_), .D(n45), .Y(n54) );
  AOI22X1 U61 ( .A(REGS_3_), .B(n46), .C(REGS_27_), .D(ra2[2]), .Y(n53) );
  NAND2X1 U62 ( .A(n55), .B(n56), .Y(rd2[2]) );
  AOI22X1 U63 ( .A(REGS_10_), .B(n44), .C(REGS_18_), .D(n45), .Y(n56) );
  AOI22X1 U64 ( .A(REGS_2_), .B(n46), .C(REGS_26_), .D(ra2[2]), .Y(n55) );
  NAND2X1 U65 ( .A(n57), .B(n58), .Y(rd2[1]) );
  AOI22X1 U66 ( .A(REGS_9_), .B(n44), .C(REGS_17_), .D(n45), .Y(n58) );
  AOI22X1 U67 ( .A(REGS_1_), .B(n46), .C(REGS_25_), .D(ra2[2]), .Y(n57) );
  NAND2X1 U68 ( .A(n59), .B(n60), .Y(rd2[0]) );
  AOI22X1 U69 ( .A(REGS_8_), .B(n44), .C(REGS_16_), .D(n45), .Y(n60) );
  AOI22X1 U70 ( .A(REGS_0_), .B(n46), .C(REGS_24_), .D(ra2[2]), .Y(n59) );
  NOR2X1 U71 ( .A(n228), .B(ra2[1]), .Y(n46) );
  NAND2X1 U72 ( .A(n61), .B(n62), .Y(rd1[7]) );
  AOI22X1 U73 ( .A(n63), .B(REGS_15_), .C(n64), .D(REGS_23_), .Y(n62) );
  AOI22X1 U74 ( .A(n65), .B(REGS_7_), .C(ra1[2]), .D(test_so), .Y(n61) );
  NAND2X1 U75 ( .A(n66), .B(n67), .Y(rd1[6]) );
  AOI22X1 U76 ( .A(n63), .B(REGS_14_), .C(n64), .D(REGS_22_), .Y(n67) );
  AOI22X1 U77 ( .A(n65), .B(REGS_6_), .C(ra1[2]), .D(REGS_30_), .Y(n66) );
  NAND2X1 U78 ( .A(n68), .B(n69), .Y(rd1[5]) );
  AOI22X1 U79 ( .A(n63), .B(REGS_13_), .C(n64), .D(REGS_21_), .Y(n69) );
  AOI22X1 U80 ( .A(n65), .B(REGS_5_), .C(ra1[2]), .D(REGS_29_), .Y(n68) );
  NAND2X1 U81 ( .A(n70), .B(n71), .Y(rd1[4]) );
  AOI22X1 U82 ( .A(n63), .B(REGS_12_), .C(n64), .D(REGS_20_), .Y(n71) );
  AOI22X1 U83 ( .A(n65), .B(REGS_4_), .C(ra1[2]), .D(REGS_28_), .Y(n70) );
  NAND2X1 U84 ( .A(n72), .B(n73), .Y(rd1[3]) );
  AOI22X1 U85 ( .A(n63), .B(REGS_11_), .C(n64), .D(REGS_19_), .Y(n73) );
  AOI22X1 U86 ( .A(n65), .B(REGS_3_), .C(ra1[2]), .D(REGS_27_), .Y(n72) );
  NAND2X1 U87 ( .A(n74), .B(n75), .Y(rd1[2]) );
  AOI22X1 U88 ( .A(n63), .B(REGS_10_), .C(n64), .D(REGS_18_), .Y(n75) );
  AOI22X1 U89 ( .A(n65), .B(REGS_2_), .C(ra1[2]), .D(REGS_26_), .Y(n74) );
  NAND2X1 U90 ( .A(n76), .B(n77), .Y(rd1[1]) );
  AOI22X1 U91 ( .A(n63), .B(REGS_9_), .C(n64), .D(REGS_17_), .Y(n77) );
  AOI22X1 U92 ( .A(n65), .B(REGS_1_), .C(ra1[2]), .D(REGS_25_), .Y(n76) );
  NAND2X1 U93 ( .A(n78), .B(n79), .Y(rd1[0]) );
  AOI22X1 U94 ( .A(n63), .B(REGS_8_), .C(n64), .D(REGS_16_), .Y(n79) );
  AOI22X1 U95 ( .A(n65), .B(REGS_0_), .C(ra1[2]), .D(REGS_24_), .Y(n78) );
  NOR2X1 U96 ( .A(n227), .B(ra1[1]), .Y(n65) );
  AOI22X1 U97 ( .A(n81), .B(test_so), .C(n124), .D(wd[7]), .Y(n80) );
  AOI22X1 U98 ( .A(n81), .B(REGS_30_), .C(n124), .D(wd[6]), .Y(n82) );
  AOI22X1 U99 ( .A(n81), .B(REGS_29_), .C(n124), .D(wd[5]), .Y(n83) );
  AOI22X1 U100 ( .A(n81), .B(REGS_28_), .C(n124), .D(wd[4]), .Y(n84) );
  AOI22X1 U101 ( .A(n81), .B(REGS_27_), .C(n124), .D(wd[3]), .Y(n85) );
  AOI22X1 U102 ( .A(n81), .B(REGS_26_), .C(n124), .D(wd[2]), .Y(n86) );
  AOI22X1 U103 ( .A(n81), .B(REGS_25_), .C(n124), .D(wd[1]), .Y(n87) );
  AOI22X1 U104 ( .A(n81), .B(REGS_24_), .C(n124), .D(wd[0]), .Y(n88) );
  NAND3X1 U105 ( .A(wa[2]), .B(regwrite), .C(n89), .Y(n81) );
  NOR2X1 U106 ( .A(wa[1]), .B(wa[0]), .Y(n89) );
  AOI22X1 U107 ( .A(n91), .B(REGS_23_), .C(wd[7]), .D(n123), .Y(n90) );
  AOI22X1 U108 ( .A(n91), .B(REGS_22_), .C(wd[6]), .D(n123), .Y(n92) );
  AOI22X1 U109 ( .A(n91), .B(REGS_21_), .C(wd[5]), .D(n123), .Y(n93) );
  AOI22X1 U110 ( .A(n91), .B(REGS_20_), .C(wd[4]), .D(n123), .Y(n94) );
  AOI22X1 U111 ( .A(n91), .B(REGS_19_), .C(wd[3]), .D(n123), .Y(n95) );
  AOI22X1 U112 ( .A(n91), .B(REGS_18_), .C(wd[2]), .D(n123), .Y(n96) );
  AOI22X1 U113 ( .A(n91), .B(REGS_17_), .C(wd[1]), .D(n123), .Y(n97) );
  AOI22X1 U114 ( .A(n91), .B(REGS_16_), .C(wd[0]), .D(n123), .Y(n98) );
  NAND3X1 U115 ( .A(wa[0]), .B(n99), .C(wa[1]), .Y(n91) );
  AOI22X1 U116 ( .A(n101), .B(REGS_15_), .C(wd[7]), .D(n122), .Y(n100) );
  AOI22X1 U117 ( .A(n101), .B(REGS_14_), .C(wd[6]), .D(n122), .Y(n102) );
  AOI22X1 U118 ( .A(n101), .B(REGS_13_), .C(wd[5]), .D(n122), .Y(n103) );
  AOI22X1 U119 ( .A(n101), .B(REGS_12_), .C(wd[4]), .D(n122), .Y(n104) );
  AOI22X1 U120 ( .A(n101), .B(REGS_11_), .C(wd[3]), .D(n122), .Y(n105) );
  AOI22X1 U121 ( .A(n101), .B(REGS_10_), .C(wd[2]), .D(n122), .Y(n106) );
  AOI22X1 U122 ( .A(n101), .B(REGS_9_), .C(wd[1]), .D(n122), .Y(n107) );
  AOI22X1 U123 ( .A(n101), .B(REGS_8_), .C(wd[0]), .D(n122), .Y(n108) );
  NAND3X1 U124 ( .A(n99), .B(n226), .C(wa[1]), .Y(n101) );
  AOI22X1 U125 ( .A(n110), .B(REGS_7_), .C(wd[7]), .D(n121), .Y(n109) );
  AOI22X1 U126 ( .A(n110), .B(REGS_6_), .C(wd[6]), .D(n121), .Y(n111) );
  AOI22X1 U127 ( .A(n110), .B(REGS_5_), .C(wd[5]), .D(n121), .Y(n112) );
  AOI22X1 U128 ( .A(n110), .B(REGS_4_), .C(wd[4]), .D(n121), .Y(n113) );
  AOI22X1 U129 ( .A(n110), .B(REGS_3_), .C(wd[3]), .D(n121), .Y(n114) );
  AOI22X1 U130 ( .A(n110), .B(REGS_2_), .C(wd[2]), .D(n121), .Y(n115) );
  AOI22X1 U131 ( .A(n110), .B(REGS_1_), .C(wd[1]), .D(n121), .Y(n116) );
  AOI22X1 U132 ( .A(n110), .B(REGS_0_), .C(wd[0]), .D(n121), .Y(n117) );
  NAND3X1 U133 ( .A(n99), .B(n225), .C(wa[0]), .Y(n110) );
  NOR2X1 U134 ( .A(n229), .B(wa[2]), .Y(n99) );
  DFFPOSX1_SCAN REGS_reg_4__7_ ( .D(n193), .TI(REGS_30_), .TE(test_se), .CLK(
        n127), .Q(test_so) );
  DFFPOSX1_SCAN REGS_reg_4__6_ ( .D(n197), .TI(REGS_29_), .TE(test_se), .CLK(
        n127), .Q(REGS_30_) );
  DFFPOSX1_SCAN REGS_reg_4__5_ ( .D(n201), .TI(REGS_28_), .TE(test_se), .CLK(
        n127), .Q(REGS_29_) );
  DFFPOSX1_SCAN REGS_reg_4__4_ ( .D(n205), .TI(REGS_27_), .TE(test_se), .CLK(
        n127), .Q(REGS_28_) );
  DFFPOSX1_SCAN REGS_reg_4__3_ ( .D(n209), .TI(REGS_26_), .TE(test_se), .CLK(
        n127), .Q(REGS_27_) );
  DFFPOSX1_SCAN REGS_reg_4__2_ ( .D(n213), .TI(REGS_25_), .TE(test_se), .CLK(
        n127), .Q(REGS_26_) );
  DFFPOSX1_SCAN REGS_reg_4__1_ ( .D(n217), .TI(REGS_24_), .TE(test_se), .CLK(
        n127), .Q(REGS_25_) );
  DFFPOSX1_SCAN REGS_reg_4__0_ ( .D(n221), .TI(REGS_23_), .TE(test_se), .CLK(
        n127), .Q(REGS_24_) );
  DFFPOSX1_SCAN REGS_reg_3__7_ ( .D(n194), .TI(REGS_22_), .TE(test_se), .CLK(
        n126), .Q(REGS_23_) );
  DFFPOSX1_SCAN REGS_reg_3__6_ ( .D(n198), .TI(REGS_21_), .TE(test_se), .CLK(
        n126), .Q(REGS_22_) );
  DFFPOSX1_SCAN REGS_reg_3__5_ ( .D(n202), .TI(REGS_20_), .TE(test_se), .CLK(
        n126), .Q(REGS_21_) );
  DFFPOSX1_SCAN REGS_reg_3__4_ ( .D(n206), .TI(REGS_19_), .TE(test_se), .CLK(
        n126), .Q(REGS_20_) );
  DFFPOSX1_SCAN REGS_reg_3__3_ ( .D(n210), .TI(REGS_18_), .TE(test_se), .CLK(
        n126), .Q(REGS_19_) );
  DFFPOSX1_SCAN REGS_reg_3__2_ ( .D(n214), .TI(REGS_17_), .TE(test_se), .CLK(
        n126), .Q(REGS_18_) );
  DFFPOSX1_SCAN REGS_reg_3__1_ ( .D(n218), .TI(REGS_16_), .TE(test_se), .CLK(
        n126), .Q(REGS_17_) );
  DFFPOSX1_SCAN REGS_reg_3__0_ ( .D(n222), .TI(REGS_15_), .TE(test_se), .CLK(
        n126), .Q(REGS_16_) );
  DFFPOSX1_SCAN REGS_reg_2__7_ ( .D(n195), .TI(REGS_14_), .TE(test_se), .CLK(
        n126), .Q(REGS_15_) );
  DFFPOSX1_SCAN REGS_reg_2__6_ ( .D(n199), .TI(REGS_13_), .TE(test_se), .CLK(
        n126), .Q(REGS_14_) );
  DFFPOSX1_SCAN REGS_reg_2__5_ ( .D(n203), .TI(REGS_12_), .TE(test_se), .CLK(
        n126), .Q(REGS_13_) );
  DFFPOSX1_SCAN REGS_reg_2__4_ ( .D(n207), .TI(REGS_11_), .TE(test_se), .CLK(
        n126), .Q(REGS_12_) );
  DFFPOSX1_SCAN REGS_reg_2__3_ ( .D(n211), .TI(REGS_10_), .TE(test_se), .CLK(
        n125), .Q(REGS_11_) );
  DFFPOSX1_SCAN REGS_reg_2__2_ ( .D(n215), .TI(REGS_9_), .TE(test_se), .CLK(
        n125), .Q(REGS_10_) );
  DFFPOSX1_SCAN REGS_reg_2__1_ ( .D(n219), .TI(REGS_8_), .TE(test_se), .CLK(
        n125), .Q(REGS_9_) );
  DFFPOSX1_SCAN REGS_reg_2__0_ ( .D(n223), .TI(REGS_7_), .TE(test_se), .CLK(
        n125), .Q(REGS_8_) );
  DFFPOSX1_SCAN REGS_reg_1__7_ ( .D(n196), .TI(REGS_6_), .TE(test_se), .CLK(
        n125), .Q(REGS_7_) );
  DFFPOSX1_SCAN REGS_reg_1__6_ ( .D(n200), .TI(REGS_5_), .TE(test_se), .CLK(
        n125), .Q(REGS_6_) );
  DFFPOSX1_SCAN REGS_reg_1__5_ ( .D(n204), .TI(REGS_4_), .TE(test_se), .CLK(
        n125), .Q(REGS_5_) );
  DFFPOSX1_SCAN REGS_reg_1__4_ ( .D(n208), .TI(REGS_3_), .TE(test_se), .CLK(
        n125), .Q(REGS_4_) );
  DFFPOSX1_SCAN REGS_reg_1__3_ ( .D(n212), .TI(REGS_2_), .TE(test_se), .CLK(
        n125), .Q(REGS_3_) );
  DFFPOSX1_SCAN REGS_reg_1__2_ ( .D(n216), .TI(REGS_1_), .TE(test_se), .CLK(
        n125), .Q(REGS_2_) );
  DFFPOSX1_SCAN REGS_reg_1__1_ ( .D(n220), .TI(REGS_0_), .TE(test_se), .CLK(
        n125), .Q(REGS_1_) );
  DFFPOSX1_SCAN REGS_reg_1__0_ ( .D(n224), .TI(test_si), .TE(test_se), .CLK(
        n125), .Q(REGS_0_) );
  INVX2 U6 ( .A(n128), .Y(n125) );
  INVX2 U7 ( .A(n128), .Y(n126) );
  INVX2 U8 ( .A(n128), .Y(n127) );
  INVX2 U9 ( .A(clk), .Y(n128) );
  INVX2 U10 ( .A(n110), .Y(n121) );
  INVX2 U11 ( .A(n101), .Y(n122) );
  INVX2 U12 ( .A(n91), .Y(n123) );
  INVX2 U13 ( .A(n81), .Y(n124) );
  INVX2 U166 ( .A(n80), .Y(n193) );
  INVX2 U167 ( .A(n90), .Y(n194) );
  INVX2 U168 ( .A(n100), .Y(n195) );
  INVX2 U169 ( .A(n109), .Y(n196) );
  INVX2 U170 ( .A(n82), .Y(n197) );
  INVX2 U171 ( .A(n92), .Y(n198) );
  INVX2 U172 ( .A(n102), .Y(n199) );
  INVX2 U173 ( .A(n111), .Y(n200) );
  INVX2 U174 ( .A(n83), .Y(n201) );
  INVX2 U175 ( .A(n93), .Y(n202) );
  INVX2 U176 ( .A(n103), .Y(n203) );
  INVX2 U177 ( .A(n112), .Y(n204) );
  INVX2 U178 ( .A(n84), .Y(n205) );
  INVX2 U179 ( .A(n94), .Y(n206) );
  INVX2 U180 ( .A(n104), .Y(n207) );
  INVX2 U181 ( .A(n113), .Y(n208) );
  INVX2 U182 ( .A(n85), .Y(n209) );
  INVX2 U183 ( .A(n95), .Y(n210) );
  INVX2 U184 ( .A(n105), .Y(n211) );
  INVX2 U185 ( .A(n114), .Y(n212) );
  INVX2 U186 ( .A(n86), .Y(n213) );
  INVX2 U187 ( .A(n96), .Y(n214) );
  INVX2 U188 ( .A(n106), .Y(n215) );
  INVX2 U189 ( .A(n115), .Y(n216) );
  INVX2 U190 ( .A(n87), .Y(n217) );
  INVX2 U191 ( .A(n97), .Y(n218) );
  INVX2 U192 ( .A(n107), .Y(n219) );
  INVX2 U193 ( .A(n116), .Y(n220) );
  INVX2 U194 ( .A(n88), .Y(n221) );
  INVX2 U195 ( .A(n98), .Y(n222) );
  INVX2 U196 ( .A(n108), .Y(n223) );
  INVX2 U197 ( .A(n117), .Y(n224) );
  INVX2 U198 ( .A(wa[1]), .Y(n225) );
  INVX2 U199 ( .A(wa[0]), .Y(n226) );
  INVX2 U200 ( .A(ra1[0]), .Y(n227) );
  INVX2 U201 ( .A(ra2[0]), .Y(n228) );
  INVX2 U202 ( .A(regwrite), .Y(n229) );
endmodule


module flop_test_3 ( clk, d, q, test_si, test_se );
  input [7:0] d;
  output [7:0] q;
  input clk, test_si, test_se;
  wire   n3, n4;

  DFFPOSX1_SCAN q_reg_7_ ( .D(d[7]), .TI(q[6]), .TE(test_se), .CLK(n3), .Q(
        q[7]) );
  DFFPOSX1_SCAN q_reg_6_ ( .D(d[6]), .TI(q[5]), .TE(test_se), .CLK(n3), .Q(
        q[6]) );
  DFFPOSX1_SCAN q_reg_5_ ( .D(d[5]), .TI(q[4]), .TE(test_se), .CLK(n3), .Q(
        q[5]) );
  DFFPOSX1_SCAN q_reg_4_ ( .D(d[4]), .TI(q[3]), .TE(test_se), .CLK(n3), .Q(
        q[4]) );
  DFFPOSX1_SCAN q_reg_3_ ( .D(d[3]), .TI(q[2]), .TE(test_se), .CLK(n3), .Q(
        q[3]) );
  DFFPOSX1_SCAN q_reg_2_ ( .D(d[2]), .TI(q[1]), .TE(test_se), .CLK(n3), .Q(
        q[2]) );
  DFFPOSX1_SCAN q_reg_1_ ( .D(d[1]), .TI(q[0]), .TE(test_se), .CLK(n3), .Q(
        q[1]) );
  DFFPOSX1_SCAN q_reg_0_ ( .D(d[0]), .TI(test_si), .TE(test_se), .CLK(n3), .Q(
        q[0]) );
  INVX2 U3 ( .A(n4), .Y(n3) );
  INVX2 U4 ( .A(clk), .Y(n4) );
endmodule


module datapath_test_2 ( clk, reset, memdata, alusrca, memtoreg, iord, pcen, 
        regwrite, regdst, pcsource, alusrcb, irwrite, alucont, zero, instr, 
        adr, writedata, test_si, test_se );
  input [7:0] memdata;
  input [1:0] pcsource;
  input [1:0] alusrcb;
  input [3:0] irwrite;
  input [2:0] alucont;
  output [31:0] instr;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset, alusrca, memtoreg, iord, pcen, regwrite, regdst, test_si,
         test_se;
  output zero;
  wire   n4, n5, n6, n7, n8, n10;
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
  flopen_test_0 ir0 ( .clk(n6), .en(irwrite[0]), .d(memdata), .q(instr[7:0]), 
        .test_si(a[7]), .test_se(test_se) );
  flopen_test_1 ir1 ( .clk(n4), .en(irwrite[1]), .d(memdata), .q(instr[15:8]), 
        .test_si(instr[7]), .test_se(test_se) );
  flopen_test_2 ir2 ( .clk(n5), .en(irwrite[2]), .d(memdata), .q(instr[23:16]), 
        .test_si(instr[15]), .test_se(test_se) );
  flopen_test_3 ir3 ( .clk(n7), .en(irwrite[3]), .d(memdata), .q(instr[31:24]), 
        .test_si(instr[23]), .test_se(test_se) );
  flopenr_test_1 pcreg ( .clk(n5), .reset(reset), .en(pcen), .d(nextpc), .q(pc), .test_si(md[7]), .test_se(test_se) );
  flop_test_1 mdr ( .clk(n6), .d(memdata), .q(md), .test_si(instr[31]), 
        .test_se(test_se) );
  flop_test_0 areg ( .clk(n7), .d(rd1), .q(a), .test_si(test_si), .test_se(
        test_se) );
  flop_test_3 wrd ( .clk(n4), .d(rd2), .q(writedata), .test_si(n10), .test_se(
        test_se) );
  flop_test_2 res ( .clk(n8), .d(aluresult), .q(aluout), .test_si(pc[7]), 
        .test_se(test_se) );
  mux2_2 adrmux ( .d0(pc), .d1(aluout), .s(iord), .y(adr) );
  mux2_1 src1mux ( .d0(pc), .d1(a), .s(alusrca), .y(src1) );
  mux4_1 src2mux ( .d0(writedata), .d1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1}), .d2(instr[7:0]), .d3({instr[5:0], 1'b0, 1'b0}), .s(
        alusrcb), .y(src2) );
  mux4_0 pcmux ( .d0(aluresult), .d1(aluout), .d2({instr[5:0], 1'b0, 1'b0}), 
        .d3({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s(pcsource), 
        .y(nextpc) );
  mux2_0 wdmux ( .d0(aluout), .d1(md), .s(memtoreg), .y(wd) );
  regfile_test_1 rf ( .clk(n4), .regwrite(regwrite), .ra1({1'b0, 1'b0, 1'b0}), 
        .ra2({1'b0, 1'b0, 1'b0}), .wa(wa), .wd(wd), .rd1(rd1), .rd2(rd2), 
        .test_si(aluout[7]), .test_so(n10), .test_se(test_se) );
  alu alunlt ( .a(src1), .b(src2), .alucont(alucont), .result(aluresult) );
  zerodetect zd ( .a(aluresult), .y(zero) );
  BUFX2 U3 ( .A(clk), .Y(n4) );
  BUFX2 U4 ( .A(clk), .Y(n8) );
  BUFX2 U5 ( .A(clk), .Y(n7) );
  BUFX2 U6 ( .A(clk), .Y(n5) );
  BUFX2 U7 ( .A(clk), .Y(n6) );
endmodule


module controller_test_1 ( clk, reset, op, zero, memread, memwrite, alusrca, 
        memtoreg, iord, pcen, regwrite, regdst, pcsource, alusrcb, aluop, 
        irwrite, test_si, test_so, test_se );
  input [5:0] op;
  output [1:0] pcsource;
  output [1:0] alusrcb;
  output [1:0] aluop;
  output [3:0] irwrite;
  input clk, reset, zero, test_si, test_se;
  output memread, memwrite, alusrca, memtoreg, iord, pcen, regwrite, regdst,
         test_so;
  wire   state_2_, state_1_, state_0_, N45, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n98, n99, n100, n101, n102, n103, n104, n105;

  INVX2 U3 ( .A(n34), .Y(regdst) );
  INVX2 U4 ( .A(n46), .Y(memwrite) );
  INVX2 U5 ( .A(n35), .Y(memtoreg) );
  INVX2 U6 ( .A(n48), .Y(irwrite[2]) );
  INVX2 U7 ( .A(n44), .Y(irwrite[0]) );
  INVX2 U9 ( .A(n45), .Y(irwrite[1]) );
  INVX2 U10 ( .A(n43), .Y(aluop[1]) );
  INVX2 U11 ( .A(n55), .Y(pcsource[0]) );
  NAND2X1 U36 ( .A(n34), .B(n35), .Y(regwrite) );
  NAND3X1 U37 ( .A(n36), .B(test_so), .C(state_1_), .Y(n34) );
  NOR2X1 U38 ( .A(n103), .B(n37), .Y(pcsource[1]) );
  NAND2X1 U39 ( .A(state_0_), .B(n38), .Y(n37) );
  OAI21X1 U40 ( .A(n40), .B(n41), .C(n105), .Y(n39) );
  OAI21X1 U41 ( .A(op[1]), .B(n42), .C(n86), .Y(n41) );
  NAND3X1 U42 ( .A(n43), .B(n44), .C(n45), .Y(n40) );
  NAND3X1 U43 ( .A(n98), .B(n103), .C(n38), .Y(n35) );
  NAND2X1 U44 ( .A(n96), .B(n47), .Y(memread) );
  NAND2X1 U45 ( .A(n46), .B(n47), .Y(iord) );
  NAND2X1 U46 ( .A(n36), .B(n38), .Y(n46) );
  NAND2X1 U47 ( .A(n49), .B(n50), .Y(alusrcb[1]) );
  NAND2X1 U48 ( .A(n96), .B(n49), .Y(alusrcb[0]) );
  NAND3X1 U49 ( .A(n44), .B(n48), .C(n52), .Y(n51) );
  NOR2X1 U50 ( .A(irwrite[1]), .B(irwrite[3]), .Y(n52) );
  NAND3X1 U51 ( .A(n103), .B(n102), .C(n54), .Y(n45) );
  NAND3X1 U52 ( .A(n104), .B(n102), .C(n36), .Y(n44) );
  NAND3X1 U53 ( .A(n50), .B(n55), .C(n43), .Y(alusrca) );
  NAND3X1 U54 ( .A(n38), .B(n98), .C(state_2_), .Y(n55) );
  NOR2X1 U55 ( .A(n102), .B(state_1_), .Y(n38) );
  OAI21X1 U56 ( .A(n57), .B(n58), .C(n105), .Y(n56) );
  OAI21X1 U57 ( .A(op[2]), .B(n42), .C(n59), .Y(n58) );
  AOI21X1 U58 ( .A(n60), .B(n61), .C(n99), .Y(n59) );
  NAND3X1 U59 ( .A(state_1_), .B(state_0_), .C(n62), .Y(n47) );
  NOR2X1 U60 ( .A(n63), .B(n93), .Y(n61) );
  NOR2X1 U61 ( .A(n87), .B(n91), .Y(n60) );
  NAND3X1 U62 ( .A(n64), .B(n65), .C(n43), .Y(n57) );
  NAND3X1 U63 ( .A(test_so), .B(n103), .C(n54), .Y(n43) );
  OAI21X1 U64 ( .A(n67), .B(n68), .C(n105), .Y(n66) );
  OAI21X1 U65 ( .A(n42), .B(n69), .C(n86), .Y(n68) );
  OAI21X1 U66 ( .A(n87), .B(n71), .C(n65), .Y(n70) );
  NAND3X1 U67 ( .A(op[2]), .B(n89), .C(n72), .Y(n65) );
  NOR2X1 U68 ( .A(op[1]), .B(n73), .Y(n72) );
  NAND2X1 U69 ( .A(n91), .B(n87), .Y(n73) );
  OAI21X1 U70 ( .A(n74), .B(n88), .C(n75), .Y(n71) );
  NOR2X1 U71 ( .A(op[3]), .B(n63), .Y(n74) );
  NAND3X1 U72 ( .A(n95), .B(n90), .C(n100), .Y(n63) );
  NAND2X1 U73 ( .A(n62), .B(n54), .Y(n50) );
  NOR2X1 U74 ( .A(n104), .B(state_0_), .Y(n54) );
  OAI21X1 U75 ( .A(n92), .B(n94), .C(n93), .Y(n69) );
  NAND3X1 U76 ( .A(n91), .B(n87), .C(n88), .Y(n42) );
  NAND3X1 U77 ( .A(n64), .B(n48), .C(n53), .Y(n67) );
  NAND3X1 U78 ( .A(n98), .B(n104), .C(n62), .Y(n53) );
  NAND3X1 U79 ( .A(n36), .B(n102), .C(state_1_), .Y(n48) );
  NOR2X1 U80 ( .A(n98), .B(state_2_), .Y(n36) );
  NAND3X1 U81 ( .A(op[3]), .B(n88), .C(n76), .Y(n64) );
  NOR2X1 U82 ( .A(op[5]), .B(n93), .Y(n76) );
  NAND3X1 U83 ( .A(n95), .B(n90), .C(n101), .Y(n77) );
  NAND3X1 U84 ( .A(state_0_), .B(n78), .C(n79), .Y(N45) );
  NOR2X1 U85 ( .A(test_so), .B(reset), .Y(n79) );
  OAI21X1 U86 ( .A(n80), .B(n81), .C(n101), .Y(n78) );
  NAND3X1 U87 ( .A(state_0_), .B(n104), .C(n62), .Y(n49) );
  NOR2X1 U88 ( .A(n103), .B(test_so), .Y(n62) );
  OAI22X1 U89 ( .A(op[5]), .B(n91), .C(n92), .D(n94), .Y(n81) );
  OAI21X1 U90 ( .A(n75), .B(n87), .C(n82), .Y(n80) );
  NOR2X1 U91 ( .A(op[4]), .B(op[0]), .Y(n82) );
  NOR2X1 U92 ( .A(op[1]), .B(op[2]), .Y(n75) );
  DFFPOSX1_SCAN state_reg_0_ ( .D(N45), .TI(test_si), .TE(test_se), .CLK(clk), 
        .Q(state_0_) );
  DFFPOSX1_SCAN state_reg_3_ ( .D(n84), .TI(state_2_), .TE(test_se), .CLK(clk), 
        .Q(test_so) );
  DFFPOSX1_SCAN state_reg_2_ ( .D(n83), .TI(state_1_), .TE(test_se), .CLK(clk), 
        .Q(state_2_) );
  DFFPOSX1_SCAN state_reg_1_ ( .D(n85), .TI(state_0_), .TE(test_se), .CLK(clk), 
        .Q(state_1_) );
  INVX1 U8 ( .A(1'b1), .Y(pcen) );
  INVX2 U13 ( .A(n55), .Y(aluop[0]) );
  INVX2 U22 ( .A(n66), .Y(n83) );
  INVX2 U23 ( .A(n56), .Y(n84) );
  INVX2 U24 ( .A(n39), .Y(n85) );
  INVX2 U25 ( .A(n70), .Y(n86) );
  INVX2 U26 ( .A(op[5]), .Y(n87) );
  INVX2 U27 ( .A(n77), .Y(n88) );
  INVX2 U28 ( .A(n63), .Y(n89) );
  INVX2 U29 ( .A(op[4]), .Y(n90) );
  INVX2 U30 ( .A(op[3]), .Y(n91) );
  INVX2 U31 ( .A(op[2]), .Y(n92) );
  INVX2 U32 ( .A(n75), .Y(n93) );
  INVX2 U33 ( .A(op[1]), .Y(n94) );
  INVX2 U34 ( .A(op[0]), .Y(n95) );
  INVX2 U35 ( .A(n51), .Y(n96) );
  INVX2 U94 ( .A(n53), .Y(irwrite[3]) );
  INVX2 U95 ( .A(state_0_), .Y(n98) );
  INVX2 U96 ( .A(n47), .Y(n99) );
  INVX2 U97 ( .A(n50), .Y(n100) );
  INVX2 U98 ( .A(n49), .Y(n101) );
  INVX2 U99 ( .A(test_so), .Y(n102) );
  INVX2 U100 ( .A(state_2_), .Y(n103) );
  INVX2 U101 ( .A(state_1_), .Y(n104) );
  INVX2 U102 ( .A(reset), .Y(n105) );
endmodule


module mips ( clk, reset, memdata, memread, memwrite, adr, writedata, test_si, 
        test_so, test_se );
  input [7:0] memdata;
  output [7:0] adr;
  output [7:0] writedata;
  input clk, reset, test_si, test_se;
  output memread, memwrite, test_so;
  wire   zero, alusrca, memtoreg, iord, regwrite, regdst, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n42, n44, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
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

  controller_test_1 cont ( .clk(n39), .reset(n22), .op(instr[31:26]), .zero(
        zero), .memread(memread), .memwrite(memwrite), .alusrca(alusrca), 
        .memtoreg(memtoreg), .iord(iord), .regwrite(regwrite), .regdst(regdst), 
        .pcsource(pcsource), .alusrcb(alusrcb), .aluop(aluop), .irwrite(
        irwrite), .test_si(test_si), .test_so(n42), .test_se(test_se) );
  alucontrol ac ( .aluop(aluop), .funct(instr[5:0]), .alucont(alucont) );
  datapath_test_2 dp ( .clk(n39), .reset(n22), .memdata({n38, n36, n34, n32, 
        n30, n28, n26, n24}), .alusrca(alusrca), .memtoreg(memtoreg), .iord(
        iord), .pcen(1'b0), .regwrite(regwrite), .regdst(regdst), .pcsource(
        pcsource), .alusrcb(alusrcb), .irwrite(irwrite), .alucont(alucont), 
        .zero(zero), .instr({instr[31:26], SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, instr[5:0]}), .adr(adr), .writedata(writedata), .test_si(n42), .test_se(test_se) );
  INVX2 U1 ( .A(reset), .Y(n21) );
  INVX2 U2 ( .A(n21), .Y(n22) );
  INVX2 U3 ( .A(memdata[0]), .Y(n23) );
  INVX2 U4 ( .A(n23), .Y(n24) );
  INVX2 U5 ( .A(memdata[1]), .Y(n25) );
  INVX2 U6 ( .A(n25), .Y(n26) );
  INVX2 U7 ( .A(memdata[2]), .Y(n27) );
  INVX2 U8 ( .A(n27), .Y(n28) );
  INVX2 U9 ( .A(memdata[3]), .Y(n29) );
  INVX2 U10 ( .A(n29), .Y(n30) );
  INVX2 U11 ( .A(memdata[4]), .Y(n31) );
  INVX2 U12 ( .A(n31), .Y(n32) );
  INVX2 U13 ( .A(memdata[5]), .Y(n33) );
  INVX2 U14 ( .A(n33), .Y(n34) );
  INVX2 U15 ( .A(memdata[6]), .Y(n35) );
  INVX2 U16 ( .A(n35), .Y(n36) );
  INVX2 U17 ( .A(memdata[7]), .Y(n37) );
  INVX2 U18 ( .A(n37), .Y(n38) );
  INVX2 U19 ( .A(n40), .Y(n39) );
  INVX2 U20 ( .A(clk), .Y(n40) );
  INVX8 U22 ( .A(writedata[7]), .Y(n44) );
  INVX8 U23 ( .A(n44), .Y(test_so) );
endmodule

