module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    wire out1;
    xnor (out1,in1,in2);
    xor(out,in3,out1);
    
endmodule
