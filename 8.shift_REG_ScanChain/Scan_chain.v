module Scan_chain(PI,clk,load,rst,so);
input clk,rst,load;
input [3:0] PI;
output so;
reg [3:0] dff4b;
assign so = dff4b[3];

always@(posedge clk or negedge rst)
begin
	integer i;
	if(!rst) 
		dff4b <= 4'b0;
	else if (load)
		dff4b <=PI;
	else
	begin
		for(i=3;i>0;i=i-1)
			dff4b[i]<=dff4b[i-1];
		dff4b[0]<=1'b0;
	end
end
endmodule
