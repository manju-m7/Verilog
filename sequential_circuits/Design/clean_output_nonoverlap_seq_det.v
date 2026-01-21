`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2025 06:34:01
// Design Name: 
// Module Name: clean_output_nonoverlap_seq_det
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


module clean_output_nonoverlap_seq_det(
input serin,clk,rst,
output reg [2:0] ps,
output reg [2:0]ns,
output reg det_out);
//comb
always@(serin or ps) begin
case(ps)
3'd0:begin
if(serin==1'b0)
ns<=3'd4;
else
ns<=3'd1;
end

3'd1:begin
if(serin==1'b0)
ns<=3'd5;
else
ns<=3'd3;
end

3'd3: begin
if(serin==1'b0)
ns<=3'd4;
else
ns<=3'd1;
end

3'd4: begin
ns<=3'd5;
end

3'd5: begin
if(serin==1'b0)
ns<=3'd4;
else
ns<=3'd1;
end
endcase
end
//seq
always@(posedge clk or posedge rst)begin
if(rst==1'b1)begin
ps<=3'd0;
det_out=1'b0;
end
else if(clk==1'b1) begin
ps<=ns;
if(ns==3'd3)
det_out=1'b1;
else
det_out=1'b0;
end
end
endmodule
