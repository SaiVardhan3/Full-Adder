`include "full_adder.v"
`timescale 1 ns/10 ps
module full_adder_tb();
  reg a,b,cin;
  wire sum,cout;

  full_adder FUT (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin 
$monitor($time,"a=%b b=%b cin=%b sum=%b cout=%b",a,b,cin,sum,cout);
a=0;
b=0;
cin=1;
#10
a=0;
b=1;
cin=0;
#10
a=0;
b=1;
cin=1;
#10
a=1;
b=0;
cin=0;
#10
a=1;
b=0;
cin=1;
#10
a=1;
b=1;
cin=0;
#10
a=1;
b=1;
cin=1;
#10
a=1;
b=0;
cin=0;
#10;
end
endmodule
