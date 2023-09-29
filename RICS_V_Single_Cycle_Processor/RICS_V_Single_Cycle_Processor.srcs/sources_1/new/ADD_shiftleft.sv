`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 08:36:52 AM
// Design Name: 
// Module Name: ADD_shiftleft
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


module ADD_shiftleft(
    input [31:0] Data,
    output reg [31:0] ADD_shiftleft_out
    );
    
    always_comb begin
    ADD_shiftleft_out<= Data<<1;
    end 
endmodule
