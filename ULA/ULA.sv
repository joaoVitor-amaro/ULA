module ULA (
    input [5:0] A,           
    input [5:0] B,          
    input reset,             
    input modo,              // Seleção de Modo (1 = Lógico)
    input [2:0] op_sel,      // Seleção de Operação
    output reg [5:0] O,      // Resultado da operação
    output reg carry_out,    // Sinal de carry
    output reg zero          // Sinal zero
);

    // Resultado das operações lógicas
    reg [5:0] resultado_logico; 

    always_comb begin
        resultado_logico = 6'b000000;
        O = 6'b000000;
        carry_out = 1'b0;
        zero = 1'b0;

        if (reset) begin
            O = 6'b000000;   // Reseta a saida
            carry_out = 1'b0;   // Reseta o carry
            zero = 1'b1;        // O resultado vai ser 0 quando o reset acontecer
        end else begin
            if (modo == 1) begin // Modo Lógico 
                case (op_sel)
                    3'b000: resultado_logico = A & B;  // AND
                    3'b001: resultado_logico = A | B;  // OR
                    3'b010: resultado_logico = A ^ B;  // XOR
                    3'b011: resultado_logico = ~A;     // NOT A
						  3'b101: resultado_logico = ~B; // NOT B
                    3'b100: resultado_logico = ~(A & B); // NAND
						  default: resultado_logico = 6'b000000; 
                endcase
                O = resultado_logico;
                carry_out = 1'b0; 
            end else begin
                O = 6'b000000;
                carry_out = 1'b0;
            end
            zero = (O == 6'b000000); // Resultado zero
        end
    end

endmodule
