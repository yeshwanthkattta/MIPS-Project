`timescale 1ns/10ps
module datapath(clk, reset, memdata, alusrca, memtoreg, iord, pcen, regwrite, regdst, pcsource, alusrcb, irwrite, alucont, zero, instr, adr, writedata);

input clk, reset;
input [7:0] memdata;
input alusrca, memtoreg, iord, pcen, regwrite, regdst;
input [1:0] pcsource, alusrcb;
input [3:0] irwrite;
input [2:0] alucont;
output zero;
output [31:0] instr;
output [7:0] adr, writedata;

parameter CONST_ZERO = 8'b0;
parameter CONST_ONE = 8'b1;

wire [2:0] ra1, ra2, wa;
wire [7:0] pc, nextpc, md, rd1, rd2, wd, a, src1, src2, aluresult, aluout, constx4;

assign constx4 = {instr[5:0], 2'b00};

mux23        regmux(instr[18:16], instr[13:11], regdst, wa);

flopen      ir0(clk, irwrite[0], memdata[7:0], instr[7:0]);
flopen      ir1(clk, irwrite[1], memdata[7:0], instr[15:8]);
flopen      ir2(clk, irwrite[2], memdata[7:0], instr[23:16]);
flopen      ir3(clk, irwrite[3], memdata[7:0], instr[31:24]);

flopenr     pcreg(clk, reset, pcen, nextpc, pc);
flop        mdr(clk, memdata, md);
flop        areg(clk, rd1, a);
flop        wrd(clk, rd2, writedata);
flop        res(clk, aluresult, aluout);

mux2        adrmux(pc, aluout, iord, adr);
mux2        src1mux(pc, a, alusrca, src1);
mux4        src2mux(writedata, CONST_ONE, instr[7:0], constx4, alusrcb, src2);

mux4        pcmux(aluresult, aluout, constx4, CONST_ZERO, pcsource, nextpc);
mux2        wdmux(aluout, md, memtoreg, wd);

regfile     rf(clk, regwrite, ra1, ra2, wa, wd, rd1, rd2);
alu         alunlt(src1, src2, alucont, aluresult);
zerodetect  zd(aluresult, zero);

endmodule 


