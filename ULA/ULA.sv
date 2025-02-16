module ULA (
    input [5:0] A,           // Operando A de 6 bits
    input [5:0] B,           // Operando B de 6 bits
    input reset,             // Sinal de Reset
    input modo,              // Seleção de Modo (1 = Lógico)
    input [2:0] op_sel,      // Seleção de Operação (3 bits)
    output reg [5:0] O,      // Resultado de 6 bits da operação
    output reg carry_out,    // Sinal de carry/overflow (não usado para operações lógicas)
    output reg zero          // Sinal Zero (indica se o resultado é zero)
);

    // Resultado das operações lógicas
    reg [5:0] resultado_logico;  // Variável interna para armazenar resultado lógico

    always_comb begin
        // Valores padrão para evitar inferência de latches
        resultado_logico = 6'b000000;
        O = 6'b000000;
        carry_out = 1'b0;
        zero = 1'b0;

        if (reset) begin
            O = 6'b000000;      // Reseta as saídas
            carry_out = 1'b0;   // Reseta carry_out
            zero = 1'b1;        // Considera que o resultado é zero após reset
        end else begin
            if (modo == 1) begin // Modo Lógico (quando modo = 1)
                case (op_sel)
                    3'b000: resultado_logico = A & B;  // AND
                    3'b001: resultado_logico = A | B;  // OR
                    3'b010: resultado_logico = A ^ B;  // OU-EXCLUSIVO (XOR)
                    3'b011: resultado_logico = ~A;     // NOT
                    default: resultado_logico = 6'b000000; // Valor padrão
                endcase
                O = resultado_logico;
                carry_out = 1'b0; // Carry_out não é usado em operações lógicas
            end else begin
                O = 6'b000000;  // Se o modo não for lógico, retorna 0
                carry_out = 1'b0; // Carry_out não é usado em operações lógicas
            end
            // Verifica se o resultado é zero
            zero = (O == 6'b000000);
        end
    end

endmodule
