--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
--Date        : Thu Oct 10 20:59:53 2019
--Host        : ICT-50112K running 64-bit major release  (build 9200)
--Command     : generate_target lab2_block.bd
--Design      : lab2_block
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab2_block is
  port (
    A_0 : in STD_LOGIC;
    A_1 : in STD_LOGIC;
    B_0 : in STD_LOGIC;
    B_1 : in STD_LOGIC;
    CARRYout_0 : out STD_LOGIC;
    SUM_0 : out STD_LOGIC;
    SUM_1 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of lab2_block : entity is "lab2_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=lab2_block,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of lab2_block : entity is "lab2_block.hwdef";
end lab2_block;

architecture STRUCTURE of lab2_block is
  component lab2_block_half_adder_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    SUM : out STD_LOGIC;
    CARRY : out STD_LOGIC
  );
  end component lab2_block_half_adder_0_0;
  component lab2_block_full_adder_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    CARRYin : in STD_LOGIC;
    SUM : out STD_LOGIC;
    CARRYout : out STD_LOGIC
  );
  end component lab2_block_full_adder_0_0;
  signal A_0_1 : STD_LOGIC;
  signal A_1_1 : STD_LOGIC;
  signal B_0_1 : STD_LOGIC;
  signal B_1_1 : STD_LOGIC;
  signal full_adder_0_CARRYout : STD_LOGIC;
  signal full_adder_0_SUM : STD_LOGIC;
  signal half_adder_0_CARRY : STD_LOGIC;
  signal half_adder_0_SUM : STD_LOGIC;
begin
  A_0_1 <= A_0;
  A_1_1 <= A_1;
  B_0_1 <= B_0;
  B_1_1 <= B_1;
  CARRYout_0 <= full_adder_0_CARRYout;
  SUM_0 <= half_adder_0_SUM;
  SUM_1 <= full_adder_0_SUM;
full_adder_0: component lab2_block_full_adder_0_0
     port map (
      A => A_1_1,
      B => B_1_1,
      CARRYin => half_adder_0_CARRY,
      CARRYout => full_adder_0_CARRYout,
      SUM => full_adder_0_SUM
    );
half_adder_0: component lab2_block_half_adder_0_0
     port map (
      A => A_0_1,
      B => B_0_1,
      CARRY => half_adder_0_CARRY,
      SUM => half_adder_0_SUM
    );
end STRUCTURE;
