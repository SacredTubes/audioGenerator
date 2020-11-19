# request TCL package from ACDS 13.1
package require -exact qsys 13.1

# module I2C_SSM2603
set_module_property DESCRIPTION ""
set_module_property NAME I2C_SSM2603
set_module_property VERSION 1.1
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "HDL Coder Generated IP"
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME I2C_SSM2603
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false

# documentation
set docprefix file:///
add_documentation_link "DATASHEET" [append docprefix [get_module_property MODULE_DIRECTORY] /doc/hdlcoder_I2C_ssm2603_ip_core_report.html]

# file sets
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL I2C_SSM2603
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file hdlcoder_I2C_tristate.vhd VHDL PATH hdl/hdlcoder_I2C_tristate.vhd 
add_fileset_file I2C_SSM2603_src_I2C_SSM2603_pkg.vhd VHDL PATH hdl/I2C_SSM2603_src_I2C_SSM2603_pkg.vhd 
add_fileset_file I2C_SSM2603_src_i2c_mstr.vhd VHDL PATH hdl/I2C_SSM2603_src_i2c_mstr.vhd 
add_fileset_file I2C_SSM2603_src_I2C_MasterController.vhd VHDL PATH hdl/I2C_SSM2603_src_I2C_MasterController.vhd 
add_fileset_file I2C_SSM2603_src_i2c_cfg.vhd VHDL PATH hdl/I2C_SSM2603_src_i2c_cfg.vhd 
add_fileset_file I2C_SSM2603_src_I2C_SSM2603_tc.vhd VHDL PATH hdl/I2C_SSM2603_src_I2C_SSM2603_tc.vhd 
add_fileset_file I2C_SSM2603_src_I2C_SSM2603.vhd VHDL PATH hdl/I2C_SSM2603_src_I2C_SSM2603.vhd 
add_fileset_file I2C_SSM2603_reset_sync.vhd VHDL PATH hdl/I2C_SSM2603_reset_sync.vhd 
add_fileset_file I2C_SSM2603_dut.vhd VHDL PATH hdl/I2C_SSM2603_dut.vhd 
add_fileset_file I2C_SSM2603_addr_decoder.vhd VHDL PATH hdl/I2C_SSM2603_addr_decoder.vhd 
add_fileset_file I2C_SSM2603_SimpleDualPortRAM_generic.vhd VHDL PATH hdl/I2C_SSM2603_SimpleDualPortRAM_generic.vhd 
add_fileset_file I2C_SSM2603_rdfifo_data.vhd VHDL PATH hdl/I2C_SSM2603_rdfifo_data.vhd 
add_fileset_file I2C_SSM2603_SimpleDualPortRAM_singlebit.vhd VHDL PATH hdl/I2C_SSM2603_SimpleDualPortRAM_singlebit.vhd 
add_fileset_file I2C_SSM2603_rdfifo_last.vhd VHDL PATH hdl/I2C_SSM2603_rdfifo_last.vhd 
add_fileset_file I2C_SSM2603_rdfifo_rid.vhd VHDL PATH hdl/I2C_SSM2603_rdfifo_rid.vhd 
add_fileset_file I2C_SSM2603_axi4_module.vhd VHDL PATH hdl/I2C_SSM2603_axi4_module.vhd 
add_fileset_file I2C_SSM2603_axi4.vhd VHDL PATH hdl/I2C_SSM2603_axi4.vhd 
add_fileset_file I2C_SSM2603.vhd VHDL PATH hdl/I2C_SSM2603.vhd TOP_LEVEL_FILE

# connection point ip_clk
add_interface ip_clk clock end
set_interface_property ip_clk clockRate 0
set_interface_property ip_clk ENABLED true
set_interface_property ip_clk EXPORT_OF ""
set_interface_property ip_clk PORT_NAME_MAP ""
set_interface_property ip_clk CMSIS_SVD_VARIABLES ""
set_interface_property ip_clk SVD_ADDRESS_GROUP ""
add_interface_port ip_clk IPCORE_CLK clk Input 1

# connection point ip_rst
add_interface ip_rst reset end
set_interface_property ip_rst associatedClock ip_clk
set_interface_property ip_rst synchronousEdges DEASSERT
set_interface_property ip_rst ENABLED true
set_interface_property ip_rst EXPORT_OF ""
set_interface_property ip_rst PORT_NAME_MAP ""
set_interface_property ip_rst CMSIS_SVD_VARIABLES ""
set_interface_property ip_rst SVD_ADDRESS_GROUP ""
add_interface_port ip_rst IPCORE_RESETN reset_n Input 1

## AXI4 Bus
# connection point axi_clk
add_interface axi_clk clock end
set_interface_property axi_clk clockRate 0
set_interface_property axi_clk ENABLED true
set_interface_property axi_clk EXPORT_OF ""
set_interface_property axi_clk PORT_NAME_MAP ""
set_interface_property axi_clk CMSIS_SVD_VARIABLES ""
set_interface_property axi_clk SVD_ADDRESS_GROUP ""
add_interface_port axi_clk AXI4_ACLK clk Input 1

# connection point axi_reset
add_interface axi_reset reset end
set_interface_property axi_reset associatedClock axi_clk
set_interface_property axi_reset synchronousEdges DEASSERT
set_interface_property axi_reset ENABLED true
set_interface_property axi_reset EXPORT_OF ""
set_interface_property axi_reset PORT_NAME_MAP ""
set_interface_property axi_reset CMSIS_SVD_VARIABLES ""
set_interface_property axi_reset SVD_ADDRESS_GROUP ""
add_interface_port axi_reset AXI4_ARESETN reset_n Input 1

# connection point s_axi
add_interface s_axi axi4 end
set_interface_property s_axi associatedClock axi_clk
set_interface_property s_axi associatedReset axi_reset
set_interface_property s_axi readAcceptanceCapability 1
set_interface_property s_axi writeAcceptanceCapability 1
set_interface_property s_axi combinedAcceptanceCapability 1
set_interface_property s_axi readDataReorderingDepth 1
set_interface_property s_axi bridgesToMaster ""
set_interface_property s_axi ENABLED true
set_interface_property s_axi EXPORT_OF ""
set_interface_property s_axi PORT_NAME_MAP ""
set_interface_property s_axi CMSIS_SVD_VARIABLES ""
set_interface_property s_axi SVD_ADDRESS_GROUP ""
add_interface_port s_axi AXI4_AWID awid Input 13
add_interface_port s_axi AXI4_AWADDR awaddr Input 16
add_interface_port s_axi AXI4_AWLEN awlen Input 8
add_interface_port s_axi AXI4_AWSIZE awsize Input 3
add_interface_port s_axi AXI4_AWBURST awburst Input 2
add_interface_port s_axi AXI4_AWLOCK awlock Input 1
add_interface_port s_axi AXI4_AWCACHE awcache Input 4
add_interface_port s_axi AXI4_AWPROT awprot Input 3
add_interface_port s_axi AXI4_AWVALID awvalid Input 1
add_interface_port s_axi AXI4_WDATA wdata Input 32
add_interface_port s_axi AXI4_WSTRB wstrb Input 4
add_interface_port s_axi AXI4_WLAST wlast Input 1
add_interface_port s_axi AXI4_WVALID wvalid Input 1
add_interface_port s_axi AXI4_BREADY bready Input 1
add_interface_port s_axi AXI4_ARID arid Input 13
add_interface_port s_axi AXI4_ARADDR araddr Input 16
add_interface_port s_axi AXI4_ARLEN arlen Input 8
add_interface_port s_axi AXI4_ARSIZE arsize Input 3
add_interface_port s_axi AXI4_ARBURST arburst Input 2
add_interface_port s_axi AXI4_ARLOCK arlock Input 1
add_interface_port s_axi AXI4_ARCACHE arcache Input 4
add_interface_port s_axi AXI4_ARPROT arprot Input 3
add_interface_port s_axi AXI4_ARVALID arvalid Input 1
add_interface_port s_axi AXI4_RREADY rready Input 1
add_interface_port s_axi AXI4_AWREADY awready Output 1
add_interface_port s_axi AXI4_WREADY wready Output 1
add_interface_port s_axi AXI4_BID bid Output 13
add_interface_port s_axi AXI4_BRESP bresp Output 2
add_interface_port s_axi AXI4_BVALID bvalid Output 1
add_interface_port s_axi AXI4_ARREADY arready Output 1
add_interface_port s_axi AXI4_RID rid Output 13
add_interface_port s_axi AXI4_RDATA rdata Output 32
add_interface_port s_axi AXI4_RRESP rresp Output 2
add_interface_port s_axi AXI4_RLAST rlast Output 1
add_interface_port s_axi AXI4_RVALID rvalid Output 1

## External Ports
# connection point I2C_CLK
add_interface I2C_CLK conduit end
set_interface_property I2C_CLK associatedClock ip_clk
set_interface_property I2C_CLK associatedReset ip_rst
set_interface_property I2C_CLK ENABLED true
set_interface_property I2C_CLK EXPORT_OF ""
set_interface_property I2C_CLK PORT_NAME_MAP ""
set_interface_property I2C_CLK CMSIS_SVD_VARIABLES ""
set_interface_property I2C_CLK SVD_ADDRESS_GROUP ""
add_interface_port I2C_CLK I2C_CLK pin Output 1

# connection point I2C_DATA
add_interface I2C_DATA conduit end
set_interface_property I2C_DATA associatedClock ip_clk
set_interface_property I2C_DATA associatedReset ip_rst
set_interface_property I2C_DATA ENABLED true
set_interface_property I2C_DATA EXPORT_OF ""
set_interface_property I2C_DATA PORT_NAME_MAP ""
set_interface_property I2C_DATA CMSIS_SVD_VARIABLES ""
set_interface_property I2C_DATA SVD_ADDRESS_GROUP ""
add_interface_port I2C_DATA I2C_DATA pin bidir 1

# connection point MUTEN
add_interface MUTEN conduit end
set_interface_property MUTEN associatedClock ip_clk
set_interface_property MUTEN associatedReset ip_rst
set_interface_property MUTEN ENABLED true
set_interface_property MUTEN EXPORT_OF ""
set_interface_property MUTEN PORT_NAME_MAP ""
set_interface_property MUTEN CMSIS_SVD_VARIABLES ""
set_interface_property MUTEN SVD_ADDRESS_GROUP ""
add_interface_port MUTEN MUTEN pin Output 1

