/*
    Guia0205b.v
    809958 - Vinicius Cesar D'Ascenção Dias
*/
module Guia0205b ();
    // define data
    reg[7:0]a = 8'b000_1010; // binary
    reg[7:0]b = 8'b000_1100; // binary
    reg[7:0]c;

    // actions
    initial 
    begin: main
        $display("Guia0205b - Tests");
        $display("a = %8b", a);
        $display("b = %8b", b);
        c = a + b;
        $display("c = a + b = %8b", c);
        c = a - b;
        $display("c = a - b = %8b", c);
        c = b - a;
        $display("c = b - a = %8b", c);
        c = a * b;
        $display("c = a * b = %8b", c);
        c = b / a;
        $display("c = b / a = %8b", c);
        c = b % a;
        $display("c = b %% a = %8b", c);
    end // end main

endmodule // end Guia0205b