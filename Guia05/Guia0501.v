/*
Projetar e descrever em Verilog, usando apenas portas nativas nor
um módulo equivalente à expressão (a & ~b).
*/
module Guia0501(input a, 
                input b, 
                output s)
    
    // data
    wire not_b;
    wire and_result;

    // negacao de b
    assign not_b = ~(b | b);

    // a & not_b (~ (a | ~b) )
    assign and_result = ~(a | not_b);

    // atribuicao final
    assign y = and_result;
endmodule // end Guia0501