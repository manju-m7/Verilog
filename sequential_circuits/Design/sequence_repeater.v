`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2025 16:03:16
// Design Name: 
// Module Name: sequence_repeater
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


module sequence_repeater(
input clk,rst,
output reg[2:0] dout);
reg [2:0]cnt;
always @(posedge clk or posedge rst) begin
if(rst==1'b1) begin
cnt<=1'b0;
dout<=3'd1;
end

else if (clk==1'b1) begin
case(cnt) 
3'd0: begin
if(dout==3'd4) 
dout<=3'd1;
else if(dout==3'd1) 
dout<=3'd6;
cnt<=cnt+1;
end

3'd1: begin
dout<=3'd6;
cnt<=cnt+1;
end

3'd2: begin
dout<=3'd5;
cnt<=cnt+1;
end

3'd3: begin
dout<=3'd7;
cnt<=cnt+1;
end

3'd4: begin
dout<=3'd3;
cnt<=cnt+1;
end

3'd5: begin
dout<=3'd2;
cnt<=cnt+1;
end

3'd6: begin
dout<=3'd4;
cnt<=3'd0;
end
endcase
end
end
endmodule
