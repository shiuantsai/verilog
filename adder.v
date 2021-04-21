/*作法:
先寫出truth table > 若看不出來input output關係則畫卡諾圖 > 直接得出sum由xor得到, cout由and得到
*/

module adder(in1,in2,sum,cout);
input in1,in2;
output sum,cout;
xor(sum,in1,in2);
and(cout,in1,in2);
endmodule