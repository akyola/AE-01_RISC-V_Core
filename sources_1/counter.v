`timescale 1ns / 1ps
module counter (input clk,
                input counter_sel,
                output reg[5:0] counter);
always @ (posedge clk) begin
  if (counter_sel==1) begin
    counter= counter+1;
  end else begin
    counter=0;
  end
end
endmodule
