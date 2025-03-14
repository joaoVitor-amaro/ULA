module ULA (
    input [5:0] A,           
    input [5:0] B,          
    input reset,             
    input modo,              
    input [3:0] op_sel,      // operacao
    output reg [5:0] saida,      // resultado da operacao
    output reg carry_out,    
    output reg zero          
);

	 logic carry_temporario;
    logic [5:0] resultado; 

   
    always_comb begin
		if (reset) begin
         resultado = 6'b000000;
         carry_temporario = 1'b0;
      end else begin
          case (modo)
              1'b0: begin // modo logico
                    case (op_sel)
                        4'b1000: resultado = A & B;  // and
								4'b1001: resultado = ~A;     // not a
								4'b1010: resultado = ~B; // not b
                        4'b1011: resultado = A | B;  // or
                        4'b1100: resultado = A ^ B;  // xor
								4'b1101: resultado = ~(A & B); //nand
								4'b1110: resultado = A;    
								4'b1111: resultado = B;
                        default: resultado = 6'b000000;
                    endcase
                    carry_temporario = 1'b0; // sem carry nas operacoes logicas
                end

                1'b1: begin // modo aritmetico
                    case (op_sel)
                        4'b0000: begin 
                            {carry_temporario, resultado} = A + B;
                        end
                        4'b0001: begin
                            {carry_temporario, resultado} = A - B;
                        end
                        4'b0010: begin 
									 {carry_temporario, resultado} = {1'b0, A} + {1'b0, ~B};
								end
								4'b0011: begin 
									 {carry_temporario, resultado} = {1'b0, A} - {1'b0, ~B}; 
								end
								4'b0100: begin 
                            {carry_temporario, resultado} = A + 1;
                        end
                        4'b0110: begin
                            {carry_temporario, resultado} = B + 1;
                        end
                        4'b0111: begin 
                            {carry_temporario, resultado} = B - 1;
                        end
                        default: begin
                            resultado = 6'b000000; 
                            carry_temporario = 1'b0;
                        end
                    endcase
                end
            endcase
        end
    end
	 
    assign saida = resultado;
    assign carry_out = carry_temporario;
    assign zero = (resultado == 6'b000000) ? 1'b1 : 1'b0; // sinal zero
	 
endmodule
