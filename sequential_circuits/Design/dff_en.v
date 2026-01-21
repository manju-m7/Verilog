`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2025 18:54:54
// Design Name: 
// Module Name: dff_en
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


module dff_en( input rst,clk,en,d,output reg q);
always @(posedge rst or posedge clk) begin
if(rst==1'b1)
q<=1'b0;
else if(clk==1'b1) begin
if(en==1'b1) begin
q<=d;
end
end
end
endmodule
