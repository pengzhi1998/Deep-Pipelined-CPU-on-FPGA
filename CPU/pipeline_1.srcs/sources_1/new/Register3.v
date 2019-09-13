`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/07/08 13:38:09
// Design Name: 
// Module Name: Register3
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


module Register3(
    input [31:0] A1,
    input [31:0] A2,
    input [31:0] A3,
    input CLK,
    output reg[31:0] Y1,
    output reg[31:0] Y2,
    output reg[31:0] Y3
    );
    always@(posedge CLK)
      begin
        Y1=A1;
        Y2=A2;
        Y3=A3;
      end
endmodule
