module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule

module top_module(
    input [99:0] a,
    input [99:0] b,
    input cin,
    output [99:0] sum,
    output [99:0] cout
);

    full_adder fa0 (
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .sum(sum[0]),
        .cout(cout[0])
    );

    genvar i;
    generate
        for(i = 1; i < 100; i = i + 1) begin : ripple
            full_adder fa (
                .a(a[i]),
                .b(b[i]),
                .cin(cout[i-1]),
                .sum(sum[i]),
                .cout(cout[i])
            );
        end
    endgenerate

endmodule

