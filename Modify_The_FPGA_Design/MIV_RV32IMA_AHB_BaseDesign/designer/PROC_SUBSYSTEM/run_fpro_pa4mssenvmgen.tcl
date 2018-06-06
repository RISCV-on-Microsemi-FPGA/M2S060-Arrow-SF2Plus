set_device \
    -fam SmartFusion2 \
    -die PA4M6000_N \
    -pkg fg484
set_input_cfg \
	-path {C:/Users/ciaran.lappin/Desktop/ExtHelp/TimMorin/M2S060-Arrow-SF2Plus-master/Modify_The_FPGA_Design/CoreRISCV_AXI4_BaseDesign/component/work/MSS_SUBSYSTEM_sb_MSS/ENVM.cfg}
set_output_efc \
    -path {C:\Users\ciaran.lappin\Desktop\ExtHelp\TimMorin\M2S060-Arrow-SF2Plus-master\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.efc}
set_proj_dir \
    -path {C:\Users\ciaran.lappin\Desktop\ExtHelp\TimMorin\M2S060-Arrow-SF2Plus-master\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign}
gen_prg -use_init false
