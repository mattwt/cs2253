.ORIG X3000
LD R0 message1;loads R0 with H
JSR sub1;executes the subroutine sub1
LD R0 message2;loads R0 with i
LEA R3 sub1;loads R3 with the address of sub1
JSRR R3; executes sub1
stop	HALT
sub1
	LDI R1, A ;test to see if
	BRzp sub1;output register is ready
	STI R0, B
	RET 

A	.FILL xFE04
B	.FILL xFE06
message1	.stringz "H"
message2	.stringz "i"

	 
	
.END