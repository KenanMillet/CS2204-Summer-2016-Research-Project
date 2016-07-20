set_property SRC_FILE_INFO {cfile:c:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/mb_test/mb_test.srcs/sources_1/bd/mb/ip/mb_microblaze_0_0/mb_microblaze_0_0.xdc rfile:../../../mb_test.srcs/sources_1/bd/mb/ip/mb_microblaze_0_0/mb_microblaze_0_0.xdc id:1 order:EARLY scoped_inst:mb_i/microblaze_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/mb_test/mb_test.srcs/sources_1/bd/mb/ip/mb_mdm_1_0/mb_mdm_1_0.xdc rfile:../../../mb_test.srcs/sources_1/bd/mb/ip/mb_mdm_1_0/mb_mdm_1_0.xdc id:2 order:EARLY scoped_inst:mb_i/mdm_1/U0} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/mb_test/mb_test.srcs/sources_1/bd/mb/ip/mb_clk_wiz_1_0/mb_clk_wiz_1_0.xdc rfile:../../../mb_test.srcs/sources_1/bd/mb/ip/mb_clk_wiz_1_0/mb_clk_wiz_1_0.xdc id:3 order:EARLY scoped_inst:mb_i/clk_wiz_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/acb610/Downloads/nexys4ddr_master_xdc/Nexys4DDR_Master.xdc rfile:../../../../../../../Downloads/nexys4ddr_master_xdc/Nexys4DDR_Master.xdc id:4} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_ip_msg_config -idlist { DPOP-3 PDCN-1569 CDC-1 CDC-4 CDC-7 TIMING-9 TIMING-10 }
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_ip_msg_config -idlist { CDC-1 CDCM-1 REQP-1851 TIMING-2 TIMING-4 TIMING-9 TIMING-10 TIMING-14 }
set_property src_info {type:SCOPED_XDC file:3 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:XDC file:4 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { sys_clock }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
set_property src_info {type:XDC file:4 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn
set_property src_info {type:XDC file:4 line:219 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { usb_uart_txd }]; #IO_L7P_T1_AD6P_35 Sch=uart_txd_in
set_property src_info {type:XDC file:4 line:220 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { usb_uart_rxd }]; #IO_L11N_T1_SRCC_35 Sch=uart_rxd_out
