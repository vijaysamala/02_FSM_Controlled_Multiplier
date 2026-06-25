// designing a 8_bit_ALU
// 8-bit ALU

module alu (
    input  [7:0] A,
    input  [7:0] B,
    input  [3:0] ALU_sel,
    output reg [7:0] ALU_output
);

always @(*) begin
    case(ALU_sel)

        4'b0000 : ALU_output = A + B;                 // Addition
        4'b0001 : ALU_output = A - B;                 // Subtraction
        //4'b0010 : ALU_output = A * B;              // Multiplication
        4'b0011 : ALU_output = A / B;                 // Division

        4'b0100 : ALU_output = A << 1;                // Logical left shift
        4'b0101 : ALU_output = A >> 1;                // Logical right shift

        4'b0110 : ALU_output = {A[6:0], A[7]};        // Rotate left
        4'b0111 : ALU_output = {A[0], A[7:1]};        // Rotate right

        4'b1000 : ALU_output = A & B;                 // AND
        4'b1001 : ALU_output = A | B;                 // OR
        4'b1010 : ALU_output = A ^ B;                 // XOR
        4'b1011 : ALU_output = ~(A | B);              // NOR
        4'b1100 : ALU_output = ~(A & B);              // NAND
        4'b1101 : ALU_output = ~(A ^ B);              // XNOR

        4'b1110 : ALU_output = (A > B)  ? 8'd1 : 8'd0; // Greater than
        4'b1111 : ALU_output = (A == B) ? 8'd1 : 8'd0; // Equality

        default : ALU_output = 8'd0;

    endcase
end

endmodule