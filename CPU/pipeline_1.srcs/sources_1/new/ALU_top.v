`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 07:13:11
// Design Name: 
// Module Name: ALU_top
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


module ALU_top(
    input [31:0]INA,
    input [31:0]INB,
    input [3:0]sel,
    input CLK,
    output reg [31:0]OP0
//    output reg OP
    );
//    reg [31:0]OP;
    wire[31:0]OP1;
    wire[31:0]OP2; 
    wire[31:0]OP3;
    wire[31:0]OP4;
    wire[31:0]OP5;
    wire[31:0]OP6;
    wire[31:0]OP7;
    wire[31:0]OP8;
    wire[31:0]OP9;
    wire[31:0]OP10;
    wire[31:0]OP11;
    wire[31:0]OP12;
    wire[31:0]OP15;
    wire OP16;
    wire OP17;
    reg OP18=32'b00000000_00000000_00000000_00000000;
//    reg OP19=1'b0;
    wire [31:0]OP20;
//    wire cout1;
//    wire cout2;
    wire EN;
    wire [1:0]sg1;
    wire [1:0]sg2;
    wire [1:0]sg3;
    assign sg1=2'b01;
    assign sg2=2'b10;
    assign sg3=2'b11;
    assign EN='b0;
    A_AND_B_32bit A_AND_B_32bit(INA,INB,OP1);
    
    A_AND_invB_32bit A_AND_invB_32bit(INA,INB,OP2);
    
    A_OR_B_32bit A_OR_B_32bit(INA,INB,OP3);
    
    A_OR_invB_32bit A_OR_invB_32bit(INA,INB,OP4);
    
    A_XOR_B_32bit A_XOR_B_32bit(INA,INB,OP5);
    
    A_XOR_invB_32bit A_XOR_invB_32bit(INA,INB,OP6);
    
    invA invA(INA,OP7);
    
//    fulladder_32bit fulladder_32bit({{17{INA[14]}},INA[14:0]},{{17{INB[14]}},INB[14:0]},EN,OP8,OP16);
    fulladder_32bit fulladder_32bit(INA,INB,EN,OP8,OP16);    
    wire [31:0]CA;   //为了有符号位的乘法
    XOR_Enable u(
    .A(INA),
    .EN(INA[15]),
    .Y(CA)
    );
    wire C;
    wire C1;
    Register uu(
    .A1(INA[15]),
    .CLK(CLK),
    .Y1(C)
    );
    Register uu1(
    .A1(C),
    .CLK(CLK),
    .Y1(C1)
    );
//    always @(posedge CLK) C=INA[15];
//    always @(posedge CLK) C1=C;
    multiply_32 multiply_32(CA,INB,CLK,OP9);
    wire [31:0]PP;
    XOR_Enable u1(
    .A(OP9),
    .EN(C1),
    .Y(PP)
    );

    shift shift1(INA,INB[5:0],sg1,EN,OP10);
    
    shift shift2(INA,INB[5:0],sg2,EN,OP11);
    
    shift shift3(INA,INB[5:0],sg3,EN,OP12);
   
    
    sub_32bit sub_32bit(INA,INB,OP15,OP17);
    
    A_XNOR_B_32bit A_XNOR_B_32bit(INA,INB,OP20);
    wire [31:0]OOP12;
    wire [31:0]OOP15;
    wire [31:0]OOP8;
    Register3 i0(
    .A1(OP12),
    .A2(OP15),
    .A3(OP8),
    .CLK(CLK),
    .Y1(OOP12),
    .Y2(OOP15),
    .Y3(OOP8)
    );
//    always@(posedge CLK)
//       begin
//       OOP12=OP12;
//       OOP15=OP15;
//       OOP8=OP8;  
//       end
       wire [31:0]OOP121;
       wire [31:0]OOP151;
       wire [31:0]OOP81;
    Register3 i1(
       .A1(OOP12),
       .A2(OOP15),
       .A3(OOP8),
       .CLK(CLK),
       .Y1(OOP121),
       .Y2(OOP151),
       .Y3(OOP81)
       );       
//       always@(posedge CLK)
//          begin
//          OOP121=OOP12;
//          OOP151=OOP15;
//          OOP81=OOP8;  
//          end
    wire sign ;
    wire AA;
    wire BB;
Register2 p1(
.A1(INA[15]),
.A2(INB[15]),
.CLK(CLK),
.Y1(AA),
.Y2(BB)
);    
//    always@(posedge CLK)
//      begin
//        AA=INA[15];
//        BB=INB[15];
//      end
    wire AA1;
    wire BB1;
Register2 p2(
    .A1(AA),
    .A2(BB),
    .CLK(CLK),
    .Y1(AA1),
    .Y2(BB1)
    );    
//      always@(posedge CLK)
//        begin
//          AA1=AA;
//          BB1=BB;
//        end      
    xor (sign , AA1 ,BB1);
    always@(*)
        begin   
            case(sel)
                4'b0000:
                    begin
                        OP0=OP1;
//                        OP=OP19;
                    end
                4'b0001:
                    begin
                        OP0=OP2;
//                        OP=OP19;
                    end
                4'b0010:
                    begin
                        OP0=OP3;
//                        OP=OP19;
                    end
                4'b0011:
                    begin
                        OP0=OP4;
//                        OP=OP19;
                    end
                4'b0100:
                    begin
                        OP0=OP5;
//                        OP=OP19;
                    end
                4'b0101:
                    begin
                        OP0=OP6;
//                        OP=OP19;
                    end                    
                4'b0110:
                    begin
                        OP0=OP7;
//                        OP=OP19;
                    end
                4'b0111:
                    begin
                        OP0=OOP81;
//                        OP=OP16;
                    end
                4'b1000:
                    begin
                        OP0={sign,sign,sign,sign,sign,sign,sign,sign,sign,sign,sign,sign,sign,sign,sign,sign,sign,PP[26:12]};
//                        OP=OP19;
                    end
                4'b1001:
                    begin
                        OP0=OP10;
//                        OP=OP19;
                    end
                4'b1010:
                    begin
                        OP0=OP11;
//                        OP=OP19;
                    end
                4'b1011:
                    begin
                        OP0=OOP121;
//                        OP=OP19;
                    end
                4'b1110:
                    begin
                        OP0=OOP151;
//                        OP=OP17;
                    end
                4'b1111:
                    begin
                        OP0=OP20;
//                        OP=OP19;
                    end
                default:
                
                   OP0=OP20;
            endcase
        end
//        always@(*)
//        $display("%b",OP3);  
endmodule
