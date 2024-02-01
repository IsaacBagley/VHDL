#a test file for a seven segment display driver
#Code written by Isaac Bagley
#inputs Ai, Bi, Ci, Di, LT

restart

add_force Ai {0 0ns}
add_force Bi {0 0ns}
add_force Ci {0 0ns}
add_force Di {0 0ns}
add_force LT {0 0ns}

run 20ns
# circuit should output the test pattern, all outputs high

add_force LT {1 0ns}

run 20ns
# outputs should be all high except for g

add_force Ai {1 0ns}

run 20ns
# outputs from here on will simply go down the truth table on the datasheet, coutning upward in binary

add_force Ai {0 0ns}
add_force Bi {1 0ns}

run 20ns

add_force Ai {1 0ns}
add_force Bi {1 0ns}

run 20ns

add_force Ai {0 0ns}
add_force Bi {0 0ns}
add_force Ci {1 0ns}

run 20ns

add_force Ai {1 0ns}

run 20ns

add_force Ai {0 0ns}
add_force Bi {1 0ns}

run 20ns

add_force Ai {1 0ns}
add_force Bi {1 0ns}

run 20ns

add_force Ai {0 0ns}
add_force Bi {0 0ns}
add_force Ci {0 0ns}
add_force Di {1 0ns}

run 20ns

add_force Ai {1 0ns}

run 20ns

add_force Ai {0 0ns}
add_force Bi {1 0ns}

run 20ns

add_force Ai {1 0ns}
add_force Bi {1 0ns}

run 20ns

add_force Ai {0 0ns}
add_force Bi {0 0ns}
add_force Ci {1 0ns}

run 20ns

add_force Ai {1 0ns}

run 20ns

add_force Ai {0 0ns}
add_force Bi {1 0ns}

run 20ns

add_force Ai {1 0ns}
add_force Bi {1 0ns}

run 20ns