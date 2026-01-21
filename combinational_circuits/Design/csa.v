module csa( 
    input [3:0]x,y,z, 
    input cin,co, 
    output [4:0]sum, 
    output cout 
    ); 
     
wire [4:0]c; 
wire [3:0]k,s; 
 
fa fa1(x[0],y[0],z[0],s[0],c[0]); 
fa fa2(x[1],y[1],z[1],s[1],c[1]); 
fa fa3(x[2],y[2],z[2],s[2],c[2]); 
fa fa4(x[3],y[3],z[3],s[3],c[3]); 
 
fa fa5(s[1],c[0],cin,sum[1],k[0]); 
fa fa6(s[2],c[1],k[0],sum[2],k[1]); 
fa fa7(s[3],c[2],k[1],sum[3],k[2]); 
fa fa8(co,c[3],k[2],sum[4],k[3]); 
 
assign sum[0]=s[0]; 
assign cout = k[3]; 
   
endmodule 