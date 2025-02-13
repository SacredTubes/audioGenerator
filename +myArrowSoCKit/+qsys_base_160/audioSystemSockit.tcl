# Pin Assignments 

# PLL
	set_location_assignment PIN_Y26 -to pll_0_refclk
    set_instance_assignment -name IO_STANDARD "2.5 V" -to pll_0_refclk

#Audio Codec
	set_location_assignment PIN_AC9 -to audio_pll_0_audio_clk_clk
    set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to audio_pll_0_audio_clk_clk

	set_location_assignment PIN_AH30 -to i2c_ssm2603_0_i2c_clk_pin
    set_instance_assignment -name IO_STANDARD "2.5 V" -to i2c_ssm2603_0_i2c_clk_pin

	set_location_assignment PIN_AF30 -to i2c_ssm2603_0_i2c_data_pin
    set_instance_assignment -name IO_STANDARD "2.5 V" -to i2c_ssm2603_0_i2c_data_pin

	set_location_assignment PIN_AD26 -to i2c_ssm2603_0_muten_pin
    set_instance_assignment -name IO_STANDARD "2.5 V" -to i2c_ssm2603_0_muten_pin

	set_location_assignment PIN_AC27 -to i2s_ssm2603_0_serial_data_in_pin
    set_instance_assignment -name IO_STANDARD "2.5 V" -to i2s_ssm2603_0_serial_data_in_pin

	set_location_assignment PIN_AG3 -to i2s_ssm2603_0_serial_data_out_pin
    set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to i2s_ssm2603_0_serial_data_out_pin

	set_location_assignment PIN_AE7 -to i2s_ssm2603_0_bit_clock_pin
    set_instance_assignment -name IO_STANDARD "2.5 V" -to i2s_ssm2603_0_bit_clock_pin

	set_location_assignment PIN_AG30 -to i2s_ssm2603_0_reclk_pin
    set_instance_assignment -name IO_STANDARD "2.5 V" -to i2s_ssm2603_0_reclk_pin

	set_location_assignment PIN_AH4 -to i2s_ssm2603_0_pbclk_pin
    set_instance_assignment -name IO_STANDARD "2.5 V" -to i2s_ssm2603_0_pbclk_pin

###	
	export_assignments
