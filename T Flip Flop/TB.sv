module ff_tb;
  generator  gen=new();
  driver     dri=new();
  mailbox    mbx=new();
  ff         intrf();
  t_ff flip_flop(.rst(intrf.rst),
                 .clk(intrf.clk),
                 .t(intrf.t),
                 .q(intrf.q),
                 .qbar(intrf.qbar));
  initial begin
    intrf.clk=0;
    forever #5 intrf.clk=~intrf.clk;
  end
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars(0,ff_tb);
  end
  initial begin
    gen.gm=mbx;
    dri.dm=mbx;
    dri.inrf=intrf;
    repeat(4) begin
      gen.go();
      #1;
      dri.go();
      #2;
    end
    #50 $finish();
  end
endmodule
