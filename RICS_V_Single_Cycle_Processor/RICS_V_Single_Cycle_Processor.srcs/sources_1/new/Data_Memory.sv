`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 05:56:17 AM
// Design Name: 
// Module Name: Data_Memory
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


module Data_Memory(
    input [31:0] Memory_Address,
    input [31:0] Write_data,
    input Mem_write,
    input Mem_read,
    output [31:0] Read_data
    );
    
    logic [31:0] Memory_Address;
    logic [31:0] Write_data;
    logic Mem_write,Mem_read;
    logic [31:0] Read_data;
    logic [31:0] Data_r[255:0]; 
    always_ff @(Mem_read,Memory_Address) begin 
        if (Mem_read==1) begin 
            Read_data<= Data_r[Memory_Address];
        end
        else begin
        
        end 
    end
    
    always_ff @(Write_data , Memory_Address , Mem_write ) begin
        if (Mem_write ==1) begin
            Data_r [Memory_Address ]<= Write_data ;
        end
        else begin
        end 
    end 
endmodule
