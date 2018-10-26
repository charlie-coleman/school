-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Oct 17 17:39:50 2018
-- Host        : DESKTOP-PVBM0UH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/school/2018-2019/fall/hscd/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_rw_reg_0_0/design_1_rw_reg_0_0_stub.vhdl
-- Design      : design_1_rw_reg_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_rw_reg_0_0 is
  Port ( 
    rw_reg_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    rw_reg_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rw_reg_axi_awvalid : in STD_LOGIC;
    rw_reg_axi_awready : out STD_LOGIC;
    rw_reg_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rw_reg_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rw_reg_axi_wvalid : in STD_LOGIC;
    rw_reg_axi_wready : out STD_LOGIC;
    rw_reg_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rw_reg_axi_bvalid : out STD_LOGIC;
    rw_reg_axi_bready : in STD_LOGIC;
    rw_reg_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    rw_reg_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rw_reg_axi_arvalid : in STD_LOGIC;
    rw_reg_axi_arready : out STD_LOGIC;
    rw_reg_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rw_reg_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rw_reg_axi_rvalid : out STD_LOGIC;
    rw_reg_axi_rready : in STD_LOGIC;
    rw_reg_axi_aclk : in STD_LOGIC;
    rw_reg_axi_aresetn : in STD_LOGIC
  );

end design_1_rw_reg_0_0;

architecture stub of design_1_rw_reg_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rw_reg_axi_awaddr[6:0],rw_reg_axi_awprot[2:0],rw_reg_axi_awvalid,rw_reg_axi_awready,rw_reg_axi_wdata[31:0],rw_reg_axi_wstrb[3:0],rw_reg_axi_wvalid,rw_reg_axi_wready,rw_reg_axi_bresp[1:0],rw_reg_axi_bvalid,rw_reg_axi_bready,rw_reg_axi_araddr[6:0],rw_reg_axi_arprot[2:0],rw_reg_axi_arvalid,rw_reg_axi_arready,rw_reg_axi_rdata[31:0],rw_reg_axi_rresp[1:0],rw_reg_axi_rvalid,rw_reg_axi_rready,rw_reg_axi_aclk,rw_reg_axi_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "rw_reg_v1_0,Vivado 2018.2";
begin
end;
