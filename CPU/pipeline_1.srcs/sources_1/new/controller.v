`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/26 17:40:38
// Design Name: 
// Module Name: controller
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


module controller(
    input wire[5:0]op,
    input wire[5:0]funct,
    output wire memtoreg,
    output wire memwrite,
    output wire regdst,
    output wire regwrite,
    output wire sra,
    output wire[1:0]alusrc,
    output wire [3:0]alucontrol
    );
    wire [1:0]aluop;
    
ALU_Decoder uu1(
        .ALUOp(aluop),
        .Funct(funct),
        .Opcode(op),
        .ALUControl(alucontrol)
        );
maindec uu2(
        .op(op),
        .memtoreg(memtoreg),        
        .regdst(regdst),
        .alusrc(alusrc),
        .memwrite(memwrite),
        .regwrite(regwrite),
        .aluop(aluop),
        .sra(sra),
        .Funct(funct)
        );
endmodule
