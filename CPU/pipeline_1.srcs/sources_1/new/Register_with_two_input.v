`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/07/08 01:33:38
// Design Name: 
// Module Name: Register_with_two_input
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


module Register_with_two_input(
    input [511:0] A,
    input [479:0] B,
    input [31:0] C,
    input [31:0] D,
    input CLK,
    output reg[511:0] Y1,
    output reg[479:0]Y2,
    output reg [15:0]Y3,
    output reg [31:0]Y4
    );
always@(posedge CLK)
  begin
     Y1=A;
     Y2=B;
     Y3=C;
     Y4=D;
  end
endmodule
