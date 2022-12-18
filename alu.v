`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 06:31:13 PM
// Design Name: 
// Module Name: alu
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


module alu(
    input wire [31:0] eqa, wire [31:0] b, wire [3:0] ealuc, 
    output reg [31:0] r

    );
    
    always @(*) begin 
        
        // add case: 
        if (ealuc == 4'b0010) begin 
            r = eqa + b; 
            end
        // add lw case? 
        end 
    
endmodule
