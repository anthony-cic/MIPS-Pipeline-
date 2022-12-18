`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2022 05:25:01 PM
// Design Name: 
// Module Name: im
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


module im(
    
    input wire [31:0] pc, 
    output reg [31:0] instOut 

    );
    reg [31:0] memory [0:63]; 
    initial begin
        memory[25] = 32'b10001100000000100000000000000000; // lw $v0, 00($at) $v0 = 2, $a0 = 0 
    	memory[26] = 32'b10001100000000110000000000000100; // lw $v1, 04($at) $v1 = 3, $a0 = 0 
    	
    	// lab 4 ins 
    	memory[27] = 32'b10001100000001000000000000001000; // lw $4, 08($1) 
    	memory[28] = 32'b10001100000001010000000000001100; // lw $5, 12($1)   
    	
    	memory[29] = 32'b00000000010010100011000000100000; //add $6, $2, $10 
    end 
    always @(*) begin // always execute every signal change (* means every input) 
    //instOut = memory[pc]; 
    instOut = memory[pc[7:2]]; // removes last 2 bits from pc and uses that to addr memory 
    end 
endmodule
