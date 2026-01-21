module rca( 
input [3:0]a,b, 
input addsub, 
output [3:0] sum, 
output cout 
); 
wire [3:0]c,x; 
assign cout = c[3]; 
xor xor1(x[0],b[0],addsub); 
xor xor2(x[1],b[1],addsub); 
xor xor3(x[2],b[2],addsub); 
xor xor4(x[3],b[3],addsub); 
fa fa1(a[0],x[0],addsub,sum[0],c[0]); 
fa fa2(a[1],x[1],c[0],sum[1],c[1]); 
fa fa3(a[2],x[2],c[1],sum[2],c[2]); 
fa fa4(a[3],x[3],c[2],sum[3],c[3]);  
endmodule 