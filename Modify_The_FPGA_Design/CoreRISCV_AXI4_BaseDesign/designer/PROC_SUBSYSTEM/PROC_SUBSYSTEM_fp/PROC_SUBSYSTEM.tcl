open_project -project {C:\Users\ciaran.lappin\Downloads\CreativeRes\M2S060-Arrow-SF2Plus-master\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM_fp\PROC_SUBSYSTEM.pro}\
         -connect_programmers {FALSE}
if { [catch {load_programming_data \
    -name {M2S060} \
    -fpga {C:\Users\ciaran.lappin\Downloads\CreativeRes\M2S060-Arrow-SF2Plus-master\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.map} \
    -header {C:\Users\ciaran.lappin\Downloads\CreativeRes\M2S060-Arrow-SF2Plus-master\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.hdr} \
    -envm {C:\Users\ciaran.lappin\Downloads\CreativeRes\M2S060-Arrow-SF2Plus-master\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.efc}  \
    -spm {C:\Users\ciaran.lappin\Downloads\CreativeRes\M2S060-Arrow-SF2Plus-master\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.spm} \
    -dca {C:\Users\ciaran.lappin\Downloads\CreativeRes\M2S060-Arrow-SF2Plus-master\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.dca} } return_val] } {
save_project
close_project
exit }
export_single_stapl \
    -name {M2S060} \
    -file {C:\Users\ciaran.lappin\Downloads\CreativeRes\M2S060-Arrow-SF2Plus-master\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\designer\PROC_SUBSYSTEM\export\PROC_SUBSYSTEM_BaseDesign_M2S060.stp} \
    -secured
set_programming_file -name {M2S060} -no_file
save_project
close_project
