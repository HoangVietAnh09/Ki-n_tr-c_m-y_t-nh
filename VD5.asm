.Model Small
.Stack 100
.Data
    Str1 DB 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'
    Tbao DB 'chuoi da duoc doi: ', 10, 13
    Str2   DB '$'
.Code
    MAIN Proc
        MOV AX, @Data ; kh?i d?u d?u cho DS và ES
        MOV DS, AX  
        
        MOV ES, AX
        LEA SI, Str1+7 ; SI ch? vào cu?i chu?i cu
        LEA DI, Str2+7 ; DI ch? vào cu?i chu?i m?i
        STD ; d?nh hu?ng lùi
        MOV CX, 8 ; CX ch?a s? byte ph?i d?i
   LAP: LODSB ; l?y 1 ký t? c?a chu?i cu
        SUB AL, 20H ; d?i thành ch? hoa
      


        STOSB ; c?t vào chu?i m?i
        LOOP LAP ; làm cho d?n h?t
        LEA DX, Tbao ; chu?n b? hi?n chu?i m?i
        MOV AH, 9
        INT 21H 
        
        
        MOV AH, 4CH ; v? DOS
        INT 21H
    MAIN Endp
END MAIN