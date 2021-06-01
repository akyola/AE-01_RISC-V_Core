`timescale 1ns / 1ps
module ADD_SUB (input[31:0] A,B,
                input carry_in,
                input A_invert,B_invert,
                output[31:0] Result,
                output carry_out,o_carry2);
wire P0,G0,P1,G1,P2,G2,P3,G3,P4,G4,P5,G5,P6,G6;
wire [6:0] CLA_out;
wire[31:0] Ain,Bin;
wire [31:0] A_not,B_not;
wire o_carry0,o_carry1;
assign A_not=~A;
assign B_not=~B;
mux2#(32) mux2_0(A,A_not,A_invert,Ain);
mux2#(32) mux2_1(B,B_not,B_invert,Bin);
full_adder_4bit full_adder_4bit__0(Ain[3:0],Bin[3:0],carry_in,Result[3:0],,P0,G0);
full_adder_4bit full_adder_4bit__1(Ain[7:4],Bin[7:4],CLA_out[0],Result[7:4],,P1,G1);
full_adder_4bit full_adder_4bit__2(Ain[11:8],Bin[11:8],CLA_out[1],Result[11:8],,P2,G2);
full_adder_4bit full_adder_4bit__3(Ain[15:12],Bin[15:12],CLA_out[2],Result[15:12],,P3,G3);
full_adder_4bit full_adder_4bit__4(Ain[19:16],Bin[19:16],CLA_out[3],Result[19:16],,P4,G4);
full_adder_4bit full_adder_4bit__5(Ain[23:20],Bin[23:20],CLA_out[4],Result[23:20],,P5,G5);
full_adder_4bit full_adder_4bit__6(Ain[27:24],Bin[27:24],CLA_out[5],Result[27:24],,P6,G6);
full_adder full_adder_0(Ain[28],Bin[28],CLA_out[6],Result[28],o_carry0);
full_adder full_adder_1(Ain[29],Bin[29],o_carry0,Result[29],o_carry1);
full_adder full_adder_2(Ain[30],Bin[30],o_carry1,Result[30],o_carry2);
full_adder full_adder_3(Ain[31],Bin[31],o_carry2,Result[31],carry_out);
carrylookaheadunit carrylookaheadunit_0({P6,P5,P4,P3,P2,P1,P0},{G6,G5,G4,G3,G2,G1,G0},carry_in,CLA_out);
endmodule
