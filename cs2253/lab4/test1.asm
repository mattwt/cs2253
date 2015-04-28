  .orig x3000
        ld r0, mychar ;print a character
        trap x21
        trap x25  ;halt
mychar  .fill x21
        .end
