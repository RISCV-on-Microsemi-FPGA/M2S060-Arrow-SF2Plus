new_project \
         -name {PROC_SUBSYSTEM} \
         -location {C:\Users\ciaran.lappin\Downloads\CreativeRes\M2S060-Arrow-SF2Plus-master\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM_fp} \
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
