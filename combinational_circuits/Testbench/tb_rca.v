module tb_rca; 
reg [3:0]a,b; 
reg ctrl; 
wire [3:0]sum; 
wire cout; 
integer i = 0; 
initial begin 
repeat(9) begin 
a = $random(); 
b = $random(); 
ctrl = $random; 
#10; 
i=i+1; 
end 
end 
rca rca1(a,b,ctrl,sum,cout); 
endmodule 