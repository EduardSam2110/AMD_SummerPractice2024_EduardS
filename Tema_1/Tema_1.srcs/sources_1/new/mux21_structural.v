`timescale 1ns / 1ps


//structural -> porti logice
module mux21_structural1 #(parameter SIZE = 8)(di1,di0,sel,do);
	input[SIZE-1:0] di1, di0;
	input sel;
	output [SIZE-1:0] do;
	
	// Output = not(sel) * di0 + sel * di1
	
	assign do = ~sel & di0 | sel & di1;
	
		
endmodule

module AND#(parameter SIZE = 8)(a,b,o);
    input [SIZE-1:0] a,b;
    output [SIZE-1:0] o;
    assign o = a & b;
endmodule

module OR#(parameter SIZE = 8)(a,b,o);
    input [SIZE-1:0] a,b;
    output [SIZE-1:0] o;
    assign o = a | b;
endmodule

module NOT(a,a_neg);
    input  a;
    output  a_neg;
    assign a_neg = ~a;
endmodule

module mux21_structural2 #(parameter SIZE = 8)(di1,di0,sel,do);
	input[SIZE-1:0] di1, di0;
	input sel;
	output [SIZE-1:0] do;
	
	// Output = not(sel) * di0 + sel * di1
	wire sel_not;
	wire [SIZE-1:0] and_out1, and_out2;
	
	NOT inst1(sel, sel_not);
	AND#(SIZE) inst2({SIZE{sel_not}}, di0, and_out1);
	AND#(SIZE) inst3({SIZE{sel}}, di1, and_out2);
	OR#(SIZE) inst4(and_out1, and_out2, do);
	
		
endmodule



module tb2;
    parameter SIZE = 8;
    
    reg [SIZE-1:0] di1, di0;
	reg sel;
	wire [SIZE-1:0] do;
    
    mux21_structural2#(SIZE) inst(di1, di0, sel, do);
    
    initial
        #50 $finish;
    
    initial 
    begin
        #0 di0 = 8'hAB; di1 = 8'hCD; sel = 0;
        #20 sel = 1;
    
    end
    


endmodule