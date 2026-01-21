`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2025 20:07:10
// Design Name: 
// Module Name: tb_transition_detection
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


module tb_transition_detection;
reg clk,rst,in1,in2;
wire [1:0]ps,ns,cnt;
wire det_out;

initial begin
rst=1'b0;
in1=1'b0;
in2=1'b0;
#10;
rst=1'b1;
#100;
rst=1'b0;

@(posedge clk) begin
#5;
in1<=1'b0;
in2<=1'b0;
end

@(posedge clk) begin
#5;
in1<=1'b1;
in2<=1'b1;
end

@(posedge clk) begin
#5;
in1<=1'b0;
in2<=1'b0;
end

@(posedge clk) begin
#5;
in1<=1'b0;
in2<=1'b1;
end

@(posedge clk) begin
#5;
in1<=1'b1;
in2<=1'b1;
end

@(posedge clk) begin
#5;
in1<=1'b0;
in2<=1'b0;
end

@(posedge clk) begin
#5;
in1<=1'b0;
in2<=1'b0;
end

@(posedge clk) begin
#5;
in1<=1'b1;
in2<=1'b1;
end

@(posedge clk) begin
#5;
in1<=1'b1;
in2<=1'b1;
end

@(posedge clk) begin
#5;
in1<=1'b0;
in2<=1'b0;
end

@(posedge clk) begin
#5;
in1<=1'b0;
in2<=1'b0;
end
end

always begin
clk<=1'b0;
#10;
clk<=1'b1;
#10;
end
transition_detection td1(clk,rst,in1,in2,ps,ns,det_out,cnt);
endmodule
