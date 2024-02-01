#RESET 
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L21P_T3_DQS_14 Sch=sw[0]
#set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn 
## Clock signal
#set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { CLK }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK}];

set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { CLK }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLK_IBUF]
#Outputs 
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { RDY }]; #IO_L18P_T2_A24_15 Sch=led[0] 
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { OT }]; #IO_L24P_T3_RS1_15 Sch=led[1] 
#Inputs 
#set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { INP }]; #IO_L20N_T3_A19_15 Sch=ja[1] 
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { CS }]; #IO_L21N_T3_DQS_A18_15 Sch=ja[2] 
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { A1 }]; #IO_L21P_T3_DQS_15 Sch=ja[3] 
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { A0 }]; #IO_L18N_T2_A23_15 Sch=ja[4] 
set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { WR }]; #IO_L16N_T2_A27_15 Sch=ja[7] 
set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { RD }]; #IO_L16P_T2_A28_15 Sch=ja[8] 
set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { BUF_EN }]; #IO_L22N_T3_A16_15 Sch=ja[9] 
#D7-D0 Inputs 
set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { D[0] }]; #IO_L23N_T3_35 Sch=jc[1] 
set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { D[1] }]; #IO_L19N_T3_VREF_35 Sch=jc[2] 
set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { D[2] }]; #IO_L22N_T3_35 Sch=jc[3] 
set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { D[3] }]; #IO_L19P_T3_35 Sch=jc[4] 
set_property -dict { PACKAGE_PIN E7    IOSTANDARD LVCMOS33 } [get_ports { D[4] }]; #IO_L6P_T0_35 Sch=jc[7] 
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { D[5] }]; #IO_L22P_T3_35 Sch=jc[8] 
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { D[6] }]; #IO_L21P_T3_DQS_35 Sch=jc[9] 
set_property -dict { PACKAGE_PIN E6    IOSTANDARD LVCMOS33 } [get_ports { D[7] }]; #IO_L5P_T0_AD13P_35 Sch=jc[10] 
 
#D7 - D0 Outputs 
set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { Dout[0] }]; #IO_L1P_T0_AD0P_15 Sch=jb[1] 
set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { Dout[1] }]; #IO_L14N_T2_SRCC_15 Sch=jb[2] 
set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { Dout[2] }]; #IO_L13N_T2_MRCC_15 Sch=jb[3] 
set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { Dout[3] }]; #IO_L15P_T2_DQS_15 Sch=jb[4] 
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { Dout[4] }]; #IO_L11N_T1_SRCC_15 Sch=jb[7] 
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { Dout[5] }]; #IO_L5P_T0_AD9P_15 Sch=jb[8] 
set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { Dout[6] }]; #IO_0_15 Sch=jb[9] 
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { Dout[7] }]; #IO_L13P_T2_MRCC_15 Sch=jb[10] 
 
#Pout7 - Pout1 
set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { Pout[0] }]; #IO_L21N_T3_DQS_35 Sch=jd[1] 
set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { Pout[1] }]; #IO_L17P_T2_35 Sch=jd[2] 
set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports { Pout[2] }]; #IO_L17N_T2_35 Sch=jd[3] 
set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { Pout[3] }]; #IO_L20N_T3_35 Sch=jd[4] 
set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { Pout[4] }]; #IO_L15P_T2_DQS_35 Sch=jd[7] 
set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { Pout[5] }]; #IO_L20P_T3_35 Sch=jd[8] 
set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { Pout[6] }]; #IO_L15N_T2_DQS_35 Sch=jd[9] 
set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { Pout[7] }]; #IO_L13N_T2_MRCC_35 Sch=jd[10] 
 
#Pin 7 - 0 
set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS18 } [get_ports { Pin[0] }]; #IO_L24N_T3_34 Sch=sw[8]
set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS18 } [get_ports { Pin[1] }]; #IO_25_34 Sch=sw[9]
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { Pin[2] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=sw[10]
set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { Pin[3] }]; #IO_L23P_T3_A03_D19_14 Sch=sw[11]
set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { Pin[4] }]; #IO_L24P_T3_35 Sch=sw[12]
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { Pin[5] }]; #IO_L20P_T3_A08_D24_14 Sch=sw[13]
set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { Pin[6] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=sw[14]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { Pin[7] }]; #IO_L21P_T3_DQS_14 Sch=sw[15]