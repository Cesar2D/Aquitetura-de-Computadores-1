/*
Projetar e descrever em Verilog, usando apenas portas nativas nor
um módulo equivalente à disjunção exclusiva (~(a ^ b) = a xnor b).
*/
module Guia0505(input a,
                input b,
                output s);
    
    wire not_a;
    wire not_b;
    wire result1;
    wire result2;
    wire end_result;

    // ~a
    assign not_a = ~(a | a);

    // ~b
    assign not_b = ~(b | b);

    // (a & b)
    assign result1 = ~(not_a | not_b);

    // ~a & ~b
    assign result2 = ~(a | b);
    
    // ~(a & b) & ~(~a & ~b)
    assign end_result = ~(result1 | result2);

    // ~(a & b)
    assign s = end_result;
endmodule // end Guia0505