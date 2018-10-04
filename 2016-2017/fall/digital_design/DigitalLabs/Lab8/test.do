force -freeze sim:/edgetriggereddflipflop/CLK 1 0, 0 {8000 ps} -r 16ns
force -freeze sim:/edgetriggereddflipflop/D 0 0
run 15ns
force -freeze sim:/edgetriggereddflipflop/D 1 0
run 2ns
force -freeze sim:/edgetriggereddflipflop/D 0 0
run 6ns
force -freeze sim:/edgetriggereddflipflop/D 1 0
run 2ns
force -freeze sim:/edgetriggereddflipflop/D 0 0
run 18ns