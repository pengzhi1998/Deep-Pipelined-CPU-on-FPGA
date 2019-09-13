`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/04 19:02:19
// Design Name: 
// Module Name: multiplexer32_2_1
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


module multiplexer32_2_1(
    input wire[31:0]a,
    input wire[31:0]b,
    input wire s,
    output reg[31:0]y   );
    always@(a,b,s)
    if(s==0)
        y=a;
    else if (s==1)
        y=b;
    else y=a;
    
endmodule
