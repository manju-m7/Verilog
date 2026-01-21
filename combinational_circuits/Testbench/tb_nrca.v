module tb_nrca; 
parameter n=32; 
reg [n-1:0]a,b; 
reg cin; 
wire [n-1:0]sum; 
wire cout; 
integer i =0; 
initial begin 
    cin=0; 
    repeat(9) begin 
        a = $random; 
        b = $random; 
        #10; 
        i=i+1; 
    end      
end 
nrca r1(a,b,cin,sum,cout); 
endmodule