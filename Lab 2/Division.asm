; program to divide two 8-bit numbers

MVI A, 0FH          ; load accumulator A with dividend
MVI B, 05H          ; load register B with divisor
MVI C, 00H          ; initialize regiser C with zero for quotient

; block for division
DIVIDE: INR C       ; increment content of register C
SUB B               ; subtract content of register B from accumulator A

JNC DIVIDE          ; jump to DIVIDE if carry flag is not set i.e. no borrow

DCR C               ; decrement register C to correct the value of quotient
ADD B               ; add divisor to get the value of remainder

STA 9500H           ; store the value of remainder in memory address 9500

RST 5               ; halt the program
