module Verilog2(clk,rst,div6_out);
input clk,rst;
output reg div6_out;

reg [2:0] out; //reg的輸出，一定要宣告成reg
wire en;
assign en = (out==3'd2);

//持續上數
always @(posedge clk)
begin
  if (rst) out <=3'd0; 
  else if (en) out<=3'd0;
  else out <= out+3'd1;
end


//數3次做一次反向
always @(posedge clk or posedge rst)
begin
	if(rst) div6_out<=1'b0;
	else if (en)
		div6_out <= ~div6_out;
end
endmodule
