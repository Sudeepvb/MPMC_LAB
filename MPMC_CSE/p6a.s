	AREA PROG1, CODE, READONLY   ; Define the code section
ENTRY                        ; Entry point

START
    LDR R2, =0x05            ; Load R2 with the count (5 elements to transfer)
    LDR R0, =SOURCE          ; Load the address of SOURCE into R0
    LDR R1, =DEST            ; Load the address of DEST into R1

UP  
    LDR R3, [R0], #4         ; Load the data from the address in R0 into R3 and post-increment R0 by 4
    STR R3, [R1], #4         ; Store the data in R3 into the address in R1 and post-increment R1 by 4
    SUBS R2, #1              ; Subtract 1 from R2 and update flags
    BNE UP                   ; Branch to UP if the result is not zero

STOP
    B STOP                   ; Infinite loop to stop the program

	AREA SOURCE, DATA, READONLY ; Define the read-only data section
    DCD 0x10, 0x20, 0x30, 0x40, 0x50 ; Define an array of data to be transferred

	AREA DEST, DATA, READWRITE  ; Define the writable data section
    ; Space for data (e.g., reserve space for 5 words if needed)

	END