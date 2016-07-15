proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
set_msg_config  -ruleid {19}  -id {[BD 41-1306]}  -suppress 
set_msg_config  -ruleid {20}  -id {[BD 41-1271]}  -suppress 

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  open_checkpoint microblaze_wrapper_routed.dcp
  set_property webtalk.parent_dir C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/microblaze_project/microblaze_project.cache/wt [current_project]
  add_files c:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/microblaze_project/microblaze_project.srcs/sources_1/bd/microblaze/ip/microblaze_microblaze_mcs_0_0/bd_0/ip/ip_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF microblaze [get_files -all c:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/microblaze_project/microblaze_project.srcs/sources_1/bd/microblaze/ip/microblaze_microblaze_mcs_0_0/bd_0/ip/ip_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_mcs_0/U0/microblaze_I [get_files -all c:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/microblaze_project/microblaze_project.srcs/sources_1/bd/microblaze/ip/microblaze_microblaze_mcs_0_0/bd_0/ip/ip_0/data/mb_bootloop_le.elf]
  catch { write_mem_info -force microblaze_wrapper.mmi }
  catch { write_bmm -force microblaze_wrapper_bd.bmm }
  write_bitstream -force microblaze_wrapper.bit 
  catch { write_sysdef -hwdef microblaze_wrapper.hwdef -bitfile microblaze_wrapper.bit -meminfo microblaze_wrapper.mmi -file microblaze_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

