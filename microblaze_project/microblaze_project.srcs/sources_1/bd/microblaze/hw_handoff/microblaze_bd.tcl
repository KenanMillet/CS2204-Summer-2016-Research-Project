
################################################################
# This is a generated script based on design: microblaze
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source microblaze_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# top

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name microblaze

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set CLOCK [ create_bd_port -dir I -type clk CLOCK ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
 ] $CLOCK
  set RESET [ create_bd_port -dir I -type rst RESET ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $RESET
  set USB_IN [ create_bd_port -dir I USB_IN ]
  set USB_OUT [ create_bd_port -dir O USB_OUT ]

  # Create instance: microblaze_mcs_0, and set properties
  set microblaze_mcs_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze_mcs:3.0 microblaze_mcs_0 ]
  set_property -dict [ list \
CONFIG.GPI1_SIZE {32} \
CONFIG.GPIO1_BOARD_INTERFACE {Custom} \
CONFIG.GPIO2_BOARD_INTERFACE {Custom} \
CONFIG.GPIO3_BOARD_INTERFACE {Custom} \
CONFIG.GPIO4_BOARD_INTERFACE {Custom} \
CONFIG.MEMSIZE {65536} \
CONFIG.UART_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
CONFIG.USE_GPI1 {1} \
CONFIG.USE_GPI2 {0} \
CONFIG.USE_GPI3 {0} \
CONFIG.USE_GPI4 {0} \
CONFIG.USE_GPO1 {1} \
CONFIG.USE_GPO2 {0} \
CONFIG.USE_GPO3 {0} \
CONFIG.USE_GPO4 {0} \
CONFIG.USE_IO_BUS {0} \
CONFIG.USE_UART_RX {1} \
CONFIG.USE_UART_TX {1} \
 ] $microblaze_mcs_0

  # Create instance: top_0, and set properties
  set block_name top
  set block_cell_name top_0
  if { [catch {set top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $top_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {1} \
CONFIG.IN1_WIDTH {4} \
CONFIG.IN2_WIDTH {4} \
CONFIG.NUM_PORTS {3} \
 ] $xlconcat_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {8} \
CONFIG.DIN_TO {0} \
CONFIG.DOUT_WIDTH {9} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {0} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {9} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {4} \
CONFIG.DIN_TO {1} \
CONFIG.DIN_WIDTH {9} \
CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_2

  # Create instance: xlslice_3, and set properties
  set xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {8} \
CONFIG.DIN_TO {5} \
CONFIG.DIN_WIDTH {9} \
CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_3

  # Create port connections
  connect_bd_net -net CLOCK_1 [get_bd_ports CLOCK] [get_bd_pins microblaze_mcs_0/Clk]
  connect_bd_net -net RESET_1 [get_bd_ports RESET] [get_bd_pins microblaze_mcs_0/Reset]
  connect_bd_net -net USB_IN_1 [get_bd_ports USB_IN] [get_bd_pins microblaze_mcs_0/UART_rxd]
  connect_bd_net -net microblaze_mcs_0_GPIO1_tri_o [get_bd_pins microblaze_mcs_0/GPIO1_tri_o] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net microblaze_mcs_0_UART_txd [get_bd_ports USB_OUT] [get_bd_pins microblaze_mcs_0/UART_txd]
  connect_bd_net -net top_0_oLastPlayer [get_bd_pins top_0/oLastPlayer] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net top_0_oXLoc [get_bd_pins top_0/oXLoc] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net top_0_oYLoc [get_bd_pins top_0/oYLoc] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins microblaze_mcs_0/GPIO1_tri_i] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins xlslice_0/Dout] [get_bd_pins xlslice_1/Din] [get_bd_pins xlslice_2/Din] [get_bd_pins xlslice_3/Din]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins top_0/iLastPlayer] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins top_0/iXLoc] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net xlslice_3_Dout [get_bd_pins top_0/iYLoc] [get_bd_pins xlslice_3/Dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port CLOCK -pg 1 -y 10 -defaultsOSRD
preplace port USB_OUT -pg 1 -y 100 -defaultsOSRD
preplace port USB_IN -pg 1 -y 30 -defaultsOSRD -right
preplace port RESET -pg 1 -y 260 -defaultsOSRD
preplace inst xlslice_0 -pg 1 -lvl 2 -y 310 -defaultsOSRD -resize 154 58
preplace inst microblaze_mcs_0 -pg 1 -lvl 1 -y -70 -defaultsOSRD -resize 427 432
preplace inst xlslice_1 -pg 1 -lvl 3 -y 390 -defaultsOSRD
preplace inst xlslice_2 -pg 1 -lvl 3 -y 470 -defaultsOSRD
preplace inst xlslice_3 -pg 1 -lvl 3 -y 550 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 5 -y 470 -defaultsOSRD
preplace inst top_0 -pg 1 -lvl 4 -y 470 -defaultsOSRD
preplace netloc microblaze_mcs_0_UART_txd 1 1 5 N -110 N -110 N -110 N -110 1590
preplace netloc xlslice_3_Dout 1 3 1 1160
preplace netloc xlslice_1_Dout 1 3 1 1160
preplace netloc CLOCK_1 1 0 1 -420
preplace netloc microblaze_mcs_0_GPIO1_tri_o 1 1 1 740
preplace netloc top_0_oXLoc 1 4 1 N
preplace netloc top_0_oYLoc 1 4 1 N
preplace netloc USB_IN_1 1 1 5 N -180 N -180 N -180 N -180 1600
preplace netloc xlconcat_0_dout 1 1 5 N 30 NJ 30 NJ 30 NJ 30 1580
preplace netloc xlslice_2_Dout 1 3 1 N
preplace netloc top_0_oLastPlayer 1 4 1 N
preplace netloc RESET_1 1 0 1 -420
preplace netloc xlslice_0_Dout 1 2 1 940
levelinfo -pg 1 -440 500 840 1070 1280 1490 1620 -top -300 -bot 600
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


