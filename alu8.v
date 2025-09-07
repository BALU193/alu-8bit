`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2025 20:27:25
// Design Name: 
// Module Name: alu8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu8(
    input [7:0] A,
    input [7:0] B,
    input [2:0] sel,
    output reg [7:0] Y
);
always @(*) begin
    case(sel)
        3'b000: Y = A + B;   // ADD
        3'b001: Y = A - B;   // SUB
        3'b010: Y = A & B;   // AND
        3'b011: Y = A | B;   // OR
        3'b100: Y = A ^ B;   // XOR
        3'b101: Y = ~A;      // NOT A
        3'b110: Y = A << 1;  // Shift left
        3'b111: Y = A >> 1;  // Shift right
        default: Y = 8'b0;
    endcase
end
endmodule
