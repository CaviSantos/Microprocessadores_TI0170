module half_adder(
  input a,b,
  output sum, c_out
);
  
  xor(sum,a,b);
  and(c_out,a,b);
  
endmodule

module full_adder(
	input a, b, c_in;
  	output sum, c_out;
);
  
  wire c_out1, sum1, c_out2;
  
  half_adder U1 ( sum_1, c_out_1, a, b );
  half_adder U2 ( sum, c_out_2, sum_1, c_in );
  or         U3 ( c_out, c_out_1, c_out_2 );
  
endmodule