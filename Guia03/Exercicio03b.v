/*
	Exercicio03b.v
	809958 - Vinicius Cesar D'Ascenção Dias
*/
module Exercicio03b();
	reg singned[7:0]a = 8'b1111_1010; // binary
	reg signed[6:0]b = 8'b1111_101;   // binary
	reg signed[5:0]c = 8'b1111_10;    // binary
	reg signed[7:0]d = 0;             // binary
	reg signed[6:0]e = 0;             // binary

	// actions
	initial
	begin: main
	$display("Exercicio 03b - Tests");
	d = ~a + 1;
	e = ~(a-1);
	$display("a = %8b -> C1(a) = %8b -> C2(a) = %8b = %d = %d", a, ~a, d, d, e);
	d = ~b+1;
	e = ~(b-1);
	$display("b = %7b -> C1(b) = %7b -> C2(a) = %7b = %d = %d", b, ~b, d, d, e);
	d = ~c+1;
    e = ~(c-1);
	$display("c = %6b -> C1(c) = %6b -> C2(a) = %6b = %d = %d", c, ~c, d, d, e);
    end // end main

endmodule // end Exercicio03b