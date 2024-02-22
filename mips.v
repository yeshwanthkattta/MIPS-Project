`timescale 1ns/10ps
//simplified MIPS processor

module mips(clk, reset, memdata, memread, memwrite, adr, writedata);

input               clk, reset;
input  [7:0]           memdata;
output       memread, memwrite;
output [7:0]    adr, writedata;

wire [31:0] instr;
wire zero, alusrca, memtoreg, iord, pcen, regwrite, regdst;
wire [1:0] aluop, pcsource, alusrcb;
wire [3:0]   irwrite;
wire [2:0]   alucont;

controller cont(clk, reset, instr[31:26], zero, memread, memwrite, alusrca, memtoreg, iord, pcen, regwrite, regdst, pcsource, alusrcb, aluop, irwrite);

alucontrol ac(aluop, instr[5:0], alucont);

datapath   dp(clk, reset, memdata, alusrca, memtoreg, iord, pcen, regwrite, regdst, pcsource, alusrcb, irwrite, alucont, zero, instr, adr, writedata);

endmodule




