`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 08:25:09 PM
// Design Name: 
// Module Name: dataMemory
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


module dataMemory(
    input wire [31:0] mr, wire [31:0] mqb, wire mwmem, wire clk,
     
    
    output reg [31:0] mdo
   
    );
    
    reg [31:0] mem [0:63];
    
     
    initial begin 
       mem[0] = 'hA00000AA;
	   mem[4] = 'h10000011;
	   mem[8] = 'h20000022;
	   mem[12] = 'h30000033;
	   mem[16] = 'h40000044;
	   mem[20] = 'h50000055;
	   mem[24] = 'h60000066;
	   mem[28] = 'h70000077;
	   mem[32] = 'h80000088;
	   mem[36] = 'h90000099;
	end 
    
    always @(*) begin 
        mdo = mem[mr]; 
        end 
    always @(negedge clk) begin 
        if (mwmem == 1) begin 
            mem[mr] = mqb; 
        end 
    end 
endmodule
