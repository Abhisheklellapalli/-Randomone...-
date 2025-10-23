class generator;
  transaction tx;
  mailbox gm;
  task go;  
    tx=new();
      assert(tx.randomize());
      gm.put(tx);
      $display("Generated Test case rst=%b S=%b R=%b",tx.rst,tx.s,tx.r); 
  endtask
endclass
