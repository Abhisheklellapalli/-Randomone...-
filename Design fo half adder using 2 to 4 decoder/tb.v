module half_adder_tb;
  reg a,b;
  wire sum,carry;

  half_adder dut( .a(a),
                 .b(b),
                 .sum(sum),
                 .carry(carry)
                );
  initial begin
    for(int i=0; i<4; i++) begin
      {a,b} = i;
      #1;
      $display("a=%b b=%b | sum=%b carry=%b",a,b,sum,carry);
    end
  end
endmodule
