module alu (
    input wire [3:0] opcode,
    input wire [7:0] operand1,
    input wire [7:0] operand2,
    output reg [7:0] ALU_result
);

    parameter ADD = 4'b0001;
    parameter SUBTRACT = 4'b0010;
    parameter MULTIPLY = 4'b0011;
    parameter DIVIDE = 4'b0100;
    parameter AND = 4'b0101;
    parameter OR = 4'b0110;
    parameter NOT_OP1 = 4'b0111;
    parameter NOT_OP2 = 4'b1000;


    always @(*) begin
        case (opcode)
            ADD:        ALU_result = operand1 + operand2;
            SUBTRACT:   ALU_result = operand1 - operand2;
            MULTIPLY:   ALU_result = operand1 * operand2;
            DIVIDE:     ALU_result = (operand2 != 0) ? operand1 / operand2 : 8'b0;
            AND:        ALU_result = operand1 & operand2;
            OR:         ALU_result = operand1 | operand2;
            NOT_OP1:    ALU_result = ~operand1;
            NOT_OP2:    ALU_result = ~operand2;
            default:ALU_result = 8'b0;
        endcase
    end

endmodule