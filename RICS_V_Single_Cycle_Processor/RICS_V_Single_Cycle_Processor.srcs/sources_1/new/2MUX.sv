`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 07:48:29 AM
// Design Name: 
// Module Name: 2MUX
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


module MUX_2(
    input Mux_ctrl,
    input [31:0] Data_1,
    input [31:0] Data_0,
    input [31:0] MUX_out
    );
    
    always_comb begin
        case(Mux_ctrl) 
            0:MUX_out<= Data_0;
            1:MUX_out<= Data_1;
            Default: MUX_out<=Data_0;
        endcase
    end 
endmodule
