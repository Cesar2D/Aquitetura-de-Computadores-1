/*
	Exercicio04b.v
	809958 - Vinicius Cesar D'Ascenção Dias
*/
module Exercicio04b();
	// define data
	reg signed[7:0]a = 8'1111_1010; // binary
	reg signed[6:0]b = 8'1111_101;  // binary
	reg signed[5:0]c = 8'1111_10;   // binary'
	reg signed[7:0]d = 0;           // binary
	reg signed[6:0]e = 0;           // binary
	reg signed[5:0]f = 0;           // binary
	
	// actions
	initial
	begin: main
	$display("Exercicio04b - Tests");
	$display("a = %8b = %d", a, a);
	$display("b = %8b = %d", b, b);
	$display("c = %8b = %d", c, c);
	d = a - b;
	$display("d = a - b = %8b - %8b = %8b = %d", a, b, d, d);
	d = b - a;
	$display("d = b - a = %8b - %8b = %8b = %d", b, a, d, d);
	d = a - c;
	$display("d = a - c = %8b - %8b = %8b = %d", a, c, d, d);
	d = c - a;
	$display("d = c - a = %8b - %8b = %8b = %d", c, a, d, d);
    end // end main 

endmodule // end Exercicio04b()