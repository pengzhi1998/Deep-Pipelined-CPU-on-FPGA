`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/26 17:01:50
// Design Name: 
// Module Name: Register_with_twelve_input
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


module Register_with_thirteen_input(
   input  A0,
   input  A1,
   input [3:0] A2,
   input [1:0] A3,
   input  A4,
   input  A5,
   input [31:0] A6,
   input [31:0] A7,
   input [4:0] A8,
   input [4:0] A9,
   input [4:0] A10,
   input [31:0] A11,   
   input A12,
   input CLK,
   output reg Y0,
   output reg Y1,
   output reg[3:0] Y2,
   output reg[1:0] Y3,
   output reg Y4,
   output reg Y5,
   output reg[31:0] Y6,
   output reg[31:0] Y7,
   output reg[4:0] Y8,
   output reg[4:0] Y9,
   output reg[4:0] Y10,
   output reg[31:0] Y11,
   output reg Y12
    );
    always@(posedge CLK)
       begin
         Y0=A0;
         Y1=A1;
         Y2=A2;
         Y3=A3;
         Y4=A4;
         Y5=A5;
         Y6=A6;
         Y7=A7;
         Y8=A8;
         Y9=A9;
         Y10=A10;
         Y11=A11;
         Y12=A12;
       end
endmodule
