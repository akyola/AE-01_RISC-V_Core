`timescale 1ns / 1ps
module full_adder_4bit (input [3:0] i_bit1,i_bit2,
                    input i_carry,
                    output[3:0] o_sum,
                    output o_carry,
                    output P,G);
wire o_carry0,o_carry1,o_carry2;
assign  P=(i_bit1[0]|i_bit2[0])&(i_bit1[1]|i_bit2[1])&(i_bit1[2]|i_bit2[2])&(i_bit1[3]|i_bit2[3]);
assign  G=(i_bit1[3]&i_bit2[3])|((i_bit1[2]&i_bit2[2])&(i_bit1[3]|i_bit2[3]))|((i_bit1[1]&i_bit2[1])&(i_bit1[2]|i_bit2[2])&(i_bit1[3]|i_bit2[3]))|((i_bit1[0]&i_bit2[0])&(i_bit1[1]|i_bit2[1])&(i_bit1[2]|i_bit2[2])&(i_bit1[3]|i_bit2[3]));
full_adder full_adder_0(i_bit1[0],i_bit2[0],i_carry,o_sum[0],o_carry0);
full_adder full_adder_1(i_bit1[1],i_bit2[1],o_carry0,o_sum[1],o_carry1);
full_adder full_adder_2(i_bit1[2],i_bit2[2],o_carry1,o_sum[2],o_carry2);
full_adder full_adder_3(i_bit1[3],i_bit2[3],o_carry2,o_sum[3],o_carry);
endmodule
