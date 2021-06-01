`timescale 1ns / 1ps
module branchjump_detection(input[6:0] inst,
                        input clk,res,
                        output reg stall);
reg counter_sel;
wire [5:0] counter;
always @ ( posedge clk ) begin
  if ((inst==7'b0110111)||(inst==7'b0010111)||(inst==7'b1101111)||(inst==7'b1100111)||(inst==7'b1100011)) begin
    stall<=1;
    counter_sel<=1;
  end
  if(counter==2)begin
  stall<= 0;
  counter_sel<=0;
  end
  if(res)
  stall<=0;
end
counter counter1(clk,counter_sel,counter);
endmodule
