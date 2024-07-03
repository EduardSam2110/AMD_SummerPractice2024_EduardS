`timescale 1ns / 1ps


module alu#(parameter N = 8)(A, B, OP, OUT, ERR, OF, ZERO);

    input [N-1:0] A, B;
    input [3:0] OP;
    output reg [N-1:0] OUT;
    output reg ERR, OF; // OF joaca rol si de UNFERFLOW
    output reg ZERO;
    
    always@(OP or A or B)
        {ERR,ZERO,OF} <= 0;
    
    always@(OP or A or B)
    begin
        ERR = 0;
        case(OP)
            4'b0000: begin {OF,OUT} <= A + B; ZERO <= 0; end
            4'b0001: begin {OF,OUT} <= A - B; ZERO <= 0; end
            4'b0010: begin OUT <= A << B; {ZERO, OF} <= 0; end
            4'b0011: OUT <= A >> B;
            4'b0100: ZERO <= (A == B) ? 1'b1 : 1'b0;
            4'b0101: ZERO <= (A > B) ? 1'b1 : 1'b0;
            4'b0110: ZERO <= (A < B) ? 1'b1 : 1'b0;
            4'b0111: begin 
                        temp = 0;
                        for(i=0;i<B;i=i+1)
                            temp = temp + A;
                        OUT = temp;
                     end
            default: ERR <= 1;
         endcase
      end
    
endmodule

module tb;
    parameter N = 8;
    reg [N-1:0] A, B;
    reg [3:0] OP;
    wire [N-1:0] OUT;
    wire ERR, OF, ZERO;
        
    alu#(N) inst(A, B, OP, OUT, ERR, OF, ZERO); 
    
    initial
        #100 $finish;
        
    initial
    begin
        #0 A = 8'h3; B = 8'h32;
        #10 OP = 0;
        #10 OP = 1;
        #10 A = 8'h32; B = 8'h2; OP = 2; 
        #10 OP = 10;
        #10 OP = 3;
        #10 OP = 4;
        #10 OP = 5;
        #10 OP = 6;
        #10 OP = 7;
    
    end


endmodule
