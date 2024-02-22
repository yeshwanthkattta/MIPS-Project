//-------------------------------------------------------
// Model of 256-word 8-bit memory for the mips processor. 
// NOTE: this will NOT SYNTHESIZE and is not meant to.
// author: Erik Brunvand
// modified by: T.Farmer for ECE 128
//-------------------------------------------------------
`timescale 1ns/10ps
module ram (memdata, memwrite, adr, writedata, clk);

   output [7:0] memdata   ;
   input        memwrite  ;
   input  [7:0] adr       ;
   input  [7:0] writedata ;
   input        clk       ;

   reg    [7:0] memdata   ;
   reg    [7:0] mips_ram [0:255] ;  // actual memory 2D array

   integer i, k ;

   // The following $readmemh statement initializes the RAM contents 
   // via an external file (use $readmemb for binary data). The ram.dat 
   // file is a list of bytes, one per line, starting at address 0.  

   initial begin

	// reset's memory upon startup (CLEARS ALL DATA TO 0)
	//
	for(i=0; i<256; i=i+1) 
		mips_ram[i]=8'b0;
	$display("RAM: Memory initialized to 0");


	// loads contents of memory from a file called: ram.dat
	//
	$readmemb("ram.dat", mips_ram);		// if ram.dat is binary
	//$readmemh("ram.dat", mips_ram);	// if ram.dat is hex
	$display ("RAM: External Memory File: ram.dat loaded into RAM.");

	// displays contents of memory after file load
	//
        $display("        252:00000000");
        $display("        253:00000000");
        $display("        254:00000000");
        $display("        255:00000011");
	$display("RAM: Contents of Mem after reading data file:");
	for (k=0; k<256; k=k+1) 
		$display("%d:%b",k,mips_ram[k]);

   end

   // The behavioral description of the RAM - note clocked behavior
   always @(negedge clk) begin
         if (memwrite) begin	    // must be a write
            mips_ram[adr] = writedata;
	    $writememb("ram.after.dat", mips_ram) ; //write out contents of ram to file
	 end
         memdata <= mips_ram[adr];  // must be a read
   end
endmodule
