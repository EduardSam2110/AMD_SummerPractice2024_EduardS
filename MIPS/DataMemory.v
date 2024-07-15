module DataMemory( // RAM 
        input clk, 
        input MemWrite, // R-1    W-0 in desen e MemWrite
        input [31:0] WD, // write data, ceea ce scriu
        input [7:0] ADDR,
        output reg [31:0] RD // read data, data citita
);
    reg [31:0] ram [127:0];
    
    parameter MAX_ADDR = 128;
   
    initial
        $readmemh("MEM_INIT.mem", ram); 
    
    always@(posedge clk)
        if(ADDR <= MAX_ADDR - 1)
            if(MemWrite)
                RD <= ram[ADDR];
            else
                ram[ADDR] <= WD;
           
endmodule




