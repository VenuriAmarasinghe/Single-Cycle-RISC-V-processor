`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 10:58:55 PM
// Design Name: 
// Module Name: ALU_Module
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


module ALU_Module(
    input [31:0] In_A,
    input [31:0] In_B,
    input [3:0] ALU_ctrl,
    output reg [31:0] ALU_out,
    output reg Zero,
    output reg Negative,
    output reg Carry_out,
    output reg Overflow
    );
    
    always_ff @(ALU_ctrl,In_A ,In_B ) begin 
    case(ALU_ctrl ) 
    4'b0000:begin
    ALU_out <= In_A & In_B ;
    
    if (In_A & In_B==0)Zero<=1;
    else Zero<=0;
    
    end 
    4'b0001: ALU_out <= In_A | In_B ;
    4'b0010 :ALU_out <= In_A + In_B ;
    4'b0011: ALU_out<= 0;
    4'b0100: ALU_out <= In_A & (~In_B) ;
    4'b0101: ALU_out <= In_A | (~In_B) ;
    4'b0110: ALU_out <= In_A - In_B;
    4'b0111: ALU_out <= 0;  //SLT
    default : ALU_out<=0;
    endcase 
    
    end
    
endmodule
