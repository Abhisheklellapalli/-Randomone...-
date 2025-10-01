module tb;
  generator gen;
  driver dri;
  mailbox mbx;
  j_k_ff inrf();
// Connecting to Dut
  jk_ff dut(.clk(inrf.clk),
            .rst(inrf.rst),
            .j(inrf.j),
            .k(inrf.k),
            .q(inrf.q),
            .qbar(inrf.qbar));
  
//   Clock Generation
  initial begin
    inrf.clk=1'b0;
    forever #5 inrf.clk=~inrf.clk;
  end
  initial begin
    gen=new();
    dri=new();
    mbx=new();
    gen.gm=mbx;
    dri.dm=mbx;
    dri.inr=inrf;
    fork
      gen.can();
      dri.can();
    join_none
    #100 $finish;
  end
//   For wave forms
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
  end
endmodule
