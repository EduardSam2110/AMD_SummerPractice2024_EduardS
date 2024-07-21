

module RAM(clk, data_in, addr, RW, out);
    input clk, RW; // R-1    W-0
    input [31:0] data_in;
    input [7:0] addr;
    output reg [31:0] out;
    
    reg [31:0] ram [99:0];
    
    parameter MAX_ADDR = 100;
    
    integer i;
    
    initial
        for(i=0;i<MAX_ADDR;i=i+1) ram[i] <= 0;

    always@(posedge clk)
        if(addr <= MAX_ADDR - 1)
            if(RW)
                out <= ram[addr];
            else
                ram[addr] <= data_in;
        
endmodule

module ROM(clk, en, out);
    input clk, en;
    output reg [31:0] out;

    reg [31:0] rom [99:0];
    reg [7:0] addr;
    
    initial
        $readmemb("ROM_MEM.mem", rom);
    
    // la fiecare psedge de clk se incrementreaza adresa si citesti din ea la out, cand EN = 1
    
     always@(posedge clk)
        if(en) begin
            out <= rom[addr];
            if(addr <= 99)
                addr <= addr + 1;
            else
                addr <= 0;
        end


endmodule



module tb;
    reg clk, RW, en;
    reg [31:0] data_in;
    reg [7:0] addr;
    wire [31:0] out;   
    
    RAM ram(clk, data_in, addr, RW, out);
    ROM rom(clk, en, out);

    initial
    begin
        #0 clk = 0; 

        forever #5 clk = ~clk; 
     
    end
    
    
    
    initial
        #200 $finish;

    initial
    begin
        forever #10 begin
            data_in = $random; 
            RW = 0; 
            addr = $random;
        end

        
    end
    










endmodule
