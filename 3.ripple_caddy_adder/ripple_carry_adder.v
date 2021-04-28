
module full_adder(in0,in1,cin,sum,cout);
input in0,in1,cin;
output sum,cout;

assign sum = in0^in1^cin;
assign cout=(in0&in1)|(cin&(in0^in1));

endmodule

module ripple_carry_adder(in0,in1,sum,cout);
input  [3:0] in0;
input  [3:0] in1;
output [3:0] sum;
output cout;

wire c1,c2,c3;

full_adder fa0(in0[0],in1[0],0,sum[0],c1);
full_adder fa1(in0[1],in1[1],c1,sum[1],c2);
full_adder fa2(in0[2],in1[2],c2,sum[2],c3);
full_adder fa3(in0[3],in1[3],c3,sum[3],cout);
endmodule


/*
module full_adder(in0, in1, cin, out, cout);
	input in0, in1, cin;
	output out, cout;

	assign out = in0 ^ in1 ^ cin;
	assign cout = ((in0 ^ in1) & cin) | (in0 & in1);
endmodule

module ripple_carry_adder(in0, in1, out, cout);
	input [3:0] in0;
	input [3:0] in1;
	output [3:0] out;
	output cout;

	wire c1, c2, c3;
	full_adder fa0(in0[0], in1[0], 0, out[0], c1);
	full_adder fa1(in0[1], in1[1], c1, out[1], c2);
	full_adder fa2(in0[2], in1[2], c2, out[2], c3);
	full_adder fa3(in0[3], in1[3], c3, out[3], cout);

endmodule
*/
