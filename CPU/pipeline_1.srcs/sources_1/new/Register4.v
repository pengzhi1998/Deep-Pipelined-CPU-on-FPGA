`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/07/08 13:45:16
// Design Name: 
// Module Name: Register4
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


module Register4(
    input [3:0]A1,

input CLK,
output reg [3:0]Y1
    );
    always@(posedge CLK)
     Y1=A1;
endmodule
