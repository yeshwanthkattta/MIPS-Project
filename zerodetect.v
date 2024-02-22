`timescale 1ns/10ps
module zerodetect(a, y);

input [7:0] a;
output y;
assign y = (a==0);

endmodule
