module ControlUnit(
        input [5:0] FUNC,
        input [5:0] OPCODE,
        input ZERO, // de la ALU
        output reg REG_DST,
        output reg REG_WRITE,
        output reg EX_TOP,
        output reg ALU_SRC,
        output reg [3:0] ALU_OP,
        output reg MEM_WRITE,
        output reg MEM2REG
);

    always@(FUNC or OPCODE)
    if(OPCODE == 0) // deci e R-TYPE
        {REG_DST, REG_WRITE, EX_TOP, ALU_SRC, ALU_OP, MEM_WRITE, MEM2REG} = 10'b0_0_0_0_0000_0_0;
    
       
    //TREBUIE GASITA LOGICA DINTRE SEMNALE


endmodule

/*

R-TYPE
        FUNC    -> OPCODE = 0
ADD   100_000
SUB   100_010
AND   100_100
OR    100_101
SLT   101_010



I-TYPE
        OPCODE
ADDi  001_000
LHi   011_001
LOi   011_000





*/