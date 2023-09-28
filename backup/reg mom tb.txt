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
    
     reg [4:0] Read_Reg_1;
     reg [4:0] Read_Reg_2;
     reg [4:0] Write_Reg;
     reg Reg_Write_Enable;
     reg [31:0] Read_Data_1;
     reg [31:0] Read_Data_2;
     reg [31:0] Write_Data;
     reg [31:0] r[31:0];
     Register_memory venu_Reg (
        .Read_Reg_1(Read_Reg_1),
        .Read_Reg_2(Read_Reg_2),
        .Write_Reg(Write_Reg),
        .Reg_Write_Enable(Reg_Write_Enable),
        .Read_Data_1(Read_Data_1),
        .Read_Data_2(Read_Data_2),
        .Write_Data(Write_Data));
   initial begin 
   #1 r[1]=32'b0010;
   #2 r[2]= 32'b00001;
   #3 Read_Reg_1= 5'b00001;
   #4 Read_Reg_2 = 5'b00010;
   #5 Write_Reg = 5'b101;
   #1 Write_Data=32'b0001;
   #1 Reg_Write_Enable = 1;
   
   end      
    
    
    
        
                        
     
endmodule
