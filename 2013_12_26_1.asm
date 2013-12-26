DSEG	AT	00H		    ;F = W' * X xor (Y + Z)
  F:	DS	1
  W:	DS	1
  X:	DS	1
  Y:	DS	1
  Z:	DS	1
CSEG	AT	00H
	MOV	A,W
	CPL	A             ;W'
	ANL	A,X		        ;W * X
	MOV	R0,A
	MOV	A,Y		
	ORL	A,Z		        ;X + Y
	XRL	A,R0		      ;W' * X xor (Y + Z)
	MOV	F,A
	RET
	END
