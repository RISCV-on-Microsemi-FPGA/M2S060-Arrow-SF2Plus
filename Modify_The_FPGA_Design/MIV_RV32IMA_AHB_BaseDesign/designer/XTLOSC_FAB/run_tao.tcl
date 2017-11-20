set_family {SmartFusion2}
set_top_level -lib work {XTLOSC_FAB}
map_netlist
read_sdc {C:\Users\hbreslin\Desktop\Project Workspace\My projects\M2S060\Modify_The_FPGA_Design\CoreMIV\constraint\user.sdc}
check_constraints {C:\Users\hbreslin\Desktop\Project Workspace\My projects\M2S060\Modify_The_FPGA_Design\CoreMIV\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\hbreslin\Desktop\Project Workspace\My projects\M2S060\Modify_The_FPGA_Design\CoreMIV\designer\XTLOSC_FAB\synthesis.fdc}
