##Switches

#set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { SW[0] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]

#set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports { SW[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]

set_property -dict { PACKAGE_PIN M13 IOSTANDARD LVCMOS33 } [get_ports { b }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]

set_property -dict { PACKAGE_PIN R15 IOSTANDARD LVCMOS33 } [get_ports { a }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]

#set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 } [get_ports { SW[4] }]; #IO_L12N_T1_MRCC_14 Sch=sw[4]

#set_property -dict { PACKAGE_PIN T18 IOSTANDARD LVCMOS33 } [get_ports { SW[5] }]; #IO_L7N_T1_D10_14 Sch=sw[5]

#set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports { SW[6] }]; #IO_L17N_T2_A13_D29_14 Sch=sw[6]

#set_property -dict { PACKAGE_PIN R13 IOSTANDARD LVCMOS33 } [get_ports { SW[7] }]; #IO_L5N_T0_D07_14 Sch=sw[7]

set_property -dict { PACKAGE_PIN T8 IOSTANDARD LVCMOS18 } [get_ports { s[0] }]; #IO_L24N_T3_34 Sch=sw[8]
#added for task 2
set_property -dict { PACKAGE_PIN U8 IOSTANDARD LVCMOS18 } [get_ports { s[1] }]; #IO_25_34 Sch=sw[9]
#added for task 2

##Pmod Header JB

set_property -dict { PACKAGE_PIN D14 IOSTANDARD LVCMOS33 } [get_ports { sum }]; #IO_L1P_T0_AD0P_15 Sch=jb[1]

set_property -dict { PACKAGE_PIN F16 IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L14N_T2_SRCC_15 Sch=jb[2]
#output for the reset signal going to MR#
set_property -dict { PACKAGE_PIN G16 IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13N_T2_MRCC_15 Sch=jb[3]
#command to make input a global clock
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {clk_IBUF}]

#set_property -dict { PACKAGE_PIN H14 IOSTANDARD LVCMOS33 } [get_ports { JB[4] }]; #IO_L15P_T2_DQS_15 Sch=jb[4]

set_property -dict { PACKAGE_PIN E16 IOSTANDARD LVCMOS33 } [get_ports { s_out[0] }]; #IO_L11N_T1_SRCC_15 Sch=jb[7]
#added for task 2
set_property -dict { PACKAGE_PIN F13 IOSTANDARD LVCMOS33 } [get_ports { s_out[1] }]; #IO_L5P_T0_AD9P_15 Sch=jb[8]
#added for task 2
set_property -dict { PACKAGE_PIN G13 IOSTANDARD LVCMOS33 } [get_ports { parallelWrite }]; #IO_0_15 Sch=jb[9]
#added for task 2
#set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports { JB[10] }]; #IO_L13P_T2_MRCC_15 Sch=jb[10]


##Buttons

set_property -dict { PACKAGE_PIN P17 IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L12P_T1_MRCC_14 Sch=btnl
# the input for the reset signal
#set_property -dict { PACKAGE_PIN P17 IOSTANDARD LVCMOS33 } [get_ports { MR }]; #IO_L12P_T1_MRCC_14 Sch=btnl


## LEDs
#LEDs used for debugging purposes
set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { sum }]; #IO_L18P_T2_A24_15 Sch=led[0]

set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33 } [get_ports { cy }]; #IO_L24P_T3_RS1_15 Sch=led[1]
