module decoder(
  input wire a,b,
  output reg d1,d2,d3,d4
);
  always@(*) begin
    {d1,d2,d3,d4} = 0000;
    case({a,b})
      2'b00: d1=1;
      2'b01: d2=1'b1;
      2'b10: d3=1'b1;
      2'b11: d4=1'b1;
    endcase
  end
endmodule

module half_adder(
  input wire a,b,
  output reg sum,carry
);
  wire d1,d2,d3,d4;
  decoder ha(.a(a),
             .b(b),
             .d1(d1),
             .d2(d2),
             .d3(d3),
             .d4(d4));
  or o1 (sum,d2,d3);
  assign carry = d4;
endmodule
