`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 07:06:28
// Design Name: 
// Module Name: MUX_8_1
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


module MUX_8_1(
    output wire Y,
    input wire [7:0] D,
    input wire [2:0] S,
    input wire EN
);
 
    wire [7:0] T;
    wire [2:0] S_L;
    wire EN_L;
    not (S_L[0],S[0]),
        (S_L[1],S[1]),
        (S_L[2],S[2]),
        (EN_L,EN);
    and (T[0],D[0],S_L[0],S_L[1],S_L[2],EN_L),
        (T[1],D[1],S[0],S_L[1],S_L[2],EN_L),
        (T[2],D[2],S_L[0],S[1],S_L[2],EN_L),
        (T[3],D[3],S[0],S[1],S_L[2],EN_L),
        (T[4],D[4],S_L[0],S_L[1],S[2],EN_L),
        (T[5],D[5],S[0],S_L[1],S[2],EN_L),
        (T[6],D[6],S_L[0],S[1],S[2],EN_L),
        (T[7],D[7],S[0],S[1],S[2],EN_L);

    or  (Y,T[0],T[1],T[2],T[3],T[4],T[5],T[6],T[7]);
endmodule
