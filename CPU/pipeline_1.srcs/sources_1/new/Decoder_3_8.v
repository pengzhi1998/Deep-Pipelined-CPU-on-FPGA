`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 06:59:55
// Design Name: 
// Module Name: Decoder_3_8
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


module Decoder_3_8(
    input [2:0] A,
    output [7:0] Y,
    input G
    );
        wire G_L;
    wire [2:0]A_L;
    not  (G_L,G),
         (A_L[0],A[0]),
         (A_L[1],A[1]),
         (A_L[2],A[2]);
    nand (Y[0], G_L, A_L[0], A_L[1], A_L[2]);
    nand (Y[1], G_L, A[0],   A_L[0], A_L[2]);
    nand (Y[2], G_L, A_L[0], A[1],   A_L[2]);
    nand (Y[3], G_L, A[0],   A[1],   A_L[2]);
    nand (Y[4], G_L, A_L[0], A_L[1], A[2]);
    nand (Y[5], G_L, A[0],   A_L[1], A[2]);
    nand (Y[6], G_L, A_L[0], A[1],   A[2]);
    nand (Y[7], G_L, A[0],   A[1],   A[2]);
endmodule
