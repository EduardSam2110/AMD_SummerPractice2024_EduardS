module DataMemory( // RAM 
        input clk, 
        input MemWrite, // R-1    W-0 
        input [31:0] WD, // write data - what we write to an address
        input [31:0] ADDR,
        output reg [31:0] RD, // read data - what we're reading from an address
        // for user
        input [11:0] data_in,
        output [11:0] data_read
);
    reg [31:0] ram [31:0];
    
    parameter MAX_ADDR = 32;
   
    initial
        $readmemh("MEM_INIT.mem", ram); 
    
    always@(posedge clk) begin
        if(ADDR <= MAX_ADDR - 1) begin
            if(MemWrite)
                ram[ADDR] <= WD;
            else
                RD <= ram[ADDR];  
        end
        
        ram[16] <= {20'b0,data_in};
    
    end

        
    assign data_read = ram[31][11:0];

endmodule


/*
we read from switches (stored at addr 100) and then we lw that value into
x1 register. After that, we store x1 value into addr 127 and then the output
is shown on LEDs.
*/

