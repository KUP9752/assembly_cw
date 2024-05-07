// ; A XOR B = (A AND NOT B) OR (NOT A AND B)
// ; No XOR supprt by default??

@4
D = ! M //; not num2
@3
D = M & D //; num1 AND not num2

@0
M = D //; save this in R[0]

@3
D = ! M //;not num1
@4
D = D & M // ;not num1 AND num2

@0
D = D | M // ;-> D OR R[0] 
@5
M = D //; R[5] = D




