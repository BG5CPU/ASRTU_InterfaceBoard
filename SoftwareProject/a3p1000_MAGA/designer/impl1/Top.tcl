# Created by Microsemi Libero Software 11.9.2.1
# Tue Jul 16 18:25:37 2019

# (OPEN DESIGN)

open_design "Top.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "Top_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\FPGA\a3p1000_MAGA\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/Top.edn} -merge_physical "yes" -merge_timing "yes"
compile
report -type "status" {Top_compile_report.txt}
report -type "pin" -listby "name" {Top_report_pin_byname.txt}
report -type "pin" -listby "number" {Top_report_pin_bynumber.txt}

save_design
