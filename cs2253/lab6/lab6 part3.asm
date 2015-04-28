 .orig x3000
                    lea r0, message1
                    trap x22
lea R2 mytrap ; loads the address of mytrap into R2
sti R2 a ; stores the address of mytrap into x22
                    lea r0, message2
                    trap x22
halt
mytrap              st r7, save_r7
                    st r5, save_r5
                    st r0, save_r0
                    lea r5, intercept_message   
                    ldr r0, r5, 0
myloop              brz done
                    trap x21
                    add r5, r5, 1
                    ldr r0, r5, 0
                    brnzp myloop
        
done                ld r0, save_r0
                    ld r5, save_r5
                    ld r7, save_r7
                    ret



message1            .stringz "Assembly"
message2            .stringz " is nice\n"
a		    .fill x22 ; address of trapx22

intercept_message  .stringz "I will not print your string\n"
save_r0            .fill 0
save_r5            .fill 0
save_r7            .fill 0
                  
                    .end


