vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93 \
"../../../bd/lab2_block/ip/lab2_block_half_adder_0_0/sim/lab2_block_half_adder_0_0.vhd" \
"../../../bd/lab2_block/ip/lab2_block_full_adder_0_0/sim/lab2_block_full_adder_0_0.vhd" \
"../../../bd/lab2_block/sim/lab2_block.vhd" \


