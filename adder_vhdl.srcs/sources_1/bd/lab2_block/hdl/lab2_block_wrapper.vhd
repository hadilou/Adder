--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
--Date        : Thu Oct 10 20:59:53 2019
--Host        : ICT-50112K running 64-bit major release  (build 9200)
--Command     : generate_target lab2_block_wrapper.bd
--Design      : lab2_block_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab2_block_wrapper is
  port (
    A_0 : in STD_LOGIC;
    A_1 : in STD_LOGIC;
    B_0 : in STD_LOGIC;
    B_1 : in STD_LOGIC;
    CARRYout_0 : out STD_LOGIC;
    SUM_0 : out STD_LOGIC;
    SUM_1 : out STD_LOGIC
  );
end lab2_block_wrapper;

architecture STRUCTURE of lab2_block_wrapper is
  component lab2_block is
  port (
    A_0 : in STD_LOGIC;
    B_0 : in STD_LOGIC;
    A_1 : in STD_LOGIC;
    B_1 : in STD_LOGIC;
    SUM_0 : out STD_LOGIC;
    SUM_1 : out STD_LOGIC;
    CARRYout_0 : out STD_LOGIC
  );
  end component lab2_block;
begin
lab2_block_i: component lab2_block
     port map (
      A_0 => A_0,
      A_1 => A_1,
      B_0 => B_0,
      B_1 => B_1,
      CARRYout_0 => CARRYout_0,
      SUM_0 => SUM_0,
      SUM_1 => SUM_1
    );
end STRUCTURE;
