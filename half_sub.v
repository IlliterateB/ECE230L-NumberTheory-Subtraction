module half_sub (
    input A, B,
    output Y,
    output Borrow
);

    // Enter logic equation here
    assign Y = A ^ B;
    assign Borrow = ~A & B;

endmodule