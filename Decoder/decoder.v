module decoder( 
  input a,b,
  output [3:0] out
);
  assign out[0] = ~a&~b;
  assign out[1] = ~a&b;
  assign out[2] = a&~b;
  assign out[3] = a&b;
endmodule
