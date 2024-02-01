restart 
add_force CLK {0 0ns} {1 5ns} -repeat_every 10ns 
 
add_force RESET {0 0ns} 
add_force CS {1 0ns} 
add_force WR {1 0ns} 
add_force A0 {0 0ns} 
add_force A1 {0 0ns} 
add_force D(0) {0 0ns} 
add_force D(1) {0 0ns} 
add_force D(2) {0 0ns} 
add_force D(3) {0 0ns} 
add_force D(4) {0 0ns} 
add_force D(5) {0 0ns} 
add_force D(6) {0 0ns} 
add_force D(7) {0 0ns} 
run 100ns 
 
add_force RESET {1 0ns} 
add_force CS {0 0ns} 
run 10 ns 
 
add_force A0 {0 0ns} 
add_force A1 {0 0ns} 
run 10 ns 
 
add_force D(0) {1 0ns} 
add_force D(1) {1 0ns} 
add_force D(2) {0 0ns} 
add_force D(3) {0 0ns} 
add_force D(4) {1 0ns} 
add_force D(5) {1 0ns} 
add_force D(6) {0 0ns} 
add_force D(7) {0 0ns} 
run 10 ns 
 
add_force WR {0 0ns} 
run 10 ns 
 
add_force WR {1 0ns} 
run 5 ns 
 
add_force A0 {1 0ns} 
add_force A1 {0 0ns} 
run 10ns 
 
add_force WR {0 0ns} 
run 10 ns 
 
add_force WR {1 0ns} 
run 60 ns 
 
add_force A0 {0 0ns} 
add_force A1 {1 0ns} 
add_force Pin(0) {1 0ns} 
add_force Pin(1) {1 0ns} 
add_force Pin(2) {0 0ns} 
add_force Pin(3) {0 0ns} 
add_force Pin(4) {1 0ns} 
add_force Pin(5) {1 0ns} 
add_force Pin(6) {0 0ns} 
add_force Pin(7) {0 0ns} 
run 40 ns 
 
add_force CS {0 0ns} 
run 20ns 
