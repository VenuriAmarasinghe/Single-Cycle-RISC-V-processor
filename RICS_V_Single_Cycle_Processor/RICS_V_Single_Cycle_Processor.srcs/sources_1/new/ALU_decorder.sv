`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 06:02:38 AM
// Design Name: 
// Module Name: ALU_decorder
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


module ALU_decorder #(ALU_OP_width=4,OP_width=7) (
    input logic [OP_width-1:0] OP_code,
    input logic [2:0] funct3,
    input funct7_5,
    output logic [ALU_OP_width-1:0] ALU_OPcode
    
    );
    
    always_comb begin
    case(OP_code) 
    7'b00000000: begin 
    ALU_OPcode <= 4'b0000;
    
    end
    default : ALU_OPcode <= 4'b0010;
    endcase
    end 
endmodule
