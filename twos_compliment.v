module twos_complement (
     input [7:0] b_in,
     output [7:0] Y
);
 

//     assign Y = ~b_in + 1'b1;
    wire [6:0] carry;
    
    full_adder bit0Lsb(
	  .A(~b_in[0]),
	  .B(1'b0),      
 	  .Y(Y[0]),
	  .Cin(1'b1),
	  .Cout(carry[0])
     );
     
     full_adder bit1(
	  .A(~b_in[1]),
	  .B(1'b0),      
 	  .Y(Y[1]),
	  .Cin(carry[0]),
	  .Cout(carry[1])
     );
     
     full_adder bit2(
	  .A(~b_in[2]),
	  .B(1'b0),      
 	  .Y(Y[2]),
	  .Cin(carry[1]),
	  .Cout(carry[2])
     );
     
     full_adder bit3(
	  .A(~b_in[3]),
	  .B(1'b0),      
 	  .Y(Y[3]),
	  .Cin(carry[2]),
	  .Cout(carry[3])
     );
     
     full_adder bit4(
	  .A(~b_in[4]),
	  .B(1'b0),      
 	  .Y(Y[4]),
	  .Cin(carry[3]),
	  .Cout(carry[4])
     );
     
     full_adder bit5(
	  .A(~b_in[5]),
	  .B(1'b0),      
 	  .Y(Y[5]),
	  .Cin(carry[4]),
	  .Cout(carry[5])
     );
     
     full_adder bit6(
	  .A(~b_in[6]),
	  .B(1'b0),      
 	  .Y(Y[6]),
	  .Cin(carry[5]),
	  .Cout(carry[6])
     );
     
     full_adder bit7MSb(
	  .A(~b_in[7]),
	  .B(1'b0),      
 	  .Y(Y[7]),
	  .Cin(carry[6])
     );
     
     
endmodule