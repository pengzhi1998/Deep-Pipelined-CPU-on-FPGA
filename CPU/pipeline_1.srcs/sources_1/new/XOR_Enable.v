`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/15 15:26:08
// Design Name: 
// Module Name: XOR_Enable
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


module XOR_Enable(
    input [31:0] A,
    input EN,
    output reg [31:0] Y
    );
       always @(*)
       begin
         if (EN==1) Y=~A+1'b1;
         else Y=A;
       end
endmodule
