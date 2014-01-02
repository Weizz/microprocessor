CSEG	AT	00H         ;just a subroutine example
	
MAIN:	MOV	A,#0FH
	CALL	CNTS
	MOV	B,A
	RET
	
CNTS:	INC	A
	INC	A
	
	RET
	END
