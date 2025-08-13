interface dec;
  logic a,b;
  logic [3:0] out;
endinterface

class generator;
  mailbox mbx;
  logic a,b;
  task go();
    repeat(4) begin
      a = $urandom_range(0,1);
      b = $urandom_range(0,1);
      mbx.put({a,b});
      #1;
      $display(" Generated test cases: a=%b | b=%b", a, b);
    end
  endtask
endclass

class driver;
  mailbox mbx;
  virtual dec intrf;
  task go();
    logic [1:0] m;
    forever begin
      mbx.get(m);
      intrf.a = m[1];
      intrf.b = m[0];
      #1; 
      $display(" Applied values: a=%b | b=%b | out=%b", intrf.a, intrf.b, intrf.out);
    end
  endtask
endclass

module tb;
  generator gen;
  driver drv;
  mailbox mbx;
  dec inrf();
  decoder dut(.a(inrf.a), .b(inrf.b), .out(inrf.out));

  initial begin
    gen = new();
    drv = new();
    mbx = new();
    gen.mbx = mbx;
    drv.mbx = mbx;
    drv.intrf = inrf;

    fork
      gen.go();
      drv.go();
    join_none

    #20 $finish;
  end
endmodule
