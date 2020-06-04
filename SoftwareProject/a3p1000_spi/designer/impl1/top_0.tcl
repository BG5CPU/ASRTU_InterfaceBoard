# Created by Microsemi Libero Software 11.9.2.1
# Tue Dec 03 22:16:48 2019

# (OPEN DESIGN)

open_design "top_0.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "top_0_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\FPGA\a3p1000_spi\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/top_0.edn} -merge_physical "yes" -merge_timing "yes"
compile
report -type "status" {top_0_compile_report.txt}
report -type "pin" -listby "name" {top_0_report_pin_byname.txt}
report -type "pin" -listby "number" {top_0_report_pin_bynumber.txt}

save_design
