`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 16:34:23
// Design Name: 
// Module Name: tb_jk_flipflop
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


module tb_jk_flipflop;
reg clk,rst,j,k;
wire q,qbar;
initial begin
rst=1'b0;
j=1'b0;
k=1'b0;
#10;
rst=1'b1;
#100;
rst=1'b0;
repeat(100) begin
@(posedge clk) begin
#5;
j<=$random;
k<=$random;
end
end
end
always begin
clk<=1'b0;
#10;
clk<=1'b1;
#10;
end
jk_flipflop jk1(clk,rst,j,k,q,qbar);
endmodule
