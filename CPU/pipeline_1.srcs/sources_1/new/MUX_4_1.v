`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 07:05:53
// Design Name: 
// Module Name: MUX_4_1
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


module MUX_4_1(
    input [3:0] A,
    input [1:0] S,
    input EN,
    output Y
    );
    
    wire [3:0] T;
    wire [1:0] S_L;
    wire EN_L;
    not (S_L[0],S[0]),
        (S_L[1],S[1]),
        (EN_L,EN);
    and (T[0],A[0],S_L[0] ,S_L[1], EN_L),
        (T[1],A[1],S[0],   S_L[1], EN_L),
        (T[2],A[2],S_L[0], S[1],   EN_L),
        (T[3],A[3],S[0],   S[1],   EN_L);

    or  (Y,T[0],T[1],T[2],T[3]);
endmodule
