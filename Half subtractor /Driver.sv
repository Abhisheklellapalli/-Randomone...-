// Driver

class driver;
  virtual hs intrf;
  mailbox dm;
  logic [1:0]t;
  task go;
    forever begin
      dm.get(t);
      intrf.a= t[1];
      intrf.b= t[0];
      #1;
      $display("received test cases a=%0b b=%0b diff=%0b bor=%0b",intrf.a,intrf.b,intrf.diff,intrf.bor);
    end
  endtask
endclass
