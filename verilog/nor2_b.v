`celldefine
module nor2_b (z, a, b);
  output z;
  input  a;
  input  b;

  nor G1 (z, a, b);
endmodule
`endcelldefine
