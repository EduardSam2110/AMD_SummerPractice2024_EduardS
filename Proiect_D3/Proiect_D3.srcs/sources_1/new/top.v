`timescale 1ns / 1ps

module CBBD_1(clk, reset, pl, D, Q);
    
    input clk, pl, reset;
    input D;
    output reg Q;
    
    always@(posedge clk)
        if(reset)
            Q <= 0;
        else if(pl)
            Q <= D;

endmodule

module CBBD_2(clk, reset, D, Q);
    
    input clk, reset;
    input D;
    output reg Q;
    
    always@(posedge clk)
        if(reset)
            Q <= 0;
        else 
            Q <= D;

endmodule

module PIPO(clk, reset, pl, IN, OUT);

    input clk, reset, pl;
    input [7:0] IN;
    output [7:0] OUT;

    CBBD_1 inst0(clk, reset, pl,IN[0], OUT[0]);
    
    CBBD_1 inst1(clk, reset, pl,IN[1], OUT[1]);
    
    CBBD_1 inst2(clk, reset, pl,IN[2], OUT[2]);
    
    CBBD_1 inst3(clk, reset, pl,IN[3], OUT[3]);
    
    CBBD_1 inst4(clk, reset, pl,IN[4], OUT[4]);
    
    CBBD_1 inst5(clk, reset, pl,IN[5], OUT[5]);
    
    CBBD_1 inst6(clk, reset, pl,IN[6], OUT[6]);
    
    CBBD_1 inst7(clk, reset, pl,IN[7], OUT[7]);


endmodule

module PISO(clk, reset, pl, IN, OUT, VALID);

    input clk, reset, pl;
    input [7:0] IN;
    output reg OUT, VALID;
    
    wire [7:0] Q;
    
    reg [7:0] temp; // registru temporar sa pastram datele care se "misca" intre registre

    CBBD_2 inst0(clk, reset, temp[7], Q[0] );
    
    CBBD_2 inst1(clk, reset, Q[0], Q[1]);
    
    CBBD_2 inst2(clk, reset, Q[1], Q[2]);
    
    CBBD_2 inst3(clk, reset, Q[2], Q[3]);
    
    CBBD_2 inst4(clk, reset, Q[3], Q[4]);
    
    CBBD_2 inst5(clk, reset, Q[4], Q[5]);
    
    CBBD_2 inst6(clk, reset, Q[5], Q[6]);
    
    CBBD_2 inst7(clk, reset, Q[6], Q[7]);
    
    
    
    always@(posedge clk)
    begin
        if(reset)
            temp <= 0;
        else if(pl)
            temp <= IN;
        else if(temp == 0)
            OUT <= Q[7];
        else
            temp <= temp << 1;
        
        if(Q == IN) // trebuie inversat IN sau Q pentru ca sunt fix inversi
            assign VALID = 1;
        else 
            assign VALID = 0; 
            
   end

endmodule

module SISO(clk, reset, IN, OUT);

    input clk, reset;
    input IN;
    output OUT;
    
    wire [6:0] Q;
    

    CBBD_2 inst0(clk, reset, IN, Q[0] );
    
    CBBD_2 inst1(clk, reset, Q[0], Q[1]);
    
    CBBD_2 inst2(clk, reset, Q[1], Q[2]);
    
    CBBD_2 inst3(clk, reset, Q[2], Q[3]);
    
    CBBD_2 inst4(clk, reset, Q[3], Q[4]);
    
    CBBD_2 inst5(clk, reset, Q[4], Q[5]);
    
    CBBD_2 inst6(clk, reset, Q[5], Q[6]);
    
    CBBD_2 inst7(clk, reset, Q[6], OUT);



endmodule

module SIPO(clk, reset, IN, OUT);

    input clk, reset;
    input IN;
    
    output reg[7:0] OUT;
    
    wire[7:0] Q;
    reg[3:0] count;
    

    CBBD_2 inst0(clk, reset, IN, Q[0] );
    
    CBBD_2 inst1(clk, reset, Q[0], Q[1]);
    
    CBBD_2 inst2(clk, reset, Q[1], Q[2]);
    
    CBBD_2 inst3(clk, reset, Q[2], Q[3]);
    
    CBBD_2 inst4(clk, reset, Q[3], Q[4]);
    
    CBBD_2 inst5(clk, reset, Q[4], Q[5]);
    
    CBBD_2 inst6(clk, reset, Q[5], Q[6]);
    
    CBBD_2 inst7(clk, reset, Q[6], Q[7]);
    
    always@(posedge clk)
        if(reset)
            count <= 0;
        else if(count == 8)
            begin
                OUT <= Q;    
                count <= 0;
            end
        else
            count <= count + 1;


endmodule

module tb;

    reg reset, pl, clk;
    reg [7:0] IN;
    reg IN_serial;
    
    wire [7:0] OUT1, OUT4;
    wire OUT2, OUT3, VALID;
    
    PIPO rg1(clk, reset, pl, IN, OUT1);
    PISO rg2(clk, reset, pl, IN, OUT2, VALID);
    SISO rg3(clk, reset, IN_serial, OUT3);
    SIPO rg4(clk, reset, IN_serial, OUT4);

    initial 
    begin
        #0 clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial
        #500 $finish;

    initial
    begin
        #0 reset = 1; pl = 0; IN = 8'b1011_1001; IN_serial = 1;
        #20 reset = 0; pl = 1; IN_serial = 0;
        #10 pl = 0; 
        forever #10 IN_serial = ~IN_serial;
    end






endmodule
