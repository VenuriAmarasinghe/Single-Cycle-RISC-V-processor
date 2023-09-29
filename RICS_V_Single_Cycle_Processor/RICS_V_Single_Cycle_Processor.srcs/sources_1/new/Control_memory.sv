`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 03:10:00 PM
// Design Name: 
// Module Name: Control_memory
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


module Control_memory(
    input [6:0] opcode,
    output reg Branch,
    output reg Mem_read,
    output reg Mem_to_reg,
    output reg [6:0]ALU_OP,
    output reg Mem_write,
    output reg ALU_src,
    output reg Reg_write
    );
    
    always_comb begin
        case (opcode)
            7'b0110011: begin 
               Branch<=0;
               Mem_read <=0;
               Mem_to_reg<=0;
               ALU_OP<= opcode;
               Mem_write<=0;
               ALU_src<=0;
               Reg_write<=1;
            end
            
            7'b0010011: begin 
               Branch<=0;
               Mem_read <=0;
               Mem_to_reg<=0;
               ALU_OP<= opcode;
               Mem_write<=0;
               ALU_src<=1;
               Reg_write<=1;
            end
            
            
            default : begin 
               Branch<=0;
               Mem_read <=0;
               Mem_to_reg<=0;
               ALU_OP<= opcode;
               Mem_write<=0;
               ALU_src<=1;
               Reg_write<=1;
            end
            
        endcase
    end 
endmodule
