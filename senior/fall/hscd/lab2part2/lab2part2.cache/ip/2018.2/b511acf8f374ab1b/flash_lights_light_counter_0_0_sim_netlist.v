// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Oct 25 22:57:58 2018
// Host        : DESKTOP-PVBM0UH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ flash_lights_light_counter_0_0_sim_netlist.v
// Design      : flash_lights_light_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "flash_lights_light_counter_0_0,light_counter_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "light_counter_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (light_reg_axi_awaddr,
    light_reg_axi_awprot,
    light_reg_axi_awvalid,
    light_reg_axi_awready,
    light_reg_axi_wdata,
    light_reg_axi_wstrb,
    light_reg_axi_wvalid,
    light_reg_axi_wready,
    light_reg_axi_bresp,
    light_reg_axi_bvalid,
    light_reg_axi_bready,
    light_reg_axi_araddr,
    light_reg_axi_arprot,
    light_reg_axi_arvalid,
    light_reg_axi_arready,
    light_reg_axi_rdata,
    light_reg_axi_rresp,
    light_reg_axi_rvalid,
    light_reg_axi_rready,
    light_reg_axi_aclk,
    light_reg_axi_aresetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME LIGHT_REG_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN flash_lights_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [3:0]light_reg_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI AWPROT" *) input [2:0]light_reg_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI AWVALID" *) input light_reg_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI AWREADY" *) output light_reg_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI WDATA" *) input [31:0]light_reg_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI WSTRB" *) input [3:0]light_reg_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI WVALID" *) input light_reg_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI WREADY" *) output light_reg_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI BRESP" *) output [1:0]light_reg_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI BVALID" *) output light_reg_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI BREADY" *) input light_reg_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI ARADDR" *) input [3:0]light_reg_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI ARPROT" *) input [2:0]light_reg_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI ARVALID" *) input light_reg_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI ARREADY" *) output light_reg_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI RDATA" *) output [31:0]light_reg_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI RRESP" *) output [1:0]light_reg_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI RVALID" *) output light_reg_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI RREADY" *) input light_reg_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 LIGHT_REG_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME LIGHT_REG_AXI_CLK, ASSOCIATED_BUSIF LIGHT_REG_AXI, ASSOCIATED_RESET light_reg_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN flash_lights_processing_system7_0_0_FCLK_CLK0" *) input light_reg_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 LIGHT_REG_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME LIGHT_REG_AXI_RST, POLARITY ACTIVE_LOW" *) input light_reg_axi_aresetn;

  wire \<const0> ;
  wire light_reg_axi_aclk;
  wire [3:0]light_reg_axi_araddr;
  wire light_reg_axi_aresetn;
  wire light_reg_axi_arready;
  wire light_reg_axi_arvalid;
  wire [3:0]light_reg_axi_awaddr;
  wire light_reg_axi_awready;
  wire light_reg_axi_awvalid;
  wire light_reg_axi_bready;
  wire light_reg_axi_bvalid;
  wire [31:0]light_reg_axi_rdata;
  wire light_reg_axi_rready;
  wire light_reg_axi_rvalid;
  wire [31:0]light_reg_axi_wdata;
  wire light_reg_axi_wready;
  wire [3:0]light_reg_axi_wstrb;
  wire light_reg_axi_wvalid;

  assign light_reg_axi_bresp[1] = \<const0> ;
  assign light_reg_axi_bresp[0] = \<const0> ;
  assign light_reg_axi_rresp[1] = \<const0> ;
  assign light_reg_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_light_counter_v1_0 U0
       (.S_AXI_ARREADY(light_reg_axi_arready),
        .S_AXI_AWREADY(light_reg_axi_awready),
        .S_AXI_WREADY(light_reg_axi_wready),
        .light_reg_axi_aclk(light_reg_axi_aclk),
        .light_reg_axi_araddr(light_reg_axi_araddr[3:2]),
        .light_reg_axi_aresetn(light_reg_axi_aresetn),
        .light_reg_axi_arvalid(light_reg_axi_arvalid),
        .light_reg_axi_awaddr(light_reg_axi_awaddr[3:2]),
        .light_reg_axi_awvalid(light_reg_axi_awvalid),
        .light_reg_axi_bready(light_reg_axi_bready),
        .light_reg_axi_bvalid(light_reg_axi_bvalid),
        .light_reg_axi_rdata(light_reg_axi_rdata),
        .light_reg_axi_rready(light_reg_axi_rready),
        .light_reg_axi_rvalid(light_reg_axi_rvalid),
        .light_reg_axi_wdata(light_reg_axi_wdata),
        .light_reg_axi_wstrb(light_reg_axi_wstrb),
        .light_reg_axi_wvalid(light_reg_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_light_counter_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    light_reg_axi_rdata,
    light_reg_axi_rvalid,
    light_reg_axi_bvalid,
    light_reg_axi_aclk,
    light_reg_axi_araddr,
    light_reg_axi_arvalid,
    light_reg_axi_awaddr,
    light_reg_axi_wvalid,
    light_reg_axi_awvalid,
    light_reg_axi_wdata,
    light_reg_axi_wstrb,
    light_reg_axi_aresetn,
    light_reg_axi_bready,
    light_reg_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]light_reg_axi_rdata;
  output light_reg_axi_rvalid;
  output light_reg_axi_bvalid;
  input light_reg_axi_aclk;
  input [1:0]light_reg_axi_araddr;
  input light_reg_axi_arvalid;
  input [1:0]light_reg_axi_awaddr;
  input light_reg_axi_wvalid;
  input light_reg_axi_awvalid;
  input [31:0]light_reg_axi_wdata;
  input [3:0]light_reg_axi_wstrb;
  input light_reg_axi_aresetn;
  input light_reg_axi_bready;
  input light_reg_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire light_reg_axi_aclk;
  wire [1:0]light_reg_axi_araddr;
  wire light_reg_axi_aresetn;
  wire light_reg_axi_arvalid;
  wire [1:0]light_reg_axi_awaddr;
  wire light_reg_axi_awvalid;
  wire light_reg_axi_bready;
  wire light_reg_axi_bvalid;
  wire [31:0]light_reg_axi_rdata;
  wire light_reg_axi_rready;
  wire light_reg_axi_rvalid;
  wire [31:0]light_reg_axi_wdata;
  wire [3:0]light_reg_axi_wstrb;
  wire light_reg_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_light_counter_v1_0_LIGHT_REG_AXI light_counter_v1_0_LIGHT_REG_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .light_reg_axi_aclk(light_reg_axi_aclk),
        .light_reg_axi_araddr(light_reg_axi_araddr),
        .light_reg_axi_aresetn(light_reg_axi_aresetn),
        .light_reg_axi_arvalid(light_reg_axi_arvalid),
        .light_reg_axi_awaddr(light_reg_axi_awaddr),
        .light_reg_axi_awvalid(light_reg_axi_awvalid),
        .light_reg_axi_bready(light_reg_axi_bready),
        .light_reg_axi_bvalid(light_reg_axi_bvalid),
        .light_reg_axi_rdata(light_reg_axi_rdata),
        .light_reg_axi_rready(light_reg_axi_rready),
        .light_reg_axi_rvalid(light_reg_axi_rvalid),
        .light_reg_axi_wdata(light_reg_axi_wdata),
        .light_reg_axi_wstrb(light_reg_axi_wstrb),
        .light_reg_axi_wvalid(light_reg_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_light_counter_v1_0_LIGHT_REG_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    light_reg_axi_rdata,
    light_reg_axi_rvalid,
    light_reg_axi_bvalid,
    light_reg_axi_aclk,
    light_reg_axi_araddr,
    light_reg_axi_arvalid,
    light_reg_axi_awaddr,
    light_reg_axi_wvalid,
    light_reg_axi_awvalid,
    light_reg_axi_wdata,
    light_reg_axi_wstrb,
    light_reg_axi_aresetn,
    light_reg_axi_bready,
    light_reg_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]light_reg_axi_rdata;
  output light_reg_axi_rvalid;
  output light_reg_axi_bvalid;
  input light_reg_axi_aclk;
  input [1:0]light_reg_axi_araddr;
  input light_reg_axi_arvalid;
  input [1:0]light_reg_axi_awaddr;
  input light_reg_axi_wvalid;
  input light_reg_axi_awvalid;
  input [31:0]light_reg_axi_wdata;
  input [3:0]light_reg_axi_wstrb;
  input light_reg_axi_aresetn;
  input light_reg_axi_bready;
  input light_reg_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire light_reg_axi_aclk;
  wire [1:0]light_reg_axi_araddr;
  wire light_reg_axi_aresetn;
  wire light_reg_axi_arvalid;
  wire [1:0]light_reg_axi_awaddr;
  wire light_reg_axi_awvalid;
  wire light_reg_axi_bready;
  wire light_reg_axi_bvalid;
  wire [31:0]light_reg_axi_rdata;
  wire light_reg_axi_rready;
  wire light_reg_axi_rvalid;
  wire [31:0]light_reg_axi_wdata;
  wire [3:0]light_reg_axi_wstrb;
  wire light_reg_axi_wvalid;
  wire p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire [31:0]slv_reg0;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(light_reg_axi_araddr[0]),
        .I1(light_reg_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(light_reg_axi_araddr[1]),
        .I1(light_reg_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(light_reg_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[3] 
       (.C(light_reg_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(light_reg_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(light_reg_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(light_reg_axi_awaddr[0]),
        .I1(light_reg_axi_wvalid),
        .I2(light_reg_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(light_reg_axi_awaddr[1]),
        .I1(light_reg_axi_wvalid),
        .I2(light_reg_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(light_reg_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(light_reg_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(light_reg_axi_aresetn),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(light_reg_axi_wvalid),
        .I1(light_reg_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(light_reg_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(light_reg_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(light_reg_axi_wvalid),
        .I4(light_reg_axi_bready),
        .I5(light_reg_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(light_reg_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(light_reg_axi_bvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \axi_rdata[0]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[0]),
        .O(reg_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg0[10]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg0[11]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[12]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[12]),
        .O(reg_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[13]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[13]),
        .O(reg_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[14]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[14]),
        .O(reg_data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[15]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[15]),
        .O(reg_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg0[16]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg0[17]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg0[18]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg0[19]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h76)) 
    \axi_rdata[1]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(slv_reg0[1]),
        .O(reg_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[20]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[20]),
        .O(reg_data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[21]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[21]),
        .O(reg_data_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[22]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[22]),
        .O(reg_data_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[23]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[23]),
        .O(reg_data_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg0[24]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg0[25]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg0[26]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg0[27]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[28]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[28]),
        .O(reg_data_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[29]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[29]),
        .O(reg_data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \axi_rdata[2]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[2]),
        .O(reg_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[30]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(light_reg_axi_arvalid),
        .I2(light_reg_axi_rvalid),
        .O(slv_reg_rden));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[31]_i_2 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[31]),
        .O(reg_data_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h76)) 
    \axi_rdata[3]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(slv_reg0[3]),
        .O(reg_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \axi_rdata[4]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[4]),
        .O(reg_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h76)) 
    \axi_rdata[5]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(slv_reg0[5]),
        .O(reg_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \axi_rdata[6]_i_1 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[6]),
        .O(reg_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h76)) 
    \axi_rdata[7]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .I2(slv_reg0[7]),
        .O(reg_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg0[8]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg0[9]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(light_reg_axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(light_reg_axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(light_reg_axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(light_reg_axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(light_reg_axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(light_reg_axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(light_reg_axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(light_reg_axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(light_reg_axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(light_reg_axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(light_reg_axi_rdata[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(light_reg_axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(light_reg_axi_rdata[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(light_reg_axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(light_reg_axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(light_reg_axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(light_reg_axi_rdata[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(light_reg_axi_rdata[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(light_reg_axi_rdata[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(light_reg_axi_rdata[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(light_reg_axi_rdata[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(light_reg_axi_rdata[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(light_reg_axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(light_reg_axi_rdata[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(light_reg_axi_rdata[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(light_reg_axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(light_reg_axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(light_reg_axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(light_reg_axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(light_reg_axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(light_reg_axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(light_reg_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(light_reg_axi_rdata[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(light_reg_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(light_reg_axi_rvalid),
        .I3(light_reg_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(light_reg_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(light_reg_axi_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(light_reg_axi_wvalid),
        .I1(light_reg_axi_awvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(light_reg_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(light_reg_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(light_reg_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(light_reg_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(light_reg_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(light_reg_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(light_reg_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[7]),
        .D(light_reg_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[10] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[15]),
        .D(light_reg_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[11] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[15]),
        .D(light_reg_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[12] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[15]),
        .D(light_reg_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[13] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[15]),
        .D(light_reg_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[14] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[15]),
        .D(light_reg_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[15] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[15]),
        .D(light_reg_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[16] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[23]),
        .D(light_reg_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[17] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[23]),
        .D(light_reg_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[18] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[23]),
        .D(light_reg_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[19] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[23]),
        .D(light_reg_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[1] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[7]),
        .D(light_reg_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[20] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[23]),
        .D(light_reg_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[21] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[23]),
        .D(light_reg_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[22] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[23]),
        .D(light_reg_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[23] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[23]),
        .D(light_reg_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[24] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[31]),
        .D(light_reg_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[25] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[31]),
        .D(light_reg_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[26] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[31]),
        .D(light_reg_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[27] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[31]),
        .D(light_reg_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[28] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[31]),
        .D(light_reg_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[29] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[31]),
        .D(light_reg_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[2] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[7]),
        .D(light_reg_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[30] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[31]),
        .D(light_reg_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[31] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[31]),
        .D(light_reg_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[3] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[7]),
        .D(light_reg_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[4] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[7]),
        .D(light_reg_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[5] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[7]),
        .D(light_reg_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[6] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[7]),
        .D(light_reg_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[7] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[7]),
        .D(light_reg_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[8] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[15]),
        .D(light_reg_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[9] 
       (.C(light_reg_axi_aclk),
        .CE(p_1_in[15]),
        .D(light_reg_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
