class driver;
  transaction tx;
  mailbox dm;
  virtual srff inr;
  task go;
    tx=new();
      dm.get(tx);
      inr.rst=tx.rst;
      inr.s=tx.s;
      inr.r=tx.r;
      @(posedge inr.clk);
      $display("Driver test Case clk=%b rst=%b S=%b R=%b Q=%b Qbar=%b",inr.clk,inr.rst,inr.s,inr.r,inr.q,inr.qbar);
  endtask
endclass
