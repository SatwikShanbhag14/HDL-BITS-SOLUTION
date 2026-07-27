module top_module( 
    input a, b,
    output cout, sum );
    and(cout,a,b);
    xor(sum,a,b);
endmodule
