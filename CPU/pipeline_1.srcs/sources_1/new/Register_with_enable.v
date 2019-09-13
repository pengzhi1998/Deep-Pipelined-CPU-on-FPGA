`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/04 16:33:27
// Design Name: 
// Module Name: Register_with_enable
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


module Register_without_enable(
    input [31:0] A,
    input CLK,
    output reg [31:0] Y,
    input reset
    );
//    always @(*)
//      begin 
//        if (reset==1) Y=32'd2400;
//      end
    reg [6:0]i;
    always @(posedge CLK)
      begin
      if(i==100) Y=32'd2500;
      else if (reset==1) 
      begin
        Y=32'd2400;   
        i=0;
      end 
      else if (Y==32'd2499) 
        begin
          Y=32'd2403; 
          i=i+1;
        end
      else if (reset==0) Y=A;
      else Y=A;
      end
endmodule