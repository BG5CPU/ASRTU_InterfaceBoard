# Created by Microsemi Libero Software 11.9.2.1
# Sun Feb 03 15:47:43 2019

# (OPEN DESIGN)

open_design "myUART.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "myUART_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\FPGA\a3p1000\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


layout -timing_driven
report -type "status" {myUART_place_and_route_report.txt}
report -type "globalnet" {myUART_globalnet_report.txt}
report -type "globalusage" {myUART_globalusage_report.txt}
report -type "iobank" {myUART_iobank_report.txt}
report -type "pin" -listby "name" {myUART_report_pin_byname.txt}
report -type "pin" -listby "number" {myUART_report_pin_bynumber.txt}

save_design
