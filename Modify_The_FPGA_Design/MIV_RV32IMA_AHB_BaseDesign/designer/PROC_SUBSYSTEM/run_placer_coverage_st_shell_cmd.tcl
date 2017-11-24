read_sdc -scenario "place_and_route" -netlist "user" -pin_separator "/" -ignore_errors {C:/Users/hbreslin/Desktop/Project Workspace/Github/M2S060FG-Creative-Board/Modify_The_FPGA_Design/MIV_RV32IMA_AHB_BaseDesign/designer/PROC_SUBSYSTEM/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {C:\Users\hbreslin\Desktop\Project Workspace\Github\M2S060FG-Creative-Board\Modify_The_FPGA_Design\MIV_RV32IMA_AHB_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM_place_and_route_constraint_coverage.xml}]
set reportfile {C:\Users\hbreslin\Desktop\Project Workspace\Github\M2S060FG-Creative-Board\Modify_The_FPGA_Design\MIV_RV32IMA_AHB_BaseDesign\designer\PROC_SUBSYSTEM\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp
