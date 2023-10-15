.model small
.stack 100h
.data
    crlf        db 13, 10, "$"
    chaoTay     db "Hello$"
    chaoTa      db "Chao Ban$"
    thongBao    db "Nhap so dong lenh: $"
    soCrlf      db ? 

.code
    main proc  
        mov ax, @data
        mov ds, ax
        
        
        lea dx, thongBao
        mov ah, 9
        int 21h 
        
        mov ah, 1
        int 21h
        and al, 0fh
        mov soCrlf, al
        
        
        mov ah, 9
        lea dx, crlf
        int 21h
        
        mov ah, 9
        lea dx, chaoTay
        int 21h
        lea dx, crlf
        xor cx, cx
        mov cl, soCrlf
   lap: int 21h
        loop lap
        lea dx, chaoTa
        int 21h
        
     
        
        mov ah, 4ch
        int 21h
    main endp
end