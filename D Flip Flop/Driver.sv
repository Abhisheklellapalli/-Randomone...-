class driver;
  transaction tx;
  mailbox dm;
  virtual dff inr;
  task go;
    forever begin
      $display(" Driver received Test case ");
      dm.get(tx);
      inr.rst=tx.rst;
      inr.d=tx.d;
      #2;
      $display(" Clock=%b rst=%b D=%b Q=%b Q'=%b ",inr.clk,inr.rst,inr.d,inr.q,inr.qbar);
    end
  endtask
endclass
