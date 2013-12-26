BSEG	AT	00H			    ;beging from 20H+00H
	B1:	DBIT	1		      ;Define BIT
	
DSEG	AT	30H
	D1:	DS	1
	
CSEG	AT	00H
	CLR	B1
	MOV	D1,#00000011B
	MOV	A,D1
	CLR	C
	ORL	C,ACC.0			    ;C = C + A[0:1]
	ANL	C.B1			      ;C * B1
	RET
	END
