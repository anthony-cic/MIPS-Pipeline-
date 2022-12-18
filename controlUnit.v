`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2022 05:25:01 PM
// Design Name: 
// Module Name: controlUnit 
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


module controlUnit(
    input wire [5:0] op,
    input wire [5:0] func, 
    output reg wreg, reg m2reg, reg wmem, reg [3:0] aluc, reg aluimm, reg regRt

    );
    always @(*) begin 
        case(op) 
            6'b000000: //r type 
            begin
                case(func)
                6'b100000: begin // add ins 
                    aluc = 4'b0010; 
                    wreg = 1; 
                    m2reg = 0;
                    aluimm = 0; 
                    regRt = 0; 
                    wmem = 0;
               end
                    // setting vals of control 
                    // signals for add ins 
                    // delete later 
                //6'b100010: // sub (not needed for lab3)  
                endcase
           end 
           6'b100011: begin //lw 
                aluc = 4'b0010;
                wreg = 1;
                m2reg = 1; 
                aluimm = 1;
                regRt = 1;
                wmem = 0;
                end 

       endcase 
       end 
    
endmodule
