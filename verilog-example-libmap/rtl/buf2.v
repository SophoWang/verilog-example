`timescale 1ns/1ps
module buffer(in, out);
input in;
output out;

assign #100 out = in;
initial $display("%m delay is 100");

endmodule
