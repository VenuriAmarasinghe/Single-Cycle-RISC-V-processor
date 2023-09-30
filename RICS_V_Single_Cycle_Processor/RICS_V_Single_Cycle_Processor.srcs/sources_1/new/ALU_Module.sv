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
    output reg LT,
    output reg GT
    //output reg Negative,
    //output reg Carry_out,
    //output reg Overflow
    );
    
    always @(ALU_ctrl,In_A ,In_B ) begin 
        case(ALU_ctrl ) 
            4'b0000:begin //ADD
                ALU_out <= In_A + In_B ;
                
                Zero<=(In_A + In_B==0)? 1:0;
                LT<=0; 
                GT<=0;
            
            end 
            4'b0001:begin //SUB
                ALU_out <= In_A - In_B ;
                
                Zero<=(In_A - In_B==0)? 1:0;
                //Negative<=(In_A< In_B)? 1:0;
                LT<=0;
                GT<=0;
            
            end 
           
            4'b0010:begin //SLL
                ALU_out <=( In_A >> In_B[4:0]) ;
                
                Zero<=((In_A >> In_B[4:0])==0)? 1:0;
                Negative<=0;
                LT<=0;
                GT<=0;
            
//            4'b0011: begin //SLT
//                if (In_A[31]&(~In_B[32])) begin
//                    ALU_out<= 32'b1;
//                    LT<=1;
//                    GT<=0;
//                end 
//                else if (~In_A[31]& In_B[31])begin 
//                    ALU_out<= 32'b0;
//                    LT<=0;
//                    GT<=1;
                
//                end
//                else if ( In_A[30:0]<In_B[30:0]) begin
//                    ALU_out<= 32'b1;
//                    LT<=1;
//                    GT<=0;
//                end 
//                else if ( In_A==In_B) begin
//                    ALU_out<= 32'b0;
//                    LT<=0;
//                    GT<=0;
//                 end 
//                 else begin 
//                    ALU_out<= 32'b0;
//                    LT<=0;
//                    GT<=1;
//                 end 
                
               
            
//            4'b0100: begin //SLTU
//                ALU_out <= (In_A < In_B)? 32'd1:32'd0 ;
                
//                Zero<=(In_A- In_B==0)? 1:0;
//                Negative<=In_A - In_B;
            
//            end 
//            4'b0101:  ALU_out<= In_A;
//            4'b0100: begin //SLTU
//                ALU_out <= (In_A < In_B)? 32'd1:32'd0 ;
                
//                Zero<=(In_A- In_B==0)? 1:0;
//                Negative<=In_A - In_B;
            
//            end 
//            4'b0110: ALU_out <= In_A - In_B;
//            4'b0111: ALU_out <= 0;  //SLT
//            4'b1000:ALU_out <= 0;
//            
        endcase 
    
    end
    
endmodule
