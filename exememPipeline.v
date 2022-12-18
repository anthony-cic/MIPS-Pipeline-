`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 07:15:51 PM
// Design Name: 
// Module Name: exememPipeline
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


module exememPipeline(
    input wire ewreg, wire em2reg, wire ewmem, wire [4:0] edestReg, wire [31:0] r, wire [31:0] eqb, wire clk, 
    output reg mwreg, reg mm2reg, reg mwmem, reg [4:0] mdestReg, reg [31:0] mr, reg [31:0] mqb 

    );
    
    always @(posedge clk) begin 
        mwreg = ewreg;
        mm2reg = em2reg; 
        mwmem = ewmem; 
        mdestReg = edestReg; 
        mr = r;
        mqb = eqb; 
        end 
endmodule
