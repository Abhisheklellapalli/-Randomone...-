module full_sub(
  input a,b,borin,
  output logic dif,borout
);
  assign dif = a^b^borin;
  assign borout = (~a&b)|(b&borin)|(~a&borin);
endmodule
