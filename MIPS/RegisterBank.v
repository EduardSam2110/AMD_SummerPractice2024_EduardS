module RegisterBank(
        input clk,
        input RegWrite, // 1 if a register should be written
        input [4:0] RA1, // read address
        input [4:0] RA2,
        input [4:0] WA, // write address
        input [31:0] WD, // write data
        output [31:0] RD1,
        output [31:0] RD2
);   
        
        reg [31:0] REGISTERS [31:0];
        
        initial 
            $readmemh("MEM_INIT.mem", REGISTERS);
        
        always@(posedge clk)
            if(RegWrite)
                REGISTERS[WA] <= WD;
        
        assign RD1 = REGISTERS[RA1];
        assign RD2 = REGISTERS[RA2];
  
endmodule