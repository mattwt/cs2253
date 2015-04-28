.ORIG x3000
AND R1,R1,x0 ;clear R1, to be used for the running sum
AND R4,R4,x0 ;clear R4, to be used as a counter
ADD R4,R4,xA ;load R4 with #10, the number of times to add
LEA R2,x0FC ;load the starting address of the data
LOOP LDR R3,R2,x0 ;load the next number to be added
ADD R2,R2,x1 ;increment the pointer
FRED ADD R1,R1,R3 ;add the next number to the running sum
JMP R5
BRp LOOP ;do it again if the counter is not yet zero
HALT
.END