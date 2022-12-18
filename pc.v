`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2022 05:18:28 PM
// Design Name: 
// Module Name: pc
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


module pc(

    input wire [31:0] nextPc, clock,
    output reg [31:0] pc

    );
    initial begin 
        pc = 100; 
        end 
   
    always @(posedge clock) begin
    
    //nextPc = pc + 4; 
    pc = nextPc; 
     
   end 
    
endmodule
