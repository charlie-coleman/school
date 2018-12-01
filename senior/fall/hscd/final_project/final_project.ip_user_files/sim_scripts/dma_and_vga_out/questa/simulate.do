onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dma_and_vga_out_opt

do {wave.do}

view wave
view structure
view signals

do {dma_and_vga_out.udo}

run -all

quit -force
