module RegisterBank(
        input clk,
        input RegWrite, // 1 if a register should be written
        input [4:0] RA1, // read address
        input [4:0] RA2,
        input [4:0] WA, // write address
        input [31:0] WD, // write data
        output reg [31:0] RD1,
        output reg [31:0] RD2
);   
        
        reg [31:0] REGISTERS [31:0];
        
        initial 
            $readmemh("MEM_INIT.mem", REGISTERS);
        
        always@(posedge clk) begin
            if(RegWrite)
                REGISTERS[WA] = WD;
                
            RD1 <= REGISTERS[RA1];
            RD2 <= REGISTERS[RA2];
        end    
  
endmodule