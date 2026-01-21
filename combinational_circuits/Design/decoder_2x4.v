`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 22:16:23
// Design Name: 
// Module Name: decoder_2x4
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


module decoder_2x4(
input en,
input [1:0]addr,
output reg[3:0]y
);
always @(addr or en)
    begin 
        if(en==1'b1) begin
        y=4'b0000;
            case(addr)
                2'd0: y[0]=1'b1;
                2'd1: y[1]=1'b1;
                2'd2: y[2]=1'b1;
                2'd3: y[3]=1'b1;
                default: y=4'b0000;
            endcase
         end
      end     
endmodule
