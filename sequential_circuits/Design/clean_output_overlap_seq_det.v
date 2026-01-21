`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2025 05:15:48
// Design Name: 
// Module Name: clean_output_overlap_seq_det
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clean_output_overlap_seq_det(
input clk,rst,serin,
output reg [1:0]ps,ns,
output reg det_out
);

//comb
always@(serin or ps) begin
ns<=ps;
case(ps)
2'd0: begin
if(serin==1'b1)
ns<=2'd1;
end

2'd1: begin
if(serin==1'b0)
ns<=2'd0;
else
ns<=2'd3;
end

2'd2: begin
if(serin==1'b0)
ns<=2'd0;
else
ns<=2'd1;
end

2'd3: begin
if(serin==1'b0)
ns<=2'd0;
else
ns<=2'd3;
end
endcase
end
//seq
always@(posedge clk or posedge rst) begin
if(rst==1'b1)begin
ps<=2'd0;
det_out<=1'b0;
end

else if(clk==1'b1) begin
ps<=ns;
det_out=1'b0;
if(ns==2'd3) 
det_out<=1'b1;
end
end
endmodule
