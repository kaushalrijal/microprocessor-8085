LXI H, 8000H
LXI B, 9000H

L1: MOV A,M
JPO L2
ANI DF
ORI 08H

L2: STAX B
MOV A, M
INX H
INX B
CPI 51H
JNZ L1

HLT