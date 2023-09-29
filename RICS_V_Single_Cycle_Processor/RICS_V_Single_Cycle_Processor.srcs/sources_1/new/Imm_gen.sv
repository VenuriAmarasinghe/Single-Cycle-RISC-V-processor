`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 09:15:20 AM
// Design Name: 
// Module Name: Imm_gen
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


module Imm_gen(
    input [31:0] Instruction,
    output reg [31:0] Imm_gen_out
    );
    always_comb begin
        case(Instruction[6:0])
            7'b0010011: //immediate 
                Imm_gen_out = {{20{Instruction[31]}},Instruction[31:20] };
            7'b0000011:  //load
                Imm_gen_out = {{20{Instruction[31]}},Instruction[31:20] };
            7'b1100011:  //branch
                Imm_gen_out = {{20{Instruction[31]}},Instruction[31],Instruction[7],Instruction[30:26],Instruction[11:6] }; 
            7'b1100111:   //JALR
                Imm_gen_out = {{20{Instruction[31]}},Instruction[31:20] };
            default:
                Imm_gen_out= 32'b0;     
        endcase    
    end 
endmodule
