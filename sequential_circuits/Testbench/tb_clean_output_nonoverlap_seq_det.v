`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2025 06:34:53
// Design Name: 
// Module Name: tb_clean_output_nonoverlap_seq_det
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


module tb_clean_output_nonoverlap_seq_det;
reg clk,rst,serin;
wire [2:0]ps,ns;
wire det_out;

initial begin
rst=1'b0;
serin=1'b0;
#10;
rst=1'b1;
#100;
rst=1'b0;

repeat(100) begin
@(posedge clk) begin
#5;
serin=$random;
end
end
end

always begin
clk=1'b0;
#10;
clk=1'b1;
#10;
end
clean_output_nonoverlap_seq_det c1(serin,clk,rst,ps,ns,det_out);
endmodule
