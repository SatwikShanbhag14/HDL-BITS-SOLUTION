module top_module (input x, input y, output z);
wire z1,z2,z3,z4,z5,z6;
    assign z1=(x^y)&x;
    assign z2=(x==y);
    assign z3=(x^y)&x;
    assign z4=(x==y);
    or(z5,z1,z2);
    and(z6,z2,z3);
    xor(z,z5,z6);
    
endmodule
