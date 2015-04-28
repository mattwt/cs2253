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
LEA r5, input; loads R5 with the address specified as input
NOT R5, R5; 
ADD R5, R5, #1; gives the negative address of the start of the string
reverse_loop ADD R6, R5, R1; adds the value in R5 with R1
AND R0, R1, 0; clears R0
LDR R0, R1, -1; loads R0 with the last typed character
TRAP x21; Prints last input ascii value
ADD R1, R1, -1; decrements the pointer to the previous ascii in memory
ADD R2, R1, R5; checks if the character is the first one
BRp reverse_loop; if the character is not the first, loop back to reverse_loop
halt; stops the program
input .blkw 30; reserves 30 memory blocks for ascii characters
.end; end of program