ORIG x3000
	LD R1, Y		;R1 = 0x262F 
	LD R0, X  		;R0 = 0xB3A1	
	ADD R2, R1, R0 		;Adding 0xB3A1 and 0x262F and storing in R2
	STI R2, ADDR		;Stores value at R2 into M[0x3100] which is labeled as ADDR
	HALT			;TRAP x25 to end the program
X:      .FILL 0xB3A1	        ;Fill X with 0xB3A1
Y: 	.FILL 0x262F		;Fill Y with 0x2629
ADDR: 	.FILL 0x3100
.END
