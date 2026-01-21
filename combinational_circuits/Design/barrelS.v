module barrelS( 
input [7:0] data_in, 
input [1:0] ctrl, 
output reg [7:0] data_out 
); 
always @(*) begin 
case(ctrl) 
2'd0: data_out = data_in; 
2'd1: data_out = {data_in[6:0], 1'b0}; 
2'd2: data_out = {data_in[5:0], 2'b00}; 
2'd3: data_out = {data_in[4:0], 3'b000}; 
default: data_out = data_in; 
endcase 
end 