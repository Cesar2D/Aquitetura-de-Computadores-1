/*
Projetar e descrever em Verilog, usando apenas portas nativas nand
um módulo equivalente à expressão (~a | b).
*/
module Guia0502(input a, 
                input b,
                output s);
    wire nand_a;
    wire or_result;

    // ~a 
    assign nand_a = ~(a & a);

    // ~a | b
    assign or_result = ~(nand_a & b );
    
    // result
    assign y = or_result;
endmodule // end Guia0502