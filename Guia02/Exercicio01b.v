/*
    Guia0201.v
    829958 - Vinicius Cesar D'Ascenção Dias
*/
module Guia0201 (/* no ports*/);

    // define data
    real x = 0; // decimal
    real power2 = 1.0; //power of 2
    integer y = 7; // counter
    reg[7:0] b = 8'b10100000; // binary (only fraction part, Big Endian)

    // actions
    initial 
    begin: main
        $display("Guia0201 - Tests"); // display on screan
        $display("x = %f", x); // display on screan
        $display("b = 0.%8b", b); // display on screan

        while(y >= 0)
        begin
            
            power2 = power2 / 2.0; // conversion to binary

            // test if 'b' has number 1
            if(b[y] == 1)
            begin
                x = x + power2; // final sum
            end // end if

            $display("x = %f", x); // display on screan
            
            y = y - 1; // counter movement
        end // end while
    end // end main
    
endmodule