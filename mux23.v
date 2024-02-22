`timescale 1ns/10ps
module mux23(d0, d1, s, y);

input s;
input [2:0] d0, d1;
output [2:0] y;

assign y = s?d1 :d0;

endmodule
