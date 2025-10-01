module jk_ff(
  input wire clk,
  input wire rst,
  input wire j,
  input wire k,
  output reg q,
  output reg qbar
);
  always@(posedge clk or negedge clk) begin
    if (rst) 
      q<=1'b0;
      else 
        begin
          if(j==0 && k==0) 
            q<=q;
          else if (j==0 && k==1) 
            q<=1'b0; 
          else if (j==1 && k==0)
            q<=1'b1;
          else if (j==1 && k==1)
            q<=~q;
        end
  end
  assign qbar = ~q;
endmodule
