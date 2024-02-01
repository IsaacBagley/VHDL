# tcl test file for 4-bit counter
# Written by Isaac Bagley

# inputs clk, A{0-3}, OE, ACLR, SCLR, ALOAD, SLOAD, ENP, ENT
# outputs Q{0-3}, RCO, CCO

restart

# create a train of clk pulses every 10 ns
add_force CLK {0 0ns} {1 5ns} -repeat_every 10ns
run 100ns


run 5ns
#offsets input changes from clock

add_force OE {0 0ns}
add_force ACLR {0 0ns}
add_force SCLR {1 0ns}
add_force ALOAD {1 0ns}
add_force SLOAD {1 0ns}
add_force ENP {1 0ns}
add_force ENT {1 0ns}
add_force A(0) {0 0ns}
add_force A(1) {0 0ns}
add_force A(2) {1 0ns}
add_force A(3) {1 0ns}
run 10ns

add_force ACLR {1 0ns}
run 10ns

add_force ALOAD {0 0ns}
run 10ns

add_force ALOAD {1 0ns}
run 50ns

add_force SCLR {0 0ns}
add_force A(0) {1 0ns}
add_force A(1) {0 0ns}
add_force A(2) {1 0ns}
add_force A(3) {1 0ns}
run 10ns

add_force SCLR {1 0ns}
add_force SLOAD {0 0ns}
run 10ns

add_force SLOAD {1 0ns}
run 40ns

add_force OE {1 0ns}
run 40ns

add_force OE {0 0ns}
run 10ns

add_force ENP {0 0ns}
run 20ns

add_force ENT {0 0ns}
run 20ns

add_force ENP {1 0ns}
run 20ns