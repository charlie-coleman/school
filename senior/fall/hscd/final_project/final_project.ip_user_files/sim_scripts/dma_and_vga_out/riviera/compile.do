vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_3
vlib riviera/axi_vip_v1_1_3
vlib riviera/processing_system7_vip_v1_0_5
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_2_2
vlib riviera/axi_data_fifo_v2_1_16
vlib riviera/axi_register_slice_v2_1_17
vlib riviera/axi_protocol_converter_v2_1_17

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 riviera/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 riviera/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 riviera/processing_system7_vip_v1_0_5
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_2 riviera/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_16 riviera/axi_data_fifo_v2_1_16
vmap axi_register_slice_v2_1_17 riviera/axi_register_slice_v2_1_17
vmap axi_protocol_converter_v2_1_17 riviera/axi_protocol_converter_v2_1_17

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/dma_and_vga_out/ipshared/c195/hdl/vga_out_v1_0_S00_AXI.vhd" \
"../../../bd/dma_and_vga_out/ipshared/c195/hdl/vga_out_v1_0.vhd" \
"../../../bd/dma_and_vga_out/ip/dma_and_vga_out_vga_out_0_0/sim/dma_and_vga_out_vga_out_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3  -sv2k12 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3  -sv2k12 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5  -sv2k12 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dma_and_vga_out/ip/dma_and_vga_out_processing_system7_0_0/sim/dma_and_vga_out_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/dma_and_vga_out/ip/dma_and_vga_out_rst_ps7_0_50M_0/sim/dma_and_vga_out_rst_ps7_0_50M_0.vhd" \
"../../../bd/dma_and_vga_out/sim/dma_and_vga_out.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_17  -v2k5 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/ec67/hdl" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/5bb9/hdl/verilog" "+incdir+../../../../final_project.srcs/sources_1/bd/dma_and_vga_out/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/dma_and_vga_out/ip/dma_and_vga_out_auto_pc_0/sim/dma_and_vga_out_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"
