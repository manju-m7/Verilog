`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2025 06:21:05
// Design Name: 
// Module Name: ones_counter
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


module ones_counter(
input [7:0]data_in,
output[3:0] cnt_out);
reg [3:0]cnt;
integer i =0;
always@(data_in) begin
    cnt=4'b0;
    for(i=0;i<8;i=i+1) begin
        if(data_in[i]==1'b1)
            cnt=cnt+1;
        else
            cnt=cnt;
     end
end
assign cnt_out = cnt;
endmodule
