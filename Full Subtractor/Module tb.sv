module tb;
  mailbox mbx; // Mailbox handle
  generator gen; //Generator handle
  driver dri;  //Driver handle
  fs fullsub(); // Instantiate interface
  full_sub dut(.a(fullsub.a),
               .b(fullsub.b),
               .borin(fullsub.borin),
               .dif(fullsub.dif),
               .borout(fullsub.borout)
              );
  initial 
    begin
      gen=new();
      dri=new();
      mbx=new();
      gen.gm=mbx;
      dri.dm=mbx;
      dri.fsub=fullsub;
      gen.go();
      dri.go();
    end
endmodule
