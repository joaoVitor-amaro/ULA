
module tb_ULA;

    reg [5:0] A;
    reg [5:0] B;
    reg reset;
    reg modo;
    reg [2:0] op_sel;
    wire [5:0] O;
    wire carry_out;
    wire zero;

    ULA u (
        .A(A),
        .B(B),
        .reset(reset),
        .modo(modo),
        .op_sel(op_sel),
        .O(O),
        .carry_out(carry_out),
        .zero(zero)
    );

    initial begin
        A = 6'b000000;
        B = 6'b000000;
        reset = 0;
        modo = 1; // Modo lógico

        // Operação AND
        $display("Operação AND");
        A = 6'b000000; B = 6'b111111; op_sel = 3'b000; //Podem mudar os valores de A e B para testar
		  $display("A = %b, B = %b, modo = %b, op_sel = %b, O = %b, carry_out = %b, zero = %b", A, B, modo, op_sel, O, carry_out, zero);
        #10;

        // Operação OR
        $display("Operação OR");
        op_sel = 3'b001; //Podem mudar os valores de A e B para testar
		  $display("A = %b, B = %b, modo = %b, op_sel = %b, O = %b, carry_out = %b, zero = %b", A, B, modo, op_sel, O, carry_out, zero);
        #10;
		  
        $display("Operação XOR");
        op_sel = 3'b010; //Podem mudar os valores de A e B para testar
		  $display("A = %b, B = %b, modo = %b, op_sel = %b, O = %b, carry_out = %b, zero = %b", A, B, modo, op_sel, O, carry_out, zero);
        #10;

        $display("Operação NOT A"); //Podem mudar os valores de A e B para testar
		  $display("A = %b, B = %b, modo = %b, op_sel = %b, O = %b, carry_out = %b, zero = %b", A, B, modo, op_sel, O, carry_out, zero);
        op_sel = 3'b011;
        #10; 
		  
		  $display("Operação NOT B"); //Podem mudar os valores de A e B para testar
		  $display("A = %b, B = %b, modo = %b, op_sel = %b, O = %b, carry_out = %b, zero = %b", A, B, modo, op_sel, O, carry_out, zero);
        op_sel = 3'b101;
		  
		  $display("Operação NAND"); //Podem mudar os valores de A e B para testar
		  $display("A = %b, B = %b, modo = %b, op_sel = %b, O = %b, carry_out = %b, zero = %b", A, B, modo, op_sel, O, carry_out, zero);
        op_sel = 3'b101;

        $display("Modo desligado");
		  $display("A = %b, B = %b, modo = %b, op_sel = %b, O = %b, carry_out = %b, zero = %b", A, B, modo, op_sel, O, carry_out, zero);
        modo = 0; // Modo desativado (não faz operação lógica)
        #10;

        $display("Simulação concluída.");
        $finish;
    end

endmodule
