`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 07:01:59
// Design Name: 
// Module Name: fulladder_1bit
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


module fulladder_1bit(input A, input B, input Cin, output Sum, output Cout);
    
        wire T1,T2,T3,S1;
        xor x1 (S1, A, B);
        xor x2 (Sum, S1, Cin);
        and A1 (T3, A, B );
        and A2 (T2, B, Cin);
        and A3 (T1, A, Cin);
        or O1(Cout,T1,T2,T3);
endmodule
