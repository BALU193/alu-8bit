`timescale 1ns / 1ps

`timescale 1ns/1ps
module tb_alu8;

reg [7:0] A, B;
reg [2:0] sel;
wire [7:0] Y;

// Instantiate ALU
alu8 uut (
    .A(A), 
    .B(B), 
    .sel(sel), 
    .Y(Y)
);

initial begin
    // Test values
    A = 8'd15; B = 8'd10;

    sel = 3'b000; #10; // ADD
    sel = 3'b001; #10; // SUB
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR
    sel = 3'b101; #10; // NOT A
    sel = 3'b110; #10; // Shift left
    sel = 3'b111; #10; // Shift right

    $stop; // stop simulation
end

endmodule

