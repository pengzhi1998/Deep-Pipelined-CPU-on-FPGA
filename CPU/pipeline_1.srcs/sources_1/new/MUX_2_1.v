`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 07:05:13
// Design Name: 
// Module Name: MUX_2_1
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

module MUX_2_1(
    input [1:0] A,
    input S,
    input EN,
    output Y
    );
    wire [1:0] T;
    wire S_L;
    wire EN_L;
    not (S_L,S),
        (EN_L,EN);
    and (T[0],A[0], S_L , EN_L),
        (T[1],A[1], S, EN_L);
    or  (Y,T[0],T[1]);
endmodule
