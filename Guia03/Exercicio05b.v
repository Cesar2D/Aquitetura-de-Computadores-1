/*
	Exercicio05b.v
	809958 - Vinicius Cesar D'Ascenção Dias
*/
module Exercicio05b();
	// define data
	reg[2:0]a = 0; // binary
	reg[3:0]b = 0; // binary
	reg[4:0]c = 0; // binary
	reg[4:0]d = 0; // binary
	reg[6:0]e = 0; // binary

	// actions
	initial
	begin: main
	$display("Exercicio05b - Tests");
	a = 5 + 3; // overflow (transbordamento)
	b = 10 - 5 + 25 + 3 + 1; // overflow (transbordamento)
	c = 2 - 35; // overflow (transbordamento)

	$display("\nOverflow");
	$display("a = %d = %3b = %d", (5 + 3), a, a);
	$display("b = %d = %4b = %d", (10 - 5 + 25 + 3 + 1), b, b);
	$display("c = %d = %5b = %d", (2 - 35), c, c);

	$display("\nComplements");
	$display("0 = %d = %3b = %3b", ~1, (1 - 1), ~(1*1));
	$display("1 = %d = %3b = %3b", ~0, (2 - 1), ~(0*1));
	$display("2 = %d = %3b = %3b", (1 + 1), ( 3 - 1), ~0 + ~0);
	end // end main

endmodule // end Exercicio05b()