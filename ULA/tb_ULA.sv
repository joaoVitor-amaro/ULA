
module tb_ULA;

    // Entradas do módulo ULA
    reg [5:0] A;
    reg [5:0] B;
    reg reset;
    reg modo;
    reg [2:0] op_sel;

    // Saídas do módulo ULA
    wire [5:0] O;
    wire carry_out;
    wire zero;

    // Instância do módulo ULA
    ULA uut (
        .A(A),
        .B(B),
        .reset(reset),
        .modo(modo),
        .op_sel(op_sel),
        .O(O),
        .carry_out(carry_out),
        .zero(zero)
    );

    // Inicialização dos sinais de entrada
    initial begin
        // Iniciar os sinais
        A = 6'b000000;
        B = 6'b000000;
        reset = 0;
        modo = 1; // Modo lógico
        op_sel = 3'b000; // Operação AND

        // Teste 1: Reset
        $display("Teste 1: Reset");
        #10 reset = 1; // Ativa o reset
        #10 reset = 0;
		  $display("A = %b, B = %b, modo = %b, op_sel = %b, O = %b, carry_out = %b, zero = %b", A, B, modo, op_sel, O, carry_out, zero);
        #10; // Aguarda estabilização

        // Teste 2: Operação AND
        $display("Teste 2: Operação AND");
        A = 6'b000000; B = 6'b111111; op_sel = 3'b000;
		  $display("A = %b, B = %b, modo = %b, op_sel = %b, O = %b, carry_out = %b, zero = %b", A, B, modo, op_sel, O, carry_out, zero);
        #10; // Aguarda estabilização

        // Teste 3: Operação OR
        $display("Teste 3: Operação OR");
        op_sel = 3'b001;
		  $display("A = %b, B = %b, modo = %b, op_sel = %b, O = %b, carry_out = %b, zero = %b", A, B, modo, op_sel, O, carry_out, zero);
        #10; // Aguarda estabilização

        // Teste 4: Operação XOR
        $display("Teste 4: Operação XOR");
        op_sel = 3'b010;
		  $display("A = %b, B = %b, modo = %b, op_sel = %b, O = %b, carry_out = %b, zero = %b", A, B, modo, op_sel, O, carry_out, zero);
        #10;

        // Teste 5: Operação NOT
        $display("Teste 5: Operação NOT");
		  $display("A = %b, B = %b, modo = %b, op_sel = %b, O = %b, carry_out = %b, zero = %b", A, B, modo, op_sel, O, carry_out, zero);
        op_sel = 3'b011; A = 6'b111111;
        #10; 

        // Teste 6: Modo desligado
        $display("Teste 6: Modo desligado");
		  $display("A = %b, B = %b, modo = %b, op_sel = %b, O = %b, carry_out = %b, zero = %b", A, B, modo, op_sel, O, carry_out, zero);
        modo = 0; // Modo desativado (não faz operação lógica)
        #10;

        // Finaliza a simulação
        $display("Simulação concluída.");
        $finish;
    end

endmodule
