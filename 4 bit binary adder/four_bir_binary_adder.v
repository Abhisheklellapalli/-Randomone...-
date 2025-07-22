module four_bit_binary_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
    wire [2:1]c;
    assign sum[0]=a[0]^b[0]^cin;
    assign c[1]=a[0]&b[0]|b[0]&cin|cin&a[0];
    assign sum[1]=a[1]^b[1]^c[1];
    assign c[2]=a[1]&b[1]|b[1]&c[1]|c[1]&a[1];
    assign sum[2]=a[2]^b[2]^c[2];
    assign c[3]=a[2]&b[2]|b[2]&c[2]|c[2]&a[2];
    assign sum[3]=a[3]^b[3]^c[3];
    assign cout=a[3]&b[3]|b[3]&c[3]|c[3]&a[3];
endmodule
