module b;

reg b_clk = 1'b0;

always #5 b_clk =~ b_clk;

endmodule
