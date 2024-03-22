/*
Projetar e descrever em Verilog, usando apenas portas nativas nand
um módulo equivalente à negação da disjunção exclusiva (a ^ b = a xor b).
*/
module Guia0506(input a,
                input b,
                output s);
    
    wire nand_a;
    wire nand_b;
    wire result1;
    wire result2;
    wire end_result;

    // ~a
    assign nand_a = ~(a & a);

    // ~b
    assign nand_b = ~(b & b);

    // a & ~b
    assign result1 = ~(nand_a & b);

    // ~a & b
    assign result2 = ~(nand_b & a);

    // a xor b
    assign end_result = ~(result1 & result2);

    // xor (a ^ b)
    assign s = end_result;
endmodule // edn Guia0506