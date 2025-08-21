`timescale 1ns/1ps

module alu_tb;

    reg [3:0] opcode;
    reg [7:0] operand1;
    reg [7:0] operand2;
    wire [7:0] ALU_result;

    alu uut (
        .opcode(opcode),
        .operand1(operand1),
        .operand2(operand2),
        .ALU_result(ALU_result)
    );

    initial begin
        opcode = 4'b0001; operand1 = 8'b00001010; operand2 = 8'b00000101;  // add
        #10; 
        $display("opcode=%b operand1=%b operand2=%b => ALU_result=%b", opcode, operand1, operand2, ALU_result);

        opcode = 4'b0010; operand1 = 8'b00001010; operand2 = 8'b00000101;  // subtract
        #10; 
        $display("opcode=%b operand1=%b operand2=%b => ALU_result=%b", opcode, operand1, operand2, ALU_result);

        opcode = 4'b0011; operand1 = 8'b00001010; operand2 = 8'b00000101;  // multiply
        #10; 
        $display("opcode=%b operand1=%b operand2=%b => ALU_result=%b", opcode, operand1, operand2, ALU_result);

        opcode = 4'b0100; operand1 = 8'b00001010; operand2 = 8'b00000101;  // divide
        #10; 
        $display("opcode=%b operand1=%b operand2=%b => ALU_result=%b", opcode, operand1, operand2, ALU_result);

        opcode = 4'b0101; operand1 = 8'b00001010; operand2 = 8'b00000101;  // AND
        #10; 
        $display("opcode=%b operand1=%b operand2=%b => ALU_result=%b", opcode, operand1, operand2, ALU_result);

        opcode = 4'b0110; operand1 = 8'b00001010; operand2 = 8'b00000101;  // OR
        #10; 
        $display("opcode=%b operand1=%b operand2=%b => ALU_result=%b", opcode, operand1, operand2, ALU_result);

        opcode = 4'b0111; operand1 = 8'b00001010; operand2 = 8'b00000101;  // NOT OP1
        #10; 
        $display("opcode=%b operand1=%b operand2=%b => ALU_result=%b", opcode, operand1, operand2, ALU_result);

        opcode = 4'b1000; operand1 = 8'b00001010; operand2 = 8'b00000101;  // NOT OP2
        #10; 
        $display("opcode=%b operand1=%b operand2=%b => ALU_result=%b", opcode, operand1, operand2, ALU_result);

        $finish;  // End simulation
    end

endmodule