`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2025 21:38:15
// Design Name: 
// Module Name: piso
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


module piso(input [7:0]data_in,
input rst,clk,load,shen,
output reg [7:0]sreg,
output reg ser_out);
always@(posedge clk or posedge rst) begin
if (rst==1'b1)
ser_out<=8'd0;
else if (clk==1'b1) begin
if (load == 1'b1)
sreg<=data_in;
else if(shen==1'b1) begin
sreg<={sreg[6:0],1'b0};
ser_out<=sreg[7];
end
end
end
endmodule
