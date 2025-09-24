// _____________________________________
// |                                   |
// |          Generator                |
// |___________________________________|
class generator;
  transaction tx;
  mailbox mbx;
  task go;
    $display("Generated Values");
    $display("----------------");
    repeat(8) begin
      tx=new();
      assert(tx.randomize());
      mbx.put(tx);
      tx.outputs();
    end
  endtask
endclass
