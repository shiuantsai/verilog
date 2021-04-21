module counter(rst,out,clk);
parameter size = 2;

input clk, rst;
output reg[size:0] out;
wire en;
assign en = (out==3'b011);

always@(posedge clk or posedge rst)
begin
	if(rst) out<=0;
	else if(en) out<=0;
	else out <= out+1; //或是 out <= out+3'b001;

	
end
endmodule

