`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/03 11:33:39
// Design Name: 
// Module Name: ALU_Decoder
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

module ALU_Decoder(
    input [1:0] ALUOp,
    input [5:0] Funct,
    input [5:0] Opcode,
    output reg [3:0] ALUControl
    );
    always @(*)
    begin 
        if(ALUOp==2'b00)
          ALUControl=4'b0111;
        else if (ALUOp[0]==1'b1)
          ALUControl=4'b1110;
        else if ((ALUOp[1]==1'b1)&&(Funct==6'b100000))
          ALUControl=4'b0111;
        else if ((ALUOp[1]==1'b1)&&(Funct==6'b100010))
          ALUControl=4'b1110;
        else if ((ALUOp[1]==1'b1)&&(Funct==6'b100100))
          ALUControl=4'b0000;   
        else if ((ALUOp[1]==1'b1)&&(Funct==6'b100101))
          ALUControl=4'b0010;
        else if ((ALUOp[1]==1'b1)&&(Funct==6'b101010))
          ALUControl=4'b1100;      
        else if ((ALUOp[1]==1'b1)&&(Funct==6'b000000))
          ALUControl=4'b1001;    
        else if ((ALUOp[1]==1'b1)&&(Funct==6'b000011))
          ALUControl=4'b1011;                     
        else if ((ALUOp[1]==1'b1)&&(Opcode==6'b011100))
          ALUControl=4'b1000;        
        else if (Opcode==6'b001100)
          ALUControl=4'b0000;         
        else ALUControl=4'b1111;
    end
endmodule
