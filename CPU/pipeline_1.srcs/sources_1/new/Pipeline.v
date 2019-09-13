`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/26 16:43:39
// Design Name: 
// Module Name: Pipeline
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


module Pipeline_1(
  input CLK,
  input reset ,
  output out
    );
//    reg CLK0;
//    reg reset0;
//    initial 
//       begin
//         CLK0=1'b0;
//         reset0=1'b1; 
//         #105 reset0=1'b0;
//       end
//    always #100 CLK0=~CLK0;   
//    assign CLK=CLK0;
//    assign reset=reset0;
wire [31:0]Instr;
    wire [31:0]RD1;
    wire [31:0]RD2;
    wire MemWrite0;
    wire MemWrite1;
    wire MemWrite2;
    wire RegDst0;
    wire RegDst1;
    wire [3:0]ALUControl0;
    wire [3:0]ALUControl1;
    wire [1:0]ALUSrcB0;
    wire [1:0]ALUSrcB1;
    wire MemtoReg0;
    wire MemtoReg1;
    wire MemtoReg2;
    wire MemtoReg3;
    wire RegWrite0;
    wire RegWrite1;
    wire RegWrite2;
    wire RegWrite3;
    wire [31:0]ALUout;
    wire [4:0]RTRD;
//    wire [31:0]Instr;
    wire [31:0]Data;
    wire [31:0]WD30;
    wire [4:0]A30;
    wire [4:0]A31;
    wire [4:0]A32;
    wire [31:0]PC;
    wire [31:0]WD;
    dist_mem_gen_0 u11(
    .a(ALUout[11:0]),
    .d(WD),
    .dpra(PC[11:0]),
    .clk(CLK),
    .we(MemWrite2),
    .spo(RD2),
    .dpo(RD1)
    );
    wire sra0;
    controller u12(
    .op(Instr[31:26]),
    .funct(Instr[5:0]),
    .memtoreg(MemtoReg0),
    .memwrite(MemWrite0),
    .alusrc(ALUSrcB0),
    .regdst(RegDst0),
    .regwrite(RegWrite0),
    .alucontrol(ALUControl0),
    .sra(sra0)
    );
    Register_with_six_input u0(
    .A0(RegWrite2),
    .A1(MemtoReg2),
    .A2(RD2),
    .A3(RD1),
    .A4(A31),
    .A5(ALUout),
    .CLK(CLK),
    .Y0(RegWrite3),
    .Y1(MemtoReg3),
    .Y2(Data),
    .Y3(Instr),
    .Y4(A32),
    .Y5(WD30)
    );
    wire [31:0]WD3;
    multiplexer32_2_1 u1(
    .a(WD30),
    .b(Data),
    .s(MemtoReg3),
    .y(WD3)
    );
    wire [31:0]RD10;
    wire [31:0]RD20;
    Register_File u2(
    .A1(Instr[25:21]),
    .A2(Instr[20:16]),
    .A3(A32),
    .WD3(WD3),
    .WE3(RegWrite3),
    .CLK(CLK),
    .RD1(RD10),
    .RD2(RD20)
    );
    wire [31:0]SignImm0;
    Sign_Extend u3(
    .a(Instr[15:0]),
    .y(SignImm0)
    );
    wire [31:0]RD11;
    wire [31:0]RD21;
    wire [4:0]MUX0;
    wire [4:0]MUX1;
    wire [4:0]MUX2;
    wire [31:0]SignImm1;
    wire sra1;
    Register_with_thirteen_input u4(
    .A0(MemWrite0),
    .A1(RegDst0),
    .A2(ALUControl0),
    .A3(ALUSrcB0),
    .A4(MemtoReg0),
    .A5(RegWrite0),
    .A6(RD10),
    .A7(RD20),
    .A8(Instr[20:16]),
    .A9(Instr[15:11]),
    .A10(Instr[10:6]),
    .A11(SignImm0),   
    .A12(sra0),
    .CLK(CLK),
    .Y0(MemWrite1),
    .Y1(RegDst1),
    .Y2(ALUControl1),
    .Y3(ALUSrcB1),
    .Y4(MemtoReg1),
    .Y5(RegWrite1),
    .Y6(RD11),
    .Y7(RD21),
    .Y8(MUX0),
    .Y9(MUX1),
    .Y10(MUX2),
    .Y11(SignImm1),
    .Y12(sra1)
    );
    wire [31:0]SrcA;
    multiplexer32_2_1 u13(
    .a(RD11),
    .b(RD21),
    .s(sra1),
    .y(SrcA)
    );
//    wire [4:0]A30;
//    wire [4:0]A31;
//    wire [4:0]A32;
    multiplexer5_2_1 u5(
    .a(MUX0),
    .b(MUX1),
    .s(RegDst1),
    .y(A30)
    );
    wire [31:0]SrcB;
    multiplexer32_3_1 u6(
    .a(RD21),
    .b(SignImm1),
    .c(MUX2),
    .s(ALUSrcB1),
    .y(SrcB)
    );
    wire [31:0]ALUResult;
    wire [3:0]ALUControl3;
    Register4 t1(
    .A1(ALUControl1),
    .CLK(CLK),
    .Y1(ALUControl3)
    );
    wire [3:0]ALUControl31;
    Register4 t2(
    .A1(ALUControl3),
    .CLK(CLK),
    .Y1(ALUControl31)
    );    
//    always@(posedge CLK)
//      begin
//        ALUControl3=ALUControl1;
//      end
    ALU_top u7(
    .INA(SrcA),
    .INB(SrcB),
    .CLK(CLK),
    .sel(ALUControl31),
    .OP0(ALUResult)
    );
//    wire [31:0]WD;
  wire  MemWrite5;
  wire  MemtoReg5;
  wire  RegWrite5;
  wire  [4:0]A305;
  wire [31:0]RD215;
 Register_with_three_input q1(
 .A1(MemWrite1),
 .A2(MemtoReg1),
 .A3(RegWrite1),
 .A4(A30),
 .A5(RD21),
 .CLK(CLK),
 .Y1(MemWrite5),
 .Y2(MemtoReg5),
 .Y3(RegWrite5),
 .Y4(A305),
 .Y5(RD215)
 );
 wire  MemWrite55;
 wire  MemtoReg55;
 wire  RegWrite55;
 wire  [4:0]A3055;
 wire [31:0]RD2155; 
  Register_with_three_input q12(
 .A1(MemWrite5),
 .A2(MemtoReg5),
 .A3(RegWrite5),
 .A4(A305),
 .A5(RD215),
 .CLK(CLK),
 .Y1(MemWrite55),
 .Y2(MemtoReg55),
 .Y3(RegWrite55),
 .Y4(A3055),
 .Y5(RD2155)
 );
//  always@(posedge CLK)
//   begin
//    MemWrite5=MemWrite1;
//    MemtoReg5=MemtoReg1;
//    RegWrite5=RegWrite1;
//    A305=A30;
//    RD215=RD21;    
//   end    
    Register_with_six_input1 u8(
        .A0(MemWrite55),
        .A1(MemtoReg55),
        .A2(RegWrite55),
        .A3(ALUResult),
        .A4(A3055),
        .A5(RD2155),
        .CLK(CLK),
        .Y0(MemWrite2),
        .Y1(MemtoReg2),
        .Y2(RegWrite2),
        .Y3(ALUout),
        .Y4(A31),
        .Y5(WD)
        );
//        wire [31:0]PC;
        wire [31:0]PC1;
        Register_without_enable u9(
        .A(PC1),
        .CLK(CLK),
        .Y(PC),
        .reset(reset)
         );
         wire nothing;
        fulladder_32bit u10(
        .INA(PC),
        .INB({32'd1}),
        .cin(1'd0),
        .OP(PC1),
        .cout(nothing)
        );
      assign  out=Instr[0];
//            always@(posedge CLK)
//            always@(posedge CLK)            
//           if(MemWrite2==1) $display("%h",WD[15:0]);
endmodule
