module InstructionMemory( // ROM-ul
        input [7:0] ADDRESS,
        output [31:0] INSTRUCTION
);
    reg [7:0] IM [99:0];
    
    initial
        $readmemb("InstrMem.mem", IM);
    
    assign INSTRUCTION = {IM[ADDRESS+3], IM[ADDRESS+2], IM[ADDRESS+1], IM[ADDRESS]};
    
endmodule