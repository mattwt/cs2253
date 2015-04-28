.orig x3000
LEA R6, top
AND  R3, R3, #0  ; from zero
LEA R2 interrupt ;loads R2 with the interrupt code
sti R2 a ; stores the address in R2 in the interrupt vector(x0080)
ld r5 c
sti r5 b

LP    ADD  R3, R3, -1  ; count down
      BRnp LP 		; checks if R3 is neg or pos, if it is loop back to LP
      LD   R0, PLUS 	; loads R0 with +
      OUT              ; until zero seen again
      BRnzp LP         ; do it again

interrupt 	st R0 reg0; saves the contents of R0
		st R7 reg7; saves the contents of R7
		LEA R0 ouch ; loads R0 with "ouch!"
		trap x22 ; prints it
		ldi R0 d; reads the kbdr
		ld R0 reg0; loads the value back into R0
		ld R7 reg7; loads the value back into R7
		RTI ; returns to where it was interrupted from

PLUS  .stringz "+"
stack .blkw 20
top .fill x0000; top of the stack
ouch .stringz "ouch!"
a .fill x180 ;The interrupt vector 
b .fill xFE00; the kbsr
c .fill x4000; junk to initialize the kbsr
d .fill xfe02; the kbdr
reg0 .fill x4001; memory to save R0
reg7 .fill x4002; memory to save R7
.end