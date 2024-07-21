module MUX21#(parameter SIZE = 32)(
        input [SIZE-1:0] IN0,
        input [SIZE-1:0] IN1,
        input SEL,
        output [SIZE-1:0] OUT
);

    assign OUT = (SEL == 0) ? IN0 : IN1;

endmodule


