set_property SRC_FILE_INFO {cfile:c:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/microblaze_project/microblaze_project.srcs/sources_1/bd/microblaze/ip/microblaze_microblaze_mcs_0_0/bd_0/ip/ip_0/bd_6a9c_microblaze_I_0.xdc rfile:../../../microblaze_project.srcs/sources_1/bd/microblaze/ip/microblaze_microblaze_mcs_0_0/bd_0/ip/ip_0/bd_6a9c_microblaze_I_0.xdc id:1 order:EARLY scoped_inst:microblaze_i/microblaze_mcs_0/U0/microblaze_I/U0} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/acb610/Downloads/nexys4ddr_master_xdc/Nexys4DDR_Master.xdc rfile:../../../../../../../Downloads/nexys4ddr_master_xdc/Nexys4DDR_Master.xdc id:2} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/microblaze_project/microblaze_project.runs/synth_1/dont_touch.xdc rfile:../dont_touch.xdc id:3} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_ip_msg_config -idlist { DPOP-3 PDCN-1569 }
set_property src_info {type:XDC file:2 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { CLOCK }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
set_property src_info {type:XDC file:2 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn
set_property src_info {type:XDC file:2 line:219 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { USB_IN }]; #IO_L7P_T1_AD6P_35 Sch=uart_txd_in
set_property src_info {type:XDC file:2 line:220 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { USB_OUT }]; #IO_L11N_T1_SRCC_35 Sch=uart_rxd_out
set_property src_info {type:XDC file:3 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==microblaze || ORIG_REF_NAME==microblaze}]
