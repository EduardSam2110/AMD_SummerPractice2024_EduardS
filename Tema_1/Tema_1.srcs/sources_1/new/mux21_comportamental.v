`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 08:34:38 AM
// Design Name: 
// Module Name: mux21_comportamental
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux21_comportamental#(parameter SIZE = 8)(di1,di0,sel,do);
	input[SIZE-1:0] di1, di0;
	input sel;
	output reg[SIZE-1:0] do;
	
	always@(sel)
		do <= (sel==1) ? di1 : di0;
		
endmodule

//module tb;
//    parameter SIZE = 8;
    
//    reg [SIZE-1:0] di1, di0;
//	reg sel;
//	wire [SIZE-1:0] do;
    
//    mux21_comportamental#(SIZE) inst(di1, di0, sel, do);
    
//    initial
//        #50 $finish;
    
//    initial 
//    begin
//        #0 di0 = 8'hAB; di1 = 8'hCD; sel = 0;
//        #20 sel = 1;
    
//    end
    


//endmodule