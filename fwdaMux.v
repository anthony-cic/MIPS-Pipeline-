`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2022 01:32:34 PM
// Design Name: 
// Module Name: fwdaMux
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


module fwdaMux(

    input wire fwda, wire [31:0] r, wire [31:0] qa, [31:0] mqb,
    output reg fwdout
    );
    
    always @(*) begin 
        
    if (fwda == 00) begin 
        fwdout = qa; end
    if (fwda == 01) begin 
        fwdout = r; end 
    if (fwda == 10) begin 
        fwdout = mqb; 
        end 
    // else LW ? 
    
    
    end 
     
endmodule
