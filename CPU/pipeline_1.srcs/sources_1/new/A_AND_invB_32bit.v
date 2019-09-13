`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 06:53:42
// Design Name: 
// Module Name: A_AND_invB_32bit
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


module A_AND_invB_32bit(input[31:0] INA,input[31:0] INB,output[31:0] OP  );
    
        wire[31:0] nB;
              genvar i;
              generate
                   for(i=0;i<=31;i=i+1)
                   begin
                   not iv(nB[i],INB[i]);
                   and A(OP[i],INA[i],nB[i]);
                   end
              endgenerate
  endmodule
