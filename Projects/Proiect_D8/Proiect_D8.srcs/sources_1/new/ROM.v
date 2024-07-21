module ROM(clk, en, out);
    input clk, en;
    output reg [31:0] out;

    reg [31:0] rom [99:0];
    reg [7:0] addr;
    
    initial
        $readmemb("ROM_MEM.mem", rom);
    
    // la fiecare psedge de clk se incrementreaza adresa si citesti din ea la out, cand EN = 1
    
    always@(posedge clk)
        if(en) begin
            out <= rom[addr];
            if(addr <= 99)
                addr <= addr + 1;
            else
                addr <= 0;
        end
endmodule

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

module MUX21#(parameter SIZE = 4)(in1, in0, out, sel);

    input[SIZE-1:0] in1, in0;
    output [SIZE-1:0] out;
    input sel;

    assign out = (sel == 0) ? in0 : in1;
    
endmodule

module clk_divider(clk, clk_out);
    input clk;
    output reg clk_out;

    parameter di = 138_875; // 33.33 Mhz / 240 hz
    reg[31:0] counter;
    
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

module ALU#(parameter N = 12)(A, B, OP, OUT, ERR, OF, ZERO);

    input [N-1:0] A, B;
    input [3:0] OP;
    output reg [N-1:0] OUT;
    output reg ERR, OF; // OF joaca rol si de UNFERFLOW
    output reg ZERO;

    
    always@(OP or A or B)
    begin
        ERR = 0;
        case(OP)
            4'b0000: begin {OF,OUT} <= A + B; ZERO <= 0; end
            4'b0001: begin {OF,OUT} <= A - B; ZERO <= 0; end
            4'b0010: begin OUT <= A << B; {ZERO, OF} <= 0; end
            4'b0011: OUT <= A >> B;
            4'b0100: ZERO <= (A == B) ? 1'b1 : 1'b0;
            4'b0101: ZERO <= (A > B) ? 1'b1 : 1'b0;
            4'b0110: ZERO <= (A < B) ? 1'b1 : 1'b0;
            default: ERR <= 1;
         endcase
      end
    
endmodule

module register(clk, pl, di, do);
    input clk, pl;
    input[11:0] di;
    output reg[11:0] do;
    
    always@(posedge clk)
        if(pl)
            do <= di;
            
endmodule

module DEC_ERRF(in, out); // primul segment din stanga, pe display

    input[2:0] in;
    output reg[3:0] out;
    //{ERR, OF, ZERO}
    always@(in)
        case(in)
            3'b001: out = 4'b0010; //2 -> Z
            3'b010: out = 4'b1000; // 8 -> OV
            3'b100: out = 4'b1110; // 14 -> ERR
            default: out = 4'b0000; // 0 
        endcase
endmodule

module DEC_BT(in, out);
    input[2:0] in;
    output reg[1:0] out;
    // BT2 BT1 BT0
    always@(in)
        case(in)
            3'b000: out = 2'b00;
            3'b001: out = 2'b01;
            3'b010: out = 2'b10;
            3'b100: out = 2'b11;
        endcase
endmodule

module one_period(clk, in, out);

    input clk, in;
    output out;
    reg [1:0] cs = 2'b00, ns;
    
    always @(posedge clk)
        cs <= ns;
    
    always @(cs or in)
    case({cs,in}) 
    //00 - butonul nu e apasat
    //01 - buton apasat o singura data, trece in 00 daca nu se tine apsat
    //10 - stare de hold
        3'b00_0: ns = 2'b00;
        3'b00_1: ns = 2'b01;
        3'b01_0: ns = 2'b00;
        3'b01_1: ns = 2'b10;
        3'b10_1: ns = 2'b10;
        3'b10_0: ns = 2'b00;
        default: ns = 2'b00;
    endcase
    
    assign out = (cs == 2'b01) ? 1 : 0;

endmodule

module RAM(clk, data_in, addr, RW, out);
    input clk, RW; // R-1    W-0
    input [31:0] data_in;
    input [7:0] addr;
    output reg [31:0] out;
    
    reg [31:0] ram [99:0];
    
    parameter MAX_ADDR = 100;
    
    reg [6:0] counter = 0;
    reg reset = 1;
    
    always@(posedge clk)
        if(reset)
            if(counter <= 99)
                ram[counter] <= 0;
            else begin
                counter <= 0;
                reset <= 0;
            end
        else
            if(addr <= MAX_ADDR - 1)
                if(RW)
                    out <= ram[addr];
                else
                    ram[addr] <= data_in;
            

endmodule

module top(clk, en_rom, BT0, BT1, BT2, N_or_RAM, RW, addr, data_in_RAM,
           a, b, c, d, e, f, g, A);
    
    input clk, en_rom;
    input BT0, BT1, BT2;
    input N_or_RAM, RW;
    input [11:0] addr;
    input [31:0] data_in_RAM;
    
    output a,b,c,d,e,f,g;
    output [3:0] A;


    wire clk_div;
    wire ERR, OF, ZERO;
    wire[1:0] debug_cmd;
    
    wire [31:0] rom_out, ram_out;
    wire [11:0] ALU_OUT, MUX_LEFT_OUT, MUX21_out, regout1, regout2;
    wire [3:0]  MUX41_OUT, regop, decerrf_out;
    wire [1:0]  cnt_out;
    wire one_period_out;
    
    clk_divider inst(clk, clk_div);
    
    one_period op(clk, en_rom, one_period_out); 
    
    ROM rom(clk, one_period_out, rom_out);
    
    RAM ram(clk, data_in_RAM, addr, RW, ram_out); // 12 biti comanda / 12 biti data / 8 biti adresa
    
    MUX21#(12)(ram_out[19:8], rom_out[23:12], MUX21_out, N_or_RAM);
    
    CNT2 cnt(clk_div, cnt_out);
    register RgA(clk_div, 1 , mux21_out, regout1); // reg A
    register RgB(clk_div, 1 , rom_out[23:12], regout2); //reg B
    register RgOP(clk_div, 1 , {8'b0,rom_out[27:24]}, regop); // operatia
    
    ALU alu(regout1, regout2, regop[3:0], ALU_OUT, ERR, OF, ZERO);
    
    DEC_BT becbt({BT2,BT1,BT0}, debug_cmd);
    
    DEC_ERRF({ERR, OF, ZERO}, decerrf_out);
    
    MUX41#(12) mux_left(regop, regout1, regout2, ALU_OUT, MUX_LEFT_OUT, debug_cmd);
       
    DEC24 dec(cnt_out, A);
    
    MUX41 mux_right(decerrf_out, MUX_LEFT_OUT[11:8], MUX_LEFT_OUT[7:4], MUX_LEFT_OUT[3:0], MUX41_OUT, cnt_out);
    
    DIGT_DEC digt(MUX41_OUT, a, b, c, d, e, f, g);
    
    //Pe placuta: Enable OP A B

endmodule