 AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
		MOV R0,#10
		MOV R1,#20
		MOV R2,#150
		MOV R4,#0
		CMP R0,R4
		BGT   C1;if first no is greater than 0 
loop1
		CMP R1,R4 
		BGT   C2;if second no is greater than first no
loop2
		CMP R2,R4
		BGT C3 ;if third no is greater than second no
		B stop
C1
		MOV R4,R0
		B loop1
C2
		MOV R4,R1
		B loop2
C3
		MOV R4,R2
stop    B stop ; stop program
     ENDFUNC
     END 

