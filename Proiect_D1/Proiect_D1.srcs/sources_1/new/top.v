`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2024 11:36:26
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
//////////////////////////////////////////////////////////////////////////////////

module AND_1(A,B,O);
    input A, B;
    output [1:0] O;
    
    assign O = { A&B, A^B };

    
endmodule

module tb;
    reg A, B;
    wire [1:0] O;
    
    AND_1 inst(A,B, O);
    
    initial
        #100 $finish;
    
    initial
    begin
        #5 A=0; B=0;
        #20 A=0; B=1;
        #20 A=1; B=0;
        #20 A=1; B=1;
    end
endmodule
