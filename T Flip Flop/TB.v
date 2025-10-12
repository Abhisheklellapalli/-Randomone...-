module tb;
  reg clk=0;
  reg rst;
  reg t;
  wire q;
  wire qbar;
  t_ff flipflop(.clk(clk),
                .rst(rst),
                .t(t),
                .q(q),
                .qbar(qbar));
  
  always #5 clk=~clk;
  initial begin
    rst=1;
    t=1;
    #1;
    $display("Reset=%b Clk=%b t=%b",rst,clk,t);
    $display("Q=%b Q'=%b",q,qbar);
    rst=0;
    t=0;
    #1;
    $display("Reset=%b Clk=%b t=%b",rst,clk,t);
    $display("Q=%b Q'=%b",q,qbar);
    rst=0;
    t=1;
    #1;
    $display("Reset=%b Clk=%b t=%b",rst,clk,t);
    $display("Q=%b Q'=%b",q,qbar);
    #100 $stop;
  end
endmodule
