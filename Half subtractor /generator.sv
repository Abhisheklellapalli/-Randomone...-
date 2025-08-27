// creating test cases using generator

class generator;
  logic a,b;
  mailbox gm;
  task go();
    logic [1:0]temp;
    int i;
    for(i=0;i<4;i++) begin
      temp=i;
      a = temp[1];
      b = temp[0];
      gm.put(temp);
      #1;
      $display("generated test case %0d a=%0b b=%0b",i,a,b);
    end
  endtask
endclass
