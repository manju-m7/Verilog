module tb_barrel_shifter2; 
reg [7:0]data_in; 
reg [1:0]ctrl; 
wire [7:0]data_out; 
initial begin 
repeat(10) begin 
ctrl=$random; 
data_in=$random;  
#10; 
end 
end 
barrel_shifter2 bs(data_in,ctrl,data_out); 
endmodule 