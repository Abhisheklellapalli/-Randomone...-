module tb;
  generator gen;
  driver dri;
  hs inf();
  mailbox mbx;
  half_sub link(.a(inf.a),
                .b(inf.b),
                .diff(inf.diff),
                .bor(inf.bor));
  initial begin
    gen=new();
    dri=new();
    mbx=new();
    gen.gm=mbx;
    dri.dm=mbx;
    dri.intrf=inf;
    fork
      gen.go();
      dri.go();
    join
  end
endmodule
