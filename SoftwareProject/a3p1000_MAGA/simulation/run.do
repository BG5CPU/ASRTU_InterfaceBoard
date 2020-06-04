quietly set ACTELLIBNAME ProASIC3
quietly set PROJECT_DIR "D:/FPGA/a3p1000_MAGA"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
vmap proasic3 "D:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/proasic3"

vlog -vlog01compat -work postsynth "${PROJECT_DIR}/synthesis/Top.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work postsynth "${PROJECT_DIR}/stimulus/MY_test.v"

vsim -L proasic3 -L postsynth  -t 1ps postsynth.MY_test
add wave /MY_test/*
run 10ms
