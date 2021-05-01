module full_adder (in1,in2,cin,sum,c_out);
input in1, in2, cin;
output sum,c_out;

wire s1,c1,c2;
xor (s1,in1,in2);
and (c1,in1,in2);
xor (sum,s1,cin);
and (c2,s1,cin);
or  (c_out,c2,c1);

endmodule
