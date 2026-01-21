module fa( 
input a,b,cin, 
output sum,cout 
); 
wire s,c1,c2; 
ha ha1(a,b,s,c1); 
ha ha2(s,cin,sum,c2); 
or or1(cout,c1,c2); 
endmodule 