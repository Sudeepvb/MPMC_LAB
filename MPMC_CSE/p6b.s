	AREA PROG2, CODE, READONLY 
ENTRY 
START 
    LDR R1, =0x00000006   ; Load R1 with the value 6
    LDR R2, =0x00000001   ; Load R2 with the value 1
    ADD R5, R1, R2        ; R5 = R1 + R2 (6 + 1 = 7)
    SUB R6, R1, R2        ; R6 = R1 - R2 (6 - 1 = 5)
    MUL R7, R1, R2        ; R7 = R1 * R2 (6 * 1 = 6)
STOP 
    B STOP                ; Infinite loop to stop the program
END