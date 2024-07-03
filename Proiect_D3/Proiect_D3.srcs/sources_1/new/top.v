`timescale 1ns / 1ps
`define N 16


module top(clk, en, pl, di, clk_out, count);
    input clk, en, pl;
    input [`N-1:0] di;
    output reg clk_out;
    
    reg [`N-1:0] data;
    output reg [`N-1:0] count;
    
   always@(clk)
        if(pl & clk) begin
            data <= di;
            count <= 0;
            clk_out <= 0;
        end
        else if(en)
              if(count < data) begin
                    count <= count + 1;
                    clk_out <= 1;
              end
              else
                    if(count < (data << 1)-1) begin
                        count <= count + 1;
                        clk_out <= 0;
                    end
                    else
                        count <= 0;

endmodule

module tb;
    reg clk, en, pl;
    reg [`N-1:0] di1, di2, di3;
    wire clk_out1, clk_out2, clk_out3;
    wire [`N-1:0] count1, count2, count3;
    
    top inst1(clk, en, pl, di1, clk_out1, count1);
    top inst2(clk, en, pl, di2, clk_out2, count2);
    top inst3(clk, en, pl, di3, clk_out3, count3);

    
    initial
    begin
        #0 clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial
    #150 $finish;

    initial
    begin
    #0 pl = 1; di1 = 16'h2; di2=16'h3; di3=16'h5;
    #10 pl = 0;
    #20 pl=0; en=1;
    
    end


endmodule
