class generator;
  trans tx;
  mailbox gm;
  task can;
    repeat(4) begin
      tx=new();
      assert(tx.randomize());
      gm.put(tx); //Generator mailbox
      $display("j=%b | k=%b | reset=%b",tx.j,tx.k,tx.rst);
    end
  endtask
endclass
