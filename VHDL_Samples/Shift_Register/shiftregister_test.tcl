# tcl test file for shift register to mirror datasheet
# Written by Isaac Bagley

#inputs s(2 bits), p(4 bits), sl, sr, clr
# outputs q (4 bits)

restart

# create a train of clock pulses every 20 ns
add_force clk {0 0ns} {1 10ns} -repeat_every 20ns
run 100ns

# clear the values
run 15ns
add_force clr {0 0ns}
add_force p(0) {0 0ns}
add_force p(1) {1 0ns}
add_force p(2) {0 0ns}
add_force p(3) {1 0ns}
add_force s(0) {1 0ns}
add_force s(1) {1 0ns}
add_force sr {0 0ns}
add_force sl {0 0ns}
run 10ns 
# .5 clock

add_force clr {1 0ns}
add_force p(0) {0 0ns}
add_force p(1) {1 0ns}
add_force p(2) {0 0ns}
add_force p(3) {1 0ns}
run 10ns 
# 1 clk
# parallel load
add_force s(1) {0 0ns}
add_force p(1) {0 0ns}
add_force p(3) {0 0ns}
run 10ns
# 1.5 clk
run 10ns
# 2 clk


#shift rights
add_force sr {1 0ns}
run 20ns
# 3 clk

add_force sr {0 0ns}
run 20ns
# 4 clk

run 20ns
# 5 clk
run 20ns
# 6 clk
run 20ns
# 7 clk

add_force s(0) {0 0ns}
add_force s(1) {1 0ns}
run 20ns
# 8 clk

# shift left
add_force sl {1 0ns}
run 20ns
# 9 clk

add_force sl {0 0ns}
run 20ns
# 10 clk

add_force sl {1 0ns}
run 20ns
# 11 clk

run 20ns
# 12 clk

# inhibit
add_force s(1) {0 0ns}
add_force sr {1 0ns}
add_force sl {0 0ns}
run 20ns
# 13 clk

add_force sr {0 0ns}
add_force sl {1 0ns}
run 20ns
# 14 clk

add_force sr {1 0ns}
add_force sl {0 0ns}
run 20ns
# 15 clk

add_force sr {0 0ns}
add_force sl {1 0ns}
run 20ns
# 16 clk

add_force sl {0 0ns}
run 20ns
# 17 clk

add_force clr {0 0ns}
run 20ns
# 18 clk