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


module ALU_decoder #(ALUcltr_width=4,ALUOP_width=3) (
    input wire [ALUOP_width-1:0] ALU_OP,
    input wire [2:0] funct3,
    input wire funct7_6,
    output reg [ALUcltr_width-1:0] ALU_ctrl
    
    );
    
    always_comb begin
        case(ALU_OP) 
            3'b000: begin
                case (funct3)
                    3'b000: begin // SUB: ADD
                        ALU_ctrl= (funct7_6)? 4'b0001:4'b0000;   
                    end
                     
                    3'b001: begin // SLL
                        ALU_ctrl= 4'b0010; //2
                    end 
                    3'b010: begin //SLT
                        ALU_ctrl= 4'b0011; //3
                    end 
                    3'b011: begin //SLTU
                        ALU_ctrl= 4'b0100; //4
                    end 
                    3'b100: begin //XOR
                        ALU_ctrl= 4'b0101; //5
                    end 
                    3'b101: begin //SRA: SRL 
                        ALU_ctrl= (funct7_6)? 4'b0110: 4'b0111; //6
                    end 
                    3'b110: begin //SLTU
                        ALU_ctrl= 4'b100; //7
                    end 
                    3'b111: begin //SLTU
                        ALU_ctrl= 4'b1001; //8
                    end
                    default: ALU_ctrl= 4'b0000; 
                 endcase
            end 
        3'b001: begin //ADD
            ALU_ctrl= 4'b0000;
        end 
        3'b010: begin
            case(funct3[2:1]) 
            2'b00: begin //SUB
             ALU_ctrl= 4'b0001;   
            end
            2'b10: begin //SLT
               ALU_ctrl= 4'b0011; 
            end 
            2'b11: begin //SLTU
               ALU_ctrl= 4'b0100; 
            end  
            default: ALU_ctrl= 4'b0000; 
            endcase
        end
        default:ALU_ctrl= 4'b0000;  
       
        endcase
        end 
endmodule
