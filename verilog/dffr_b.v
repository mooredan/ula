`celldefine
module dffr_b (q, d, ck, rn);
  output q;
  input  d;
  input  ck;
  input  rn;

  always @ (posedge ck or negedge rn)
     if (~rn)
        q <= 1'b0;
     else 
        q <= d;

endmodule
`endcelldefine
