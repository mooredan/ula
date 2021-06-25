module simple(z, a);
  output z;
  input a;

  wire x1;

  inv_b G1 (
    .z(x1),
    .a(a)
  );

  inv_b G2 (
    .z(z),
    .a(x1)
  );
endmodule
