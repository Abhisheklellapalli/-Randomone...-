class driver;
  trans tx;
  mailbox dm; // Driver mailbox
  virtual j_k_ff inr;
  task can;
    forever
      begin
        dm.get(tx);
        inr.j=tx.j;
        inr.k=tx.k;
        inr.rst=tx.rst;
        @(posedge inr.clk);
        $display("Time=%0t | Reset=%b j=%b k=%b clk=%b | Q=%b Q'=%b",$time,inr.rst,inr.j,inr.k,inr.clk,inr.q,inr.qbar);
      end
  endtask
endclass
