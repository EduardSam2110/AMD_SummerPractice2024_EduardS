`timescale 1ns / 1ps

module LED(clk, reset, pl, in, out);

    input in, pl, clk, reset;
    output reg out;
        
    
    always@(posedge clk)
        if(reset)
            out <= 0;
        else if(pl)
            out <= in;
           
endmodule