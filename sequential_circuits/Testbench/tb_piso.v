`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2025 21:37:41
// Design Name: 
// Module Name: tb_piso
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


module tb_piso;
reg clk,rst,load,shen;
reg [7:0]data_in;
wire [7:0]sreg;
wire ser_out;
initial begin
rst=1'b0;
load=1'b0;
shen=1'b0;
data_in=8'b01010101;
#10;
rst=1'b1;
#100;
rst=1'b0;

@(posedge clk) begin
#5;
load<=1'b1;
end

@(posedge clk)begin
#5;
load<=1'b0;
end

@(posedge clk) begin
#5;
shen<=1'b1;
end

end

always begin
clk<=1'b0;
#10;
clk<=1'b1;
#10;
end

piso p1(data_in,rst,clk,load,shen,sreg,ser_out);
endmodule
