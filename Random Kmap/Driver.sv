// _____________________________________
// |                                   |
// |            Driver                 |
// |___________________________________|
class driver;
  transaction tx;
  mailbox mbx;
  virtual km infr;
  task go;
    $display("Driver Values");
    $display("-------------");
    forever
      begin
        mbx.get(tx);
        infr.a=tx.a;
        infr.b=tx.b;
        infr.c=tx.c;
        #1;
        $display("a=%b | b=%b | c=%b || fout = %b",infr.a,infr.b,infr.c,infr.f);
      end
  endtask
endclass
