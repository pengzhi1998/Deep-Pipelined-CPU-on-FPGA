`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 07:04:04
// Design Name: 
// Module Name: invA
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

module invA(input[31:0] INA,output[31:0] OP     );
              genvar i;
              generate
                   for(i=0;i<=31;i=i+1)
                   begin
                   not inv(OP[i],INA[i]);
                   end
              endgenerate
 endmodule
