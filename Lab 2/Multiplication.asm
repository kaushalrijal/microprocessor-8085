; program to multiply two 8-bit numbers

MVI A, 00H          ; initialize accumulator A with zero
MVI B, 07H          ; initialize register B with one of the operands
MVI C, 06H          ; initialize register C with other operand

; block for multiplication
MULTIPLY: ADD B     ; add contents of register B to accumulator A 
DCR C               ; decrement the value of register C

JNZ MULTIPLY        ; check for Zero flag and jump to MULTIPLY if it is not set

STA 9000H           ; store the output in memory address 9000

RST 5               ; halt the program
