`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2022 05:25:01 PM
// Design Name: 
// Module Name: regFile
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module regFile(

input wire [4:0] rs, wire [4:0] rt, wire [4:0] wdestReg, wire [31:0] wbData, wire wwreg, wire clk,
output reg [31:0] qa, reg [31:0] qb

    );
    reg [31:0] registers [31:0]; // 32x32 register 
    initial begin 
        registers[0] = 0; 
        registers[1] = 0;
        registers[2] = 0; 
        registers[3] = 0; 
        registers[4] = 0; 
        registers[5] = 0; 
        registers[6] = 0;
        registers[7] = 0; 
        registers[8] = 0; 
        registers[9] = 0; 
        registers[10] = 0;
        registers[12] = 0; 
        registers[13] = 0;
        registers[14] = 0;  
        registers[15] = 0;  
        registers[16] = 0;  
        registers[17] = 0;  
        registers[18] = 0;  
        registers[19] = 0;  
        registers[20] = 0;  
        registers[21] = 0;  
        registers[22] = 0;  
        registers[23] = 0;  
        registers[24] = 0;  
        registers[25] = 0;  
        registers[26] = 0;  
        registers[27] = 0;  
        registers[28] = 0;  
        registers[29] = 0;  
        registers[30] = 0; 
        registers[31] = 0;  
        end 
    always @(*) begin 
        qa = registers[rs]; 
        qb = registers[rt];
        end 
    always @(negedge clk) begin 
        if (wwreg == 1) begin 
            registers[wdestReg] = wbData; 
            end 
        end 
        
    
endmodule
