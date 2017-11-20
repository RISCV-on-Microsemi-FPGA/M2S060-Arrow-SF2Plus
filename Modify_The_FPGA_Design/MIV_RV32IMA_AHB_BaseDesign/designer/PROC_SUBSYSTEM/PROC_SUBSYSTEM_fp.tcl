new_project \
         -name {PROC_SUBSYSTEM} \
         -location {C:\Users\hbreslin\Desktop\Project Workspace\My projects\M2S060\Modify_The_FPGA_Design\CoreMIV\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S060} \
         -name {M2S060}
enable_device \
         -name {M2S060} \
         -enable {TRUE}
save_project
close_project
