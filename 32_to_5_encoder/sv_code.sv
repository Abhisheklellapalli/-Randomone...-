module encoder_32_to_5_tb;
    reg [31:0] in;
    wire [4:0] out;
 encoder_32_to_5 haa( .in(in), .out(out));
  integer i;
 initial
 begin
   $display("Time\t\tInput Bit\tOutput");
   $monitor("%0t\t%b\t%0b", $time, in, out);
   for(i=0;i<32;i=i+1) begin
     in = 32'b1<<i;
     #10;
   end
 $finish;
 
 end
endmodule
