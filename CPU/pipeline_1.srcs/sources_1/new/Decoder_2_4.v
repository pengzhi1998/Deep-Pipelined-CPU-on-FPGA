`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 06:59:19
// Design Name: 
// Module Name: Decoder_2_4
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


module Decoder_2_4(
    input G,
    input [1:0] A,
    output [3:0] Y
    );
    wire G_L;
    wire [1:0]A_L;
    not  inst1(G_L,G),
         inst2(A_L[0],A[0]),
         inst3(A_L[1],A[1]);
    nand inst4(Y[0], G_L, A_L[0], A_L[1]);
    nand inst5(Y[1], G_L, A[0],   A_L[1]);
    nand inst6(Y[2], G_L, A_L[0], A[1]);
    nand inst7(Y[3], G_L, A[0],   A[1]);
endmodule
