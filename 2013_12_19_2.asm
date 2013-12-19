DSEG	AT	30H		      ;textbook 4.17		;value compare, RESULT=bigger one
	RESULT:	DS	1

CSEG	AT	00H
	MOV	R0,#99H
	MOV	R1,#88H
	MOV	A,R0
	SUBB	A,R1		      ;A(R0) - R1
	JNC	L1		          ;if(C==0) jmp L1	;R0>R1 C==0
	MOV	RESULT,R1
	JMP L2

L1:	MOV	RESULT,R0

L2:	RET
	END		
