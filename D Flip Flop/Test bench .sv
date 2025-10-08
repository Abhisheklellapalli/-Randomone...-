module tb;
  generator gen;
  driver div;
  mailbox mbx;
  dff inrf();

  d_ff dut(.clk(inrf.clk),
           .rst(inrf.rst),
           .d(inrf.d),
           .q(inrf.q),
           .qbar(inrf.qbar));
  initial begin
    inrf.clk=0;
    forever #5 inrf.clk=~inrf.clk;
  end
  initial begin
    gen=new();
    div=new();
    mbx=new();
    gen.gm=mbx;
    div.dm=mbx;
    div.inr=inrf;
    fork
      gen.go();
      div.go();
    join
    #50 $finish();
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
  end
endmodule
