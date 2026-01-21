`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 22:56:51
// Design Name: 
// Module Name: tb_decoder_2x4
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

module tb_decoder_2x4;
reg en;
reg [1:0]addr;
wire [3:0]y;
integer i = 0;
initial begin
    en=1;
    repeat(4) begin
        addr=i;
        #10;
        i=i+1;
    end
end
decoder_2x4 d1(en,addr,y);
endmodule
