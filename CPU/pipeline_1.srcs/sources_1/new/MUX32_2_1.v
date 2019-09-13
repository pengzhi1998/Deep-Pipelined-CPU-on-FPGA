`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 07:07:37
// Design Name: 
// Module Name: MUX32_2_1
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


module MUX32_2_1(
    input [31:0]A,
    input [31:0]B,
    input S,
    input EN,
    output [31:0]Y
    );
    wire [31:0] T0;
    wire [31:0] T1;
    wire S_L;
    wire EN_L;

    not (S_L,S),
        (EN_L,EN);
        genvar i;
        generate 
        for  (i=0;i<=31;i=i+1)
        begin
        and (T0[i], A[i] ,S_L ,EN_L);
        and (T1[i], B[i] ,S ,  EN_L);
        or(Y[i],T0[i],T1[i]);
        end
        endgenerate

endmodule
