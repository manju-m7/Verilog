`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 16:22:31
// Design Name: 
// Module Name: tb_sequence_repeater
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


module tb_sequence_repeater;
reg clk,rst;
wire [2:0]dout;

initial begin
rst=1'b0;
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
sequence_repeater s1(clk,rst,dout);
endmodule
