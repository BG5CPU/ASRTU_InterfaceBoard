quietly set ACTELLIBNAME ProASIC3
quietly set PROJECT_DIR "D:/FPGA/a3p1000"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
vmap proasic3 "D:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/proasic3"
if {[file exists COREAPB3_LIB/_info]} {
   echo "INFO: Simulation library COREAPB3_LIB already exists"
} else {
   file delete -force COREAPB3_LIB 
   vlib COREAPB3_LIB
}
vmap COREAPB3_LIB "COREAPB3_LIB"

vlog -vlog01compat -work postsynth "${PROJECT_DIR}/synthesis/top_0.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work postsynth "${PROJECT_DIR}/stimulus/my_test.v"

vsim -L proasic3 -L postsynth -L COREAPB3_LIB  -t 1ps postsynth.my_test
add wave /my_test/*
run 10ms
