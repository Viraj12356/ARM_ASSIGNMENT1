	 AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
		MOV R0,#1
		MOV R1,#2
		ITT NE
		ADDNE R0,R1,R0
		IT EQ;nested if then else statement doesn't work in cortex M4
stop    B stop  ;stop program
     ENDFUNC
     END 

