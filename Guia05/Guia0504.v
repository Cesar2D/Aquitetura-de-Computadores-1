/*
Projetar e descrever em Verilog, usando apenas portas nativas nand
módulo equivalente à expressão ~(a & ~b).
*/
module Guia0504(input a, 
                input b,
                output s);
    wire not_b;
    wire and_result;

    // ~b
    assign not_b = ~(b & b);

    // a & ~b
    assign and_result = ~(a & not_b);
    
    // ~(a & ~b)
    assign s = ~and_result;
endmodule // end Guia0504