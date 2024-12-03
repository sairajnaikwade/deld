ORG 00H                      ;Assembly Starts from 0000H.
; Main Program
START: MOV P1, #0XFF         ;MOVE 11111111 TO PORT1.
       CALL WAIT             ;CALL WAIT.
	   MOV A,P1   ;MOVE P1 VALUE TO ACC
	   
	   CPL A       ;COMPLEMENT ACC
	   MOV P1,A     ;MOVE ACC VALUE TO P1
	   CALL WAIT   ;CALL WAIT
	   SJMP START    ;JUMP to START
WAIT:      MOV R2,#10      ;LOAD REG R2 WITH 10(0X0A)
WAIT1:  MOV R3,#200         ;LOAD REG R3 WITH 200 (0XCB)
WAIT2: MOV R4,#200           ;LOAD REG R4 WITH 200
      DJNZ R4, $   ;DECREMENT R4 TILL IT IS 0.SATY THERE IF NOT 0
	   DJNZ R3,WAIT2  ;DECREMENT R3 TILL IT IS 0.JUMP TO WAIT2 IF NOT 0.
	   DJNZ R2,WAIT1 ;DECREMENT R2 TILL IT IS 0.JUMP TO WAIT1 IF NOT 0.
        RET          ;RETURN rn TO MAIN PROGRAM 
END     ;END ASSEMBLY
