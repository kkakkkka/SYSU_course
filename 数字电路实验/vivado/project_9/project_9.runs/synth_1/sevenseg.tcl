# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/marse/Documents/digit/project_9/project_9.cache/wt [current_project]
set_property parent.project_path C:/Users/marse/Documents/digit/project_9/project_9.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib C:/Users/marse/Documents/digit/project_9/project_9.srcs/sources_1/new/sevenseg.v
read_xdc C:/Users/marse/Documents/digit/project_9/project_9.srcs/constrs_1/new/sevenseg.xdc
set_property used_in_implementation false [get_files C:/Users/marse/Documents/digit/project_9/project_9.srcs/constrs_1/new/sevenseg.xdc]

synth_design -top sevenseg -part xc7a35tcpg236-1
write_checkpoint -noxdef sevenseg.dcp
catch { report_utilization -file sevenseg_utilization_synth.rpt -pb sevenseg_utilization_synth.pb }
