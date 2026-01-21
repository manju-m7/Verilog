`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2025 18:18:57
// Design Name: 
// Module Name: tb_counter
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


module tb_counter;
reg clk,rst,load,en;
reg [7:0]data_in;
wire [7:0]cnt;

initial begin
rst=1'b0;
load=1'b0;
en=1'b0;
data_in=8'd100;
#10;
rst=1'b1;
#100;
rst=1'b0;

repeat(10)
@(posedge clk);

@(posedge clk) begin
#5;
load=1'b1;
end

@(posedge clk) begin
#5;
load=1'b0;
end

repeat(10)
@(posedge clk);

@(posedge clk)
en=1'b1;

repeat(154)
@(posedge clk);

@(posedge clk)
en=1'b0;
end

always begin
clk=1'b0;
#10;
clk=1'b1;
#10;
end

counter c1(clk,rst,load,en,data_in,cnt);
endmodule
