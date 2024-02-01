##Switches

set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L24N_T3_RS0_15 Sch=sw[0]

##Pmod Header JB

set_property -dict { PACKAGE_PIN D14 IOSTANDARD LVCMOS33 } [get_ports { x1 }]; #IO_L1P_T0_AD0P_15 Sch=jb[1]

set_property -dict { PACKAGE_PIN F16 IOSTANDARD LVCMOS33 } [get_ports { x2 }]; #IO_L14N_T2_SRCC_15 Sch=jb[2]



#bottom row of JB
set_property -dict { PACKAGE_PIN E16 IOSTANDARD LVCMOS33 } [get_ports { y1 }]; #IO_L11N_T1_SRCC_15 Sch=jb[7]

set_property -dict { PACKAGE_PIN F13 IOSTANDARD LVCMOS33 } [get_ports { y2 }]; #IO_L5P_T0_AD9P_15 Sch=jb[8]

set_property -dict { PACKAGE_PIN G13 IOSTANDARD LVCMOS33 } [get_ports { y3 }]; #IO_0_15 Sch=jb[9]

set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports { z }]; #IO_L13P_T2_MRCC_15 Sch=jb[10]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {y2_OBUF}]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {y1_OBUF}]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {y3_OBUF}]