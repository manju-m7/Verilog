`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2025 00:10:28
// Design Name: 
// Module Name: tb_priority_encoder
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


module tb_priority_encoder;
reg [3:0]i;
wire[1:0]y;
integer p=0;
initial begin
    repeat(15) begin
        i=p[3:0];
        #10;
        p=p+1;
    end
end
priority_encoder p1(i,y);
endmodule
