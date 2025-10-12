module t_ff(
  input wire clk,rst,
  input wire t,
  output reg q,
  output reg qbar);
  always@(posedge clk or rst) begin
    if(rst)
      q<=1'b0;
    else 
      if(!t)
        q<=t;
    else
      q<=~t;
  end
  assign qbar=~q;
endmodule
