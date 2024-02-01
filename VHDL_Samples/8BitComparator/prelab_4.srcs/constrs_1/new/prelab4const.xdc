#Switches

set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { arith }]; #IO_L24N_T3_RS0_15 Sch=sw[0]

set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports { ahighin }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]

set_property -dict { PACKAGE_PIN M13 IOSTANDARD LVCMOS33 } [get_ports { bhighin }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]


#Pmod Header JA for input a

set_property -dict { PACKAGE_PIN C17 IOSTANDARD LVCMOS33 } [get_ports { a[0] }]; #IO_L20N_T3_A19_15 Sch=ja[1]

set_property -dict { PACKAGE_PIN D18 IOSTANDARD LVCMOS33 } [get_ports { a[1] }]; #IO_L21N_T3_DQS_A18_15 Sch=ja[2]

set_property -dict { PACKAGE_PIN E18 IOSTANDARD LVCMOS33 } [get_ports { a[2] }]; #IO_L21P_T3_DQS_15 Sch=ja[3]

set_property -dict { PACKAGE_PIN G17 IOSTANDARD LVCMOS33 } [get_ports { a[3] }]; #IO_L18N_T2_A23_15 Sch=ja[4]

set_property -dict { PACKAGE_PIN D17 IOSTANDARD LVCMOS33 } [get_ports { a[4] }]; #IO_L16N_T2_A27_15 Sch=ja[7]

set_property -dict { PACKAGE_PIN E17 IOSTANDARD LVCMOS33 } [get_ports { a[5] }]; #IO_L16P_T2_A28_15 Sch=ja[8]

set_property -dict { PACKAGE_PIN F18 IOSTANDARD LVCMOS33 } [get_ports { a[6] }]; #IO_L22N_T3_A16_15 Sch=ja[9]

set_property -dict { PACKAGE_PIN G18 IOSTANDARD LVCMOS33 } [get_ports { a[7] }]; #IO_L22P_T3_A17_15 Sch=ja[10]


#Pmod Header JB for input b

set_property -dict { PACKAGE_PIN D14 IOSTANDARD LVCMOS33 } [get_ports { b[0] }]; #IO_L1P_T0_AD0P_15 Sch=jb[1]

set_property -dict { PACKAGE_PIN F16 IOSTANDARD LVCMOS33 } [get_ports { b[1] }]; #IO_L14N_T2_SRCC_15 Sch=jb[2]

set_property -dict { PACKAGE_PIN G16 IOSTANDARD LVCMOS33 } [get_ports { b[2] }]; #IO_L13N_T2_MRCC_15 Sch=jb[3]

set_property -dict { PACKAGE_PIN H14 IOSTANDARD LVCMOS33 } [get_ports { b[3] }]; #IO_L15P_T2_DQS_15 Sch=jb[4]

set_property -dict { PACKAGE_PIN E16 IOSTANDARD LVCMOS33 } [get_ports { b[4] }]; #IO_L11N_T1_SRCC_15 Sch=jb[7]

set_property -dict { PACKAGE_PIN F13 IOSTANDARD LVCMOS33 } [get_ports { b[5] }]; #IO_L5P_T0_AD9P_15 Sch=jb[8]

set_property -dict { PACKAGE_PIN G13 IOSTANDARD LVCMOS33 } [get_ports { b[6] }]; #IO_0_15 Sch=jb[9]

set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports { b[7] }]; #IO_L13P_T2_MRCC_15 Sch=jb[10]


#Pmod Header JC

set_property -dict { PACKAGE_PIN K1 IOSTANDARD LVCMOS33 } [get_ports { ahigh }]; #IO_L23N_T3_35 Sch=jc[1]

set_property -dict { PACKAGE_PIN F6 IOSTANDARD LVCMOS33 } [get_ports { bhigh }]; #IO_L19N_T3_VREF_35 Sch=jc[2]

#set_property -dict { PACKAGE_PIN J2 IOSTANDARD LVCMOS33 } [get_ports { arith }]; #IO_L22N_T3_35 Sch=jc[3]

#set_property -dict { PACKAGE_PIN G3 IOSTANDARD LVCMOS33 } [get_ports { JD[4] }]; #IO_L20N_T3_35 Sch=jd[4]

#set_property -dict { PACKAGE_PIN H2 IOSTANDARD LVCMOS33 } [get_ports { ahgihin }]; #IO_L15P_T2_DQS_35 Sch=jd[7]

#set_property -dict { PACKAGE_PIN G4 IOSTANDARD LVCMOS33 } [get_ports { bhighin }]; #IO_L20P_T3_35 Sch=jd[8]