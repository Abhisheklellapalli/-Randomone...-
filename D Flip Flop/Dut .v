module d_ff(
  input clk,rst,
  input d,
  output reg q,qbar
);
  always_ff@(posedge clk or posedge rst)
    begin
      if(rst==1)
        q<=1'b0;
      else 
        q<=d;
    end
  assign qbar = ~q;
endmodule
