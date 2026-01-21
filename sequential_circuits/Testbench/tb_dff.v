`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2025 18:12:55
// Design Name: 
// Module Name: tb_dff
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


module tb_dff;
reg rst,clk,d;
wire q;
integer i;
initial begin 
rst=1'b0;
d=1'b1;
#10;
rst<=1'b1;
#100;
rst<=1'b0;
for(i=0;i<100;i=i+1)begin
@(posedge clk)begin
#15;
d<=$random;
end
end
end
always begin
clk<=1'b0;
#10;
clk<=1'b1;
#10;
end
dff d1(rst,clk,d,q);
endmodule
