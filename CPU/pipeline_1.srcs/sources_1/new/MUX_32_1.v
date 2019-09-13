`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 07:07:04
// Design Name: 
// Module Name: MUX_32_1
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


module MUX_32_1(
    input [31:0] D,
    input [4:0] S,
    input EN,
    output Y
    );
    wire [3:0] T;
    wire [3:0] En;
    wire [3:0] out;
    MUX_8_1 u1(
    .D(D[7:0]),
    .S(S[2:0]),
    .EN(En[0]),
    .Y(out[0])
    );
    MUX_8_1 u2(
    .D(D[15:8]),
    .S(S[2:0]),
    .EN(En[1]),
    .Y(out[1])
    );
    MUX_8_1 u3(
    .D(D[23:16]),
    .S(S[2:0]),
    .EN(En[2]),
    .Y(out[2])
    );
    MUX_8_1 u4(
    .D(D[31:24]),
    .S(S[2:0]),
    .EN(En[3]),
    .Y(out[3])
    );            
    Decoder_2_4 u5(
    .A(S[4:3]),
    .G(EN),
    .Y(En)
    );
 
    or (Y,out[1],out[2],out[3],out[0]);
endmodule
