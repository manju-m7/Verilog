`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2025 21:30:38
// Design Name: 
// Module Name: linear_feedback_shift_register
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


module linear_feedback_shift_register(
input [2:0]data_in,
input clk,rst,
output reg [2:0]sreg);
always @(posedge clk or posedge rst) begin
if(rst==1'b1)
sreg<=data_in;
else if(clk==1'b1) begin
sreg[2]<=sreg[1]^sreg[0];
sreg[1]<=sreg[2];
sreg[0]<=sreg[1];
end
end
endmodule
