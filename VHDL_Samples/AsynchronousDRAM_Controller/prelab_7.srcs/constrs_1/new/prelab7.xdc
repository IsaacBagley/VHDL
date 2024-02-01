## Clock signal

set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { clock }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets RESET_IBUF]

create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clock}];

##Pmod Header JC

set_property -dict { PACKAGE_PIN K1 IOSTANDARD LVCMOS33 } [get_ports { R_cmd }]; #IO_L23N_T3_35 Sch=jc[1]

set_property -dict { PACKAGE_PIN F6 IOSTANDARD LVCMOS33 } [get_ports { W_cmd }]; #IO_L19N_T3_VREF_35 Sch=jc[2]

set_property -dict { PACKAGE_PIN J2 IOSTANDARD LVCMOS33 } [get_ports { mux_sel }]; #IO_L22N_T3_35 Sch=jc[3]

set_property -dict { PACKAGE_PIN G6 IOSTANDARD LVCMOS33 } [get_ports { CAS }]; #IO_L19P_T3_35 Sch=jc[4]

set_property -dict { PACKAGE_PIN E7 IOSTANDARD LVCMOS33 } [get_ports { RAS }]; #IO_L6P_T0_35 Sch=jc[7]

set_property -dict { PACKAGE_PIN J3 IOSTANDARD LVCMOS33 } [get_ports { W }]; #IO_L22P_T3_35 Sch=jc[8]

#set_property -dict { PACKAGE_PIN J4 IOSTANDARD LVCMOS33 } [get_ports { JC[9] }]; #IO_L21P_T3_DQS_35 Sch=jc[9]

#set_property -dict { PACKAGE_PIN E6 IOSTANDARD LVCMOS33 } [get_ports { clock }]; #IO_L5P_T0_AD13P_35 Sch=jc[10]

##Buttons

set_property -dict { PACKAGE_PIN C12 IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn