module full_adder (
    input A, B, Cin,
    output Y,
    output Cout
);
    wire Sum;
    assign Sum = A^B;
    assign Y = Sum ^ Cin;
    assign Cout = (A & B) | (Sum & Cin);

endmodule