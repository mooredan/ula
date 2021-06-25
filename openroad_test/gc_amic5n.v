module gc(q, d, clk);
  output q;
  input d;
  input clk;

  wire x1;

  inv_b G1 (
    .z(x1),
    .a(d)
  );
   

  dff_b _81_ (
    .ck(clk),
    .d(x1),
    .q(q)
  );
endmodule
