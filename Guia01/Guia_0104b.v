/*
    Guia_0104b.v
    809958 - Vinicius Cesar D'Ascenção Dias
*/

module Guia_0104b (); 

    // define data
    integer x = 13; // decimal 
    reg[7:0] b = 0; // binary

    // actions
    initial 
    begin: main
        $display("Guia_0104b - Tests");
        $display("x = %d", x);
        $display("b = %8b", b);
        b = x;
        $display("b = [%4b][%4b] = %x %x",b[7:4], b[3:0], b[7:4], b[3:0]);        
    end // end main 

endmodule // end Guia_0104b