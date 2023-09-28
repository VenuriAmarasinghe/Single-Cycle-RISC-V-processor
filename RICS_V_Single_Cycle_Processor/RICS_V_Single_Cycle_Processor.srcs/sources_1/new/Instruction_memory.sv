`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 05:28:33 AM
// Design Name: 
// Module Name: Instruction_memory
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


module Instruction_memory(
    input [31:0] Instruction_address,
    output [31:0] Instruction
    );
    
    logic [31:0] Instruction_address;
    logic [31:0]Instruction;
    logic [31:0] Ins_r [255:0];
    
    
    always_ff @( Instruction_address) begin
    Instruction <= Ins_r[Instruction_address];
    end
endmodule
