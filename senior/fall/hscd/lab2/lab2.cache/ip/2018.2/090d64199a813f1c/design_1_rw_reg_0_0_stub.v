// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Oct 17 17:39:49 2018
// Host        : DESKTOP-PVBM0UH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_rw_reg_0_0_stub.v
// Design      : design_1_rw_reg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "rw_reg_v1_0,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rw_reg_axi_awaddr, rw_reg_axi_awprot, 
  rw_reg_axi_awvalid, rw_reg_axi_awready, rw_reg_axi_wdata, rw_reg_axi_wstrb, 
  rw_reg_axi_wvalid, rw_reg_axi_wready, rw_reg_axi_bresp, rw_reg_axi_bvalid, 
  rw_reg_axi_bready, rw_reg_axi_araddr, rw_reg_axi_arprot, rw_reg_axi_arvalid, 
  rw_reg_axi_arready, rw_reg_axi_rdata, rw_reg_axi_rresp, rw_reg_axi_rvalid, 
  rw_reg_axi_rready, rw_reg_axi_aclk, rw_reg_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="rw_reg_axi_awaddr[6:0],rw_reg_axi_awprot[2:0],rw_reg_axi_awvalid,rw_reg_axi_awready,rw_reg_axi_wdata[31:0],rw_reg_axi_wstrb[3:0],rw_reg_axi_wvalid,rw_reg_axi_wready,rw_reg_axi_bresp[1:0],rw_reg_axi_bvalid,rw_reg_axi_bready,rw_reg_axi_araddr[6:0],rw_reg_axi_arprot[2:0],rw_reg_axi_arvalid,rw_reg_axi_arready,rw_reg_axi_rdata[31:0],rw_reg_axi_rresp[1:0],rw_reg_axi_rvalid,rw_reg_axi_rready,rw_reg_axi_aclk,rw_reg_axi_aresetn" */;
  input [6:0]rw_reg_axi_awaddr;
  input [2:0]rw_reg_axi_awprot;
  input rw_reg_axi_awvalid;
  output rw_reg_axi_awready;
  input [31:0]rw_reg_axi_wdata;
  input [3:0]rw_reg_axi_wstrb;
  input rw_reg_axi_wvalid;
  output rw_reg_axi_wready;
  output [1:0]rw_reg_axi_bresp;
  output rw_reg_axi_bvalid;
  input rw_reg_axi_bready;
  input [6:0]rw_reg_axi_araddr;
  input [2:0]rw_reg_axi_arprot;
  input rw_reg_axi_arvalid;
  output rw_reg_axi_arready;
  output [31:0]rw_reg_axi_rdata;
  output [1:0]rw_reg_axi_rresp;
  output rw_reg_axi_rvalid;
  input rw_reg_axi_rready;
  input rw_reg_axi_aclk;
  input rw_reg_axi_aresetn;
endmodule
