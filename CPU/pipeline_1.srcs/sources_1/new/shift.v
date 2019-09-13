`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/17 07:09:41
// Design Name: 
// Module Name: shift
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


module shift(
    input [31:0] D,
    input [5:0] S,
    input [1:0] SG,
    input EN,
    output [31:0] Y
    );
//    assign EN=0,D=32'b11000000_11000000_00000000_00111100,S=6'd5,SG=2'b11;
//    wire [31:0] z;
//    wire [31:0] P;
//    wire EN;
    wire Q;
    wire Q_L;
    wire [31:0]T;
    wire [31:0]U;
    wire [31:0]shif;
    wire [31:0]and1;
    wire [31:0]ari_rgt;
    wire [31:0]log_rgt;
    wire [31:0]A;
//    parameter size=32;
//    assign A=32'd1,
//    S=5'd1,
//    EN=0;
     or (Q,S[5],1'b0);
     not (Q_L,Q);
     and andgate [31:0](T,U,{Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L,Q_L});
    
     genvar j;
     generate 
        for(j=0;j<32;j=j+1)
        begin     
      MUX_2_1 uy(
     .A({D[31-j],D[j]}),
     .S(SG[1]),
     .EN(EN),
     .Y(A[j])
     );
     end
     endgenerate
     
     MUX_32_1 uu0({31'd0,A[0]},S[4:0],EN,U[0]);
     MUX_32_1 uu1({30'd0,A[0],A[1]},S[4:0],EN,U[1]);
     MUX_32_1 uu2({29'd0,A[0],A[1],A[2]},S[4:0],EN,U[2]);
     MUX_32_1 uu3({28'd0,A[0],A[1],A[2],A[3]},S[4:0],EN,U[3]);
     MUX_32_1 uu4({27'd0,A[0],A[1],A[2],A[3],A[4]},S[4:0],EN,U[4]);
     MUX_32_1 uu5({26'd0,A[0],A[1],A[2],A[3],A[4],A[5]},S[4:0],EN,U[5]);
     MUX_32_1 uu6({25'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6]},S[4:0],EN,U[6]);
     MUX_32_1 uu7({24'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7]},S[4:0],EN,U[7]);
     MUX_32_1 uu8({23'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8]},S[4:0],EN,U[8]);
     MUX_32_1 uu9({22'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9]},S[4:0],EN,U[9]);
     MUX_32_1 uu10({21'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10]},S[4:0],EN,U[10]);
     MUX_32_1 uu11({20'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11]},S[4:0],EN,U[11]);
     MUX_32_1 uu12({19'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12]},S[4:0],EN,U[12]);
     MUX_32_1 uu13({18'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13]},S[4:0],EN,U[13]);
     MUX_32_1 uu14({17'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14]},S[4:0],EN,U[14]);
     MUX_32_1 uu15({16'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15]},S[4:0],EN,U[15]);
     MUX_32_1 uu16({15'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16]},S[4:0],EN,U[16]);
     MUX_32_1 uu17({14'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17]},S[4:0],EN,U[17]);
     MUX_32_1 uu18({13'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18]},S[4:0],EN,U[18]);
     MUX_32_1 uu19({12'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18],A[19]},S[4:0],EN,U[19]);
     MUX_32_1 uu20({11'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18],A[19],A[20]},S[4:0],EN,U[20]);
     MUX_32_1 uu21({10'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18],A[19],A[20],A[21]},S[4:0],EN,U[21]);
     MUX_32_1 uu22({9'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18],A[19],A[20],A[21],A[22]},S[4:0],EN,U[22]);
     MUX_32_1 uu23({8'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18],A[19],A[20],A[21],A[22],A[23]},S[4:0],EN,U[23]);
     MUX_32_1 uu24({7'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18],A[19],A[20],A[21],A[22],A[23],A[24]},S[4:0],EN,U[24]);
     MUX_32_1 uu25({6'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18],A[19],A[20],A[21],A[22],A[23],A[24],A[25]},S[4:0],EN,U[25]);
     MUX_32_1 uu26({5'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18],A[19],A[20],A[21],A[22],A[23],A[24],A[25],A[26]},S[4:0],EN,U[26]);
     MUX_32_1 uu27({4'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18],A[19],A[20],A[21],A[22],A[23],A[24],A[25],A[26],A[27]},S[4:0],EN,U[27]);
     MUX_32_1 uu28({3'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18],A[19],A[20],A[21],A[22],A[23],A[24],A[25],A[26],A[27],A[28]},S[4:0],EN,U[28]);
     MUX_32_1 uu29({2'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18],A[19],A[20],A[21],A[22],A[23],A[24],A[25],A[26],A[27],A[28],A[29]},S[4:0],EN,U[29]);
     MUX_32_1 uu30({1'd0,A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18],A[19],A[20],A[21],A[22],A[23],A[24],A[25],A[26],A[27],A[28],A[29],A[30]},S[4:0],EN,U[30]);
     MUX_32_1 uu31({A[0],A[1],A[2],A[3],A[4],A[5],A[6],A[7],A[8],A[9],A[10],A[11],A[12],A[13],A[14],A[15],A[16],A[17],A[18],A[19],A[20],A[21],A[22],A[23],A[24],A[25],A[26],A[27],A[28],A[29],A[30],A[31]},S[4:0],EN,U[31]);
//     or orgate [31:0](Y,T,0);

     assign log_rgt[0]=T[31],log_rgt[1]=T[30],log_rgt[2]=T[29],log_rgt[3]=T[28],log_rgt[4]=T[27],log_rgt[5]=T[26],log_rgt[6]=T[25],log_rgt[7]=T[24],log_rgt[8]=T[23],log_rgt[9]=T[22],log_rgt[10]=T[21],log_rgt[11]=T[20],log_rgt[12]=T[19],log_rgt[13]=T[18],log_rgt[14]=T[17],log_rgt[15]=T[16],log_rgt[16]=T[15],log_rgt[17]=T[14],log_rgt[18]=T[13],log_rgt[19]=T[12],log_rgt[20]=T[11],log_rgt[21]=T[10],log_rgt[22]=T[9],log_rgt[23]=T[8],log_rgt[24]=T[7],log_rgt[25]=T[6],log_rgt[26]=T[5],log_rgt[27]=T[4],log_rgt[28]=T[3],log_rgt[29]=T[2],log_rgt[30]=T[1],log_rgt[31]=T[0];
     
     thermometer ui(
     .A(S[4:0]),
     .EN(EN),
     .Y(shif)
     );
     wire [31:0]shiff;
     or orgate2  [31:0](shiff,shif,{Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q,Q});
     and andgate1 [31:0](and1,{D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31]},shiff);
     or  orgate1  [31:0](ari_rgt,and1,log_rgt);

     
     genvar i;
     generate 
        for(i=0;i<32;i=i+1)
        begin 
          MUX_4_1 u0 (
         .A({ari_rgt[i],log_rgt[i],T[i],1'b0}),
         .S(SG),
         .EN(EN),
         .Y(Y[i])
         );
         end
     endgenerate
          
     
     


    
    
//    generate
//        genvar i;
//           for(i=0;i<size;i=i+1)
//           begin:value
//             assign  P[i]=A[32-i];
//           end
//    endgenerate       

//    generate
//           genvar j;
//           for(j=0;j<size;j=j+1)
//           begin:MUX_choose
//                  MUX_32_1 u(
//                  .D(z),
//                  .S(S),
//                  .Y(Y[j]),
//                  .EN(EN)
//                  );
//                   assign z={P[j:0],};  
                  
////       assign    z[i:0]=A[0:i],
////                 z[31:i+1]=0;
           
////           for(j=0;j<i+1;j=j+1)
////           begin:magnitude
////           or (z[j],A[i-j],0); 
////           end
     
////           for(j=i+1;j<size;j=j+1)
////           begin:magnitude_2
////           and (z[j],A[31-j],0); 
////           end

//           end
//    endgenerate

endmodule
