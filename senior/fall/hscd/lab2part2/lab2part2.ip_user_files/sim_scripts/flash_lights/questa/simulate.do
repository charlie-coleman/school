onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib flash_lights_opt

do {wave.do}

view wave
view structure
view signals

do {flash_lights.udo}

run -all

quit -force
