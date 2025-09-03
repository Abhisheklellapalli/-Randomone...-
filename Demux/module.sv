//Top Level Testbench
module tb;
  mailbox mbx;  
  generator gen; 
  dm inrf();  
  driver dir;
  demux dut (.a(inrf.a),
             .s(inrf.s),
             .y(inrf.y)
             );
  initial 
    begin
      gen = new();
      dir = new();
      mbx = new();
      gen.mbx = mbx;
      dir.mbx = mbx;
      dir.intrf = inrf;
      fork
        gen.go();
        dir.go();
      join
    end
endmodule
