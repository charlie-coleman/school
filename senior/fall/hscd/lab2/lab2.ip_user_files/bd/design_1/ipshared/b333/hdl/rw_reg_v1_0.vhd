library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rw_reg_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface RW_REG_AXI
		C_RW_REG_AXI_DATA_WIDTH	: integer	:= 32;
		C_RW_REG_AXI_ADDR_WIDTH	: integer	:= 7
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface RW_REG_AXI
		rw_reg_axi_aclk	: in std_logic;
		rw_reg_axi_aresetn	: in std_logic;
		rw_reg_axi_awaddr	: in std_logic_vector(C_RW_REG_AXI_ADDR_WIDTH-1 downto 0);
		rw_reg_axi_awprot	: in std_logic_vector(2 downto 0);
		rw_reg_axi_awvalid	: in std_logic;
		rw_reg_axi_awready	: out std_logic;
		rw_reg_axi_wdata	: in std_logic_vector(C_RW_REG_AXI_DATA_WIDTH-1 downto 0);
		rw_reg_axi_wstrb	: in std_logic_vector((C_RW_REG_AXI_DATA_WIDTH/8)-1 downto 0);
		rw_reg_axi_wvalid	: in std_logic;
		rw_reg_axi_wready	: out std_logic;
		rw_reg_axi_bresp	: out std_logic_vector(1 downto 0);
		rw_reg_axi_bvalid	: out std_logic;
		rw_reg_axi_bready	: in std_logic;
		rw_reg_axi_araddr	: in std_logic_vector(C_RW_REG_AXI_ADDR_WIDTH-1 downto 0);
		rw_reg_axi_arprot	: in std_logic_vector(2 downto 0);
		rw_reg_axi_arvalid	: in std_logic;
		rw_reg_axi_arready	: out std_logic;
		rw_reg_axi_rdata	: out std_logic_vector(C_RW_REG_AXI_DATA_WIDTH-1 downto 0);
		rw_reg_axi_rresp	: out std_logic_vector(1 downto 0);
		rw_reg_axi_rvalid	: out std_logic;
		rw_reg_axi_rready	: in std_logic
	);
end rw_reg_v1_0;

architecture arch_imp of rw_reg_v1_0 is

	-- component declaration
	component rw_reg_v1_0_RW_REG_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 7
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component rw_reg_v1_0_RW_REG_AXI;

begin

-- Instantiation of Axi Bus Interface RW_REG_AXI
rw_reg_v1_0_RW_REG_AXI_inst : rw_reg_v1_0_RW_REG_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_RW_REG_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_RW_REG_AXI_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> rw_reg_axi_aclk,
		S_AXI_ARESETN	=> rw_reg_axi_aresetn,
		S_AXI_AWADDR	=> rw_reg_axi_awaddr,
		S_AXI_AWPROT	=> rw_reg_axi_awprot,
		S_AXI_AWVALID	=> rw_reg_axi_awvalid,
		S_AXI_AWREADY	=> rw_reg_axi_awready,
		S_AXI_WDATA	=> rw_reg_axi_wdata,
		S_AXI_WSTRB	=> rw_reg_axi_wstrb,
		S_AXI_WVALID	=> rw_reg_axi_wvalid,
		S_AXI_WREADY	=> rw_reg_axi_wready,
		S_AXI_BRESP	=> rw_reg_axi_bresp,
		S_AXI_BVALID	=> rw_reg_axi_bvalid,
		S_AXI_BREADY	=> rw_reg_axi_bready,
		S_AXI_ARADDR	=> rw_reg_axi_araddr,
		S_AXI_ARPROT	=> rw_reg_axi_arprot,
		S_AXI_ARVALID	=> rw_reg_axi_arvalid,
		S_AXI_ARREADY	=> rw_reg_axi_arready,
		S_AXI_RDATA	=> rw_reg_axi_rdata,
		S_AXI_RRESP	=> rw_reg_axi_rresp,
		S_AXI_RVALID	=> rw_reg_axi_rvalid,
		S_AXI_RREADY	=> rw_reg_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
