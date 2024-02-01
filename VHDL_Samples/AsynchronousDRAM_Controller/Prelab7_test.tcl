# tcl test file for DRAM Controller
# Written by Isaac Bagley

# inputs clock, R_cmd, W_cmd, RESET
# outputs CAS, RAS, W, MUX_sel

restart

# create a train of clock pulses every 10 ns
add_force clock {0 0ns} {1 5ns} -repeat_every 10ns
run 100ns

add_force R_cmd {1 0ns}
add_force W_cmd {1 0ns}
add_force RESET {1 0ns}
run 12ns
# will offset the input changes from clock edges by 2ns

add_force R_cmd {0 0ns}
run 130ns

add_force R_cmd {1 0ns}
run 20ns

add_force W_cmd {0 0ns}
run 130ns

add_force W_cmd {1 0ns}
run 20ns

add_force R_cmd {0 0ns}
run 30ns

add_force RESET {0 0ns}
run 40ns