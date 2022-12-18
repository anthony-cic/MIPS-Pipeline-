`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2022 05:25:01 PM
// Design Name: 
// Module Name: datapath
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


module datapath(
    input clock,
    output wire [31:0] pc, wire [31:0] dinstOut, wire ewreg, wire em2reg, wire ewmem, wire [3:0] ealuc, wire ealuimm, wire [4:0] edestReg, 
    wire [31:0] eqa, wire [31:0] eqb, wire [31:0] eimm32, 
    wire mwreg, wire mm2reg, wire mwmem, wire [4:0] mdestReg, wire [31:0] mr, wire [31:0] mqb, // exemem 
    wire wwreg, wire wm2reg, wire [4:0] wdestReg, wire [31:0] wr, wire [31:0] wdo //mem wb 


    );
    // instantiate all other modules 
    // <filename> <module> () 
    
    programCounter programCounter(clock, pc); // pc 
    // inst memory next (im) ? 
    wire [31:0] instOut; 
    im im(pc, instOut);
    
    ifidPipeline ifidPipeline(instOut, clock, dinstOut); // IF ID Pipeline 
    
    wire [31:0] dinstOut32; // 32 bits obv 
    immExtender immExtender(dinstOut[15:0], dinstOut32); 
    
    // control unit, dinstOut[31:26] = op, dinstOut[5:0] = func 
    wire wreg;
    wire m2reg;
    wire wmem; 
    wire aluimm;
    wire regrt; 
    wire [3:0] aluc; 
    controlUnit controlUnit(dinstOut[31:26], dinstOut[5:0], wreg, m2reg, wmem, aluc, aluimm, regrt);
    
    wire [4:0] destReg; 
    regRtMux regRtMux(dinstOut[20:16],dinstOut[15:11], regrt, destReg); 
    wire [31:0] qa; //32 bits 
    wire [31:0] qb; //32 bits 
    
    regFile regFile(dinstOut[25:21], dinstOut[20:16], wdestReg, wbData, wwreg, clock, qa, qb); 
    // ID EXE PIPELINE must be done last in ID step? 
    idexePipeline idexePipeline(wreg, m2reg, wmem, aluc, aluimm, destReg, qa, qb, dinstOut32, clock, ewreg, em2reg, ewmem, ealuc, ealuimm, edestReg, eqa, eqb, eimm32);
    
    wire [31:0] b; 
    aluMux aluMux(eqb, eimm32, ealuimm, b);
    
    wire [31:0] r; 
    alu alu(eqa, b, ealuc, r); 
    
    //wire mwreg, mm2reg, mwmem;
    //wire [4:0] mdestReg;
    //wire [31:0] mr;
    //wire [31:0] mqb;
    exememPipeline exememPipeline(ewreg, em2reg, ewmem, edestReg, r, eqb, clock, mwreg, mm2reg, mwmem,mdestReg, mr, mqb);
    
    wire [31:0] mdo; 
    dataMemory dataMemory(mr, mqb, mwmem, clock, mdo); 
    
    memwbPipeline memwbPipeline(mwreg,mm2reg,mdestReg,mr, mdo, clock, wwreg,wm2reg, wdestReg, wr, wdo);
    
    wire [31:0] wbData; 
    WbMux WbMux(wr, wdo, wm2reg, wbData);
    
    
 
endmodule
