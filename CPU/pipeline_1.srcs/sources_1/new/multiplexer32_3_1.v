`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/04 19:23:21
// Design Name: 
// Module Name: multiplexer32_3_1
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


module multiplexer32_3_1(
 input wire[31:0]a,
    input wire[31:0]b,
    input wire[4:0]c,
    input wire[1:0]s,
    output reg[31:0]y
      );
    always@(a,b,c,s)
        begin
            case(s)
                2'b00:y=a;
                2'b10:y=b;
                2'b11:y=c;
                default:y=a;
            endcase
        end  
    
    
endmodule
