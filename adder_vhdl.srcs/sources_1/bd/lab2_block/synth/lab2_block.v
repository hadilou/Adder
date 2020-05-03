//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
//Date        : Thu Oct 10 20:49:27 2019
//Host        : ICT-50112K running 64-bit major release  (build 9200)
//Command     : generate_target lab2_block.bd
//Design      : lab2_block
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "lab2_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=lab2_block,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "lab2_block.hwdef" *) 
module lab2_block
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

  wire A_0_1;
  wire A_1_1;
  wire B_0_1;
  wire B_1_1;
  wire full_adder_0_CARRYout;
  wire full_adder_0_SUM;
  wire half_adder_0_CARRY;
  wire half_adder_0_SUM;

  assign A_0_1 = A_0;
  assign A_1_1 = A_1;
  assign B_0_1 = B_0;
  assign B_1_1 = B_1;
  assign CARRYout_0 = full_adder_0_CARRYout;
  assign SUM_0 = half_adder_0_SUM;
  assign SUM_1 = full_adder_0_SUM;
  lab2_block_full_adder_0_0 full_adder_0
       (.A(A_1_1),
        .B(B_1_1),
        .CARRYin(half_adder_0_CARRY),
        .CARRYout(full_adder_0_CARRYout),
        .SUM(full_adder_0_SUM));
  lab2_block_half_adder_0_0 half_adder_0
       (.A(A_0_1),
        .B(B_0_1),
        .CARRY(half_adder_0_CARRY),
        .SUM(half_adder_0_SUM));
endmodule
