`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 09:08:57 AM
// Design Name: 
// Module Name: Data_path
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


module Data_path(

    );
    
    
    assign Reg_write_enable_1=1;

    Control_memory Control_memory_1(
        .opcode(Instruction[6:0]),
        .Branch(Branch_1),
        .Mem_read (Mem_read_1),
        .Mem_to_reg(Mem_to_reg_1),
        .ALU_OP(ALU_OP_1),
        .Mem_write(Mem_write_1),
        .ALU_src(,
        output Reg_write
    );    
    
    program_counter program_counter_1(
        .current_instruction(current_intstruction_1),
        .next_instruction(next_instuction_1)
    );
    
    Instruction_memory instruction_memory_1(
        .Instruction_address(next_instuction_1),
        .Instruction(Instruction)
    );
    
    Register_memory Register_memory_1(
        .Read_Reg_1(Instruction [19:15]),
        .Read_Reg_2(Instruction [24:20]),
        .Write_Reg(Instruction [11:7]),
        .Reg_Write_Enable(Reg_write_enable_1),
        .Read_Data_1(Read_Data_1_ALU),
        .Read_Data_2(Read_Data_2_ALU),
        .Write_Data(Write_Data_1)
        );
    
    
    
 
endmodule
