`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 05:21:59 AM
// Design Name: 
// Module Name: program_counter
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


module program_counter(
    input [31:0] current_instruction,
    output [31:0] next_instruction
    );
    
    
    logic [31:0] current_instruction;
    logic [31:0] next_instruction;
    
    always_ff @(current_instruction ) begin
        next_instruction <= current_instruction +1;
        end 
endmodule
