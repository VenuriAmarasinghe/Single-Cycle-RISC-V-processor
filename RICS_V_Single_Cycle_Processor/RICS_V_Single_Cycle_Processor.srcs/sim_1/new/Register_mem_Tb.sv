`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2023 06:31:27 AM
// Design Name: 
// Module Name: Register_Memory_Tb
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


module Register_Memory_Tb(
  



    );
    
     logic [4:0] Read_Reg_1;
     logic [4:0] Read_Reg_2;
     logic [4:0] Write_Reg;
     logic Reg_Write_Enable;
     logic [31:0] Read_Data_1;
     logic [31:0] Read_Data_2;
     logic [31:0] Write_Data;
     logic [31:0] r[31:0];
     Register_memory venu (
        .Read_Reg_1(Read_Reg_1),
        .Read_Reg_2(Read_Reg_2),
        .Write_Reg(Write_Reg),
        .Reg_Write_Enable(Reg_Write_Enable),
        .Read_Data_1(Read_Data_1),
        .Read_Data_2(Read_Data_2),
        .Write_Data(Write_Data));
  initial begin 
    #1; // Delay by 1 time unit
    r[1] <= 32'b00010;
    #1; // Delay by 1 time unit
    r[2] <= 32'b00001;
    #1; // Delay by 1 time unit
    Read_Reg_1 <= 5'b00001;
    #1; // Delay by 1 time unit
    Read_Reg_2 <= 5'b00010;
    #1; // Delay by 1 time unit
    Write_Reg <= 5'b101;
    #1; // Delay by 1 time unit
    Write_Data <= 32'b0001;
    #1; // Delay by 1 time unit
    Reg_Write_Enable <= 1;
end
    
    
    
        
               
endmodule
