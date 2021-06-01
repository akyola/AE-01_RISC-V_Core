`timescale 1ns / 1ps
module ALU_top (input[31:0] A,B,
                input[3:0] FS,
                output [31:0] F,
                output Valid);
wire[31:0] Shift_left,Shift_right,Shift_right_arithmetic,Add_Sub,And,Or,Xor,A_not,B_not;
wire[3:0] Operation;
wire carry_in,A_invert,B_invert,Bench_equal,Overflow,Set_Less_than,Set_Less_than_unsigned;
wire[6:0] ALU_operation;

assign A_not=~A;
assign B_not=~B;
assign Valid = ~Overflow;
assign {A_invert,B_invert,carry_in,Operation} = ALU_operation;
mux16#(7) mux16_0(7'b0000000,7'b0000001,7'b0000010,7'b0000011,7'b0110011,7'b0000100,7'b0000101,7'b0000110,7'b0000111,7'b0001000,7'b0001001,7'b0001010,7'b0111011,7'b0111100,7'b0111101,7'b0010011,FS,ALU_operation);
mux16#(32) mux16_1(Shift_left,Shift_right,Shift_right_arithmetic,Add_Sub,And,Or,Xor,A,B,A_not,B_not,{31'd0,Set_Less_than},{31'd0,Set_Less_than_unsigned},{31'd0,Bench_equal},32'd0,32'd0,Operation,F);
SLT_SLTU_ADD_SUB_BEQ SLT_SLTU_ADD_SUB_BEQ_0(A,B,carry_in,A_invert,B_invert,Add_Sub,Set_Less_than,Set_Less_than_unsigned,Overflow,Bench_equal);
AND_OR_XOR AND_OR_XOR_0(A,B,And,Or,Xor);
ShiftLeft_ShiftRight_ShiftRightArithmetic ShiftLeft_ShiftRight_ShiftRightArithmetic_0(A,B,Shift_left,Shift_right,Shift_right_arithmetic);
endmodule
