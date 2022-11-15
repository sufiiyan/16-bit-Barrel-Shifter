module mux2 (input wire i0, i1, j, output wire o);
  assign o = (j==0)?i0:i1;
endmodule

module barrel_shift_16bit (in, ctrl, out);
  input  [15:0] in; 
  input [3:0] ctrl;  
  output [15:0] out;   
  wire [15:0] x,y,z;

mux2 mux_15(in[15],1'b0,ctrl[3],x[15]);
mux2 mux_14(in[14],1'b0,ctrl[3],x[14]);
mux2 mux_13(in[13],1'b0,ctrl[3],x[13]);
mux2 mux_12(in[12],1'b0,ctrl[3],x[12]);
mux2 mux_11(in[11],1'b0,ctrl[3],x[11]);
mux2 mux_10(in[10],1'b0,ctrl[3],x[10]);
mux2 mux_9(in[9],1'b0,ctrl[3],x[9]);
mux2 mux_8(in[8],1'b0,ctrl[3],x[8]);
mux2 mux_7(in[7],in[15],ctrl[3],x[7]);
mux2 mux_6(in[6],in[14],ctrl[3],x[6]);
mux2 mux_5(in[5],in[13],ctrl[3],x[5]);
mux2 mux_4(in[4],in[12],ctrl[3],x[4]);
mux2 mux_3(in[3],in[11],ctrl[3],x[3]);
mux2 mux_2(in[2],in[10],ctrl[3],x[2]);
mux2 mux_1(in[1],in[9],ctrl[3],x[1]);
mux2 mux_0(in[0],in[8],ctrl[3],x[0]);


mux2 mux_31(x[15],1'b0,ctrl[2],y[15]);
mux2 mux_30(x[14],1'b0,ctrl[2],y[14]);
mux2 mux_29(x[13],1'b0,ctrl[2],y[13]);
mux2 mux_28(x[12],1'b0,ctrl[2],y[12]);
mux2 mux_27(x[11],x[15],ctrl[2],y[11]);
mux2 mux_26(x[10],x[14],ctrl[2],y[10]);
mux2 mux_25(x[9],x[13],ctrl[2],y[9]);
mux2 mux_24(x[8],x[12],ctrl[2],y[8]);
mux2 mux_23(x[7],x[11],ctrl[2],y[7]);
mux2 mux_22(x[6],x[10],ctrl[2],y[6]);
mux2 mux_21(x[5],x[9],ctrl[2],y[5]);
mux2 mux_20(x[4],x[8],ctrl[2],y[4]);
mux2 mux_19(x[3],x[7],ctrl[2],y[3]);
mux2 mux_18(x[2],x[6],ctrl[2],y[2]);
mux2 mux_17(x[1],x[5],ctrl[2],y[1]);
mux2 mux_16(x[0],x[4],ctrl[2],y[0]);


mux2 mux_47(y[15],1'b0,ctrl[1],z[15]);
mux2 mux_46(y[14],1'b0,ctrl[1],z[14]);
mux2 mux_45(y[13],y[15],ctrl[1],z[13]);
mux2 mux_44(y[12],y[14],ctrl[1],z[12]);
mux2 mux_43(y[11],y[13],ctrl[1],z[11]);
mux2 mux_42(y[10],y[12],ctrl[1],z[10]);
mux2 mux_41(y[9],y[11],ctrl[1],z[9]);
mux2 mux_40(y[8],y[10],ctrl[1],z[8]);
mux2 mux_39(y[7],y[9],ctrl[1],z[7]);
mux2 mux_38(y[6],y[8],ctrl[1],z[6]);
mux2 mux_37(y[5],y[7],ctrl[1],z[5]);
mux2 mux_36(y[4],y[6],ctrl[1],z[4]);
mux2 mux_35(y[3],y[5],ctrl[1],z[3]);
mux2 mux_34(y[2],y[4],ctrl[1],z[2]);
mux2 mux_33(y[1],y[3],ctrl[1],z[1]);
mux2 mux_32(y[0],y[2],ctrl[1],z[0]);


mux2 mux_63(z[15],1'b0,ctrl[0],out[15]);
mux2 mux_62(z[14],z[15],ctrl[0],out[14]);
mux2 mux_61(z[13],z[14],ctrl[0],out[13]);
mux2 mux_60(z[12],z[13],ctrl[0],out[12]);
mux2 mux_59(z[11],z[12],ctrl[0],out[11]);
mux2 mux_58(z[10],z[11],ctrl[0],out[10]);
mux2 mux_57(z[9],z[10],ctrl[0],out[9]);
mux2 mux_56(z[8],z[9],ctrl[0],out[8]);
mux2 mux_55(z[7],z[8],ctrl[0],out[7]);
mux2 mux_54(z[6],z[7],ctrl[0],out[6]);
mux2 mux_53(z[5],z[6],ctrl[0],out[5]);
mux2 mux_52(z[4],z[5],ctrl[0],out[4]);
mux2 mux_51(z[3],z[4],ctrl[0],out[3]);
mux2 mux_50(z[2],z[3],ctrl[0],out[2]);
mux2 mux_49(z[1],z[2],ctrl[0],out[1]);
mux2 mux_48(z[0],z[1],ctrl[0],out[0]);
endmodule
