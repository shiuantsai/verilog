module adder(in1,in2,sum,cout);
input in1,in2;
output sum,cout;
xor(sum,in1,in2);
and(cout,in1,in2);
endmodule