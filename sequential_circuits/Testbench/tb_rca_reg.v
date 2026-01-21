`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2025 20:49:22
// Design Name: 
// Module Name: tb_rca_reg
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


module tb_rca_reg;
reg clk,rst,cin;
reg [3:0]ain,bin;
wire [3:0]sum_out;
wire cout_out;
initial begin
rst<=1'b0;
#10;
rst<=1'b1;
#100;
rst<=1'b0;

@(posedge clk) begin
#5;
ain=4'b1010;
bin=4'b1111;
cin=1'b0;
end
end

always begin
clk<=1'b0;
#10;
clk<=1'b1;
#10;
end
rca_reg rca_reg1(clk,rst,cin,ain,bin,sum_out,cout_out);
endmodule