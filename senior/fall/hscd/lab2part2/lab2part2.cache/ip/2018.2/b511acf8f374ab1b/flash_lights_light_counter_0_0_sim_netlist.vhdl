-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Oct 25 22:57:58 2018
-- Host        : DESKTOP-PVBM0UH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ flash_lights_light_counter_0_0_sim_netlist.vhdl
-- Design      : flash_lights_light_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_light_counter_v1_0_LIGHT_REG_AXI is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    light_reg_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    light_reg_axi_rvalid : out STD_LOGIC;
    light_reg_axi_bvalid : out STD_LOGIC;
    light_reg_axi_aclk : in STD_LOGIC;
    light_reg_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    light_reg_axi_arvalid : in STD_LOGIC;
    light_reg_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    light_reg_axi_wvalid : in STD_LOGIC;
    light_reg_axi_awvalid : in STD_LOGIC;
    light_reg_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    light_reg_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    light_reg_axi_aresetn : in STD_LOGIC;
    light_reg_axi_bready : in STD_LOGIC;
    light_reg_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_light_counter_v1_0_LIGHT_REG_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_light_counter_v1_0_LIGHT_REG_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^light_reg_axi_bvalid\ : STD_LOGIC;
  signal \^light_reg_axi_rvalid\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_rdata[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_rdata[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_rdata[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_rdata[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_rdata[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_rdata[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axi_rdata[22]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_rdata[23]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_rdata[24]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_rdata[25]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_rdata[26]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_rdata[27]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_rdata[28]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \axi_rdata[29]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_rdata[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair2";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  light_reg_axi_bvalid <= \^light_reg_axi_bvalid\;
  light_reg_axi_rvalid <= \^light_reg_axi_rvalid\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => light_reg_axi_araddr(0),
      I1 => light_reg_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => light_reg_axi_araddr(1),
      I1 => light_reg_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => light_reg_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => light_reg_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => light_reg_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => light_reg_axi_awaddr(0),
      I1 => light_reg_axi_wvalid,
      I2 => light_reg_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => light_reg_axi_awaddr(1),
      I1 => light_reg_axi_wvalid,
      I2 => light_reg_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => light_reg_axi_aresetn,
      O => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => light_reg_axi_wvalid,
      I1 => light_reg_axi_awvalid,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => light_reg_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => light_reg_axi_wvalid,
      I4 => light_reg_axi_bready,
      I5 => \^light_reg_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^light_reg_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => slv_reg0(16),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"76"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => slv_reg0(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => slv_reg0(24),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => slv_reg0(25),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => slv_reg0(26),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => slv_reg0(27),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => light_reg_axi_arvalid,
      I2 => \^light_reg_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"76"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => slv_reg0(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"76"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => slv_reg0(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(2),
      I2 => slv_reg0(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"76"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_araddr(3),
      I2 => slv_reg0(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => slv_reg0(8),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => slv_reg0(9),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => light_reg_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => light_reg_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => light_reg_axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => light_reg_axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => light_reg_axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => light_reg_axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => light_reg_axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => light_reg_axi_rdata(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => light_reg_axi_rdata(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => light_reg_axi_rdata(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => light_reg_axi_rdata(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => light_reg_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => light_reg_axi_rdata(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => light_reg_axi_rdata(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => light_reg_axi_rdata(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => light_reg_axi_rdata(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => light_reg_axi_rdata(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => light_reg_axi_rdata(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => light_reg_axi_rdata(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => light_reg_axi_rdata(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => light_reg_axi_rdata(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => light_reg_axi_rdata(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => light_reg_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => light_reg_axi_rdata(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => light_reg_axi_rdata(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => light_reg_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => light_reg_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => light_reg_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => light_reg_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => light_reg_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => light_reg_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => light_reg_axi_rdata(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => light_reg_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^light_reg_axi_rvalid\,
      I3 => light_reg_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^light_reg_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => light_reg_axi_wvalid,
      I1 => light_reg_axi_awvalid,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => light_reg_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => light_reg_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => light_reg_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => light_reg_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => light_reg_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => light_reg_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(7),
      D => light_reg_axi_wdata(0),
      Q => slv_reg0(0),
      R => p_0_in
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(15),
      D => light_reg_axi_wdata(10),
      Q => slv_reg0(10),
      R => p_0_in
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(15),
      D => light_reg_axi_wdata(11),
      Q => slv_reg0(11),
      R => p_0_in
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(15),
      D => light_reg_axi_wdata(12),
      Q => slv_reg0(12),
      R => p_0_in
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(15),
      D => light_reg_axi_wdata(13),
      Q => slv_reg0(13),
      R => p_0_in
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(15),
      D => light_reg_axi_wdata(14),
      Q => slv_reg0(14),
      R => p_0_in
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(15),
      D => light_reg_axi_wdata(15),
      Q => slv_reg0(15),
      R => p_0_in
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(23),
      D => light_reg_axi_wdata(16),
      Q => slv_reg0(16),
      R => p_0_in
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(23),
      D => light_reg_axi_wdata(17),
      Q => slv_reg0(17),
      R => p_0_in
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(23),
      D => light_reg_axi_wdata(18),
      Q => slv_reg0(18),
      R => p_0_in
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(23),
      D => light_reg_axi_wdata(19),
      Q => slv_reg0(19),
      R => p_0_in
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(7),
      D => light_reg_axi_wdata(1),
      Q => slv_reg0(1),
      R => p_0_in
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(23),
      D => light_reg_axi_wdata(20),
      Q => slv_reg0(20),
      R => p_0_in
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(23),
      D => light_reg_axi_wdata(21),
      Q => slv_reg0(21),
      R => p_0_in
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(23),
      D => light_reg_axi_wdata(22),
      Q => slv_reg0(22),
      R => p_0_in
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(23),
      D => light_reg_axi_wdata(23),
      Q => slv_reg0(23),
      R => p_0_in
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(31),
      D => light_reg_axi_wdata(24),
      Q => slv_reg0(24),
      R => p_0_in
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(31),
      D => light_reg_axi_wdata(25),
      Q => slv_reg0(25),
      R => p_0_in
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(31),
      D => light_reg_axi_wdata(26),
      Q => slv_reg0(26),
      R => p_0_in
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(31),
      D => light_reg_axi_wdata(27),
      Q => slv_reg0(27),
      R => p_0_in
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(31),
      D => light_reg_axi_wdata(28),
      Q => slv_reg0(28),
      R => p_0_in
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(31),
      D => light_reg_axi_wdata(29),
      Q => slv_reg0(29),
      R => p_0_in
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(7),
      D => light_reg_axi_wdata(2),
      Q => slv_reg0(2),
      R => p_0_in
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(31),
      D => light_reg_axi_wdata(30),
      Q => slv_reg0(30),
      R => p_0_in
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(31),
      D => light_reg_axi_wdata(31),
      Q => slv_reg0(31),
      R => p_0_in
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(7),
      D => light_reg_axi_wdata(3),
      Q => slv_reg0(3),
      R => p_0_in
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(7),
      D => light_reg_axi_wdata(4),
      Q => slv_reg0(4),
      R => p_0_in
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(7),
      D => light_reg_axi_wdata(5),
      Q => slv_reg0(5),
      R => p_0_in
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(7),
      D => light_reg_axi_wdata(6),
      Q => slv_reg0(6),
      R => p_0_in
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(7),
      D => light_reg_axi_wdata(7),
      Q => slv_reg0(7),
      R => p_0_in
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(15),
      D => light_reg_axi_wdata(8),
      Q => slv_reg0(8),
      R => p_0_in
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => light_reg_axi_aclk,
      CE => p_1_in(15),
      D => light_reg_axi_wdata(9),
      Q => slv_reg0(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_light_counter_v1_0 is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    light_reg_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    light_reg_axi_rvalid : out STD_LOGIC;
    light_reg_axi_bvalid : out STD_LOGIC;
    light_reg_axi_aclk : in STD_LOGIC;
    light_reg_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    light_reg_axi_arvalid : in STD_LOGIC;
    light_reg_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    light_reg_axi_wvalid : in STD_LOGIC;
    light_reg_axi_awvalid : in STD_LOGIC;
    light_reg_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    light_reg_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    light_reg_axi_aresetn : in STD_LOGIC;
    light_reg_axi_bready : in STD_LOGIC;
    light_reg_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_light_counter_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_light_counter_v1_0 is
begin
light_counter_v1_0_LIGHT_REG_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_light_counter_v1_0_LIGHT_REG_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      light_reg_axi_aclk => light_reg_axi_aclk,
      light_reg_axi_araddr(1 downto 0) => light_reg_axi_araddr(1 downto 0),
      light_reg_axi_aresetn => light_reg_axi_aresetn,
      light_reg_axi_arvalid => light_reg_axi_arvalid,
      light_reg_axi_awaddr(1 downto 0) => light_reg_axi_awaddr(1 downto 0),
      light_reg_axi_awvalid => light_reg_axi_awvalid,
      light_reg_axi_bready => light_reg_axi_bready,
      light_reg_axi_bvalid => light_reg_axi_bvalid,
      light_reg_axi_rdata(31 downto 0) => light_reg_axi_rdata(31 downto 0),
      light_reg_axi_rready => light_reg_axi_rready,
      light_reg_axi_rvalid => light_reg_axi_rvalid,
      light_reg_axi_wdata(31 downto 0) => light_reg_axi_wdata(31 downto 0),
      light_reg_axi_wstrb(3 downto 0) => light_reg_axi_wstrb(3 downto 0),
      light_reg_axi_wvalid => light_reg_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    light_reg_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    light_reg_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    light_reg_axi_awvalid : in STD_LOGIC;
    light_reg_axi_awready : out STD_LOGIC;
    light_reg_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    light_reg_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    light_reg_axi_wvalid : in STD_LOGIC;
    light_reg_axi_wready : out STD_LOGIC;
    light_reg_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    light_reg_axi_bvalid : out STD_LOGIC;
    light_reg_axi_bready : in STD_LOGIC;
    light_reg_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    light_reg_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    light_reg_axi_arvalid : in STD_LOGIC;
    light_reg_axi_arready : out STD_LOGIC;
    light_reg_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    light_reg_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    light_reg_axi_rvalid : out STD_LOGIC;
    light_reg_axi_rready : in STD_LOGIC;
    light_reg_axi_aclk : in STD_LOGIC;
    light_reg_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "flash_lights_light_counter_0_0,light_counter_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "light_counter_v1_0,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of light_reg_axi_aclk : signal is "xilinx.com:signal:clock:1.0 LIGHT_REG_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of light_reg_axi_aclk : signal is "XIL_INTERFACENAME LIGHT_REG_AXI_CLK, ASSOCIATED_BUSIF LIGHT_REG_AXI, ASSOCIATED_RESET light_reg_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN flash_lights_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of light_reg_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 LIGHT_REG_AXI_RST RST";
  attribute x_interface_parameter of light_reg_axi_aresetn : signal is "XIL_INTERFACENAME LIGHT_REG_AXI_RST, POLARITY ACTIVE_LOW";
  attribute x_interface_info of light_reg_axi_arready : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI ARREADY";
  attribute x_interface_info of light_reg_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI ARVALID";
  attribute x_interface_info of light_reg_axi_awready : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI AWREADY";
  attribute x_interface_info of light_reg_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI AWVALID";
  attribute x_interface_info of light_reg_axi_bready : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI BREADY";
  attribute x_interface_info of light_reg_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI BVALID";
  attribute x_interface_info of light_reg_axi_rready : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI RREADY";
  attribute x_interface_info of light_reg_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI RVALID";
  attribute x_interface_info of light_reg_axi_wready : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI WREADY";
  attribute x_interface_info of light_reg_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI WVALID";
  attribute x_interface_info of light_reg_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI ARADDR";
  attribute x_interface_info of light_reg_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI ARPROT";
  attribute x_interface_info of light_reg_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI AWADDR";
  attribute x_interface_parameter of light_reg_axi_awaddr : signal is "XIL_INTERFACENAME LIGHT_REG_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN flash_lights_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of light_reg_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI AWPROT";
  attribute x_interface_info of light_reg_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI BRESP";
  attribute x_interface_info of light_reg_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI RDATA";
  attribute x_interface_info of light_reg_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI RRESP";
  attribute x_interface_info of light_reg_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI WDATA";
  attribute x_interface_info of light_reg_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 LIGHT_REG_AXI WSTRB";
begin
  light_reg_axi_bresp(1) <= \<const0>\;
  light_reg_axi_bresp(0) <= \<const0>\;
  light_reg_axi_rresp(1) <= \<const0>\;
  light_reg_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_light_counter_v1_0
     port map (
      S_AXI_ARREADY => light_reg_axi_arready,
      S_AXI_AWREADY => light_reg_axi_awready,
      S_AXI_WREADY => light_reg_axi_wready,
      light_reg_axi_aclk => light_reg_axi_aclk,
      light_reg_axi_araddr(1 downto 0) => light_reg_axi_araddr(3 downto 2),
      light_reg_axi_aresetn => light_reg_axi_aresetn,
      light_reg_axi_arvalid => light_reg_axi_arvalid,
      light_reg_axi_awaddr(1 downto 0) => light_reg_axi_awaddr(3 downto 2),
      light_reg_axi_awvalid => light_reg_axi_awvalid,
      light_reg_axi_bready => light_reg_axi_bready,
      light_reg_axi_bvalid => light_reg_axi_bvalid,
      light_reg_axi_rdata(31 downto 0) => light_reg_axi_rdata(31 downto 0),
      light_reg_axi_rready => light_reg_axi_rready,
      light_reg_axi_rvalid => light_reg_axi_rvalid,
      light_reg_axi_wdata(31 downto 0) => light_reg_axi_wdata(31 downto 0),
      light_reg_axi_wstrb(3 downto 0) => light_reg_axi_wstrb(3 downto 0),
      light_reg_axi_wvalid => light_reg_axi_wvalid
    );
end STRUCTURE;
