`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 06:54:20
// Design Name: 
// Module Name: A_OR_B_32bit
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


module A_OR_B_32bit(input[31:0] INA,input[31:0] INB,output[31:0] OP  );
            genvar i;
            generate
                 for(i=0;i<=31;i=i+1)
                 begin
                 or A(OP[i],INA[i],INB[i]);
                 end
            endgenerate
      endmodule
