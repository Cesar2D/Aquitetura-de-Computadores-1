/*
    Guia_0101b.v
    809958 - Vinicius Cesar D'Ascenção Dias
*/
module Guia_0101b ();
    // define data
    integer x = 13; // decimal
    reg[7:0] b = 0; // binary (little endian)

    // actions
    initial begin: main
        $display("Guia_0101b - Tests");
        $display("x = %d", x);
        $display("b = %8b", b);
        b = x;
        $display("b = %8b", b);
    end // main

    
endmodule