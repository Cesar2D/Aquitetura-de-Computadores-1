/*
	Exercicio02b.v
	809958 - Vinicius Cesar D'Ascenção Dias
*/
module Exercicio02b();
	// define data
	reg[7:0]a = 8'h0a; // hexadecimal
	reg[6:0]b = 8'o15; // octal
	reg[5:0]c = 13;    // decimal
	reg[7:0]d = 0;     // binary
	reg[6:0]e = 0;
	reg[5:0]f = 0;

	// actions
	initial
	begin: main
		$display("Guia0302 - Tests");
		d = ~a + 1;
		$display("a = %8b -> C1(a) = %8b -> C2(a) = %8b", a, ~a, d);
		e = ~b + 1;
		$display("b = %8b -> C1(b) = %8b -> C2(a) = %8b", b, ~b, e);
		f = ~c + 1;
		$display("c = %8b -> C1(c) = %8b -> C2(a) = %8b", c, ~c, e);
	end // end main

endmodule // end Exercicio02b()