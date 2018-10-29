

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "rw_reg" "NUM_INSTANCES" "DEVICE_ID"  "C_RW_REG_AXI_BASEADDR" "C_RW_REG_AXI_HIGHADDR"
}
