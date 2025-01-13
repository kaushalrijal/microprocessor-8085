; program to add two 8-bit numbers

MVI B, 06H  ; load hexadecimal 06 to register B
MVI C, 04H  ; load hexadecimal 04 to register C

MOV A, B    ; copy contents of register B to accumulator A

ADD C       ; add contents of register C with accumulator A

STA 8500H   ; store the result in memory address 8500

RST 5       ; halt the program
