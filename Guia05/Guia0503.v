/*
Projetar e descrever em Verilog, usando apenas portas nativas nor
módulo equivalente à expressão (~a | b).
*/
module Guia0503(input a, 
                input b,
                output s);

    wire not_a;
    wire or_result;

    // ~a
    assign not_a = ~(a | a);

    // (~a & b)
    assign or_result = ~(~(not_a | b));

    // ~(~a)
    assign s = or_result;
endmodule // end Guia0503