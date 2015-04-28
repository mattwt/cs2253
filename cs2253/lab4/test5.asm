.ORIG X3000 ;starts at x3000
pointer LEA R1, input ; loads the address at "input" into R1
loop trap x20 ; takes in input from the user via keyboard, stores in R0
str R0 R1 0 ; stores what is in R0 into the memory address in R1, no offset
add R3 R0 -10 ; checks if the enter key was pressed
BRz stop; if the enter key was pressed, jump to stop
trap x21; prints the ascii character stored in R0
ADD R1 R1 1 ; increments the counter
BRp loop ; checks if the counter is positive, if it is it jumps back to loop
stop lea R0, input ; loads the memory address specified by input into R0
puts; prints the ascii characters stored in memory to the console
halt; stops the program
input .blkw 30; reserves 30 memory blocks for ascii characters
.end; end of program