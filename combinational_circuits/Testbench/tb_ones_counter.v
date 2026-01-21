`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2025 06:21:50
// Design Name: 
// Module Name: tb_ones_counter
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


module tb_ones_counter;
reg [7:0]data_in;
wire [3:0]cnt_out;
integer i=0;
initial begin
    repeat(9) begin
        data_in=$random;
        $monitor("time=%0t data_in=%b cnt_out=%d", $time, data_in, cnt_out);
        #10;
        i=i+1;
    end
 end
ones_counter o1(data_in,cnt_out);
endmodule
