//Driver
class driver;
  mailbox mbx;
  virtual dm intrf;  // Handle for interface
  task go();
    value_s ve;  //handle for struct
    forever
      begin
        mbx.get(ve);
        intrf.a = ve.a;
        intrf.s = ve.s;
        #1;
        $display("received values:%b, output:%b",intrf.s,intrf.y);
        
    end
  endtask
endclass
