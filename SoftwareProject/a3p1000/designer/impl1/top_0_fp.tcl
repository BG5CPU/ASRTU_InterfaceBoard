new_project \
    -name {top_0} \
    -location {D:\FPGA\a3p1000\designer\impl1\top_0_fp} \
    -mode {single}
set_programming_file -file {D:\FPGA\a3p1000\designer\impl1\top_0.pdb}
set_programming_action -action {PROGRAM}
run_selected_actions
save_project
close_project
