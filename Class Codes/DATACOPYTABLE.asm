LXI H, 7000H
LXI D, 8000H
MVI C, 0AH

L2: MOV A, M
CPI 24H
JC L1
CPI 70H
JNC L1
STAX D
INX D

L1: INX H
DCR C
JNZ L2

HLT
