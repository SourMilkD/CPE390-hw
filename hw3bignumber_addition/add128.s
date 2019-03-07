	.global _Z6add128R6BigNumRKS_S2_
_Z6add128R6BigNumRKS_S2_:
	push {R3,R4,R5}

	ldr R3, [R1,#12]
	ldr R4, [R2,#12]
	adds R5, R3, R4
	str R5, [R0,#12]
	
	ldr R3, [R1,#8]
	ldr R4, [R2,#8]
	adcs R5, R3, R4
	str R5, [R0,#8]
	
	ldr R3, [R1,#4]
	ldr R4, [R2,#4]
	adcs R5, R3, R4
	str R5, [R0, #4]

	ldr R3, [R1,#0]
	ldr R4, [R2,#0]
	adcs R5, R3, R4
	str R5, [R0, #0]

	pop {R3,R4,R5}

	BX LR	
