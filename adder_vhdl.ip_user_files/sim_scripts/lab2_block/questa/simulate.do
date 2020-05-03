onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib lab2_block_opt

do {wave.do}

view wave
view structure
view signals

do {lab2_block.udo}

run -all

quit -force
