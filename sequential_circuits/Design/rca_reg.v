`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2025 20:15:35
// Design Name: 
// Module Name: rca_reg
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


module rca_reg(input clk,rst,cin,
input [3:0]ain,bin,
output reg [3:0] sum_out,
output reg cout_out);

reg[3:0] a_reg,b_reg;
reg cin_reg;
wire [3:0]sum_w;
wire cout_w;

always@(posedge clk or posedge rst) begin
if(rst==1'b1) begin
a_reg<=4'd0;
b_reg<=4'd0;
cin_reg<=1'b0;
end
else begin
a_reg<=ain;
b_reg<=bin;
cin_reg<=cin;
end
end
rca_fa rf1 (a_reg,b_reg,cin_reg,sum_w,cout_w);
always@(posedge clk or posedge rst) begin
if(rst==1'b1) begin
sum_out<=4'd0;
cout_out<=1'b0;
end
else begin
sum_out<=sum_w;
cout_out<=cout_w;
end
end
endmodule
