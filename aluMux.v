`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 06:01:37 PM
// Design Name: 
// Module Name: aluMux
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


module aluMux(
    input wire [31:0] eqb, wire [31:0] eimm32 , wire ealuimm, 
    output reg [31:0] b

    );
    always @(*) begin 
    
    if (ealuimm == 0) begin 
        b = eqb;
        end 
    //if (ealuimm == 1) begin
    else begin 
        b = eimm32; 
    end 
    end 
endmodule
