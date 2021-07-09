`celldefine
module xdff_b (q, d, ck);
  output q;
  input  d;
  input  ck;

  always @ (posedge ck)
     q <= d;

endmodule
`endcelldefine
