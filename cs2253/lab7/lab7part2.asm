      .orig x3000
                    jsr mysub
                    lea r0, message2
                    trap x22
                    halt

mysub   lea r0, message1
	st R7, return;stores the value in R7 to the address specified by return  
	trap x22
	ld R7 return;loads the value stored in return into R7
	ret
			
message1            .stringz "Assembly language "
message2            .stringz "is nice\n"
return .fill 0
                    .end


;bug- jsr uses R7 to store the location to return to, however trapx22 trashes the value so that 
;it tries to return to x3006, which is the ret command, causing an infinite loop.
;fix- create a return variable, store the value of R7 before the trap executes.
;after the trap executes, load the return value into R7.