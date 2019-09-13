`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/07/07 14:32:16
// Design Name: 
// Module Name: G_produce
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

module G_produce
    (   output a,
        input  b,c,d
    );
    wire s;
    and   A1(s,c,d);
    or    O1(a,s,b);
endmodule
