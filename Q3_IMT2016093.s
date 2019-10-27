	 AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
		MOV R0,#200
		AND  R1,R0,#1
C1
		CMP R1,#1;ODD NUMBER
		BEQ  stop
C2   
		CMP R1,#0;EVEN NUMBER
		BEQ  stop
stop    B stop  ;stop program
     ENDFUNC
     END 

