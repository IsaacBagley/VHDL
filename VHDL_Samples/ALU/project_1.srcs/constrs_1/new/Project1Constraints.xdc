##Switches

set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L24N_T3_RS0_15 Sch=sw[0]

set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports { START }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]

## LEDs

set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { DONE }]; #IO_L18P_T2_A24_15 Sch=led[0]

set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33 } [get_ports { OVF }]; #IO_L24P_T3_RS1_15 Sch=led[1]

set_property -dict { PACKAGE_PIN J13 IOSTANDARD LVCMOS33 } [get_ports { OP_LD }]; #IO_L17N_T2_A25_15 Sch=led[2]

set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33 } [get_ports { RES_LD }]; #IO_L8P_T1_D11_14 Sch=led[3]


##Pmod Headers

##Pmod Header JA

set_property -dict { PACKAGE_PIN C17 IOSTANDARD LVCMOS33 } [get_ports { SRCT2[0] }]; #IO_L20N_T3_A19_15 Sch=ja[1]

set_property -dict { PACKAGE_PIN D18 IOSTANDARD LVCMOS33 } [get_ports { SRCT2[1] }]; #IO_L21N_T3_DQS_A18_15 Sch=ja[2]

set_property -dict { PACKAGE_PIN E18 IOSTANDARD LVCMOS33 } [get_ports { BUFFEN2 }]; #IO_L21P_T3_DQS_15 Sch=ja[3]




##Pmod Header JB

#set_property -dict { PACKAGE_PIN D14 IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L1P_T0_AD0P_15 Sch=jb[1]

#set_property -dict { PACKAGE_PIN F16 IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L14N_T2_SRCC_15 Sch=jb[2]

set_property -dict { PACKAGE_PIN G16 IOSTANDARD LVCMOS33 } [get_ports { CLK }]; #IO_L13N_T2_MRCC_15 Sch=jb[3]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {CLK_IBUF}]


#set_property -dict { PACKAGE_PIN H14 IOSTANDARD LVCMOS33 } [get_ports { JB[4] }]; #IO_L15P_T2_DQS_15 Sch=jb[4]

set_property -dict { PACKAGE_PIN E16 IOSTANDARD LVCMOS33 } [get_ports { OP1_IN }]; #IO_L11N_T1_SRCC_15 Sch=jb[7]

set_property -dict { PACKAGE_PIN F13 IOSTANDARD LVCMOS33 } [get_ports { OP2_IN }]; #IO_L5P_T0_AD9P_15 Sch=jb[8]

#set_property -dict { PACKAGE_PIN G13 IOSTANDARD LVCMOS33 } [get_ports { JB[9] }]; #IO_0_15 Sch=jb[9]

#set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports { JB[10] }]; #IO_L13P_T2_MRCC_15 Sch=jb[10]



##Pmod Header JC

set_property -dict { PACKAGE_PIN K1 IOSTANDARD LVCMOS33 } [get_ports { SRCT1[0] }]; #IO_L23N_T3_35 Sch=jc[1]

set_property -dict { PACKAGE_PIN F6 IOSTANDARD LVCMOS33 } [get_ports { SRCT1[1] }]; #IO_L19N_T3_VREF_35 Sch=jc[2]

set_property -dict { PACKAGE_PIN J2 IOSTANDARD LVCMOS33 } [get_ports { BUFFEN1 }]; #IO_L22N_T3_35 Sch=jc[3]

set_property -dict { PACKAGE_PIN G6 IOSTANDARD LVCMOS33 } [get_ports { RES_OUT }]; #IO_L19P_T3_35 Sch=jc[4]

#set_property -dict { PACKAGE_PIN E7 IOSTANDARD LVCMOS33 } [get_ports { JC[7] }]; #IO_L6P_T0_35 Sch=jc[7]

#set_property -dict { PACKAGE_PIN J3 IOSTANDARD LVCMOS33 } [get_ports { JC[8] }]; #IO_L22P_T3_35 Sch=jc[8]

#set_property -dict { PACKAGE_PIN J4 IOSTANDARD LVCMOS33 } [get_ports { JC[9] }]; #IO_L21P_T3_DQS_35 Sch=jc[9]

#set_property -dict { PACKAGE_PIN E6 IOSTANDARD LVCMOS33 } [get_ports { JC[10] }]; #IO_L5P_T0_AD13P_35 Sch=jc[10]
