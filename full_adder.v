
`timescale 1 ns/10 ps
module full_adder(a,b,cin,sum,cout);
input a,b,cin;
output wire sum,cout;
assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule
