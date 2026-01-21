`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2025 18:55:55
// Design Name: 
// Module Name: tb_dff_en
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


module tb_dff_en;
reg rst,clk,en,d;
wire q;

initial begin
rst=1'b0;
d=1'b0;
en=1'b0;
#10;
rst=1'b1;
#100;
rst=1'b0;
repeat(100) begin
@(posedge clk)
#5;
en<=$random;
d<=$random;
end
end

always begin
clk<=1'b0;
#10;
clk<=1'b1;
#10;
end

dff_en d1(rst,clk,en,d,q);
endmodule
