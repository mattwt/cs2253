 .orig x3000
        lea  r1, mystuff

        ldr  r0, r1, 0
        trap x21
        add  r1, r1, 1

        ;; those lines were so much fun we will cut and paste twice!!

        ldr  r0, r1, 0
        trap x21
        add  r1, r1, 1

        ldr  r0, r1, 0
        trap x21
        add  r1, r1, 1
        
        ;; all good things must end

        trap x25  ;halt
mystuff .stringz "Hi!"
        .end
