`timescale 1ns/1ps
module buffer(in, out);
input in;
output out;

assign #10 out = in;
initial $display("%m delay is 10");

endmodule
