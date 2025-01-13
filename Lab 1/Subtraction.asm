; program to subtract two 8-bit numbers

MVI B, 06H  ; store hexadecimal 6 to register B
MVI C, 04H  ; store hexadecmial 4 to register C

MOV A, B    ; copy contents of register B to accumulator A

SUB C       ; subtract contents of register C from accumulator A

STA 8600H   ; store the output contained by accumulator in memory address 8600

RST 5       ; halt the program