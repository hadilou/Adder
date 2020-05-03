-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Thu Oct 10 21:03:53 2019
-- Host        : ICT-50112K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Xilinx/Kayode/lab2/adder_vhdl/adder_vhdl.srcs/sources_1/bd/lab2_block/ip/lab2_block_full_adder_0_0/lab2_block_full_adder_0_0_stub.vhdl
-- Design      : lab2_block_full_adder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab2_block_full_adder_0_0 is
  Port ( 
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    CARRYin : in STD_LOGIC;
    SUM : out STD_LOGIC;
    CARRYout : out STD_LOGIC
  );

end lab2_block_full_adder_0_0;

architecture stub of lab2_block_full_adder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,B,CARRYin,SUM,CARRYout";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "full_adder,Vivado 2019.1.2";
begin
end;
