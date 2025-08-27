// DUT

module half_sub(
  input logic a,b,
  output logic diff,bor
);
  assign diff = a^b;
  assign bor = (~a)&b;
endmodule
