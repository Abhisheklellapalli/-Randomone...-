module tb;
  generator gen;
  driver dri;
  mailbox mbx;
  km inf();
  kmap dut (.a(inf.a),
            .b(inf.b),
            .c(inf.c),
            .f(inf.f)
           );
  initial begin
    gen=new();
    dri=new();
    mbx=new();
    gen.mbx=mbx;
    dri.mbx=mbx;
    dri.infr=inf;
    fork
      gen.go();
      dri.go();
    join_none
  end
endmodule
