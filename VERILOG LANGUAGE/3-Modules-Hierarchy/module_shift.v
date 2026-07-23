module top_module ( input clk, input d, output q );
wire c1,c2;
    my_dff insl1(.clk(clk),.d(d),.q(c1));
    my_dff insl2(.clk(clk),.d(c1),.q(c2));
    my_dff insl3(.clk(clk),.d(c2),.q(q));
endmodule
