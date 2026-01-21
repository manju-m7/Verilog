`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 16:33:19
// Design Name: 
// Module Name: jk_flipflop
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
module jk_flipflop(
input clk,rst,j,k,
output reg q, qbar);
always @(posedge clk or posedge rst) begin
if(rst==1'b1) begin
q<=1'b0;
qbar<=1'b1;
end
else if (clk==1'b1) begin
if(j==0 && k==0) begin
q<=q;
qbar<=qbar;
end
else if(j==0 && k==1) begin 
q<=1'b0;
qbar<=1'b1;
end
else if(j==1 && k==0) begin
q<=1'b1;
qbar<=1'b0;
end
else if(j==1 && k==1) begin
q<=~q;
qbar<=~qbar;
end
end
end
endmodule
