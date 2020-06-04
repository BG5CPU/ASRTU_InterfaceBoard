# Created by Microsemi Libero Software 11.9.2.1
# Fri Feb 08 18:15:52 2019

# (OPEN DESIGN)

open_design "My_spi.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "My_spi_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\FPGA\a3p1000_spi\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VERILOG" -netlist

save_design
