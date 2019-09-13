`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/04 22:05:37
// Design Name: 
// Module Name: Register_File
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


module Register_File(
    input[4:0]A1,
    input[4:0]A2,
    input[4:0]A3,
    input[31:0]WD3,
    input WE3,
    input CLK,
    output[31:0]RD1,
    output[31:0]RD2
                      );
    reg[31:0]rf[31:0];
    always@(posedge CLK)
        if(WE3==1)
            rf[A3]<=WD3;
    assign RD1=(A1!=5'b00000)?rf[A1]:0;
    assign RD2=(A2!=5'b00000)?rf[A2]:0;
endmodule
