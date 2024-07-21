module ADDER(
        input [31:0] A,
        input [31:0] B,
        output [31:0] OUT
);
    
    assign OUT = A + B;

endmodule


module ALU(
        input [31:0] A,
        input [31:0] B,
        input [3:0] OP,
        output reg ZERO,
        output reg [31:0] OUT
);

    always@({A,B,OP})
    begin
        case(OP)
            4'b0000: begin OUT = A & B; ZERO = 0; end
            4'b0001: begin OUT = A | B; ZERO = 0; end
            4'b0010: begin OUT = A + B; ZERO = 0; end
            4'b0110: begin OUT = A - B; ZERO = 0; end
            4'b0111: ZERO = (A < B) ? 1'b1 : 1'b0;
            4'b1100: begin OUT = ~ ( A | B ); ZERO = 0; end
        endcase
    end

endmodule