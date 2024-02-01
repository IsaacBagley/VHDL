##Switches

set_property -dict { PACKAGE_PIN T13 IOSTANDARD LVCMOS33 } [get_ports { LT }]; #IO_L23P_T3_A03_D19_14 Sch=sw[11]

set_property -dict { PACKAGE_PIN H6 IOSTANDARD LVCMOS33 } [get_ports { Ai }]; #IO_L24P_T3_35 Sch=sw[12]

set_property -dict { PACKAGE_PIN U12 IOSTANDARD LVCMOS33 } [get_ports { Bi }]; #IO_L20P_T3_A08_D24_14 Sch=sw[13]

set_property -dict { PACKAGE_PIN U11 IOSTANDARD LVCMOS33 } [get_ports { Ci }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=sw[14]

set_property -dict { PACKAGE_PIN V10 IOSTANDARD LVCMOS33 } [get_ports { Di }]; #IO_L21P_T3_DQS_14 Sch=sw[15]

## LEDs

set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { g }]; #IO_L18P_T2_A24_15 Sch=led[0]

set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33 } [get_ports { f }]; #IO_L24P_T3_RS1_15 Sch=led[1]

set_property -dict { PACKAGE_PIN J13 IOSTANDARD LVCMOS33 } [get_ports { e }]; #IO_L17N_T2_A25_15 Sch=led[2]

set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33 } [get_ports { d }]; #IO_L8P_T1_D11_14 Sch=led[3]

set_property -dict { PACKAGE_PIN R18 IOSTANDARD LVCMOS33 } [get_ports { c }]; #IO_L7P_T1_D09_14 Sch=led[4]

set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33 } [get_ports { b }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]

set_property -dict { PACKAGE_PIN U17 IOSTANDARD LVCMOS33 } [get_ports { a }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
