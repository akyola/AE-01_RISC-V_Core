`timescale 1ns / 1ps
module riscvcore_tb();
reg pc_sel;
reg clk;
reg res;

wire valid;

initial begin
clk = 0;
res = 1;
pc_sel=0;
#25;
res = 0;
#80 pc_sel=1;
end
always #15 clk=~clk;

riscvcore test(.clk(clk), .res(res), .pc_sel(pc_sel), .Valid(valid));

endmodule
