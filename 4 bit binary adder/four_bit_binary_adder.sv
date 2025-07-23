
module four_bit_binary_adder_tb;
  reg [3:0]a;
  reg [3:0]b;
  reg cin;
  wire [3:0] sum;
  wire cout;
  
  four_bit_binary_adder haa(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
  initial 
    begin
      $monitor("%0t a=%0b b=%0b cin=%0b sum=%0b cout=%0b",$time,a,b,cin,sum,cout);
      repeat(10)
        begin
          a = $random;
          b = $random;
          cin = $random;
          #10;
        end
      #10;
      $finish;
    end
endmodule
