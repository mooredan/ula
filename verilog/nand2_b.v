`celldefine
module nand2_b (z, a, b);
  output z;
  input  a;
  input  b;

  nand G1 (z, a, b);
endmodule
`endcelldefine
