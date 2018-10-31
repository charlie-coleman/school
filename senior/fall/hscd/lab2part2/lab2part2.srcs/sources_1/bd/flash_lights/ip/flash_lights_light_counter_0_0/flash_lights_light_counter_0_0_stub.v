// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Oct 26 00:35:32 2018
// Host        : DESKTOP-PVBM0UH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/school/2018-2019/fall/hscd/lab2part2/lab2part2.srcs/sources_1/bd/flash_lights/ip/flash_lights_light_counter_0_0/flash_lights_light_counter_0_0_stub.v
// Design      : flash_lights_light_counter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "light_counter_v1_0,Vivado 2018.2" *)
module flash_lights_light_counter_0_0(light_reg_axi_awaddr, light_reg_axi_awprot, 
  light_reg_axi_awvalid, light_reg_axi_awready, light_reg_axi_wdata, light_reg_axi_wstrb, 
  light_reg_axi_wvalid, light_reg_axi_wready, light_reg_axi_bresp, light_reg_axi_bvalid, 
  light_reg_axi_bready, light_reg_axi_araddr, light_reg_axi_arprot, 
  light_reg_axi_arvalid, light_reg_axi_arready, light_reg_axi_rdata, light_reg_axi_rresp, 
  light_reg_axi_rvalid, light_reg_axi_rready, light_reg_axi_aclk, light_reg_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="light_reg_axi_awaddr[3:0],light_reg_axi_awprot[2:0],light_reg_axi_awvalid,light_reg_axi_awready,light_reg_axi_wdata[31:0],light_reg_axi_wstrb[3:0],light_reg_axi_wvalid,light_reg_axi_wready,light_reg_axi_bresp[1:0],light_reg_axi_bvalid,light_reg_axi_bready,light_reg_axi_araddr[3:0],light_reg_axi_arprot[2:0],light_reg_axi_arvalid,light_reg_axi_arready,light_reg_axi_rdata[31:0],light_reg_axi_rresp[1:0],light_reg_axi_rvalid,light_reg_axi_rready,light_reg_axi_aclk,light_reg_axi_aresetn" */;
  input [3:0]light_reg_axi_awaddr;
  input [2:0]light_reg_axi_awprot;
  input light_reg_axi_awvalid;
  output light_reg_axi_awready;
  input [31:0]light_reg_axi_wdata;
  input [3:0]light_reg_axi_wstrb;
  input light_reg_axi_wvalid;
  output light_reg_axi_wready;
  output [1:0]light_reg_axi_bresp;
  output light_reg_axi_bvalid;
  input light_reg_axi_bready;
  input [3:0]light_reg_axi_araddr;
  input [2:0]light_reg_axi_arprot;
  input light_reg_axi_arvalid;
  output light_reg_axi_arready;
  output [31:0]light_reg_axi_rdata;
  output [1:0]light_reg_axi_rresp;
  output light_reg_axi_rvalid;
  input light_reg_axi_rready;
  input light_reg_axi_aclk;
  input light_reg_axi_aresetn;
endmodule
