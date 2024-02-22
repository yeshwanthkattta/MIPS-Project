`timescale 1ns/10ps
module exmem(clk, memwrite, adr, writedata, memdata);

input clk;
input memwrite;
input [7:0] adr, writedata;
output [7:0] memdata;
wire memwriteB, clkB;

not(memwriteB, memwrite);

not(clkB, clk);

UMC130SPRAM_8_8 mips_ram(
           .CK(clkB), 
           .CEN(1'b0), 
           .WEN(memwriteB), 
           .OEN(1'b0), 
           .ADR(adr), 
           .DI(writedata), 
           .DOUT(memdata));

endmodule
