class driver;
  transaction tx;
  mailbox dm;
  virtual ff inrf;
  task go;
    dm.get(tx);
    inrf.rst=tx.rst;
    inrf.t=tx.t;
    #6; // wait for clk edge to see output effect
    $display(" Driver Received Test Case Reset=%b | Clk=%b T=%b | Q=%b | Q'=%b",inrf.rst,inrf.clk,inrf.t,inrf.q,inrf.qbar);
  endtask
endclass
