# ECE230L-NumberTheory-Subtractio
Number Theory: Subtraction

Summary:
For this the lab we  explored how subtraction is implemented in digital systems using complement methods. A half subtractor was first implemented in Verilog to produce the difference and borrow outputs for two input bits. Next, a 4-bit ones’ complement adder was created using full adders to perform binary addition. Finally, an 8-bit two’s complement converter was designed to generate the two’s complement of a binary number. All modules were connected in a top-level file and tested using board switches as inputs and LEDs as outputs, demonstrating how complement systems allow subtraction to be performed using addition circuitry.

Lab Questions
1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

A Half Adder adds two binary inputs and outputs a Sum and a Carry, where the carry indicates when the result exceeds a single bit. While a Half Subtractor subtracts one binary input from another and outputs a Difference and a Borrow, where the borrow indicates that the subtraction required borrowing from a higher bit.

2 - What about the end around carry of One’s Complement makes it hard to use and implement?

Because any carry produced from the most significant bit must be added back to the least significant bit. This requires extra circuitry to detect the carry-out and feed it back into the adder, creating additional logic and becoming more complicated.

3 - What is the edge case and problem with Two’s Complement number representation?

The edge case in Two’s Complement occurs with the most negative value, which cannot be negated because its positive counterpart is outside the representable range. As a result, negating this value causes an overflow and returns the same value instead.
