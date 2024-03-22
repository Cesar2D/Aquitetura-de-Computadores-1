/*
    Guia_0102b.v
    809958 - Vinicius Cesar D'Ascenção Dias
*/
module Guia_0102b ();
    // define data
    integer x = 0; // decimal
    reg[7:0] b = 8'b0001101; // binary (bits - little endians)

    // actions
    initial begin: main
        $display("Guia_0102 - Tests");
        $display("x = %d", x);
        $display("b = %8b", b);
        x = b;
        $display("b = %d", x);
    end // end main


endmodule // end Guia_0102b