	 AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
	   MOV R1,#0;INITIAL VAL
	   MOV R2,#1;INITIAL VAL
	   MOV R3,#0;EVERY ADDED RESULT IS STORED
	   MOV R4,#0x2000000;SERIES IS WRITTEN INTO MEM FROM THIS ADDRESS
	   MOV R5,#0;iterator
loop1	CMP R5,#10;no of terms
		BLE loop
		B stop
loop
		
	   ADD R3,R1,R2
	   STR R3,[R4],#13; writting series into memory
	   MOV R1,R2;r1=r2
	   MOV R2,R3;r2=r3
	   ADD  R5,R5,#1;incrementing iterator
		B loop1
	
stop    B stop ; stop program
     ENDFUNC
     END 
