//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
//Date        : Thu Oct 10 20:49:27 2019
//Host        : ICT-50112K running 64-bit major release  (build 9200)
//Command     : generate_target lab2_block_wrapper.bd
//Design      : lab2_block_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module lab2_block_wrapper
   (A_0,
    A_1,
    B_0,
    B_1,
    CARRYout_0,
    SUM_0,
    SUM_1);
  input A_0;
  input A_1;
  input B_0;
  input B_1;
  output CARRYout_0;
  output SUM_0;
  output SUM_1;

  wire A_0;
  wire A_1;
  wire B_0;
  wire B_1;
  wire CARRYout_0;
  wire SUM_0;
  wire SUM_1;

  lab2_block lab2_block_i
       (.A_0(A_0),
        .A_1(A_1),
        .B_0(B_0),
        .B_1(B_1),
        .CARRYout_0(CARRYout_0),
        .SUM_0(SUM_0),
        .SUM_1(SUM_1));
endmodule
