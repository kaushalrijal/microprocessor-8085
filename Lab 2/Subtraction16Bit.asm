LXI B, 4422H        ; load register pair BC with 16-bit hexadecimal 4422H
LXI D, 3311H        ; load register pair DE with 16-bit hexadecimal 3311H

MOV A, C            ; move lower byte of first number into accumulator 
ADD E               ; add lower byte of second number with accumulator
MOV L, A            ; move lower byte result into register L 

MOV A, B            ; move higher byte of first number into accumulator
ADD D               ; add higher byte of second number into accumulator 
MOV H, A            ; move higher byte result into register H 

SHLD 9600H          ; store the result into memory address 9600H

RST 5               ; end the process