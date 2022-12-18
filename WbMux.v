`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2022 03:17:56 PM
// Design Name: 
// Module Name: WbMux
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


module WbMux(
    input wire [31:0] wr, wire [31:0] wdo, wire wm2reg, 
    output reg [31:0] wbData

    );
    always @(*) begin
        if (wm2reg == 0) begin
            wbData = wr; 
            end 
        else begin
            wbData = wdo; 
            end 
        end 
endmodule
