.ORIG x3000
LD R4, ASCII_0M
IN
ADD R1, R0, R4
IN
ADD R2, R0, R4
NOT R3, R2
ADD R3, R3, #1  ;R3=-R2
LD R4, ASCII_0
ADD R5, R1, R3  ;R5=R1+R3=R1-R2
BRn NEGATIVE
ADD R0, R5, R4
OUT
BR KETTHUC
NEGATIVE
    LD R0, MINUS_SIGN
    OUT
    NOT R5, R5
    ADD R5, R5, #1
    ADD R0, R5, R4
    OUT
KETTHUC HALT
MINUS_SIGN  .FILL #45
ASCII_0     .FILL #48
ASCII_0M    .FILL #-48
.END