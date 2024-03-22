/*
Projetar e descrever em Verilog, usando apenas portas nativas nand
um módulo equivalente à expressão ~( ~a & ~b ).
*/
module Guia0508(input a, 
                input b,
                output s);
    wire not_a;
    wire not_b;
    wire end_result;

    // ~a
    assign not_a = ~(a & a);

    // ~b
    assign not_b = ~(b & b);

    // ~a & ~b
    assign end_result = ~(not_a & not_b);

    // ~(~a & ~b)
    assign s = ~end_result;
endmodule // end Guia0508