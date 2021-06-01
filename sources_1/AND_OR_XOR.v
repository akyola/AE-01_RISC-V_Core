`timescale 1ns / 1ps
module AND_OR_XOR (input [31:0] a,b,
                  output[31:0] out1,out2,out3);
assign out1 = a&b;
assign out2 = a|b;
assign out3 = a^b;
endmodule
