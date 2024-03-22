module Exercicio01a(output s, input x,y,z);

	assign s = (x & ~(y | ~z));

endmodule // end Exercicio01a

module Exercicio01b(output s, input x,y,z);

	assign s = ~(x & ~y) & z;

endmodule // end Exercicio01b

module Exercicio01c(output s, input x,y,z);

	assign s = ~(~x & y) & ~z;

endmodule // end Exercicio01c

module Exercicio01d(output s, input x,y,z);

	assign s = ~(~x & ~y) & z;

endmodule // end Exercicio01d

module Exercicio01e(output s, input x,y,z);

	assign s = (x | y) & ~(~y | z);

endmodule // end Exercicio01e
