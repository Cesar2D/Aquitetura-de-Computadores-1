/*
    Guia0202.v
    809958 - Vinicius Cesar D'Ascenção Dias
*/
module Guia0202 ();
    // define data
    real x = 0.75; // decimal
    integer y = 7; // counter
    reg[7:0] b = 0; // binary

    //actions
    initial 
    begin: main
        $display("Guia0202 - Tests");
        $display("x = %f", x);
        $display("b = 0.%8b", b);
        
        while(x > 0 && y >= 0)
        begin

            if(x*2 >= 1)
            begin

                b[y] = 1;
                x = x + x * 2.0 - 1.0;
            end // end if
            else
            begin

                b[y] = 0;
                x = x * 2.0;
            end // end else

            $display("b = 0.%8b", b);
            y = y - 1;
        end // end while
    end // end main
    
endmodule // end Guia0202()