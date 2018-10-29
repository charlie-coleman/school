connect -url tcp:127.0.0.1:3121
source F:/school/2018-2019/fall/hscd/lab2part2/lab2part2.sdk/flash_lights_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279787440A"} -index 0
loadhw -hw F:/school/2018-2019/fall/hscd/lab2part2/lab2part2.sdk/flash_lights_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279787440A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279787440A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279787440A"} -index 0
dow F:/school/2018-2019/fall/hscd/lab2part2/lab2part2.sdk/flash_lights/Debug/flash_lights.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279787440A"} -index 0
con
