module sr_ff(
  input wire clk,rst,
  input wire s,r,
  output reg q,qbar);
  always_ff@(posedge clk or posedge rst) begin
    if (rst==1)
      q<=0;
    else begin
      case({s,r})
        2'b00: q<=q;
        2'b01: q<=1'b0;
        2'b10: q<=1'b1;
        2'b11: q<=1'bx;
        default: q<=00;
      endcase
    end
  end
  assign qbar=~q;
endmodule
