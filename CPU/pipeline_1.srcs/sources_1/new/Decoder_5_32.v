`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 07:01:25
// Design Name: 
// Module Name: Decoder_5_32
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


module Decoder_5_32(
    input [4:0] A,
    input EN,
    output [31:0] Y
    );

   wire [3:0] En;    
     Decoder_3_8 u1(
       .A(A[2:0]),
       .G(En[0]),
       .Y(Y[7:0])
       );
     Decoder_3_8 u2(
       .A(A[2:0]),
       .G(En[1]),
       .Y(Y[15:8])
       );
     Decoder_3_8 u3(
      .A(A[2:0]),
      .G(En[2]),
      .Y(Y[23:16])
      );
     Decoder_3_8 u4(
      .A(A[2:0]),
      .G(En[3]),
      .Y(Y[31:24])
      );  
     Decoder_2_4 u5(
     .A(A[4:3]),
     .G(EN),
     .Y(En)
       );
endmodule
