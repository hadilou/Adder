-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Thu Oct 10 21:03:53 2019
-- Host        : ICT-50112K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Xilinx/Kayode/lab2/adder_vhdl/adder_vhdl.srcs/sources_1/bd/lab2_block/ip/lab2_block_half_adder_0_0/lab2_block_half_adder_0_0_sim_netlist.vhdl
-- Design      : lab2_block_half_adder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab2_block_half_adder_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    SUM : out STD_LOGIC;
    CARRY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of lab2_block_half_adder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of lab2_block_half_adder_0_0 : entity is "lab2_block_half_adder_0_0,half_adder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of lab2_block_half_adder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of lab2_block_half_adder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of lab2_block_half_adder_0_0 : entity is "half_adder,Vivado 2019.1.2";
end lab2_block_half_adder_0_0;

architecture STRUCTURE of lab2_block_half_adder_0_0 is
begin
CARRY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A,
      I1 => B,
      O => CARRY
    );
SUM_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B,
      I1 => A,
      O => SUM
    );
end STRUCTURE;
