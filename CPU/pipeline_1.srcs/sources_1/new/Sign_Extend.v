`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/04 21:42:13
// Design Name: 
// Module Name: Sign_Extend
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


module Sign_Extend(
    input wire[15:0]a,
    output wire[31:0]y 
                  );
  
    assign y={a[15],a[15],a[15],a[15],a[15],a[15],a[15],a[15],a[15],a[15],a[15],a[15],a[15],a[15],a[15],a[15],a};
 
    
endmodule
