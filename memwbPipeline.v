`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2022 12:01:30 PM
// Design Name: 
// Module Name: memwbPipeline
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


module memwbPipeline(
    input wire mwreg, wire mm2reg, wire [4:0] mdestReg, wire [31:0] mr, wire [31:0] mdo, wire clock, 
    
    output reg wwreg, reg wm2reg, reg [4:0] wdestReg, reg [31:0] wr, reg [31:0] wdo 

    );
    always @(posedge clock) begin 
        wwreg = mwreg;
        wm2reg = mm2reg; 
        wdestReg = mdestReg; 
        wr = mr; 
        wdo = mdo;
        end 
endmodule
