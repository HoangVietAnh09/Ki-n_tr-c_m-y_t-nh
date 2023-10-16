.Model Small
.Stack 100
.Code
    MAIN Proc
        MOV CL, 4
        ROL BX, CL ; quay BX di 4 bít
        MOV CL, 4
        
        ROR BH, CL ; tráo 4 bít th?p và cao c?a BH
        MOV AH, 4CH ; tr? v? DOS
        INT 21H
    MAIN Endp
END MAIN