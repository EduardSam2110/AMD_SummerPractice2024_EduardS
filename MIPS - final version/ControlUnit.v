module ControlUnit(
        input [5:0] FUNCT,
        input [5:0] OPCODE,
        input ZERO, // from ALU
        output reg REG_DST,// 1 - select rd as destination register
        output reg REG_WRITE,// 1- activate the writing to the register
        output reg EX_TOP,
        output reg ALU_SRC, // 1 - immediate    0 - register
        output reg [3:0] ALU_OP, // ALU operation
        output reg MEM_WRITE, // 1 - write to memory
        output reg MEM2REG, // 0 - output comes from ALU   1 - output comes from data memory
        output reg PC_SRC, // PC_SRC = ZERO    0 - continues to PC+4    1 - branches to PC+4+(offset*4)
        output reg JUMP // jump to given address
);

    always@(FUNCT or OPCODE or ZERO)
    if(OPCODE == 6'b0) begin// R-TYPE
        case(FUNCT) // opcode (6) | r1 (5) | r2 (5) | rd (5) | shamt (5) | funct (6)
            6'b100_000 : {REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG} = 10'b1_1_0_0_0010_0_0; // add
            6'b100_010 : {REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG} = 10'b1_1_0_0_0110_0_0; // sub
            6'b100_100 : {REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG} = 10'b1_1_0_0_0000_0_0; // and
            6'b100_101 : {REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG} = 10'b1_1_0_0_0001_0_0; // or
            6'b101_010 : {REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG} = 10'b1_1_0_0_0111_0_0; // slt
            default : {REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG} = 10'b0;
        endcase
        {PC_SRC, JUMP} = 0;
    end
    else begin // I-TYPE and others
        casex(OPCODE)
            // I-TYPE  -> opcode (6) rs (5) rd (5) offset (16)
            6'b001_000: {REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG, PC_SRC, JUMP} = 12'b0_1_0_1_0010_0_0_0_0; // addi
            //opcode (6) rs (5) rd (5) offset (16)
            6'b100_011: {REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG, PC_SRC, JUMP} = 12'b0_1_0_1_0010_0_1_0_0; // lw
            6'b101_011: {REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG, PC_SRC, JUMP} = 12'b0_0_0_1_0010_1_0_0_0; // sw
            6'b000_100: {REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG, JUMP, PC_SRC} = {11'b0_0_1_0_0101_1_0_0, ZERO}; // beq
            // opcode (6) target (26)
            6'b000010: {REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG, PC_SRC, JUMP} = 12'b0_0_0_0_0000_0_1_0_1; // j
            default : {REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG, PC_SRC, JUMP} = 12'b0;
        endcase
    end

endmodule

/*

R-TYPE
        FUNCT    -> OPCODE = 0
ADD   100_000
SUB   100_010
AND   100_100
OR    100_101
SLT   101_010

opcode (6) | r1 (5) | r2 (5) | rd (5) | shamt (5) | funct (6)

shamt - numbers of bits for shifting (shift instrunctions only)
funct - specify the exact function (add, sub etc)

RegDst - 1 (select rd as desination register)
RegWrite - 1 (activate the writing to the register)
AluSrc - 0 (for R instructions the operands come from -R-egisters)
ExTop, MemWrite - 0 (we dont use ExTop for R type and R type dont write to memory)
Mem2Reg - 1 (the data to be written is coming from ALU, not data memory)

I-TYPE
        OPCODE
ADDi  001_000
LHi   011_001
LOi   011_000

opcode (6) | r (5) | rd (5) | immediate (16)

RegDst - 0 (uses the same register for destination)
RegWrite - 1 (activate the writing to the register)
AluSrc - 1 (for I instructions the operands come from SignExtended Immediates)
ExTop - 1 or 0 
MemWrite - 0 (not for addi)
Mem2Reg - 1 (the data to be written is coming from ALU, not data memory)

Mem2Reg - data read from memory to be written in destination register

*/