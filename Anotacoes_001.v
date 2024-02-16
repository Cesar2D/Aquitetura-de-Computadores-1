/*
    Guia_0101.v
    809958 - Vinicius Cesar D'Ascencao Dias
*/
module Guia_0101;

// define data
integer x = 13; // decimal
  // [7:0] significa quantos bits e a porta ou a variavel, no caso a baixo sao 8 bits de 7 a 0 
reg[7:0] b = 0; // binary (bits - little endian)

// actions (usado para executar ações no início da simulação ou execução do código.)
initial

// começo de uma função '{'
begin
    $display("Guia_0101 - Tests"); // exibir na tela
    $display("x = %d", x);  // exibir o valor em decimal %d
    $display("b = %8b", b); // exibir o valor em binario (até 8 bits) %8b
    b = x; // atribuição do valor x em b
    $display("b = %8b", b); // exibir o valor em binario (até 8 bits) %8b
    
// final de uma função '}'
end // end main
    
endmodule // end Guia_0101
