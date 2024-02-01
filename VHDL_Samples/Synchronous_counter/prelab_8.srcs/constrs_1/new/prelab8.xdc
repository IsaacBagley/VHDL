##Pmod Header JB

set_property -dict { PACKAGE_PIN D14 IOSTANDARD LVCMOS33 } [get_ports { OE }]; #IO_L1P_T0_AD0P_15 Sch=jb[1]

set_property -dict { PACKAGE_PIN F16 IOSTANDARD LVCMOS33 } [get_ports { ACLR }]; #IO_L14N_T2_SRCC_15 Sch=jb[2]

set_property -dict { PACKAGE_PIN G16 IOSTANDARD LVCMOS33 } [get_ports { CLK }]; #IO_L13N_T2_MRCC_15 Sch=jb[3]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {CLK_IBUF}]

set_property -dict { PACKAGE_PIN H14 IOSTANDARD LVCMOS33 } [get_ports { ALOAD }]; #IO_L15P_T2_DQS_15 Sch=jb[4]

set_property -dict { PACKAGE_PIN E16 IOSTANDARD LVCMOS33 } [get_ports { SCLR }]; #IO_L11N_T1_SRCC_15 Sch=jb[7]

set_property -dict { PACKAGE_PIN F13 IOSTANDARD LVCMOS33 } [get_ports { SLOAD }]; #IO_L5P_T0_AD9P_15 Sch=jb[8]

set_property -dict { PACKAGE_PIN G13 IOSTANDARD LVCMOS33 } [get_ports { ENT }]; #IO_0_15 Sch=jb[9]

set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports { ENP }]; #IO_L13P_T2_MRCC_15 Sch=jb[10]


##Pmod Header JA

set_property -dict { PACKAGE_PIN C17 IOSTANDARD LVCMOS33 } [get_ports { A[0] }]; #IO_L20N_T3_A19_15 Sch=ja[1]

set_property -dict { PACKAGE_PIN D18 IOSTANDARD LVCMOS33 } [get_ports { A[1] }]; #IO_L21N_T3_DQS_A18_15 Sch=ja[2]

set_property -dict { PACKAGE_PIN E18 IOSTANDARD LVCMOS33 } [get_ports { A[2] }]; #IO_L21P_T3_DQS_15 Sch=ja[3]

set_property -dict { PACKAGE_PIN G17 IOSTANDARD LVCMOS33 } [get_ports { A[3] }]; #IO_L18N_T2_A23_15 Sch=ja[4]

set_property -dict { PACKAGE_PIN D17 IOSTANDARD LVCMOS33 } [get_ports { Q[0] }]; #IO_L16N_T2_A27_15 Sch=ja[7]

set_property -dict { PACKAGE_PIN E17 IOSTANDARD LVCMOS33 } [get_ports { Q[1] }]; #IO_L16P_T2_A28_15 Sch=ja[8]

set_property -dict { PACKAGE_PIN F18 IOSTANDARD LVCMOS33 } [get_ports { Q[2] }]; #IO_L22N_T3_A16_15 Sch=ja[9]

set_property -dict { PACKAGE_PIN G18 IOSTANDARD LVCMOS33 } [get_ports { Q[3] }]; #IO_L22P_T3_A17_15 Sch=ja[10]


##Pmod Header JC

set_property -dict { PACKAGE_PIN K1 IOSTANDARD LVCMOS33 } [get_ports { RCO }]; #IO_L23N_T3_35 Sch=jc[1]

set_property -dict { PACKAGE_PIN F6 IOSTANDARD LVCMOS33 } [get_ports { CCO }]; #IO_L19N_T3_VREF_35 Sch=jc[2]
