project_specify_options -format verilog -severity note -version 95
project_specify_options -format vhdl -severity note -version 93
project_specify_libraries -resource {STD {$LEDA_PATH/amd64/resources/resource_93/STD}} -format vhdl -append
project_specify_libraries -resource {IEEE {$LEDA_PATH/amd64/resources/resource_93/IEEE}} -format vhdl -append
project_specify_libraries -resource {SYNOPSYS {$LEDA_PATH/amd64/resources/resource_93/SYNOPSYS}} -format vhdl -append
project_specify_libraries -resource {SNPS_EXT {$LEDA_PATH/amd64/resources/resource_93/SNPS_EXT}} -format vhdl -append
project_specify_files -format vhdl -work LEDA_WORK -file_extension {.vhd .vhdl} {/home/ecegrid/a/mg34/ece337/Lab6/source/DECODE.vhd /home/ecegrid/a/mg34/ece337/Lab6/source/EDGE_DETECT.vhd /home/ecegrid/a/mg34/ece337/Lab6/source/EOP_DETECT.vhd /home/ecegrid/a/mg34/ece337/Lab6/source/RCU.vhd /home/ecegrid/a/mg34/ece337/Lab6/source/RCV_FIFO.vhd /home/ecegrid/a/mg34/ece337/Lab6/source/SHIFT_REG.vhd /home/ecegrid/a/mg34/ece337/Lab6/source/TIMER.vhd /home/ecegrid/a/mg34/ece337/Lab6/source/USB_RCVR.vhd}
project_specify_libraries -format vhdl -resource {{IEEE {$LEDA_PATH/amd64/resources/resource_93/IEEE}} {SNPS_EXT {$LEDA_PATH/amd64/resources/resource_93/SNPS_EXT}} {STD {$LEDA_PATH/amd64/resources/resource_93/STD}} {SYNOPSYS {$LEDA_PATH/amd64/resources/resource_93/SYNOPSYS}} }
read_files /home/ecegrid/a/mg34/ece337/Lab6/source/RCU.vhd -work LEDA_WORK
read_files /home/ecegrid/a/mg34/ece337/Lab6/source/RCU.vhd -work LEDA_WORK
read_files /home/ecegrid/a/mg34/ece337/Lab6/source/DECODE.vhd -work LEDA_WORK
read_files /home/ecegrid/a/mg34/ece337/Lab6/source/EDGE_DETECT.vhd -work LEDA_WORK
