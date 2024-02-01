#A 4-bit comparitor test
#Inputs: a(0), a(1), a(2), a(3), a(4), a(5), a(6), a(7), b(0), b(1), b(2), b(3), b(4), b(5), b(6), b(7), ahighin, bhighin, arith
#Outputs: ahigh, bhigh

restart

add_force a(0) {0 0ns}
add_force a(1) {0 0ns}
add_force a(2) {0 0ns}
add_force a(3) {0 0ns}
add_force a(4) {0 0ns}
add_force a(5) {0 0ns}
add_force a(6) {0 0ns}
add_force a(7) {0 0ns}
add_force b(0) {0 0ns}
add_force b(1) {0 0ns}
add_force b(2) {0 0ns}
add_force b(3) {0 0ns}
add_force b(4) {0 0ns}
add_force b(5) {0 0ns}
add_force b(6) {0 0ns}
add_force b(7) {0 0ns}
add_force ahighin {0 0ns}
add_force bhighin {0 0ns}
add_force arith (0 0ns)
run 20ns
#Output equal is the only low output

add_force a(3) {1 0ns}
run 20ns
# output ahigh is high
# a = 1000, b = 0000

add_force b(3) {1 0ns}
run 20ns
# a = 1000, b = 1000
#output equal is high

add_force a(3) {0 0ns}
run 20ns
# a = 0000, b = 1000
#output bhigh is high

add_force b(3) {0 0ns}
add_force b(2) {1 0ns}
run 20ns
# a = 0000, b = 0100
#output bhigh is high

add_force a(2) {1 0ns}
run 20ns
# a = 0100, b = 0100
#output equal is high

add_force b(2) {0 0ns}
run 20ns
# a = 0100, b = 0000
#output ahigh is high

add_force b(1) {1 1ns}
run 20ns
# a = 0100, b = 0010
#output ahigh is high

add_force a(2) {0 0ns}
run 20ns
# a = 0000, b = 0010
#output bhigh is high

add_force a(1) {1 0ns}
run 20ns
# a = 0010, b = 0010
#output equal is high

add_force b(1) {0 0ns}
run 20ns
# a = 0010, b = 0000
#output ahigh is high

add_force a(1) {0 0ns}
add_force a(0) {1 0ns}
run 20ns
# a = 0001, b = 0000
#output ahigh is high

add_force b(0) {1 0ns}
run 20ns
# a = 0001, b = 0001
#output equal is high

add_force a(0) {0 0ns}
run 20ns
# a = 0000, b = 0001
#output bhigh is high