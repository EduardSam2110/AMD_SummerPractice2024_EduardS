// https://courses.cs.washington.edu/courses/cse378/09wi/lectures/lec07.pdf
// https://medium.com/@LambdaMamba/building-a-mips-single-cycle-processor-in-verilog-9a3fac6321d

module top(
        input clk
);
    wire [31:0] PC_OUT, ADDER_OUT, IM_OUT, RD1, RD2, 
                WD, SE_OUT, MUX2_OUT, ALU_OUT, RD;
                
    wire [4:0] MUX1_OUT;
    wire [3:0] ALU_OP;

    wire REG_DST, REG_WRITE, EX_TOP, ALU_SRC, 
         MEM_WRITE, MEM2REG, ZERO;
         
    wire [5:0] OPCODE, FUNC;
    wire [4:0] RA1, RA2;
    
    assign OPCODE = IM_OUT[31:26];
    assign FUNC = IM_OUT[5:0];
    
    assign RA1 = IM_OUT[25:21];
    assign RA2 = IM_OUT[20:16];
    
    ControlUnit CU(FUNC, OPCODE, ZERO, 
                   REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG);

                   
    ProgramCounter PC(clk, ADDER_OUT, PC_OUT);
    
    ADDER SUM4(PC_OUT, 32'h0000_0004, ADDER_OUT);
    
    InstructionMemory IM(PC_OUT[7:0], IM_OUT);
    
    MUX21#(5) mux1(IM_OUT[20:16], IM_OUT[15:11], REG_DST, MUX1_OUT);
//                                            RA1       RA2            WA
    RegisterBank RegBank(clk, REG_WRITE, RA1, RA2, MUX1_OUT, WD, RD1, RD2);  
    
    SignExt SE(IM_OUT[15:0], EX_TOP, SE_OUT); // ALU accepts either an operand, either a sign-extended immediate operand (lw, sw)
    
    MUX21#(32) mux2(RD2, SE_OUT, ALU_SRC, MUX2_OUT); // 0 - register operand    1 - immediate operand
    
    ALU alu(RD1, MUX2_OUT, ALU_OP, ZERO, ALU_OUT);
    //                            WD     ADDR     RD
    DataMemory DM(clk, MEM_WRITE, RD2, ALU_OUT, RD);
    
    MUX21#(32) mux3(RD, ALU_OUT, MEM2REG, WD);
    
    
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
        #50 $finish;
    
    initial
    begin
        
    
    
    end

endmodule