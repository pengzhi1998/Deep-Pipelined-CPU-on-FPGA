`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/16 07:17:46
// Design Name: 
// Module Name: fulladder_32
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


module fulladder_32
    (   input   [31:0]  A,
        input   [31:0]  B,
        input           Cin,
        output  [31:0]  sum
    );
    
    wire  [31:-1] P,G;
    assign P[-1]=0;
    assign G[-1]=Cin;
    
    wire  [15:0]  p1,g1;
    wire  [15:0]  p2,g2;
    wire  [15:0]  p3,g3;
    wire  [15:0]  p4,g4;
    wire  [15:0]  p5,g5;
    
    
    genvar  k;
    
    generate
       for (k=0;k<32;k=k+1)
          begin:bit1
             or   o1(P[k],A[k],B[k]);
             and  a1(G[k],A[k],B[k]); 
          end
    endgenerate
    generate
       for (k=0;k<16;k=k+1)
          begin:bit2
             and       a1(p1[k],P[2*k],P[2*k-1]);
             G_produce m1(g1[k],G[2*k],P[2*k],G[2*k-1]);
          end
    endgenerate
    
    generate
       for (k=0;k<8;k=k+1)
          begin:bit3
             G_produce  m1(g2[2*k+1],g1[2*k+1],p1[2*k+1],g1[2*k]); 
             G_produce  m2(g2[2*k],G[4*k+1],P[4*k+1],g1[2*k]);
             and        a1(p2[2*k+1],p1[2*k],p1[2*k+1]);
             and        a2(p2[2*k],p1[2*k],P[4*k+1]);
          end
    endgenerate
    
    generate
       for (k=0;k<4;k=k+1)
          begin:bit4
             G_produce  m1(g3[4*k],G[8*k+3],P[8*k+3],g2[4*k+1]); 
             G_produce  m2(g3[4*k+1],g1[4*k+2],p1[4*k+2],g2[4*k+1]);
             G_produce  m3(g3[4*k+2],g2[4*k+2],p2[4*k+2],g2[4*k+1]);
             G_produce  m4(g3[4*k+3],g2[4*k+3],p2[4*k+3],g2[4*k+1]);
             and        a1(p3[4*k],P[8*k+3],p2[4*k+1]);
             and        a2(p3[4*k+1],p1[4*k+2],p2[4*k+1]);
             and        a3(p3[4*k+2],p2[4*k+2],p2[4*k+1]);
             and        a4(p3[4*k+3],p2[4*k+3],p2[4*k+1]);
          end
    endgenerate
    
    generate
       for (k=0;k<2;k=k+1)
          begin:bit5
             G_produce  m1    (g4[8*k],G[16*k+7],P[16*k+7],g3[8*k+3]);
             G_produce  m2    (g4[8*k+1],g1[8*k+4],p1[8*k+4],g3[8*k+3]);
             G_produce  m3    (g4[8*k+2],g2[8*k+4],p2[8*k+4],g3[8*k+3]);
             G_produce  m4    (g4[8*k+3],g2[8*k+5],p2[8*k+5],g3[8*k+3]);
             G_produce  m5    (g4[8*k+4],g3[8*k+4],p3[8*k+4],g3[8*k+3]);
             G_produce  m6    (g4[8*k+5],g3[8*k+5],p3[8*k+5],g3[8*k+3]);
             G_produce  m7    (g4[8*k+6],g3[8*k+6],p3[8*k+6],g3[8*k+3]);
             G_produce  m8    (g4[8*k+7],g3[8*k+7],p3[8*k+7],g3[8*k+3]);
             and       a01(p4[8*k],P[16*k+7],p3[8*k+3]);
             and       a02(p4[8*k+1],p1[8*k+4],p3[8*k+3]);
             and       a03(p4[8*k+2],p2[8*k+4],p3[8*k+3]);
             and       a04(p4[8*k+3],p2[8*k+5],p3[8*k+3]);   
             and       a05(p4[8*k+4],p3[8*k+4],p3[8*k+3]);
             and       a06(p4[8*k+5],p3[8*k+5],p3[8*k+3]);
             and       a07(p4[8*k+6],p3[8*k+6],p3[8*k+3]);
             and       a08(p4[8*k+7],p3[8*k+7],p3[8*k+3]);
          end
    endgenerate
    
    G_produce     m01    (g5[0],G[15],P[15],g4[7]);    
    G_produce     m02    (g5[1],g1[8],p1[8],g4[7]);
    G_produce     m03    (g5[2],g2[8],p2[8],g4[7]);
    G_produce     m04    (g5[3],g2[9],p2[9],g4[7]);
    G_produce     m05    (g5[4],g3[8],p3[8],g4[7]);
    G_produce     m06    (g5[5],g3[9],p3[9],g4[7]);
    G_produce     m07    (g5[6],g3[10],p3[10],g4[7]);
    G_produce     m08    (g5[7],g3[11],p3[11],g4[7]);
    G_produce     m09    (g5[8],g4[8],p4[8],g4[7]);
    G_produce     m10    (g5[9],g4[9],p4[9],g4[7]);
    G_produce     m11    (g5[10],g4[10],p4[10],g4[7]);
    G_produce     m12    (g5[11],g4[11],p4[11],g4[7]);
    G_produce     m13    (g5[12],g4[12],p4[12],g4[7]);
    G_produce     m14    (g5[13],g4[13],p4[13],g4[7]);
    G_produce     m15    (g5[14],g4[14],p4[14],g4[7]);
    G_produce     m16    (g5[15],g4[15],p4[15],g4[7]);        
    and        a0(p5[0],P[15],p4[7]);
    and        a1 (p5[1],p1[8],p4[7]);
    and        a2(p5[2],p2[8],p4[7]);
    and        a3(p5[3],p2[9],p4[7]);
    and        a4(p5[4],p3[8],p4[7]);
    and        a5(p5[5],p3[9],p4[7]);
    and        a6(p5[6],p3[10],p4[7]);
    and        a7(p5[7],p3[11],p4[7]);
    and        a8(p5[8],p4[8],p4[7]);
    and        a9(p5[9],p4[9],p4[7]);
    and        a10(p5[10],p4[10],p4[7]);
    and        a11(p5[11],p4[11],p4[7]);
    and        a12(p5[12],p4[12],p4[7]);
    and        a13(p5[13],p4[13],p4[7]);
    and        a14(p5[14],p4[14],p4[7]);
    and        a15(p5[15],p4[15],p4[7]);
    
    wire [30:-1] Gsum={g5[15:0],g4[7:0],g3[3:0],g2[1:0],g1[0],Cin};
    
    generate
       for (k=0;k<32;k=k+1)
          begin
             xor (sum[k],A[k],B[k],Gsum[k-1]);
          end
    endgenerate
    
endmodule
