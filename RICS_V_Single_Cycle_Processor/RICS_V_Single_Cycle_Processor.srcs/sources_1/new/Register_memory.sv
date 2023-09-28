`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2023 05:21:22 AM
// Design Name: 
// Module Name: Register_memory
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


module Register_memory #(
    parameter ADDR_WIDTH=5,DATA_WIDTH=32,Reg_no=32)
 ( 
    input [ADDR_WIDTH-1:0] Read_Reg_1,
    input [ADDR_WIDTH-1:0] Read_Reg_2,
    input [ADDR_WIDTH-1:0] Write_Reg,
    input Reg_Write_Enable,
    output [DATA_WIDTH-1:0] Read_Data_1,
    output [DATA_WIDTH-1:0] Read_Data_2,
    input [DATA_WIDTH-1:0] Write_Data

);
    
    reg [DATA_WIDTH-1:0] r[Reg_no-1:0];
     reg [DATA_WIDTH-1:0] Read_Data_1;
     reg [DATA_WIDTH-1:0] Read_Data_2;
   
  
    always_ff @(Read_Reg_1) begin
        Read_Data_1 <= r[Read_Reg_1];
       
    end 
    always_ff @(Read_Reg_2) begin
        Read_Data_2 <= r[Read_Reg_2];
    end 
    
    always_ff @(Write_Data,Reg_Write_Enable) begin
        if (Reg_Write_Enable == 1) begin
            r[Write_Reg]<= Write_Data;
        end 
    end
        
    
    
    
endmodule
