.ORIG x3000
     LD R1, FRED ; load the value of FRED into R1
     STR R1, R1, -3 ; stores the value stored in R1 into the MCR, clearing bit 15 and stopping the process.
     LEA R0, MYMSG ; loads the starting address of MYMSG into R0
     PUTS ; prints the value of the address in R0, and all subsequent addresses until it hits a value of 0
     HALT ; halts the processor

FRED .FILL x0001
MYMSG .STRINGZ "Hello"
.end