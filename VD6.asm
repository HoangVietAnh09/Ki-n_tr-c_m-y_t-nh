.model small
.stack 100h
.data  
    xau1 db "Nhap 1 ki tu: $"
    xau2 db 13, 10, "Ky tu vua nhap: $"
    char db ?
.code
    main proc   
        mov ax, @data
        mov ds, ax   
        
        lea dx, xau1
        mov ah, 9
        int 21h 
        
        mov ah, 1
        int 21h
        mov char, al
        
        lea dx, xau2
        mov ah, 9
        int 21h
        mov ah, 2
        mov dl, char
        int 21h
        
        

        
        
        mov ah, 4ch
        int 21h
    main endp
end