module DIGT_DEC(in, a,b,c,d,e,f,g);
    input [3:0] in;
    output reg a, b, c, d, e, f, g;
    
    /*
                  a  
                  _
              f |   | b
                  - g
              e |   | c
                  -   
                  d
    */
    
    always@(in)
        case(in)
            0:  {a,b,c,d,e,f,g} <= ~ 7'b111_1110;
            1:  {a,b,c,d,e,f,g} <= ~ 7'b011_0000;
            2:  {a,b,c,d,e,f,g} <= ~ 7'b110_1101;
            3:  {a,b,c,d,e,f,g} <= ~ 7'b111_1001;
            4:  {a,b,c,d,e,f,g} <= ~ 7'b011_0011;
            5:  {a,b,c,d,e,f,g} <= ~ 7'b101_1011;
            6:  {a,b,c,d,e,f,g} <= ~ 7'b101_1111;
            7:  {a,b,c,d,e,f,g} <= ~ 7'b111_0000;
            8:  {a,b,c,d,e,f,g} <= ~ 7'b111_1111;
            9:  {a,b,c,d,e,f,g} <= ~ 7'b111_1011;
            10: {a,b,c,d,e,f,g} <= ~ 7'b111_0111;
            11: {a,b,c,d,e,f,g} <= ~ 7'b001_1111;
            12: {a,b,c,d,e,f,g} <= ~ 7'b100_1110;
            13: {a,b,c,d,e,f,g} <= ~ 7'b011_1101;
            14: {a,b,c,d,e,f,g} <= ~ 7'b100_1111;
            15: {a,b,c,d,e,f,g} <= ~ 7'b100_0111;
            default: {a,b,c,d,e,f,g} <= ~ 7'b000_0001;
        endcase
endmodule

module DEC24(ain, aout);

    input [1:0] ain;
    output reg [3:0] aout;
    
    always@(ain) begin
        case(ain)
            2'b00: aout = ~4'b0001;
            2'b01: aout = ~4'b0010;
            2'b10: aout = ~4'b0100;
            2'b11: aout = ~4'b1000;
        endcase
    end
endmodule

module CNT2(clk, out);

    input clk;
    output reg [1:0] out;
    
    initial 
        out <= 0;
    
    always@(posedge clk)
        if(out <= 2'b11) out <= out + 1;
        else out <= 0;        

endmodule

module MUX41#(parameter SIZE = 4)(in3, in2, in1, in0, out, sel);
    input [SIZE-1:0] in0, in1, in2, in3;
    input [1:0] sel;
    output reg [SIZE-1:0] out;

    always@(sel)
        case(sel)
            0: out = in0;
            1: out = in1;
            2: out = in2;
            3: out = in3;
        endcase

endmodule

module clk_divider(clk, clk_out);
    input clk;
    output reg clk_out;

    parameter di = 138_875; // 33.33 Mhz / 240 hz
    reg[31:0] counter;
    
    initial begin
        counter <= 0;
        clk_out <= 0;
    end
    
    always@(posedge clk)
    begin
        if(counter >= di - 1) 
        begin
            counter <= 0;
            clk_out <= ~clk_out;
        end
        else
            counter <= counter + 1;
    end

endmodule
