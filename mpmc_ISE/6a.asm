AREA PRG6, CODE, READONLY  
ENTRY                      

START                      
    LDR R10, =5           
    MOV R0, R10
    LDR R1, =3            

    
    ADD R2, R0, R1         
    SUB R3, R0, R1        
    MUL R4, R0, R1        
    AND R5, R0, R1        
    ORR R6, R0, R1        
    EOR R7, R0, R1         

STOP
    B STOP                 

    END                       