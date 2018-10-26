vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_protocol_checker_v2_0_3
vlib modelsim_lib/msim/axi_vip_v1_1_3
vlib modelsim_lib/msim/processing_system7_vip_v1_0_5
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_12
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_19
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_17
vlib modelsim_lib/msim/fifo_generator_v13_2_2
vlib modelsim_lib/msim/axi_data_fifo_v2_1_16
vlib modelsim_lib/msim/axi_crossbar_v2_1_18
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_17

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 modelsim_lib/msim/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 modelsim_lib/msim/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 modelsim_lib/msim/processing_system7_vip_v1_0_5
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 modelsim_lib/msim/proc_sys_reset_v5_0_12
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_19 modelsim_lib/msim/axi_gpio_v2_0_19
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_17 modelsim_lib/msim/axi_register_slice_v2_1_17
vmap fifo_generator_v13_2_2 modelsim_lib/msim/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_16 modelsim_lib/msim/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 modelsim_lib/msim/axi_crossbar_v2_1_18
vmap axi_protocol_converter_v2_1_17 modelsim_lib/msim/axi_protocol_converter_v2_1_17

vlog -work xilinx_vip -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/flash_lights/ip/flash_lights_processing_system7_0_0/sim/flash_lights_processing_system7_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/flash_lights/ipshared/e9c3/hdl/light_counter_v1_0_LIGHT_REG_AXI.vhd" \
"../../../bd/flash_lights/ipshared/e9c3/hdl/light_counter_v1_0.vhd" \
"../../../bd/flash_lights/ip/flash_lights_light_counter_0_0/sim/flash_lights_light_counter_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/flash_lights/ip/flash_lights_rst_ps7_0_50M_0/sim/flash_lights_rst_ps7_0_50M_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_19 -64 -93 \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/flash_lights/ip/flash_lights_axi_gpio_0_0/sim/flash_lights_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17 -64 -incr "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2 -64 -incr "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -64 -93 \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 -incr "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_16 -64 -incr "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18 -64 -incr "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/flash_lights/ip/flash_lights_xbar_0/sim/flash_lights_xbar_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/flash_lights/sim/flash_lights.vhd" \

vlog -work axi_protocol_converter_v2_1_17 -64 -incr "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/ec67/hdl" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/5bb9/hdl/verilog" "+incdir+../../../../lab2part2.srcs/sources_1/bd/flash_lights/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/flash_lights/ip/flash_lights_auto_pc_0/sim/flash_lights_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

