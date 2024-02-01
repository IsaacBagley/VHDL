# a tcl file for lab 10
# written by Isaac Bagley

restart

add_force RESET {0 0ns}
add_force x1 {0 0ns}
add_force x2 {0 0ns}
run 20ns

# start in stable state a
add_force RESET {1 0ns}
run 20ns

# go a to b
add_force x2 {1 0ns}
run 20ns

# go b to d
add_force x1 {1 0ns}
run 20ns

# go d to e to a
add_force x2 {0 0ns}
run 20ns

# go a to c
add_force x2 {1 0ns}
run 20ns

# go c to a to b
add_force x1 {0 0ns}
run 20ns

# go b to d
add_force x1 {1 0ns}
run 20ns

# go d to e
add_force x1 {0 0ns}
run 20ns

# go e to a
add_force x2 {0 0ns}
run 20ns