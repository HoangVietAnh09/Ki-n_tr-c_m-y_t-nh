.model small
.stack 100h
.data    
    crlf db 13, 10, "$"
    chaoTay db "Hello$"
    chaoTa db "Chao ban$"
.code
    main proc    
        mov ax, @data
        mov ds, ax 
                
                
        mov ah, 9
        lea dx, chaoTay
        int 21h
              
              
        lea dx, crlf
        mov cx, 6
   lap: int 21h
        loop lap
        
        lea dx, chaoTa 
        int 21h
    

        
        mov ah, 4ch
        int 21h
    main endp
end