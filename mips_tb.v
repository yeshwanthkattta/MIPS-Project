`timescale 1ns/10ps
module mips_tb();

reg clk, reset;

wire memread, memwrite;
wire [7:0] adr, writedata, memdata;

ram mem(memdata, memwrite, adr, writedata, clk);
mips mip(clk, reset, memdata, memread, memwrite, adr, writedata);

initial begin
 clk = 1'b0;
 reset = 1'd0;
 #50 reset = 1'd1;
 while (~memwrite) begin
  #50;
  end
  #50 $finish;
end

always
 #20 clk = ~clk;

endmodule


