`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/26 19:25:25
// Design Name: 
// Module Name: Register_with_six_input1
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


module Register_with_six_input1(
input  A0,
input  A1,
input  A2,
input [31:0] A3,
input [4:0] A4,
input [31:0] A5,
input CLK,
output reg Y0,
output reg Y1,
output reg Y2,
output reg[31:0] Y3,
output reg[4:0] Y4,
output reg[31:0] Y5
    );
    always@(posedge CLK)
       begin
          Y0=A0;
          Y1=A1;
          Y2=A2;  
          Y3=A3;
          Y4=A4;
          Y5=A5;        
       end    
endmodule
