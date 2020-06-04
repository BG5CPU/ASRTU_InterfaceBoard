# Created by Microsemi Libero Software 11.9.5.5
# Mon Mar 16 09:49:36 2020

# (OPEN DESIGN)

open_design "piu_top_1.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "piu_top_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\Work_space\libero_soc\FPGA\a3p1000_CAN\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


layout -timing_driven
report -type "status" {piu_top_place_and_route_report.txt}
report -type "globalnet" {piu_top_globalnet_report.txt}
report -type "globalusage" {piu_top_globalusage_report.txt}
report -type "iobank" {piu_top_iobank_report.txt}
report -type "pin" -listby "name" {piu_top_report_pin_byname.txt}
report -type "pin" -listby "number" {piu_top_report_pin_bynumber.txt}

save_design
