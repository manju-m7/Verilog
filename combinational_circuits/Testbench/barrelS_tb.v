module barrelS_tb; 
reg [7:0] a; 
reg [1:0] control; 
wire [7:0] y; 
barrelS b1(a, control, y); 
initial begin 
repeat(10) begin 
a = $random; 
control = $random; 
#10; 
end 
end