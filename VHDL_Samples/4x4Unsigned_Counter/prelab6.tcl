# tcl test file for a one bit serial adder
# Written by Isaac Bagley

#inputs a, b, clk, RESET
# outputs sum, cy

restart

# create a train of clock pulses every 20 ns
add_force clk {0 0ns} {1 10ns} -repeat_every 20ns

# apply reset signal
add_force RESET {0 0ns}

# initialize inputs
add_force a {0 0ns}
add_force b {0 0ns}

run 100ns

# deactivate reset signal
add_force RESET {1 0ns}
run 100ns

# in state s1 right now
add_force a {1 0ns}
run 20ns
# will now be in s2

run 20ns
# will now be in s2 again

add_force b {1 0ns}
run 20ns
# now in s3

run 20ns
# now in s4

add_force a {0 0ns}
add_force b {0 0ns}
run 20ns
# back to s1