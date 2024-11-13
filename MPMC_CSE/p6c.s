	AREA PROG2, CODE, READONLY 
ENTRY 
START 
    LDR R1, =0x00000003   ; Load R1 with the value 3
    LDR R2, =0x00000007   ; Load R2 with the value 7
    AND R3, R1, R2        ; R3 = R1 AND R2 (3 AND 7)
    ORR R4, R1, R2        ; R4 = R1 OR R2 (3 OR 7)
    EOR R5, R1, R2        ; R5 = R1 XOR R2 (3 XOR 7)
STOP 
    B STOP                ; Infinite loop to stop the program
END