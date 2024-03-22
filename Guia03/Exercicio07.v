module Exercicio07(
	input[7:0]bin, output reg [7:0] compOut
);

always @* 
	begin
		compOut = ~bin + 1;
	end

endmodule // end Exercicio07