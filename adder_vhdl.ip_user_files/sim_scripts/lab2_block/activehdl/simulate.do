onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+lab2_block -L xil_defaultlib -L secureip -O5 xil_defaultlib.lab2_block

do {wave.do}

view wave
view structure

do {lab2_block.udo}

run -all

endsim

quit -force
