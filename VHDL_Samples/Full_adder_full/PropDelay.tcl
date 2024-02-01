# inputs:
# a0, a1, a2, a3, b0, b1, b2, b3, c_in

restart 

add_force a0 {0 0ns}
add_force a1 {0 0ns}
add_force a2 {0 0ns}
add_force a3 {0 0ns}
add_force b0 {0 0ns}
add_force b1 {0 0ns}
add_force b2 {0 0ns}
add_force b3 {0 0ns}
add_force c_in {0 0ns}

run 20ns

add_force a0 {1 0ns}
add_force a1 {1 0ns}
add_force a2 {1 0ns}
add_force a3 {1 0ns}
add_force c_in {1 0ns}

# set all values to 0, should output 0000 with c_out 0

run 20ns