`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2022 05:25:01 PM
// Design Name: 
// Module Name: immExtender
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


module immExtender(
    input wire [15:0] imm, 
    output reg [31:0] imm32 

    );
    always @(*) begin 
    //n = 32'h00000000;
    // imm32 = {(16*(imm[15])), imm};
    imm32 = {{16{imm[15]}}, imm}; // sign extension of imm32 + imm
     
    end 
endmodule
