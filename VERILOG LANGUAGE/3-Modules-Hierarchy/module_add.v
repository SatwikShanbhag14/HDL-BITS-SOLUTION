module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
wire s1,s2;
    add16 add1(a[15:0],b[15:0],0,sum[15:0],s1);
    add16 add2(a[31:16],b[31:16],s1,sum[31:16],s2);
endmodule
