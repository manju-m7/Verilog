`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2025 18:18:23
// Design Name: 
// Module Name: counter
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


module counter(
input clk,rst,load,en,
input [7:0]data_in,
output reg [7:0]cnt);
always@(posedge clk or posedge rst) begin
if(rst==1'b1)
cnt=8'd0;
else if(clk==1'b1) begin
if(load==1'b1)
cnt<=data_in;
else if(en==1'b1)
cnt<=cnt+1;
end
end
endmodule
