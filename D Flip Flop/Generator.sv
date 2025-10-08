class generator;
  transaction tx;
  mailbox gm;
  task go;
    tx=new();
    repeat(2) begin
      assert(tx.randomize());
      gm.put(tx);
      $display("Generated Test case");
      $display("rst=%b d=%b ",tx.rst,tx.d);
    end
  endtask
endclass
