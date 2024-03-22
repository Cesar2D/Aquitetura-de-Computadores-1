module Exercicio06(
	input [7:0] bin, output reg [7:0] compOut
);

// code must be executed whenever there is a change in any input signal
always @* 
	begin
		compOut = ~bin;
	end // end always

endmodule // end Exercicio06
