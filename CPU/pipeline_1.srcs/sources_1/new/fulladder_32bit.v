`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 07:03:26
// Design Name: 
// Module Name: fulladder_32bit
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


module fulladder_32bit(input[31:0] INA, input[31:0] INB, input cin, output[31:0] OP,output cout );
    wire[30:0] Ctemp;
    genvar i;
    fulladder_1bit a1(
                .A(INA[0]),
                .B(INB[0]),
                .Cin(cin),
                .Sum(OP[0]),
                .Cout(Ctemp[0])
            );
            //每次加法，进位输入Ctemp[i-1]，进位输出Ctemp[i]
    generate
         for(i=1;i<=30;i=i+1)
           begin
           fulladder_1bit a(
           .A(INA[i]),
           .B(INB[i]),
           .Sum(OP[i]),
           .Cin(Ctemp[(i-1)]),
           .Cout(Ctemp[i])
           );
           end
    endgenerate
    fulladder_1bit a2(
                       .A(INA[31]),
                       .B(INB[31]),
                       .Cin(Ctemp[30]),
                       .Sum(OP[31]),
                       .Cout(cout)
                   );
 
endmodule

