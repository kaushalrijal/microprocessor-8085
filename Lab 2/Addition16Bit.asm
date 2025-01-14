LXI B, 4422H        ; load register pair BC with 16-bit hexadecimal data 4422
LXI D, 3311H        ; load register pair DE with 16-bit hexadecimal data 3311 

MOV A, C            ; move lower byte of first number into accumulator
ADD E               ; add second lower byte number to accumulator A
MOV L, A            ; move lower byte of result into register L

MOV A, B            ; move higher byte of first number into accumulator 
ADC D               ; add second higher byte of first number with carry and accumulator 
MOV H, A            ; move higher byte of sum into register H 

SHLD 8500H          ; store the data of register pair HL into memory address 8500H

RST 5               ; end the program