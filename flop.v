`timescale 1ns/10ps
module flop(clk, d, q);

input clk;
input [7:0] d;
output reg [7:0] q;

always@(posedge clk)
 q <= d;

endmodule
 
