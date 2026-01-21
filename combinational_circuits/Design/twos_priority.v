module twos_priority(input [7:0]num_in, output [7:0]out); 
reg [7:0] num_out; reg [2:0]p; 
always@(*) 
begin 
p=3'd0; 
if (num_in[0]==1'b1) p=3'd0; 
else if (num_in[1]==1'b1) p=3'd1; 
else if (num_in[2]==1'b1) p=3'd2; 
else if (num_in[3]==1'b1) p=3'd3; 
else if (num_in[4]==1'b1) p=3'd4; 
else if (num_in[5]==1'b1) p=3'd5; 
else if (num_in[6]==1'b1) p=3'd6; 
else if (num_in[7]==1'b1) p=3'd7; 
end 
always@(p) 
begin 
case(p) 
3'd0: num_out={~num_in[7:1], num_in[0]}; 
3'd1: num_out={~num_in[7:2], num_in[1:0]}; 
3'd2: num_out={~num_in[7:3], num_in[2:0]}; 
3'd3: num_out={~num_in[7:4], num_in[3:0]}; 
3'd4: num_out={~num_in[7:5], num_in[4:0]}; 
3'd5: num_out={~num_in[7:6], num_in[5:0]}; 
3'd6: num_out={~num_in[7], num_in[6:0]}; 
3'd7: num_out={num_in[7:0]}; 
 
 
endcase 
end 
assign out=num_out; 
endmodule