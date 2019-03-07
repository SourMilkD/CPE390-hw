	.globl _Z5counti
_Z5counti:	
	MOV R1, #0
.loop:
	ADD R1, R1, #1
	CMP R0, R1
	BNE .loop
	BX LR

	.globl _Z9countDowni
_Z9countDowni:
	MOV R1, #0
.loop2:
	CMN R1, R0
	BEQ .end2
	SUB R0, R0, #1
	B .loop2

.end2:
	BX LR

	.globl _Z3sumii
_Z3sumii:
	MOV R2, #0
.loop3:
	ADD R2, R2, R0
	CMP R1, R0
	BEQ .end3
	ADD R0, R0, #1
	B .loop3
	
	
.end3:
	MOV R0, R2
	BX LR

	.globl _Z4facti
_Z4facti:
	MOV R2, #1
	MOV R1, #0
.loop4:
	CMP R1, R0
	BEQ .end4
	MUL R2, R2, R0
	SUB R0, R0, #1
	B .loop4
.end4:
	MOV R0, R2
	BX LR