`timescale 1ns / 1ps
module carrylookaheadunit (input[6:0] P,G,
                          input carry_in,
                          output [6:0] carry_out);

assign  carry_out[0]=G[0]|(P[0]&carry_in);
assign  carry_out[1]=G[1]|(P[1]&carry_out[0]);
assign  carry_out[2]=G[2]|(P[2]&carry_out[1]);
assign  carry_out[3]=G[3]|(P[3]&carry_out[2]);
assign  carry_out[4]=G[4]|(P[4]&carry_out[3]);
assign  carry_out[5]=G[5]|(P[5]&carry_out[4]);
assign  carry_out[6]=G[6]|(P[6]&carry_out[5]);

endmodule
