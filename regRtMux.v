`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2022 05:25:01 PM
// Design Name: 
// Module Name: regRtMux
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


module regRtMux(
    input wire [4:0] rt, // bits 20:16 of dinst out 
    input wire [4:0] rd, // bits 15:11 of dinst out 
    input wire regrt,
    output reg [4:0] destReg

    ); 
    always @(*) begin
        if (regrt == 0) begin 
            destReg = rd;
            end 
        else begin// reg rt == 1 
            destReg = rt; 
            end 
        end 
endmodule
