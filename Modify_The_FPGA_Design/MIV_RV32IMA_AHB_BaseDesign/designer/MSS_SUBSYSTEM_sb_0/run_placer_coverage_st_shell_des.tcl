set_device \
    -family  SmartFusion2 \
    -die     PA4M6000_N \
    -package fg484 \
    -speed   STD \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def {RTG4_MITIGATION_ON} {0}
set_def USE_CONSTRAINTS_FLOW 1
set_def NETLIST_TYPE EDIF
set_name MSS_SUBSYSTEM_sb_0
set_workdir {C:\Users\hbreslin\Desktop\Project Workspace\My projects\M2S090\M2S060\designer\MSS_SUBSYSTEM_sb_0}
set_log     {C:\Users\hbreslin\Desktop\Project Workspace\My projects\M2S090\M2S060\designer\MSS_SUBSYSTEM_sb_0\MSS_SUBSYSTEM_sb_0_coverage_pr.log}
set_design_state pre_layout
