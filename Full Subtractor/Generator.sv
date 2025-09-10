// Generator
class generator;
  mailbox gm;  //Mailbox handle
  integer i,j;
  task go;
    ports in;
    logic [2:0]temp;
    for(i=0; i<8; i++) begin
      temp = i;
      j=i+1;
      in.a = temp[2];
      in.b = temp[1];
      in.borin = temp[0];
      gm.put(in); // Send test case to driver
      $display("Generated test case %0d). a = %b b = %b borin = %b",j,in.a,in.b,in.borin);
    end
  endtask
endclass
