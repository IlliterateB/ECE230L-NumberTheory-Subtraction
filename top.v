module top (
     input [9:0]sw,
     output [13:0]led
);

     half_sub half_sub_inst(
      .A(sw[0]),
  	  .B(sw[1]),
	  .Y(led[0]),
	  .Borrow(led[1])
     );

     wire [3:0] AandB; // stores the intermediary sum(A+B) which is the addition for that bit
     wire [2:0] carry;
     wire around;
     wire carry2[2:0];


     full_adder bit0LSb_inter(
	  .A(sw[2]),
	  .B(sw[6]),
 	  .Y(AandB[0]),
	  .Cin(1'b0), // set to zero, since already in 1's complement
	  .Cout(carry[0])
     );

     full_adder bit1_inter(
	  .A(sw[3]),
	  .B(sw[7]),
 	  .Y(AandB[1]),
	  .Cin(carry[0]), 
	  .Cout(carry[1])
     );

     full_adder bit2_inter(
	  .A(sw[4]),
	  .B(sw[8]),
 	  .Y(AandB[2]),
	  .Cin(carry[1]), 
	  .Cout(carry[2])
     );

     full_adder bit3MSb_inter(
	  .A(sw[5]),
	  .B(sw[9]),
 	  .Y(AandB[3]),
	  .Cin(carry[2]), 
	  .Cout(around)
     );

     full_adder bit0LSb(
	  .A(AandB[0]),
	  .B(1'b0),      // since switch B was already added, set this to 0
 	  .Y(led[2]),
	  .Cin(around), 
	  .Cout(carry2[0])
     );

     full_adder bit1(
	  .A(AandB[1]),
	  .B(1'b0),      
 	  .Y(led[3]),
	  .Cin(carry2[0]),
	  .Cout(carry2[1])
     );

     full_adder bit2(
	  .A(AandB[2]),
	  .B(1'b0),      
 	  .Y(led[4]),
 	  .Cin(carry2[1]),
 	  .Cout(carry2[2])
     );

     full_adder bit3MSb(
	  .A(AandB[3]),
	  .B(1'b0),      
 	  .Y(led[5]),
 	  .Cin(carry2[2])
     );


     twos_complement conv(
	  .b_in(sw[9:2]),
	  .Y(led[13:6])
	  );

    
endmodule











