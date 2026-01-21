`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2025 20:08:07
// Design Name: 
// Module Name: transition_detection
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


module transition_detection(
input clk,rst,in1,in2,
output reg [1:0]ps,ns,
output reg det_out,
output reg [1:0]cnt
);
//comb
always @(*) begin
case(ps)
2'd0: begin
cnt<=2'd0;
if(in1==0 && in2==0) 
ns<=2'd1;
else 
ns<=2'd0;
end

2'd1: begin
if(in1==1 && in2==1)
ns<=2'd2;
else if(in1==0 && in2==0)
ns<=2'd1;
else
ns<=2'd0;
end

2'd2: begin
if(cnt<=2'd1)
ns<=2'd2;
else
ns<=2'd0;
end
endcase
end

//seq
always @(posedge clk or posedge rst) begin
if(rst==1'b1) begin
ps<=2'd0;
det_out<=1'b0;
end
else if(clk==1'b1) begin
ps<=ns;
if(ns==2'd2) begin
det_out<=1'b1;
if(cnt<=2'd1)
cnt<=cnt+1;
end
else 
det_out<=1'b0;
end
end
endmodule
