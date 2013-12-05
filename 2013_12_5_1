DSEG	AT 30H
	RESULT:	DS	1
CSEG	AT 00H
	CLR	A
	
L1:	INC	A
	CJNE	A,#3,L1		;if(a!=3)jump L1	;if(drict<[A.Rn.@Ri]) C=1	
	MOV	RESULT,A
	RET
	END
