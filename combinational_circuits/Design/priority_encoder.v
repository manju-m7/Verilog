`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 23:35:28
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(
input [3:0]i,
output reg [1:0]y
);
always@(i) begin
    if(i[3]==1'b1)
        y=2'b11;
    else if(i[2]==1'b1)
        y=2'b10;
    else if(i[1]==1'b1)
        y=2'b01;
    else if(i[0]==1'b1)
        y=2'b00;
    else begin
        y=2'b00;     
     end
end
endmodule
