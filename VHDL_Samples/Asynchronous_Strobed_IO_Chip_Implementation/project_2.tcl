# a tcl file to test the project 2 implementation
# inputs: CE, A0, RD, WR, RESET, P (7 downto 0), D (7 downto 0), STB

restart

add_force CE {1 0ns}
add_force RESET {1 0ns}
run 100ns 
#initialization of variables
add_force D(0) {0 0ns} -cancel_after 130ns
add_force D(1) {0 0ns} -cancel_after 130ns
add_force D(2) {0 0ns} -cancel_after 130ns
add_force D(3) {0 0ns} -cancel_after 130ns
add_force D(4) {0 0ns} -cancel_after 130ns
add_force D(5) {0 0ns} -cancel_after 130ns
add_force D(6) {0 0ns} -cancel_after 130ns
add_force D(7) {0 0ns} -cancel_after 130ns

add_force A0 {1 0ns}
add_force RD {1 0ns}
add_force WR {1 0ns}
add_force STB {1 0ns}
run 50ns

# change mode to status register operation (mode 0)
add_force RESET {0 0ns}
add_force CE {0 0ns}
run 20ns

add_force A0 {1 0ns}
run 20ns

# write D to CR
add_force WR {0 0ns}
run 20ns

add_force WR {1 0ns}

add_force P(0) {1 0ns} -cancel_after 150ns
add_force P(1) {0 0ns} -cancel_after 150ns
add_force P(2) {1 0ns} -cancel_after 150ns
add_force P(3) {0 0ns} -cancel_after 150ns
add_force P(4) {0 0ns} -cancel_after 150ns
add_force P(5) {1 0ns} -cancel_after 150ns
add_force P(6) {0 0ns} -cancel_after 150ns
add_force P(7) {1 0ns} -cancel_after 150ns
run 20ns

# read P to D
add_force A0 {0 0ns}
run 20ns

add_force RD {0 0ns}
add_force P(0) {0 0ns} -cancel_after 150ns
add_force P(1) {1 0ns} -cancel_after 150ns
add_force P(2) {0 0ns} -cancel_after 150ns
add_force P(3) {1 0ns} -cancel_after 150ns
add_force P(4) {1 0ns} -cancel_after 150ns
add_force P(5) {0 0ns} -cancel_after 150ns
add_force P(6) {1 0ns} -cancel_after 150ns
add_force P(7) {0 0ns} -cancel_after 150ns
run 20ns

add_force RD {1 0ns}
run 20ns



add_force D(0) {1 0ns} -cancel_after 130ns
add_force D(1) {1 0ns} -cancel_after 130ns
add_force D(2) {0 0ns} -cancel_after 130ns
add_force D(3) {0 0ns} -cancel_after 130ns
add_force D(4) {0 0ns} -cancel_after 130ns
add_force D(5) {0 0ns} -cancel_after 130ns
add_force D(6) {0 0ns} -cancel_after 130ns
add_force D(7) {0 0ns} -cancel_after 130ns

run 50ns

# change mode to status register operation (mode 0)
add_force A0 {1 0ns}
run 20ns

# write D to CR
add_force WR {0 0ns}
run 20ns

add_force WR {1 0ns}
run 20ns

# register and data input operation (mode 0)
add_force A0 {1 0ns}
run 20ns

add_force RD {0 0ns}
run 20ns

add_force RD {1 0ns}
run 20ns



# Data register operation (mode 1)
add_force A0 {0 0ns}
run 20ns
# read Data_in to P
add_force STB {0 0ns}

add_force P(0) {0 0ns} -cancel_after 150ns
add_force P(1) {0 0ns} -cancel_after 150ns
add_force P(2) {1 0ns} -cancel_after 150ns
add_force P(3) {1 0ns} -cancel_after 150ns
add_force P(4) {1 0ns} -cancel_after 150ns
add_force P(5) {1 0ns} -cancel_after 150ns
add_force P(6) {0 0ns} -cancel_after 150ns
add_force P(7) {0 0ns} -cancel_after 150ns
run 20ns

add_force STB {1 0ns}
run 20ns

add_force A0 {1 0ns}
run 20ns

add_force RD {0 0ns}
run 20ns

add_force RD {1 0ns}
run 20ns

add_force A0 {0 0ns}
run 20ns

add_force RD {0 0ns}
run 20ns

add_force RD {1 0ns}
run 20ns

add_force RESET {1 0ns}
run 20ns


add_force D(0) {1 0ns} -cancel_after 130ns
add_force D(1) {0 0ns} -cancel_after 130ns
add_force D(2) {0 0ns} -cancel_after 130ns
add_force D(3) {0 0ns} -cancel_after 130ns
add_force D(4) {0 0ns} -cancel_after 130ns
add_force D(5) {0 0ns} -cancel_after 130ns
add_force D(6) {0 0ns} -cancel_after 130ns
add_force D(7) {0 0ns} -cancel_after 130ns

run 50ns

# change mode to status register operation (mode 0)
add_force A0 {1 0ns}
run 20ns

# write D to CR
add_force WR {0 0ns}
run 20ns

add_force WR {1 0ns}
run 20ns

# register and data input operation (mode 0)
add_force A0 {1 0ns}
run 20ns

add_force RD {0 0ns}
run 20ns

add_force RD {1 0ns}
run 20ns



# Data register operation (mode 1)
add_force A0 {0 0ns}
run 20ns
# read Data_in to P
add_force STB {0 0ns}
run 20ns

add_force STB {1 0ns}
run 20ns

add_force A0 {1 0ns}
run 20ns

add_force RD {0 0ns}
run 20ns

add_force RD {1 0ns}
run 20ns

add_force A0 {0 0ns}
run 20ns

add_force RD {0 0ns}
run 20ns

add_force RD {1 0ns}
run 20ns

add_force RESET {1 0ns}
run 20ns