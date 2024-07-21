// https://courses.cs.washington.edu/courses/cse378/09wi/lectures/lec07.pdf
// https://medium.com/@LambdaMamba/building-a-mips-single-cycle-processor-in-verilog-9a3fac6321d

module top(
        input clk
);
    wire [31:0] PC_OUT, ADDER_OUT, IM_OUT, RD1, RD2, WD;
    wire [4:0] MUX1_OUT;
    wire RegWrite, RegDst;
    
    ProgramCounter PC(clk, ADDER_OUT, PC_OUT);
    
    ADDER SUM4(PC_OUT, 32'h0000_0004, ADDER_OUT);
    
    InstructionMemory IM(PC_OUT, IM_OUT);
    
    MUX21#(5) mux1(IM_OUT[20:16], IM_OUT[20:16], RegDst, MUX1_OUT);
//                                            RA1       RA2            WA
    RegisterBank RegBank(clk, RegWrite, IM_OUT[25:21], IM_OUT[20:16], MUX1_OUT, WD, RD1, RD2);  
    
endmodule


module tb;
    reg clk;

    top inst(clk);


    initial
    begin
        #0 clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial
        #200 $finish;
    
    initial
    begin
        
    
    
    end

endmodule