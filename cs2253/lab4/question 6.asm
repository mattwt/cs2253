.ORIG x3000
pointer LEA R1, input
ast .Stringz "*" ;ascii value for *
lab .stringz "1" ;ascii value for 1
ld R5 lab; loads the ascii value for 1 into R5
not R5 R5; nots R5
Add R5, R5, 1 ;gives the negative value in R5
TRAP x20 ; takes a single character from user input 
str R0 R1 0; stores the input value
add R2 R0 0 ;puts the input value into R2
add R2 R2 1 ; adds 1 to R2
add R4 R2 R5 ; puts the value of the input into R4
loop_a and R0, R1, 0; resets R0 to 0
add R0, R0, 10; adds 10 to R0
Trap x21; prints a blank line
ld R2 input; load the input into R2
add R2 R2 1; Add 1 to R2, so it completes the loop enough times
loop ld R0 ast; loads the ascii value of * to R0
and R6 r6 0; reset the difference to 0
trap x21; prints R0
add R2 R2 -1; decrements R2
add R6 R5 R2 ;checks if R2 is positive
Brp loop; if R6 is positive, loop back to loop
add R4 R4 -1; decrement the outer loop
BRp loop_a; if outer loop is positive, jump to loop_a




halt
input .blkw 2; reserves a block of memory for the grid size
.end