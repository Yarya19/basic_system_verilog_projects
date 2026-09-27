// Code your design here
module full_adder(sum, carry, a, b, c);
  input a, b, c;
  output sum, carry;
  
  assign sum = a ^ b ^ c;
  assign carry = (a&b) | (a&c) | (b&c);
  
endmodule