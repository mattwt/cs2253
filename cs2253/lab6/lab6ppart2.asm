		.ORIG	X3000
		LEA 	R3 	message1 ;loads the string address into R3
loop 		LDR 	R0, R3, 0 ; loads the first character into R0
		LDR 	R4, R3, 0; check if the last character has been printed
		BRz 	stop ; branch to stop if last character has printed
START		LDI	R1, A		;Test to see if
		;BRzp	START		;output register is ready
		STI	R0, B
		ADD 	R3, R3, 1 ;increment the memory address in R3
		BRnzp	loop ; loop back to the beginning
stop		HALT
A		.FILL	xFE04		;Address of DSR
B		.FILL	xFE06		;Address of DDR
		
message1        .stringz "Assembly"


		.END	