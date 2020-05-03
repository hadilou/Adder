@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Thu Oct 10 21:02:04 +0300 2019
REM SW Build 2615518 on Fri Aug  9 15:55:25 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim lab2_block_wrapper_test_behav -key {Behavioral:sim_1:Functional:lab2_block_wrapper_test} -tclbatch lab2_block_wrapper_test.tcl -protoinst "protoinst_files/lab2_block.protoinst" -view C:/Xilinx/Kayode/lab2/adder_vhdl/lab2_task1.wcfg -log simulate.log"
call xsim  lab2_block_wrapper_test_behav -key {Behavioral:sim_1:Functional:lab2_block_wrapper_test} -tclbatch lab2_block_wrapper_test.tcl -protoinst "protoinst_files/lab2_block.protoinst" -view C:/Xilinx/Kayode/lab2/adder_vhdl/lab2_task1.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0