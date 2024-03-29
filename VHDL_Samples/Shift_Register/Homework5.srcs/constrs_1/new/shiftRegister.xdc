##Switches

set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { clr }]; #IO_L24N_T3_RS0_15 Sch=sw[0]

set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports { s[0] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]

set_property -dict { PACKAGE_PIN M13 IOSTANDARD LVCMOS33 } [get_ports { s[1] }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]

set_property -dict { PACKAGE_PIN R15 IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {clk_IBUF}]


#set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 } [get_ports { SW[4] }]; #IO_L12N_T1_MRCC_14 Sch=sw[4]

#set_property -dict { PACKAGE_PIN T18 IOSTANDARD LVCMOS33 } [get_ports { SW[5] }]; #IO_L7N_T1_D10_14 Sch=sw[5]

#set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports { SW[6] }]; #IO_L17N_T2_A13_D29_14 Sch=sw[6]

set_property -dict { PACKAGE_PIN R13 IOSTANDARD LVCMOS33 } [get_ports { sl }]; #IO_L5N_T0_D07_14 Sch=sw[7]

set_property -dict { PACKAGE_PIN T8 IOSTANDARD LVCMOS18 } [get_ports { sr }]; #IO_L24N_T3_34 Sch=sw[8]

#set_property -dict { PACKAGE_PIN U8 IOSTANDARD LVCMOS18 } [get_ports { SW[9] }]; #IO_25_34 Sch=sw[9]

#set_property -dict { PACKAGE_PIN R16 IOSTANDARD LVCMOS33 } [get_ports { SW[10] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=sw[10]

#set_property -dict { PACKAGE_PIN T13 IOSTANDARD LVCMOS33 } [get_ports { SW[11] }]; #IO_L23P_T3_A03_D19_14 Sch=sw[11]

set_property -dict { PACKAGE_PIN H6 IOSTANDARD LVCMOS33 } [get_ports { p[0] }]; #IO_L24P_T3_35 Sch=sw[12]

set_property -dict { PACKAGE_PIN U12 IOSTANDARD LVCMOS33 } [get_ports { p[1] }]; #IO_L20P_T3_A08_D24_14 Sch=sw[13]

set_property -dict { PACKAGE_PIN U11 IOSTANDARD LVCMOS33 } [get_ports { p[2] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=sw[14]

set_property -dict { PACKAGE_PIN V10 IOSTANDARD LVCMOS33 } [get_ports { p[3] }]; #IO_L21P_T3_DQS_14 Sch=sw[15]


## LEDs

set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { q0 }]; #IO_L18P_T2_A24_15 Sch=led[0]

set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33 } [get_ports { q1 }]; #IO_L24P_T3_RS1_15 Sch=led[1]

set_property -dict { PACKAGE_PIN J13 IOSTANDARD LVCMOS33 } [get_ports { q2 }]; #IO_L17N_T2_A25_15 Sch=led[2]

set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33 } [get_ports { q3 }]; #IO_L8P_T1_D11_14 Sch=led[3]