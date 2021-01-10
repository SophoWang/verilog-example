`timescale 1ns/10ps
module test;

reg clk = 1'b0;
reg data = 1'b0;

initial
    $printtimescale;

initial begin
    clk = 1'b1;
    #20;
end

reg data1 = 1'b0;
initial begin
    #10 data1 =~ data1;
    #10 data1 =~ data1;
    #10 data1 =~ data1;
end

`timescale 10ns/1ns
initial begin
    #10 data =~ data;
    #10 data =~ data;
    #10 data =~ data;
end

a i_a();
b i_b();

initial #10000 $finish();
endmodule

// module a definition
module a;
    reg clk = 1'b0;
    initial begin
        #10 clk =~ clk;
        #10 clk =~ clk;
        #10 clk =~ clk;
        #10 clk =~ clk;
        #10.11 clk =~ clk;
        #0.02 clk =~ clk;
    end
`timescale 100ns/10ns
endmodule
