//Generator
class generator;
  mailbox mbx; //Handle for maillbox
  task go();
    value_s v; //handle for struct
    repeat(4) 
      begin
        v.a= 1'b1;
        v.s= $urandom_range(0,3);
        mbx.put(v);
        $display("the test cases a=%b, s=%b",v.a,v.s);
      end
  endtask
endclass
