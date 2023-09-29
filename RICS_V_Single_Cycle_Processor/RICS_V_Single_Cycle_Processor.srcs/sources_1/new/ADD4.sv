`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 08:36:52 AM
// Design Name: 
// Module Name: ADD4
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


module ADD4(
    input [31:0] Data,
    output [31:0] ADD4_out
    );
    
    always_comb begin
        ADD4_out<= Data+4;
        end 
endmodule
