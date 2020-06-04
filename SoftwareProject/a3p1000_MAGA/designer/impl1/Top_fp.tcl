new_project \
    -name {Top} \
    -location {D:\FPGA\a3p1000_MAGA\designer\impl1\Top_fp} \
    -mode {single}
set_programming_file -file {D:\FPGA\a3p1000_MAGA\designer\impl1\Top.pdb}
set_programming_action -action {PROGRAM}
run_selected_actions
save_project
close_project
