myloop:
add r1, r1, r25   ; r1 <= 1
add r1, r25, r1   ; r1 <= 2
add r1, r1, r2    ; r1 <= 3
add r1, r1, r3    ; r1 <= 4
add r1, r1, r4    ; r1 <= 5
xor r20, r20, r25 ; toggle lsb of r20.
j  myloop   	  ; PC = PC + 4 - 11*4 = -40 (28 hexadecimal) = go to the beginning of the program. 
