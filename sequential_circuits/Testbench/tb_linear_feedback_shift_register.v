`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2025 21:31:22
// Design Name: 
// Module Name: tb_linear_feedback_shift_register
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


module tb_linear_feedback_shift_register;
reg rst,clk;
reg [2:0]data_in;
wire [2:0]sreg;

initial begin
rst=1'b0;
data_in=3'b010;
#10;
rst=1'b1;
#100;
rst=1'b0;
end
always begin
clk<=1'b0;
#10;
clk<=1'b1;
#10;
end

linear_feedback_shift_register l1(data_in,clk,rst,sreg);
endmodule
