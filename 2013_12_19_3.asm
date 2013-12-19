CSEG	AT	00H		      ;textbook 4.27	;clear memory 2FH~20H
	MOV	R1.#2FH
	
L1:	MOV	@R1,#0
	DEC	R1
	CJNE	R1,#1FH,L1
	RET
	END
