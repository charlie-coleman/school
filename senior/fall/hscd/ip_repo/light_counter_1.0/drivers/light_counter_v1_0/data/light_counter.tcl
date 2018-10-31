

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "light_counter" "NUM_INSTANCES" "DEVICE_ID"  "C_LIGHT_REG_AXI_BASEADDR" "C_LIGHT_REG_AXI_HIGHADDR"
}
