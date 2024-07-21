module InstructionMemory( // Contains the program to be executed
        input [7:0] ADDRESS,
        output [31:0] INSTRUCTION
);
    reg [7:0] IM [99:0];
    
    initial
        $readmemb("test_functii.mem", IM);
    
    assign INSTRUCTION = {IM[ADDRESS], IM[ADDRESS+1], IM[ADDRESS+2], IM[ADDRESS+3]};
    
endmodule
