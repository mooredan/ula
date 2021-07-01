module ringosc(out, en);
  output out;
  input en;

  wire [12:0] x;

  nand2_b G100 ( .z(x[0 ]), .a(en), .b(x[12]));
  inv_b   G101 ( .z(x[1 ]), .a(x[0 ]));
  inv_b   G102 ( .z(x[2 ]), .a(x[1 ]));
  inv_b   G103 ( .z(x[3 ]), .a(x[2 ]));
  inv_b   G104 ( .z(x[4 ]), .a(x[3 ]));
  inv_b   G105 ( .z(x[5 ]), .a(x[4 ]));
  inv_b   G106 ( .z(x[6 ]), .a(x[5 ]));
  inv_b   G107 ( .z(x[7 ]), .a(x[6 ]));
  inv_b   G108 ( .z(x[8 ]), .a(x[7 ]));
  inv_b   G109 ( .z(x[9 ]), .a(x[8 ]));
  inv_b   G110 ( .z(x[10]), .a(x[9 ]));
  inv_b   G111 ( .z(x[11]), .a(x[10]));
  inv_b   G112 ( .z(x[12]), .a(x[11]));

  buf_b   GOUT (.z(out), .a(x[7]));

endmodule
