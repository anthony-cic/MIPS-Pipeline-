`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2022 05:25:01 PM
// Design Name: 
// Module Name: idexePipeline
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


module idexePipeline(
    input wire wreg, wire m2reg, wire wmem, wire [3:0] aluc, wire aluimm, wire [4:0] destReg, wire [31:0] qa, wire [31:0] qb, wire [31:0] imm32, wire clock,
    
    output reg ewreg, reg em2reg, reg ewmem, reg [3:0] ealuc, reg ealuimm, reg [4:0] edestReg, reg [31:0] eqa, reg [31:0] eqb, reg [31:0] eimm32 
    );
    always @(posedge clock) begin 
        ewreg = wreg;
        em2reg = m2reg;
        ewmem = wmem; 
        ealuc = aluc; 
        ealuimm = aluimm; 
        edestReg = destReg; 
        eqa = qa; 
        eqb = qb; 
        eimm32 = imm32; 
        end
endmodule
