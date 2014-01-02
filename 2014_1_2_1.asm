DSEG	AT	30H
	STACK:	DS	20
CSEG	AT	00H
	USING	0
	MOV	SP,#STACK-1	  ;PUSH will let sp(stack point) +1 first
	MOV	A,#1
	MOV	B,#2
	MOV	R0,#3
	MOV	R1,#4
	
	PUSH	ACC	        ;push acc to #sp+1(30H) 
	PUSH	B
	PUSH	AR0
	PUSH	AR1
	
	POP	ACC
	POP	B
	POP	AR0
	POP	AR1
	
	RET
	END
