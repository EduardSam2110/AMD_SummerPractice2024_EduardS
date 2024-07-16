// https://courses.cs.washington.edu/courses/cse378/09wi/lectures/lec07.pdf
// https://medium.com/@LambdaMamba/building-a-mips-single-cycle-processor-in-verilog-9a3fac6321d

module top(
        input clk
);
    wire [31:0] PC_OUT, ADDER4_OUT, ADDER_SE_OUT, IM_OUT, RD1, RD2, 
                WD, SE_OUT, MUX2_OUT, ALU_OUT, RD, SHL2_OUT, MUX_PC_OUT, MUX_JUMP_OUT;
                
    wire [4:0] MUX1_OUT;
    wire [3:0] ALU_OP;

    wire REG_DST, REG_WRITE, EX_TOP, ALU_SRC, 
         MEM_WRITE, MEM2REG, ZERO, PC_SRC, JUMP;
         
    wire [5:0] OPCODE, FUNC;
    wire [4:0] RA1, RA2, DestReg;
    wire [25:0] JUMP_INSTR;
    
    assign OPCODE = IM_OUT[31:26];
    assign FUNC = IM_OUT[5:0];
    
    assign RA1 = IM_OUT[25:21];
    assign RA2 = IM_OUT[20:16];
    
    assign DestReg = IM_OUT[15:11];
    assign JUMP_INSTR = IM_OUT[25:0];
    
    ControlUnit CU(FUNC, OPCODE, ZERO, 
                   REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG, PC_SRC, JUMP);

                   
    ProgramCounter PC(clk, MUX_JUMP_OUT, PC_OUT);
    
    ADDER SUM4(PC_OUT, 32'h0000_0004, ADDER4_OUT);
    
    SHL shl1(SE_OUT, SHL2_OUT);
    
    ADDER SUM_SE(SHL2_OUT, ADDER4_OUT, ADDER_SE_OUT);
    
    MUX21#(32) mux_jump(MUX_PC_OUT, {ADDER_SE_OUT[31:28], JUMP_INSTR, 2'b0}, JUMP, MUX_JUMP_OUT);
    
    MUX21#(32) mux_pc(ADDER4_OUT, ADDER_SE_OUT, PC_SRC, MUX_PC_OUT); 
    // PC_SRC 1 - branches to PC+4+(offset*4)
    // PC_SRC 0 - continues to PC+4
    InstructionMemory IM(PC_OUT[7:0], IM_OUT);
    
    MUX21#(5) mux1(RA2, DestReg, REG_DST, MUX1_OUT);

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
        #100 $finish;
    
    initial
    begin
        
    
    
    end

endmodule