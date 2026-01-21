module nrca #(parameter n = 32)( 
    input [n-1:0]a,b, 
    input cin, 
    output [n-1:0]sum, 
    output cout 
    ); 
    wire [n-1:0]c; 
    genvar i; 
    generate 
        fa fa0(a[0],b[0],cin,sum[0],c[0]); 
        for(i=1;i<n;i=i+1) begin 
            fa fag(a[i],b[i],c[i-1],sum[i],c[i]); 
        end 
    endgenerate  
    assign cout = c[n-1]; 
endmodule 