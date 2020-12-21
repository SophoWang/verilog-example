`timescale 1ns/1ps

module tb;
reg clk = 1'b0;
reg in = 1'b0;

wire out1;
wire out2;

always #5 clk =~ clk;

initial begin
#1000 in =~ in;
#1000 in =~ in;
#1000 in =~ in;
#1000 in =~ in;
#1000 in =~ in;
#1000 in =~ in;
end

buffer i_buf1(in, out1);
buffer i_buf2(in, out2);

initial #10000 $finish();

endmodule
