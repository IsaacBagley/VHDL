##Switches

set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { button }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets button_IBUF]

## LEDs
set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { locked }]; #IO_L18P_T2_A24_15 Sch=led[0]