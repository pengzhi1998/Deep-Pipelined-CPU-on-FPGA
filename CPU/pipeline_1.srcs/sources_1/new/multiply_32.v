`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/16 07:31:01
// Design Name: 
// Module Name: multiply_32
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


module multiply_32(input[31:0]INA,
                input[31:0]INB,
                input CLK,
                output[31:0]OP
    );
        wire [511:0]sum;//每个全加器的输出
        wire [479:0]mux;//每个多路复用器的输出
        wire [15:0]y;//每个
        wire x;
        wire en;
        wire [31:0]ap;
        wire [31:0]p;
        wire [31:0]sh[14:0];
        
    
    
    assign ap={16'b00000000_00000000,INA[15:0]};
    assign p=32'b00000000_00000000_00000000_00000000;
    assign x=1'b0;
    assign en=1'b0;
    assign sh[0]={ap[30:0],1'b0};
    assign sh[1]={ap[29:0],2'b0};
    assign sh[2]={ap[28:0],3'b0};
    assign sh[3]={ap[27:0],4'b0};    
//    assign sh[3]={ap[27:0],4'b0};
//    assign sh[4]={ap[26:0],5'b0};
//    assign sh[5]={ap[25:0],6'b0};
//    assign sh[6]={ap[24:0],7'b0};
//    assign sh[7]={ap[23:0],8'b0};
    wire [511:0]sum1;
    wire [479:0]mux1;
    wire [15:0]INB1;
    wire [31:0]ap1;
//Register_with_two_input u0(
//        .A(sum),
//        .B(mux),
//        .C(INB),
//        .D(ap),
//        .CLK(CLK),
//        .Y1(sum1),
//        .Y2(mux1),
//        .Y3(INB1),
//        .Y4(ap1)
//        );   
//    assign sh[7]={ap1[23:0],8'b0};
//    assign sh[8]={ap1[22:0],9'b0};
//    assign sh[9]={ap1[21:0],10'b0};
//    assign sh[10]={ap1[20:0],11'b0};
//    assign sh[11]={ap1[19:0],12'b0};
//    assign sh[12]={ap1[18:0],13'b0};
//    assign sh[13]={ap1[17:0],14'b0};
//    assign sh[14]={ap1[16:0],15'b0};
    
    //    always@(*)
    //        begin
    //        ap={16'b00000000_00000000,a[15:0]};
    //        p=32'b00000000_00000000_00000000_00000000;
    //        x=1'b0;
    //        s=6'b000001;
    //        sg=2'b01;
    //        en=1'b0;
    //        end
        
        fulladder_32 uft1(
            .A(ap),
            .B(p),
            .sum(sum[31:0]),
            .Cin(x)
            );
        MUX32_2_1 umt1(
            .A(p),
            .B(sum[31:0]),
            .S(INB[0]),
            .EN(en),
            .Y(mux[31:0]));
       //第一个乘法器
        genvar i;
        generate
            for(i=1;i<=4;i=i+1)
            begin     
             fulladder_32 uht(        
                    .A(sh[i-1]),
                    .B(mux[(32*i-1):(32*(i-1))]),
                    .sum(sum[(32*(i+1)-1):(32*i)]),
                    .Cin(x)
                    );
                MUX32_2_1 umt(
                    .A(mux[(32*i-1):(32*(i-1))]),
                    .B(sum[(32*(i+1)-1):(32*i)]),
                    .S(INB[i]),
                    .EN(en),
                    .Y(mux[(32*(i+1)-1):(32*i)]));
            end 
        endgenerate
//        wire [511:0]sum1;
//        wire [479:0]mux1;
//        wire [15:0]INB1;
//Register_with_two_input u0(
//            .A(sum),
//            .B(mux),
//            .C(INB),
//            .CLK(CLK),
//            .Y1(sum1),
//            .Y2(mux1),
//            .Y3(INB1)
//            );
Register_with_two_input u0(
        .A(sum),
        .B(mux),
        .C(INB),
        .D(ap),
        .CLK(CLK),
        .Y1(sum1),
        .Y2(mux1),
        .Y3(INB1),
        .Y4(ap1)
        );   
//    assign sh[3]={ap1[27:0],4'b0};
    assign sh[4]={ap1[26:0],5'b0};
    assign sh[5]={ap1[25:0],6'b0};
    assign sh[6]={ap1[24:0],7'b0};
    assign sh[7]={ap1[23:0],8'b0};
    assign sh[8]={ap1[22:0],9'b0};
    assign sh[9]={ap1[21:0],10'b0};
    
//    assign sh[10]={ap1[20:0],11'b0};
//    assign sh[11]={ap1[19:0],12'b0};
//    assign sh[12]={ap1[18:0],13'b0};
//    assign sh[13]={ap1[17:0],14'b0};
//    assign sh[14]={ap1[16:0],15'b0};
        wire [479:0]mux2;
        wire [511:0]sum2;
        
//        assign sum2=sum1;
//        assign mux2=mux1;
       fulladder_32 uht11(        
       .A(sh[4]),
       .B(mux1[159:128]),
       .sum(sum2[191:160]),
       .Cin(x)
       );
   MUX32_2_1 umt11(
       .A(mux1[159:128]),
       .B(sum2[191:160]),
       .S(INB1[5]),
       .EN(en),
       .Y(mux2[191:160]));
        generate
            for(i=6;i<=10;i=i+1)
            begin     
             fulladder_32 uht(        
                    .A(sh[i-1]),
                    .B(mux2[(32*i-1):(32*(i-1))]),
                    .sum(sum2[(32*(i+1)-1):(32*i)]),
                    .Cin(x)
                    );
                MUX32_2_1 umt(
                    .A(mux2[(32*i-1):(32*(i-1))]),
                    .B(sum2[(32*(i+1)-1):(32*i)]),
                    .S(INB1[i]),
                    .EN(en),
                    .Y(mux2[(32*(i+1)-1):(32*i)]));
            end 
        endgenerate        
        
        
        wire [31:0]ap2;
        wire [479:0]mux3;
        wire [511:0]sum3;
        wire [31:0]INB2;
Register_with_two_input u1(
                .A(sum2),
                .B(mux2),
                .C(INB1),
                .D(ap1),
                .CLK(CLK),
                .Y1(sum3),
                .Y2(mux3),
                .Y3(INB2),
                .Y4(ap2)
                );   
    assign sh[10]={ap2[20:0],11'b0};
    assign sh[11]={ap2[19:0],12'b0};
    assign sh[12]={ap2[18:0],13'b0};
    assign sh[13]={ap2[17:0],14'b0};
    assign sh[14]={ap2[16:0],15'b0};       
    wire [479:0]mux4;
    wire [511:0]sum4;
       fulladder_32 uht10(        
        .A(sh[10]),
        .B(mux3[351:320]),
        .sum(sum4[383:352]),
        .Cin(x)
        );
       MUX32_2_1 umt10 (
        .A(mux3[351:320]),
        .B(sum4[383:352]),
        .S(INB2[11]),
        .EN(en),
        .Y(mux4[383:352]));
         generate
             for(i=12;i<=14;i=i+1)
             begin     
              fulladder_32 uht(        
                     .A(sh[i-1]),
                     .B(mux4[(32*i-1):(32*(i-1))]),
                     .sum(sum4[(32*(i+1)-1):(32*i)]),
                     .Cin(x)
                     );
                 MUX32_2_1 umt(
                     .A(mux4[(32*i-1):(32*(i-1))]),
                     .B(sum4[(32*(i+1)-1):(32*i)]),
                     .S(INB2[i]),
                     .EN(en),
                     .Y(mux4[(32*(i+1)-1):(32*i)]));
             end 
         endgenerate        
         
         
         
                 
        fulladder_32 uft2(
                .A(sh[14]),
                .B(mux4[479:448]),
                .sum(sum4[511:480]),
                .Cin(x)
                );
            MUX32_2_1 umt2(
                .A(mux4[479:448]),
                .B(sum4[511:480]),
                .S(INB2[15]),
                .EN(en),
                .Y(OP[31:0]));
                
      //  always@(*)
    //        $display("%b",sum[31:0]);
       
    endmodule
