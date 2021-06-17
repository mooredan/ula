module gray_counter ( Q, clk);

output [7:0] Q;
input        clk;

reg [7:0] Q;
reg       T;

wire [7:0] D;

initial begin
   Q = 8'b0000_0000;
   T = 1'b0;
end


always @ (posedge clk) begin
   T <= ~T;
end

always @ (posedge clk) begin
   Q <= D;
end

assign D[0] =  (                                                               ~T) ? ~Q[0] : Q[0];
assign D[1] =  (                                                        Q[0] &  T) ? ~Q[1] : Q[1];
assign D[2] =  (                                                Q[1] & ~Q[0] &  T) ? ~Q[2] : Q[2];
assign D[3] =  (                                        Q[2] & ~Q[1] & ~Q[0] &  T) ? ~Q[3] : Q[3];
assign D[4] =  (                                Q[3] & ~Q[2] & ~Q[1] & ~Q[0] &  T) ? ~Q[4] : Q[4];
assign D[5] =  (                        Q[4] & ~Q[3] & ~Q[2] & ~Q[1] & ~Q[0] &  T) ? ~Q[5] : Q[5];
assign D[6] =  (                Q[5] & ~Q[4] & ~Q[3] & ~Q[2] & ~Q[1] & ~Q[0] &  T) ? ~Q[6] : Q[6];
assign D[7] =  (        Q[6] & ~Q[5] & ~Q[4] & ~Q[3] & ~Q[2] & ~Q[1] & ~Q[0] &  T) |
               (Q[7] & ~Q[6] & ~Q[5] & ~Q[4] & ~Q[3] & ~Q[2] & ~Q[1] & ~Q[0] &  T) ? ~Q[7] : Q[7];

endmodule
