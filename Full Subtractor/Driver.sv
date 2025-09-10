// Driver

class driver;
  mailbox dm;
  virtual fs fsub; //Virtual interface to connect to DUT
  task go;
    ports in1; //typedef handle
    forever
      begin
        dm.get(in1); //Get the test cases from generator
        fsub.a=in1.a;
        fsub.b=in1.b;
        fsub.borin=in1.borin;
        #1;
        $display("Received test case a = %b b = %b borin = %b | dif = %b borout = %b",fsub.a,fsub.b,fsub.borin,fsub.dif,fsub.borout);
      end
  endtask
endclass
