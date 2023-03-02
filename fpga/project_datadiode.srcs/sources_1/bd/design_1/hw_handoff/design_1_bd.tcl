
################################################################
# This is a generated script based on design: design_1
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
set scripts_vivado_version 2019.1
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
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART digilentinc.com:zybo-z7-20:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

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


# Hierarchical cell: microblaze_PLC_RS485_local_memory
proc create_hier_cell_microblaze_PLC_RS485_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_PLC_RS485_local_memory() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB


  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_PLC_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_PLC_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_PLC_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_PLC_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_PLC_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_PLC_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_PLC_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: microblaze_PLC_Ethernet_local_memory_b
proc create_hier_cell_microblaze_PLC_Ethernet_local_memory_b { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_PLC_Ethernet_local_memory_b() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB


  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: microblaze_PLC_Ethernet_local_memory
proc create_hier_cell_microblaze_PLC_Ethernet_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_PLC_Ethernet_local_memory() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB


  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: microblaze_PLCM_local_memory
proc create_hier_cell_microblaze_PLCM_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_PLCM_local_memory() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB


  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_MPLC_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_MPLC_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_MPLC_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_MPLC_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_MPLC_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_MPLC_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_MPLC_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: MDBRAM_PLCM_PLC_RS485
proc create_hier_cell_MDBRAM_PLCM_PLC_RS485 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_MDBRAM_PLCM_PLC_RS485() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_PORTA

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_PORTB


  # Create pins

  # Create instance: Shared_Memory_PLCM_PLC_RS485, and set properties
  set Shared_Memory_PLCM_PLC_RS485 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 Shared_Memory_PLCM_PLC_RS485 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $Shared_Memory_PLCM_PLC_RS485

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_1

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_MPLC_BRAM_PORTA [get_bd_intf_pins BRAM_PORTA] [get_bd_intf_pins Shared_Memory_PLCM_PLC_RS485/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_PLC_BRAM_PORTA [get_bd_intf_pins BRAM_PORTB] [get_bd_intf_pins Shared_Memory_PLCM_PLC_RS485/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Shared_Memory_PLCM_PLC_RS485/wea] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins Shared_Memory_PLCM_PLC_RS485/dina] [get_bd_pins xlconstant_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: MDBRAM_PLCM_PLC_Ethernet_b
proc create_hier_cell_MDBRAM_PLCM_PLC_Ethernet_b { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_MDBRAM_PLCM_PLC_Ethernet_b() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_PORTA

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_PORTB


  # Create pins

  # Create instance: Shared_Memory_PLCM_PLC_Ethernet, and set properties
  set Shared_Memory_PLCM_PLC_Ethernet [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 Shared_Memory_PLCM_PLC_Ethernet ]
  set_property -dict [ list \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $Shared_Memory_PLCM_PLC_Ethernet

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_3

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_MPLC_BRAM_PORTA1 [get_bd_intf_pins BRAM_PORTA] [get_bd_intf_pins Shared_Memory_PLCM_PLC_Ethernet/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_PLC_BRAM_PORTA1 [get_bd_intf_pins BRAM_PORTB] [get_bd_intf_pins Shared_Memory_PLCM_PLC_Ethernet/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net xlconstant_2_dout [get_bd_pins Shared_Memory_PLCM_PLC_Ethernet/wea] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins Shared_Memory_PLCM_PLC_Ethernet/dina] [get_bd_pins xlconstant_3/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: MDBRAM_PLCM_PLC_Ethernet
proc create_hier_cell_MDBRAM_PLCM_PLC_Ethernet { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_MDBRAM_PLCM_PLC_Ethernet() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_PORTA

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_PORTB


  # Create pins

  # Create instance: Shared_Memory_PLCM_PLC_Ethernet, and set properties
  set Shared_Memory_PLCM_PLC_Ethernet [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 Shared_Memory_PLCM_PLC_Ethernet ]
  set_property -dict [ list \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $Shared_Memory_PLCM_PLC_Ethernet

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_3

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_MPLC_BRAM_PORTA1 [get_bd_intf_pins BRAM_PORTA] [get_bd_intf_pins Shared_Memory_PLCM_PLC_Ethernet/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_PLC_BRAM_PORTA1 [get_bd_intf_pins BRAM_PORTB] [get_bd_intf_pins Shared_Memory_PLCM_PLC_Ethernet/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net xlconstant_2_dout [get_bd_pins Shared_Memory_PLCM_PLC_Ethernet/wea] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins Shared_Memory_PLCM_PLC_Ethernet/dina] [get_bd_pins xlconstant_3/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

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
  set PLCM_UART [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 PLCM_UART ]

  set PLCM_Uart_Rx_disable [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 PLCM_Uart_Rx_disable ]

  set PLCM_Uart_Tx_enable [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 PLCM_Uart_Tx_enable ]

  set PLCM_Wire1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 PLCM_Wire1 ]

  set PLCM_Wire2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 PLCM_Wire2 ]

  set PLC_RS485_UART [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 PLC_RS485_UART ]

  set PLC_RS485_Uart_Rx_disable [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 PLC_RS485_Uart_Rx_disable ]

  set PLC_RS485_Uart_Tx_enable [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 PLC_RS485_Uart_Tx_enable ]

  set PLC_RS485_Wire1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 PLC_RS485_Wire1 ]

  set PLC_RS485_Wire2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 PLC_RS485_Wire2 ]


  # Create ports
  set PLCM_miso [ create_bd_port -dir I PLCM_miso ]
  set PLCM_mosi [ create_bd_port -dir O PLCM_mosi ]
  set PLCM_slave_clk [ create_bd_port -dir O PLCM_slave_clk ]
  set PLCM_slave_select [ create_bd_port -dir O -from 0 -to 0 PLCM_slave_select ]
  set PLC_Ethernet_miso [ create_bd_port -dir I PLC_Ethernet_miso ]
  set PLC_Ethernet_miso_b [ create_bd_port -dir I PLC_Ethernet_miso_b ]
  set PLC_Ethernet_mosi [ create_bd_port -dir O PLC_Ethernet_mosi ]
  set PLC_Ethernet_mosi_b [ create_bd_port -dir O PLC_Ethernet_mosi_b ]
  set PLC_Ethernet_slave_clk [ create_bd_port -dir O PLC_Ethernet_slave_clk ]
  set PLC_Ethernet_slave_clk_b [ create_bd_port -dir O PLC_Ethernet_slave_clk_b ]
  set PLC_Ethernet_slave_select [ create_bd_port -dir O -from 0 -to 0 PLC_Ethernet_slave_select ]
  set PLC_Ethernet_slave_select_b [ create_bd_port -dir O -from 0 -to 0 PLC_Ethernet_slave_select_b ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   CONFIG.PHASE {0.000} \
 ] $sys_clock

  # Create instance: AXI_GPIO_PLCM_Uart_Rx, and set properties
  set AXI_GPIO_PLCM_Uart_Rx [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 AXI_GPIO_PLCM_Uart_Rx ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.GPIO_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $AXI_GPIO_PLCM_Uart_Rx

  # Create instance: AXI_GPIO_PLCM_Uart_Tx, and set properties
  set AXI_GPIO_PLCM_Uart_Tx [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 AXI_GPIO_PLCM_Uart_Tx ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.GPIO_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $AXI_GPIO_PLCM_Uart_Tx

  # Create instance: AXI_GPIO_PLCM_Wire1, and set properties
  set AXI_GPIO_PLCM_Wire1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 AXI_GPIO_PLCM_Wire1 ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_TRI_DEFAULT {0x00000001} \
 ] $AXI_GPIO_PLCM_Wire1

  # Create instance: AXI_GPIO_PLCM_Wire2, and set properties
  set AXI_GPIO_PLCM_Wire2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 AXI_GPIO_PLCM_Wire2 ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_TRI_DEFAULT {0x00000001} \
 ] $AXI_GPIO_PLCM_Wire2

  # Create instance: AXI_GPIO_PLC_RS485_Uart_Rx, and set properties
  set AXI_GPIO_PLC_RS485_Uart_Rx [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 AXI_GPIO_PLC_RS485_Uart_Rx ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.GPIO_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $AXI_GPIO_PLC_RS485_Uart_Rx

  # Create instance: AXI_GPIO_PLC_RS485_Uart_Tx, and set properties
  set AXI_GPIO_PLC_RS485_Uart_Tx [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 AXI_GPIO_PLC_RS485_Uart_Tx ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.GPIO_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $AXI_GPIO_PLC_RS485_Uart_Tx

  # Create instance: AXI_GPIO_PLC_RS485_Wire1, and set properties
  set AXI_GPIO_PLC_RS485_Wire1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 AXI_GPIO_PLC_RS485_Wire1 ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_TRI_DEFAULT {0x00000001} \
 ] $AXI_GPIO_PLC_RS485_Wire1

  # Create instance: AXI_GPIO_PLC_RS485_Wire2, and set properties
  set AXI_GPIO_PLC_RS485_Wire2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 AXI_GPIO_PLC_RS485_Wire2 ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_TRI_DEFAULT {0x00000001} \
 ] $AXI_GPIO_PLC_RS485_Wire2

  # Create instance: MDBRAM_PLCM_PLC_Ethernet
  create_hier_cell_MDBRAM_PLCM_PLC_Ethernet [current_bd_instance .] MDBRAM_PLCM_PLC_Ethernet

  # Create instance: MDBRAM_PLCM_PLC_Ethernet_b
  create_hier_cell_MDBRAM_PLCM_PLC_Ethernet_b [current_bd_instance .] MDBRAM_PLCM_PLC_Ethernet_b

  # Create instance: MDBRAM_PLCM_PLC_RS485
  create_hier_cell_MDBRAM_PLCM_PLC_RS485 [current_bd_instance .] MDBRAM_PLCM_PLC_RS485

  # Create instance: axi_bram_ctrl_1_PLCM, and set properties
  set axi_bram_ctrl_1_PLCM [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_1_PLCM ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_1_PLCM

  # Create instance: axi_bram_ctrl_2_PLCM, and set properties
  set axi_bram_ctrl_2_PLCM [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_2_PLCM ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_2_PLCM

  # Create instance: axi_bram_ctrl_3_PLCM, and set properties
  set axi_bram_ctrl_3_PLCM [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_3_PLCM ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_3_PLCM

  # Create instance: axi_bram_ctrl_PLC_Ethernet, and set properties
  set axi_bram_ctrl_PLC_Ethernet [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_PLC_Ethernet ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_PLC_Ethernet

  # Create instance: axi_bram_ctrl_PLC_Ethernet_b, and set properties
  set axi_bram_ctrl_PLC_Ethernet_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_PLC_Ethernet_b ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_PLC_Ethernet_b

  # Create instance: axi_bram_ctrl_PLC_RS485, and set properties
  set axi_bram_ctrl_PLC_RS485 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_PLC_RS485 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_PLC_RS485

  # Create instance: axi_quad_spi_PLCM, and set properties
  set axi_quad_spi_PLCM [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_PLCM ]
  set_property -dict [ list \
   CONFIG.C_FIFO_DEPTH {256} \
   CONFIG.C_SCK_RATIO {2} \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
 ] $axi_quad_spi_PLCM

  # Create instance: axi_quad_spi_PLC_Ethernet, and set properties
  set axi_quad_spi_PLC_Ethernet [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_PLC_Ethernet ]
  set_property -dict [ list \
   CONFIG.C_FIFO_DEPTH {256} \
   CONFIG.C_SCK_RATIO {2} \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
 ] $axi_quad_spi_PLC_Ethernet

  # Create instance: axi_quad_spi_PLC_Ethernet_b, and set properties
  set axi_quad_spi_PLC_Ethernet_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_PLC_Ethernet_b ]
  set_property -dict [ list \
   CONFIG.C_FIFO_DEPTH {256} \
   CONFIG.C_SCK_RATIO {2} \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
 ] $axi_quad_spi_PLC_Ethernet_b

  # Create instance: axi_uartlite_PLCM, and set properties
  set axi_uartlite_PLCM [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_PLCM ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
   CONFIG.C_USE_PARITY {1} \
   CONFIG.PARITY {Even} \
 ] $axi_uartlite_PLCM

  # Create instance: axi_uartlite_PLC_RS485, and set properties
  set axi_uartlite_PLC_RS485 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_PLC_RS485 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
   CONFIG.C_USE_PARITY {1} \
   CONFIG.PARITY {Even} \
 ] $axi_uartlite_PLC_RS485

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {80.0} \
   CONFIG.CLKOUT1_JITTER {290.778} \
   CONFIG.CLKOUT1_PHASE_ERROR {301.898} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT2_JITTER {374.460} \
   CONFIG.CLKOUT2_PHASE_ERROR {301.898} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {28.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.CLK_OUT1_PORT {clk_out100} \
   CONFIG.CLK_OUT2_PORT {clk_out28} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {28.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {8.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {7.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {25} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_SIZE {32} \
   CONFIG.C_MB_DBG_PORTS {4} \
   CONFIG.C_M_AXI_ADDR_WIDTH {32} \
 ] $mdm_1

  # Create instance: microblaze_PLCM, and set properties
  set microblaze_PLCM [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_PLCM ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
 ] $microblaze_PLCM

  # Create instance: microblaze_PLCM_axi_intc, and set properties
  set microblaze_PLCM_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_PLCM_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
 ] $microblaze_PLCM_axi_intc

  # Create instance: microblaze_PLCM_axi_periph, and set properties
  set microblaze_PLCM_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_PLCM_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {10} \
 ] $microblaze_PLCM_axi_periph

  # Create instance: microblaze_PLCM_local_memory
  create_hier_cell_microblaze_PLCM_local_memory [current_bd_instance .] microblaze_PLCM_local_memory

  # Create instance: microblaze_PLC_Ethernet, and set properties
  set microblaze_PLC_Ethernet [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_PLC_Ethernet ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
 ] $microblaze_PLC_Ethernet

  # Create instance: microblaze_PLC_Ethernet_axi_intc, and set properties
  set microblaze_PLC_Ethernet_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_PLC_Ethernet_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
 ] $microblaze_PLC_Ethernet_axi_intc

  # Create instance: microblaze_PLC_Ethernet_axi_intc_b, and set properties
  set microblaze_PLC_Ethernet_axi_intc_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_PLC_Ethernet_axi_intc_b ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
 ] $microblaze_PLC_Ethernet_axi_intc_b

  # Create instance: microblaze_PLC_Ethernet_axi_periph, and set properties
  set microblaze_PLC_Ethernet_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_PLC_Ethernet_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
 ] $microblaze_PLC_Ethernet_axi_periph

  # Create instance: microblaze_PLC_Ethernet_axi_periph_b, and set properties
  set microblaze_PLC_Ethernet_axi_periph_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_PLC_Ethernet_axi_periph_b ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
 ] $microblaze_PLC_Ethernet_axi_periph_b

  # Create instance: microblaze_PLC_Ethernet_b, and set properties
  set microblaze_PLC_Ethernet_b [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_PLC_Ethernet_b ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
 ] $microblaze_PLC_Ethernet_b

  # Create instance: microblaze_PLC_Ethernet_local_memory
  create_hier_cell_microblaze_PLC_Ethernet_local_memory [current_bd_instance .] microblaze_PLC_Ethernet_local_memory

  # Create instance: microblaze_PLC_Ethernet_local_memory_b
  create_hier_cell_microblaze_PLC_Ethernet_local_memory_b [current_bd_instance .] microblaze_PLC_Ethernet_local_memory_b

  # Create instance: microblaze_PLC_RS485, and set properties
  set microblaze_PLC_RS485 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_PLC_RS485 ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
 ] $microblaze_PLC_RS485

  # Create instance: microblaze_PLC_RS485_axi_intc, and set properties
  set microblaze_PLC_RS485_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_PLC_RS485_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
 ] $microblaze_PLC_RS485_axi_intc

  # Create instance: microblaze_PLC_RS485_axi_periph, and set properties
  set microblaze_PLC_RS485_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_PLC_RS485_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {7} \
 ] $microblaze_PLC_RS485_axi_periph

  # Create instance: microblaze_PLC_RS485_local_memory
  create_hier_cell_microblaze_PLC_RS485_local_memory [current_bd_instance .] microblaze_PLC_RS485_local_memory

  # Create instance: rst_clk_wiz_100M, and set properties
  set rst_clk_wiz_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_100M ]

  # Create instance: xlconcat_interrupts_PLCM, and set properties
  set xlconcat_interrupts_PLCM [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_interrupts_PLCM ]

  # Create interface connections
  connect_bd_intf_net -intf_net AXI_PLC_Wire1_GPIO [get_bd_intf_ports PLC_RS485_Wire1] [get_bd_intf_pins AXI_GPIO_PLC_RS485_Wire1/GPIO]
  connect_bd_intf_net -intf_net AXI_PLC_Wire1_GPIO1 [get_bd_intf_ports PLC_RS485_Wire2] [get_bd_intf_pins AXI_GPIO_PLC_RS485_Wire2/GPIO]
  connect_bd_intf_net -intf_net AXI_PLC_Wire1_GPIO2 [get_bd_intf_ports PLCM_Wire1] [get_bd_intf_pins AXI_GPIO_PLCM_Wire1/GPIO]
  connect_bd_intf_net -intf_net AXI_PLC_Wire1_GPIO3 [get_bd_intf_ports PLCM_Wire2] [get_bd_intf_pins AXI_GPIO_PLCM_Wire2/GPIO]
  connect_bd_intf_net -intf_net BRAM_PORTB_1 [get_bd_intf_pins MDBRAM_PLCM_PLC_Ethernet_b/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_PLC_Ethernet_b/BRAM_PORTA]
  connect_bd_intf_net -intf_net MPLC_Uart_Rx_disable1_GPIO [get_bd_intf_ports PLCM_Uart_Rx_disable] [get_bd_intf_pins AXI_GPIO_PLCM_Uart_Rx/GPIO]
  connect_bd_intf_net -intf_net MPLC_Uart_Tx_enable1_GPIO [get_bd_intf_ports PLCM_Uart_Tx_enable] [get_bd_intf_pins AXI_GPIO_PLCM_Uart_Tx/GPIO]
  connect_bd_intf_net -intf_net PLC_Uart_Rx_disable_GPIO [get_bd_intf_ports PLC_RS485_Uart_Rx_disable] [get_bd_intf_pins AXI_GPIO_PLC_RS485_Uart_Rx/GPIO]
  connect_bd_intf_net -intf_net PLC_Uart_Rx_disable_GPIO1 [get_bd_intf_ports PLC_RS485_Uart_Tx_enable] [get_bd_intf_pins AXI_GPIO_PLC_RS485_Uart_Tx/GPIO]
  connect_bd_intf_net -intf_net axi_bram_ctrl_2_PLCM1_BRAM_PORTA [get_bd_intf_pins MDBRAM_PLCM_PLC_Ethernet_b/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_3_PLCM/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_MPLC_BRAM_PORTA [get_bd_intf_pins MDBRAM_PLCM_PLC_RS485/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_1_PLCM/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_MPLC_BRAM_PORTA1 [get_bd_intf_pins MDBRAM_PLCM_PLC_Ethernet/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_2_PLCM/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_PLC_BRAM_PORTA [get_bd_intf_pins MDBRAM_PLCM_PLC_RS485/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_PLC_RS485/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_PLC_BRAM_PORTA1 [get_bd_intf_pins MDBRAM_PLCM_PLC_Ethernet/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_PLC_Ethernet/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_uartlite_MPLC_UART [get_bd_intf_ports PLCM_UART] [get_bd_intf_pins axi_uartlite_PLCM/UART]
  connect_bd_intf_net -intf_net axi_uartlite_PLC_UART [get_bd_intf_ports PLC_RS485_UART] [get_bd_intf_pins axi_uartlite_PLC_RS485/UART]
  connect_bd_intf_net -intf_net mdm_1_MBDEBUG_3 [get_bd_intf_pins mdm_1/MBDEBUG_3] [get_bd_intf_pins microblaze_PLC_Ethernet_b/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_PLC_Ethernet/M_AXI_DP] [get_bd_intf_pins microblaze_PLC_Ethernet_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_2] [get_bd_intf_pins microblaze_PLC_Ethernet/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_PLC_Ethernet/DLMB] [get_bd_intf_pins microblaze_PLC_Ethernet_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_PLC_Ethernet/ILMB] [get_bd_intf_pins microblaze_PLC_Ethernet_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_intc_axi [get_bd_intf_pins microblaze_PLC_Ethernet_axi_intc/s_axi] [get_bd_intf_pins microblaze_PLC_Ethernet_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_interrupt [get_bd_intf_pins microblaze_PLC_Ethernet/INTERRUPT] [get_bd_intf_pins microblaze_PLC_Ethernet_axi_intc/interrupt]
  connect_bd_intf_net -intf_net microblaze_MPLC_axi_dp [get_bd_intf_pins microblaze_PLCM/M_AXI_DP] [get_bd_intf_pins microblaze_PLCM_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_MPLC_axi_periph_M01_AXI [get_bd_intf_pins axi_bram_ctrl_1_PLCM/S_AXI] [get_bd_intf_pins microblaze_PLCM_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_MPLC_axi_periph_M02_AXI [get_bd_intf_pins axi_uartlite_PLCM/S_AXI] [get_bd_intf_pins microblaze_PLCM_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_MPLC_axi_periph_M03_AXI [get_bd_intf_pins AXI_GPIO_PLCM_Uart_Tx/S_AXI] [get_bd_intf_pins microblaze_PLCM_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_MPLC_axi_periph_M04_AXI [get_bd_intf_pins AXI_GPIO_PLCM_Uart_Rx/S_AXI] [get_bd_intf_pins microblaze_PLCM_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_MPLC_axi_periph_M05_AXI [get_bd_intf_pins AXI_GPIO_PLCM_Wire1/S_AXI] [get_bd_intf_pins microblaze_PLCM_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net microblaze_MPLC_axi_periph_M06_AXI [get_bd_intf_pins AXI_GPIO_PLCM_Wire2/S_AXI] [get_bd_intf_pins microblaze_PLCM_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net microblaze_MPLC_debug [get_bd_intf_pins mdm_1/MBDEBUG_1] [get_bd_intf_pins microblaze_PLCM/DEBUG]
  connect_bd_intf_net -intf_net microblaze_MPLC_dlmb_1 [get_bd_intf_pins microblaze_PLCM/DLMB] [get_bd_intf_pins microblaze_PLCM_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_MPLC_ilmb_1 [get_bd_intf_pins microblaze_PLCM/ILMB] [get_bd_intf_pins microblaze_PLCM_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_MPLC_intc_axi [get_bd_intf_pins microblaze_PLCM_axi_intc/s_axi] [get_bd_intf_pins microblaze_PLCM_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_MPLC_interrupt [get_bd_intf_pins microblaze_PLCM/INTERRUPT] [get_bd_intf_pins microblaze_PLCM_axi_intc/interrupt]
  connect_bd_intf_net -intf_net microblaze_PLCM_axi_periph_M07_AXI [get_bd_intf_pins axi_quad_spi_PLCM/AXI_LITE] [get_bd_intf_pins microblaze_PLCM_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net microblaze_PLCM_axi_periph_M08_AXI [get_bd_intf_pins axi_bram_ctrl_2_PLCM/S_AXI] [get_bd_intf_pins microblaze_PLCM_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net microblaze_PLCM_axi_periph_M09_AXI [get_bd_intf_pins axi_bram_ctrl_3_PLCM/S_AXI] [get_bd_intf_pins microblaze_PLCM_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_Ethernet1_DLMB [get_bd_intf_pins microblaze_PLC_Ethernet_b/DLMB] [get_bd_intf_pins microblaze_PLC_Ethernet_local_memory_b/DLMB]
  connect_bd_intf_net -intf_net microblaze_PLC_Ethernet1_ILMB [get_bd_intf_pins microblaze_PLC_Ethernet_b/ILMB] [get_bd_intf_pins microblaze_PLC_Ethernet_local_memory_b/ILMB]
  connect_bd_intf_net -intf_net microblaze_PLC_Ethernet1_M_AXI_DP [get_bd_intf_pins microblaze_PLC_Ethernet_axi_periph_b/S00_AXI] [get_bd_intf_pins microblaze_PLC_Ethernet_b/M_AXI_DP]
  connect_bd_intf_net -intf_net microblaze_PLC_Ethernet_axi_intc1_interrupt [get_bd_intf_pins microblaze_PLC_Ethernet_axi_intc_b/interrupt] [get_bd_intf_pins microblaze_PLC_Ethernet_b/INTERRUPT]
  connect_bd_intf_net -intf_net microblaze_PLC_Ethernet_axi_periph1_M00_AXI [get_bd_intf_pins microblaze_PLC_Ethernet_axi_intc_b/s_axi] [get_bd_intf_pins microblaze_PLC_Ethernet_axi_periph_b/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_Ethernet_axi_periph1_M01_AXI [get_bd_intf_pins axi_quad_spi_PLC_Ethernet_b/AXI_LITE] [get_bd_intf_pins microblaze_PLC_Ethernet_axi_periph_b/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_Ethernet_axi_periph1_M02_AXI [get_bd_intf_pins axi_bram_ctrl_PLC_Ethernet_b/S_AXI] [get_bd_intf_pins microblaze_PLC_Ethernet_axi_periph_b/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_Ethernet_axi_periph_M01_AXI [get_bd_intf_pins axi_quad_spi_PLC_Ethernet/AXI_LITE] [get_bd_intf_pins microblaze_PLC_Ethernet_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_Ethernet_axi_periph_M02_AXI [get_bd_intf_pins axi_bram_ctrl_PLC_Ethernet/S_AXI] [get_bd_intf_pins microblaze_PLC_Ethernet_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_RS485_axi_periph_M01_AXI [get_bd_intf_pins axi_bram_ctrl_PLC_RS485/S_AXI] [get_bd_intf_pins microblaze_PLC_RS485_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_RS485_axi_periph_M02_AXI [get_bd_intf_pins axi_uartlite_PLC_RS485/S_AXI] [get_bd_intf_pins microblaze_PLC_RS485_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_RS485_axi_periph_M03_AXI [get_bd_intf_pins AXI_GPIO_PLC_RS485_Uart_Rx/S_AXI] [get_bd_intf_pins microblaze_PLC_RS485_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_RS485_axi_periph_M04_AXI [get_bd_intf_pins AXI_GPIO_PLC_RS485_Wire1/S_AXI] [get_bd_intf_pins microblaze_PLC_RS485_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_RS485_axi_periph_M05_AXI [get_bd_intf_pins AXI_GPIO_PLC_RS485_Wire2/S_AXI] [get_bd_intf_pins microblaze_PLC_RS485_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_RS485_axi_periph_M06_AXI [get_bd_intf_pins AXI_GPIO_PLC_RS485_Uart_Tx/S_AXI] [get_bd_intf_pins microblaze_PLC_RS485_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_axi_dp [get_bd_intf_pins microblaze_PLC_RS485/M_AXI_DP] [get_bd_intf_pins microblaze_PLC_RS485_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_PLC_RS485/DEBUG]
  connect_bd_intf_net -intf_net microblaze_PLC_dlmb_1 [get_bd_intf_pins microblaze_PLC_RS485/DLMB] [get_bd_intf_pins microblaze_PLC_RS485_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_PLC_ilmb_1 [get_bd_intf_pins microblaze_PLC_RS485/ILMB] [get_bd_intf_pins microblaze_PLC_RS485_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_PLC_intc_axi [get_bd_intf_pins microblaze_PLC_RS485_axi_intc/s_axi] [get_bd_intf_pins microblaze_PLC_RS485_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_PLC_interrupt [get_bd_intf_pins microblaze_PLC_RS485/INTERRUPT] [get_bd_intf_pins microblaze_PLC_RS485_axi_intc/interrupt]

  # Create port connections
  connect_bd_net -net PLCM_miso1_1 [get_bd_ports PLC_Ethernet_miso_b] [get_bd_pins axi_quad_spi_PLC_Ethernet_b/io1_i]
  connect_bd_net -net S00_ARESETN_1 [get_bd_pins AXI_GPIO_PLCM_Uart_Rx/s_axi_aresetn] [get_bd_pins AXI_GPIO_PLCM_Uart_Tx/s_axi_aresetn] [get_bd_pins AXI_GPIO_PLCM_Wire1/s_axi_aresetn] [get_bd_pins AXI_GPIO_PLCM_Wire2/s_axi_aresetn] [get_bd_pins AXI_GPIO_PLC_RS485_Uart_Rx/s_axi_aresetn] [get_bd_pins AXI_GPIO_PLC_RS485_Uart_Tx/s_axi_aresetn] [get_bd_pins AXI_GPIO_PLC_RS485_Wire1/s_axi_aresetn] [get_bd_pins AXI_GPIO_PLC_RS485_Wire2/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_1_PLCM/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_2_PLCM/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_3_PLCM/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_PLC_Ethernet/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_PLC_Ethernet_b/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_PLC_RS485/s_axi_aresetn] [get_bd_pins axi_quad_spi_PLCM/s_axi_aresetn] [get_bd_pins axi_quad_spi_PLC_Ethernet/s_axi_aresetn] [get_bd_pins axi_quad_spi_PLC_Ethernet_b/s_axi_aresetn] [get_bd_pins axi_uartlite_PLCM/s_axi_aresetn] [get_bd_pins axi_uartlite_PLC_RS485/s_axi_aresetn] [get_bd_pins microblaze_PLCM_axi_intc/s_axi_aresetn] [get_bd_pins microblaze_PLCM_axi_periph/M00_ARESETN] [get_bd_pins microblaze_PLCM_axi_periph/M01_ARESETN] [get_bd_pins microblaze_PLCM_axi_periph/M02_ARESETN] [get_bd_pins microblaze_PLCM_axi_periph/M03_ARESETN] [get_bd_pins microblaze_PLCM_axi_periph/M04_ARESETN] [get_bd_pins microblaze_PLCM_axi_periph/M05_ARESETN] [get_bd_pins microblaze_PLCM_axi_periph/M06_ARESETN] [get_bd_pins microblaze_PLCM_axi_periph/M07_ARESETN] [get_bd_pins microblaze_PLCM_axi_periph/M08_ARESETN] [get_bd_pins microblaze_PLCM_axi_periph/M09_ARESETN] [get_bd_pins microblaze_PLCM_axi_periph/S00_ARESETN] [get_bd_pins microblaze_PLC_Ethernet_axi_intc/s_axi_aresetn] [get_bd_pins microblaze_PLC_Ethernet_axi_intc_b/s_axi_aresetn] [get_bd_pins microblaze_PLC_Ethernet_axi_periph/M00_ARESETN] [get_bd_pins microblaze_PLC_Ethernet_axi_periph/M01_ARESETN] [get_bd_pins microblaze_PLC_Ethernet_axi_periph/M02_ARESETN] [get_bd_pins microblaze_PLC_Ethernet_axi_periph/S00_ARESETN] [get_bd_pins microblaze_PLC_Ethernet_axi_periph_b/M00_ARESETN] [get_bd_pins microblaze_PLC_Ethernet_axi_periph_b/M01_ARESETN] [get_bd_pins microblaze_PLC_Ethernet_axi_periph_b/M02_ARESETN] [get_bd_pins microblaze_PLC_Ethernet_axi_periph_b/S00_ARESETN] [get_bd_pins microblaze_PLC_RS485_axi_intc/s_axi_aresetn] [get_bd_pins microblaze_PLC_RS485_axi_periph/M00_ARESETN] [get_bd_pins microblaze_PLC_RS485_axi_periph/M01_ARESETN] [get_bd_pins microblaze_PLC_RS485_axi_periph/M02_ARESETN] [get_bd_pins microblaze_PLC_RS485_axi_periph/M03_ARESETN] [get_bd_pins microblaze_PLC_RS485_axi_periph/M04_ARESETN] [get_bd_pins microblaze_PLC_RS485_axi_periph/M05_ARESETN] [get_bd_pins microblaze_PLC_RS485_axi_periph/M06_ARESETN] [get_bd_pins microblaze_PLC_RS485_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_100M/peripheral_aresetn]
  connect_bd_net -net axi_quad_spi_PLCM_io0_o [get_bd_ports PLCM_mosi] [get_bd_pins axi_quad_spi_PLCM/io0_o]
  connect_bd_net -net axi_quad_spi_PLCM_io0_o1 [get_bd_ports PLC_Ethernet_mosi] [get_bd_pins axi_quad_spi_PLC_Ethernet/io0_o]
  connect_bd_net -net axi_quad_spi_PLCM_ip2intc_irpt [get_bd_pins axi_quad_spi_PLCM/ip2intc_irpt] [get_bd_pins xlconcat_interrupts_PLCM/In0]
  connect_bd_net -net axi_quad_spi_PLCM_sck_o [get_bd_ports PLCM_slave_clk] [get_bd_pins axi_quad_spi_PLCM/sck_o]
  connect_bd_net -net axi_quad_spi_PLCM_sck_o1 [get_bd_ports PLC_Ethernet_slave_clk] [get_bd_pins axi_quad_spi_PLC_Ethernet/sck_o]
  connect_bd_net -net axi_quad_spi_PLCM_ss_o [get_bd_ports PLCM_slave_select] [get_bd_pins axi_quad_spi_PLCM/ss_o]
  connect_bd_net -net axi_quad_spi_PLCM_ss_o1 [get_bd_ports PLC_Ethernet_slave_select] [get_bd_pins axi_quad_spi_PLC_Ethernet/ss_o]
  connect_bd_net -net axi_quad_spi_PLC_Ethernet1_io0_o [get_bd_ports PLC_Ethernet_mosi_b] [get_bd_pins axi_quad_spi_PLC_Ethernet_b/io0_o]
  connect_bd_net -net axi_quad_spi_PLC_Ethernet1_ip2intc_irpt [get_bd_pins axi_quad_spi_PLC_Ethernet_b/ip2intc_irpt] [get_bd_pins microblaze_PLC_Ethernet_axi_intc_b/intr]
  connect_bd_net -net axi_quad_spi_PLC_Ethernet1_sck_o [get_bd_ports PLC_Ethernet_slave_clk_b] [get_bd_pins axi_quad_spi_PLC_Ethernet_b/sck_o]
  connect_bd_net -net axi_quad_spi_PLC_Ethernet1_ss_o [get_bd_ports PLC_Ethernet_slave_select_b] [get_bd_pins axi_quad_spi_PLC_Ethernet_b/ss_o]
  connect_bd_net -net axi_quad_spi_PLC_Ethernet_ip2intc_irpt [get_bd_pins axi_quad_spi_PLC_Ethernet/ip2intc_irpt] [get_bd_pins microblaze_PLC_Ethernet_axi_intc/intr]
  connect_bd_net -net axi_uartlite_PLCM_interrupt [get_bd_pins axi_uartlite_PLCM/interrupt] [get_bd_pins xlconcat_interrupts_PLCM/In1]
  connect_bd_net -net axi_uartlite_PLC_interrupt [get_bd_pins axi_uartlite_PLC_RS485/interrupt] [get_bd_pins microblaze_PLC_RS485_axi_intc/intr]
  connect_bd_net -net clk_wiz_clk_out28 [get_bd_pins axi_quad_spi_PLCM/ext_spi_clk] [get_bd_pins axi_quad_spi_PLC_Ethernet/ext_spi_clk] [get_bd_pins axi_quad_spi_PLC_Ethernet_b/ext_spi_clk] [get_bd_pins clk_wiz/clk_out28]
  connect_bd_net -net clk_wiz_locked [get_bd_pins clk_wiz/locked] [get_bd_pins rst_clk_wiz_100M/dcm_locked]
  connect_bd_net -net io1_i_0_1 [get_bd_ports PLCM_miso] [get_bd_pins axi_quad_spi_PLCM/io1_i]
  connect_bd_net -net io1_i_0_2 [get_bd_ports PLC_Ethernet_miso] [get_bd_pins axi_quad_spi_PLC_Ethernet/io1_i]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_100M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins AXI_GPIO_PLCM_Uart_Rx/s_axi_aclk] [get_bd_pins AXI_GPIO_PLCM_Uart_Tx/s_axi_aclk] [get_bd_pins AXI_GPIO_PLCM_Wire1/s_axi_aclk] [get_bd_pins AXI_GPIO_PLCM_Wire2/s_axi_aclk] [get_bd_pins AXI_GPIO_PLC_RS485_Uart_Rx/s_axi_aclk] [get_bd_pins AXI_GPIO_PLC_RS485_Uart_Tx/s_axi_aclk] [get_bd_pins AXI_GPIO_PLC_RS485_Wire1/s_axi_aclk] [get_bd_pins AXI_GPIO_PLC_RS485_Wire2/s_axi_aclk] [get_bd_pins axi_bram_ctrl_1_PLCM/s_axi_aclk] [get_bd_pins axi_bram_ctrl_2_PLCM/s_axi_aclk] [get_bd_pins axi_bram_ctrl_3_PLCM/s_axi_aclk] [get_bd_pins axi_bram_ctrl_PLC_Ethernet/s_axi_aclk] [get_bd_pins axi_bram_ctrl_PLC_Ethernet_b/s_axi_aclk] [get_bd_pins axi_bram_ctrl_PLC_RS485/s_axi_aclk] [get_bd_pins axi_quad_spi_PLCM/s_axi_aclk] [get_bd_pins axi_quad_spi_PLC_Ethernet/s_axi_aclk] [get_bd_pins axi_quad_spi_PLC_Ethernet_b/s_axi_aclk] [get_bd_pins axi_uartlite_PLCM/s_axi_aclk] [get_bd_pins axi_uartlite_PLC_RS485/s_axi_aclk] [get_bd_pins clk_wiz/clk_out100] [get_bd_pins microblaze_PLCM/Clk] [get_bd_pins microblaze_PLCM_axi_intc/processor_clk] [get_bd_pins microblaze_PLCM_axi_intc/s_axi_aclk] [get_bd_pins microblaze_PLCM_axi_periph/ACLK] [get_bd_pins microblaze_PLCM_axi_periph/M00_ACLK] [get_bd_pins microblaze_PLCM_axi_periph/M01_ACLK] [get_bd_pins microblaze_PLCM_axi_periph/M02_ACLK] [get_bd_pins microblaze_PLCM_axi_periph/M03_ACLK] [get_bd_pins microblaze_PLCM_axi_periph/M04_ACLK] [get_bd_pins microblaze_PLCM_axi_periph/M05_ACLK] [get_bd_pins microblaze_PLCM_axi_periph/M06_ACLK] [get_bd_pins microblaze_PLCM_axi_periph/M07_ACLK] [get_bd_pins microblaze_PLCM_axi_periph/M08_ACLK] [get_bd_pins microblaze_PLCM_axi_periph/M09_ACLK] [get_bd_pins microblaze_PLCM_axi_periph/S00_ACLK] [get_bd_pins microblaze_PLCM_local_memory/LMB_Clk] [get_bd_pins microblaze_PLC_Ethernet/Clk] [get_bd_pins microblaze_PLC_Ethernet_axi_intc/processor_clk] [get_bd_pins microblaze_PLC_Ethernet_axi_intc/s_axi_aclk] [get_bd_pins microblaze_PLC_Ethernet_axi_intc_b/processor_clk] [get_bd_pins microblaze_PLC_Ethernet_axi_intc_b/s_axi_aclk] [get_bd_pins microblaze_PLC_Ethernet_axi_periph/ACLK] [get_bd_pins microblaze_PLC_Ethernet_axi_periph/M00_ACLK] [get_bd_pins microblaze_PLC_Ethernet_axi_periph/M01_ACLK] [get_bd_pins microblaze_PLC_Ethernet_axi_periph/M02_ACLK] [get_bd_pins microblaze_PLC_Ethernet_axi_periph/S00_ACLK] [get_bd_pins microblaze_PLC_Ethernet_axi_periph_b/ACLK] [get_bd_pins microblaze_PLC_Ethernet_axi_periph_b/M00_ACLK] [get_bd_pins microblaze_PLC_Ethernet_axi_periph_b/M01_ACLK] [get_bd_pins microblaze_PLC_Ethernet_axi_periph_b/M02_ACLK] [get_bd_pins microblaze_PLC_Ethernet_axi_periph_b/S00_ACLK] [get_bd_pins microblaze_PLC_Ethernet_b/Clk] [get_bd_pins microblaze_PLC_Ethernet_local_memory/LMB_Clk] [get_bd_pins microblaze_PLC_Ethernet_local_memory_b/LMB_Clk] [get_bd_pins microblaze_PLC_RS485/Clk] [get_bd_pins microblaze_PLC_RS485_axi_intc/processor_clk] [get_bd_pins microblaze_PLC_RS485_axi_intc/s_axi_aclk] [get_bd_pins microblaze_PLC_RS485_axi_periph/ACLK] [get_bd_pins microblaze_PLC_RS485_axi_periph/M00_ACLK] [get_bd_pins microblaze_PLC_RS485_axi_periph/M01_ACLK] [get_bd_pins microblaze_PLC_RS485_axi_periph/M02_ACLK] [get_bd_pins microblaze_PLC_RS485_axi_periph/M03_ACLK] [get_bd_pins microblaze_PLC_RS485_axi_periph/M04_ACLK] [get_bd_pins microblaze_PLC_RS485_axi_periph/M05_ACLK] [get_bd_pins microblaze_PLC_RS485_axi_periph/M06_ACLK] [get_bd_pins microblaze_PLC_RS485_axi_periph/S00_ACLK] [get_bd_pins microblaze_PLC_RS485_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_100M/slowest_sync_clk]
  connect_bd_net -net reset_rtl_1 [get_bd_ports reset] [get_bd_pins clk_wiz/resetn] [get_bd_pins rst_clk_wiz_100M/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_150M_bus_struct_reset [get_bd_pins microblaze_PLCM_local_memory/SYS_Rst] [get_bd_pins microblaze_PLC_Ethernet_local_memory/SYS_Rst] [get_bd_pins microblaze_PLC_Ethernet_local_memory_b/SYS_Rst] [get_bd_pins microblaze_PLC_RS485_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_150M_interconnect_aresetn [get_bd_pins microblaze_PLCM_axi_periph/ARESETN] [get_bd_pins microblaze_PLC_Ethernet_axi_periph/ARESETN] [get_bd_pins microblaze_PLC_Ethernet_axi_periph_b/ARESETN] [get_bd_pins microblaze_PLC_RS485_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_150M_mb_reset [get_bd_pins microblaze_PLCM/Reset] [get_bd_pins microblaze_PLCM_axi_intc/processor_rst] [get_bd_pins microblaze_PLC_Ethernet/Reset] [get_bd_pins microblaze_PLC_Ethernet_axi_intc/processor_rst] [get_bd_pins microblaze_PLC_Ethernet_axi_intc_b/processor_rst] [get_bd_pins microblaze_PLC_Ethernet_b/Reset] [get_bd_pins microblaze_PLC_RS485/Reset] [get_bd_pins microblaze_PLC_RS485_axi_intc/processor_rst] [get_bd_pins rst_clk_wiz_100M/mb_reset]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz/clk_in1]
  connect_bd_net -net xlconcat_interrupts_PLCM_dout [get_bd_pins microblaze_PLCM_axi_intc/intr] [get_bd_pins xlconcat_interrupts_PLCM/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_PLCM/Data] [get_bd_addr_segs AXI_GPIO_PLCM_Uart_Rx/S_AXI/Reg] SEG_AXI_MPLC_Uart_Rx_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces microblaze_PLCM/Data] [get_bd_addr_segs AXI_GPIO_PLCM_Uart_Tx/S_AXI/Reg] SEG_AXI_MPLC_Uart_Tx_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40020000 [get_bd_addr_spaces microblaze_PLCM/Data] [get_bd_addr_segs AXI_GPIO_PLCM_Wire1/S_AXI/Reg] SEG_AXI_MPLC_Wire1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40030000 [get_bd_addr_spaces microblaze_PLCM/Data] [get_bd_addr_segs AXI_GPIO_PLCM_Wire2/S_AXI/Reg] SEG_AXI_MPLC_Wire2_Reg
  create_bd_addr_seg -range 0x00002000 -offset 0xC1000000 [get_bd_addr_spaces microblaze_PLCM/Data] [get_bd_addr_segs axi_bram_ctrl_3_PLCM/S_AXI/Mem0] SEG_axi_bram_ctrl_2_PLCM1_Mem0
  create_bd_addr_seg -range 0x00002000 -offset 0xC2000000 [get_bd_addr_spaces microblaze_PLCM/Data] [get_bd_addr_segs axi_bram_ctrl_2_PLCM/S_AXI/Mem0] SEG_axi_bram_ctrl_2_PLCM_Mem0
  create_bd_addr_seg -range 0x00002000 -offset 0xC0000000 [get_bd_addr_spaces microblaze_PLCM/Data] [get_bd_addr_segs axi_bram_ctrl_1_PLCM/S_AXI/Mem0] SEG_axi_bram_ctrl_MPLC_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_PLCM/Data] [get_bd_addr_segs axi_quad_spi_PLCM/AXI_LITE/Reg] SEG_axi_quad_spi_PLCM_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces microblaze_PLCM/Data] [get_bd_addr_segs axi_uartlite_PLCM/S_AXI/Reg] SEG_axi_uartlite_MPLC_Reg
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_PLCM/Data] [get_bd_addr_segs microblaze_PLCM_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_PLCM/Instruction] [get_bd_addr_segs microblaze_PLCM_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_PLCM/Data] [get_bd_addr_segs microblaze_PLCM_axi_intc/S_AXI/Reg] SEG_microblaze_MPLC_axi_intc_Reg
  create_bd_addr_seg -range 0x00002000 -offset 0xC2000000 [get_bd_addr_spaces microblaze_PLC_Ethernet/Data] [get_bd_addr_segs axi_bram_ctrl_PLC_Ethernet/S_AXI/Mem0] SEG_axi_bram_ctrl_PLC_Ethernet_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_PLC_Ethernet/Data] [get_bd_addr_segs axi_quad_spi_PLC_Ethernet/AXI_LITE/Reg] SEG_axi_quad_spi_PLC_Ethernet_Reg
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_PLC_Ethernet/Data] [get_bd_addr_segs microblaze_PLC_Ethernet_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_PLC_Ethernet/Instruction] [get_bd_addr_segs microblaze_PLC_Ethernet_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_PLC_Ethernet/Data] [get_bd_addr_segs microblaze_PLC_Ethernet_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg
  create_bd_addr_seg -range 0x00002000 -offset 0xC2000000 [get_bd_addr_spaces microblaze_PLC_Ethernet_b/Data] [get_bd_addr_segs axi_bram_ctrl_PLC_Ethernet_b/S_AXI/Mem0] SEG_axi_bram_ctrl_PLC_Ethernet1_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_PLC_Ethernet_b/Data] [get_bd_addr_segs axi_quad_spi_PLC_Ethernet_b/AXI_LITE/Reg] SEG_axi_quad_spi_PLC_Ethernet1_Reg
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_PLC_Ethernet_b/Data] [get_bd_addr_segs microblaze_PLC_Ethernet_local_memory_b/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_PLC_Ethernet_b/Instruction] [get_bd_addr_segs microblaze_PLC_Ethernet_local_memory_b/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_PLC_Ethernet_b/Data] [get_bd_addr_segs microblaze_PLC_Ethernet_axi_intc_b/S_AXI/Reg] SEG_microblaze_PLC_Ethernet_axi_intc1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40030000 [get_bd_addr_spaces microblaze_PLC_RS485/Data] [get_bd_addr_segs AXI_GPIO_PLC_RS485_Uart_Tx/S_AXI/Reg] SEG_AXI_GPIO_PLC_RS485_Uart_Tx_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces microblaze_PLC_RS485/Data] [get_bd_addr_segs AXI_GPIO_PLC_RS485_Wire2/S_AXI/Reg] SEG_AXI_GPIO_PLC_RS485_Wire2_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_PLC_RS485/Data] [get_bd_addr_segs AXI_GPIO_PLC_RS485_Uart_Rx/S_AXI/Reg] SEG_AXI_PLC_Uart_Rx_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40020000 [get_bd_addr_spaces microblaze_PLC_RS485/Data] [get_bd_addr_segs AXI_GPIO_PLC_RS485_Wire1/S_AXI/Reg] SEG_AXI_PLC_Wire1_Reg
  create_bd_addr_seg -range 0x00002000 -offset 0xC0000000 [get_bd_addr_spaces microblaze_PLC_RS485/Data] [get_bd_addr_segs axi_bram_ctrl_PLC_RS485/S_AXI/Mem0] SEG_axi_bram_ctrl_PLC_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces microblaze_PLC_RS485/Data] [get_bd_addr_segs axi_uartlite_PLC_RS485/S_AXI/Reg] SEG_axi_uartlite_PLC_Reg
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_PLC_RS485/Data] [get_bd_addr_segs microblaze_PLC_RS485_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_PLC_RS485/Instruction] [get_bd_addr_segs microblaze_PLC_RS485_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_PLC_RS485/Data] [get_bd_addr_segs microblaze_PLC_RS485_axi_intc/S_AXI/Reg] SEG_microblaze_PLC_axi_intc_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


