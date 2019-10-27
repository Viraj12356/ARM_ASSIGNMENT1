	 AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
			MOV R0,#11
			MOV R1,#5
while
			CMP  R0,R1  ;WHILE a<b or a>b
			BEQ  stop

			SUBGT R0,R0,R1 ; IF a>b THEN a=a-b 

			SUBLE R1,R1,R0 ;   ELSE b=b-a

			B  while  ;ENDWHILE

stop    B stop  ;stop program
     ENDFUNC
     END 

