/*
module abstract_value(a,b,c,d,clk, rst_n);
input clk, rst_n;
input [7:0] a;
input [3:0]b;
input [5:0]c;
output reg[7:0] d;
wire abs_a[7:0];
assign abs_a[7:0] = a[7:7]==1? ~a+1: a;

always@(a)
begin
	d <= abs_a;
end
endmodule
*/

module abstract_value(a,b,c,abs_a,clk, rst_n);
input clk, rst_n;
input [7:0] a;
input [3:0]b;
input [5:0]c;
output reg[7:0] abs_a;
//reg [7:0] abs_a;

always@(a)
begin
	if(a[7]==1)
	abs_a<=~a+1;
	else
	abs_a<=a;
end
endmodule
