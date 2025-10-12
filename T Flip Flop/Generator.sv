class generator;
  transaction tx;
  mailbox gm;  //Generator Mailbox
  task go;
    tx=new();
    assert(tx.randomize());
    gm.put(tx);
    $display("Generated Test Case Reset=%b |   t=%b",tx.rst,tx.t);
  endtask
endclass
