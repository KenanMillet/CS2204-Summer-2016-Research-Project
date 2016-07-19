# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Owner/Desktop/CS2204-Summer-2016-Research-Project/side-projects/test-bench/test-bench.cache/wt [current_project]
set_property parent.project_path C:/Users/Owner/Desktop/CS2204-Summer-2016-Research-Project/side-projects/test-bench/test-bench.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
read_verilog -library xil_defaultlib -sv {
  C:/Users/Owner/Desktop/CS2204-Summer-2016-Research-Project/side-projects/projects/Datahub.sv
  C:/Users/Owner/Desktop/CS2204-Summer-2016-Research-Project/side-projects/test-bench/test-bench.srcs/sources_1/new/TopModule.sv
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Owner/Desktop/CS2204-Summer-2016-Research-Project/side-projects/test-bench/test-bench.srcs/constrs_1/new/Constraints.xdc
set_property used_in_implementation false [get_files C:/Users/Owner/Desktop/CS2204-Summer-2016-Research-Project/side-projects/test-bench/test-bench.srcs/constrs_1/new/Constraints.xdc]


synth_design -top TopModule -part xc7a100tcsg324-1


write_checkpoint -force -noxdef TopModule.dcp

catch { report_utilization -file TopModule_utilization_synth.rpt -pb TopModule_utilization_synth.pb }
