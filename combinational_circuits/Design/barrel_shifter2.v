module barrel_shifter2( 
input [7:0] data_in, 
input [1:0]ctrl, 
output [7:0] data_out 
); 
reg [7:0]out; 
always@(*) begin 
out=data_in; 
case(ctrl) 
2'd0: out={data_in[6:0],1'b0}; 
2'd1: out={data_in[5:0],2'b00}; 
2'd2: out={1'b0,data_in[7:1]}; 
2'd3: out={2'b00,data_in[7:2]}; 
endcase 
end 
assign data_out=out; 
endmodule 