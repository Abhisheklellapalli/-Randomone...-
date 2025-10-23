module tb;
  generator gen;
  driver dri;
  mailbox mbx;
  srff inrf();
  
  sr_ff ro(.clk(inrf.clk),
           .rst(inrf.rst),
           .s(inrf.s),
           .r(inrf.r),
           .q(inrf.q),
           .qbar(inrf.qbar));
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
      repeat(4) begin
      gen.go();
        #1;
      dri.go();
      end
    join_none
    #100 $finish();
  end
  initial begin
  $dumpfile("dump.vcd"); 
    $dumpvars(0,tb);
  end
endmodule
