# Created by Microsemi Libero Software 11.9.2.1
# Mon Apr 08 21:58:00 2019

# (OPEN DESIGN)

open_design "tcl.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "tcl_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\FPGA\a3p1000_CAN\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


layout -timing_driven
report -type "status" {tcl_place_and_route_report.txt}
report -type "globalnet" {tcl_globalnet_report.txt}
report -type "globalusage" {tcl_globalusage_report.txt}
report -type "iobank" {tcl_iobank_report.txt}
report -type "pin" -listby "name" {tcl_report_pin_byname.txt}
report -type "pin" -listby "number" {tcl_report_pin_bynumber.txt}

save_design
