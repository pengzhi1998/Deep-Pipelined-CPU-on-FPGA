`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/26 16:42:57
// Design Name: 
// Module Name: maindec
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


module maindec(
    input [5:0]op,
    input [5:0]Funct,
    output  wire memtoreg,
    output  wire memwrite,
    output  wire [1:0]alusrc,
    output  wire regdst,
    output  wire regwrite,
    output  wire sra,
    output wire [1:0]aluop
    );
    reg [8:0]controls;
    assign regwrite=controls[8];
    assign regdst=controls[7];
    assign alusrc=controls[6:5];
    assign memwrite=controls[4];
    assign memtoreg=controls[3];
    assign aluop=controls[2:1];
    assign sra=controls[0];
    
    always@(*)
    begin
        case(op)
//          6'b000000:controls<=9'b110000100;//Rtype
          6'b100011:controls<=9'b101001000;//lw
          6'b101011:controls<=9'b001010000;//sw
          6'b001000:controls<=9'b101000000;//addi
          6'b011100:controls<=9'b110000100;//mul
          6'b000000:
          begin 
            if (Funct==6'b000011) controls<=9'b111100101;
            else controls<=9'b110000100;//sra
          end
          default:  controls<=9'b110000100;//illegalop
        endcase  
//        case(op)
//  6'b000000:regwrite<=9'b1;//Rtype
//  6'b100011:regwrite<=9'b1;//lw
//  6'b101011:regwrite<=9'b0;//sw
//  6'b001000:regwrite<=9'b1;//addi
//  6'b011100:regwrite<=9'b1;//mul
//  6'b000111:regwrite<=9'b1;//sra
//  default:  regwrite<=9'bx;//illegalop
//endcase  
    end
endmodule
