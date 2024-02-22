`timescale 1ns/10ps
module mux2(d0, d1, s, y);

input s;
input [7:0] d0, d1;
output [7:0] y;

assign y = s?d1 :d0;

endmodule
