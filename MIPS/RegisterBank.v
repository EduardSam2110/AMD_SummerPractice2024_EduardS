module RegisterBank(
        input clk,
        input RegWrite, // 1 if a register should be written
        input [4:0] RA1, // read address
        input [4:0] RA2,
        input [4:0] WA, // write address
        input [31:0] WD, // write data
        output [31:0] RD1,
        output [31:0] RD2
);   
        
        reg [31:0] REGISTERS [31:0];
        
        initial 
            $readmemh("MEM_INIT.mem", REGISTERS);
        
        always@(posedge clk)
            if(RegWrite)
                REGISTERS[WA] <= WD;
        
        assign RD1 = REGISTERS[RA1];
        assign RD2 = REGISTERS[RA2];
  
endmodule

/*  
            REGISTERS[0] -> zero
            REGISTERS[1] -> at
            REGISTERS[2] -> v0
            REGISTERS[3] -> v1
            REGISTERS[4] -> a0
            REGISTERS[5] -> a1
            REGISTERS[6] -> a2
            REGISTERS[7] -> a3
            REGISTERS[8] -> t0
            REGISTERS[9] -> t1
            REGISTERS[10] -> t2
            REGISTERS[11] -> t3
            REGISTERS[12] -> t4
            REGISTERS[13] -> t5
            REGISTERS[14] -> t6
            REGISTERS[15] -> t7
            REGISTERS[16] -> t8
            REGISTERS[17] -> t9
            REGISTERS[18] -> s0
            REGISTERS[19] -> s1
            REGISTERS[20] -> s2
            REGISTERS[21] -> s3
            REGISTERS[22] -> s4
            REGISTERS[23] -> s5
            REGISTERS[24] -> s6
            REGISTERS[25] -> s7
            REGISTERS[26] -> k0
            REGISTERS[27] -> k1
            REGISTERS[28] -> gp
            REGISTERS[29] -> sp
            REGISTERS[30] -> fp
            REGISTERS[31] -> ra
*/