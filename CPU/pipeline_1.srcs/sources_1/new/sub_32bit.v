`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 07:11:08
// Design Name: 
// Module Name: sub_32bit
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


module sub_32bit(input[31:0] INA, input[31:0] INB, output[31:0] OP ,output Cout );
            genvar j;            
            wire[31:0] nB;
            parameter cin=1'b1;
                      generate
                           for(j=0;j<=31;j=j+1)
                           begin
                           not inv(nB[j],INB[j]);
                           end
                      endgenerate
     fulladder_32bit b(
             .INA(INA),
             .INB(nB),
             .cin(cin),
             .OP(OP),
             .cout(Cout)
              );       
    
endmodule
