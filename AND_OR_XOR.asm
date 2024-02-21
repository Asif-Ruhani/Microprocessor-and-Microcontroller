.model small
.stack 100h
.data
a db 'AND = $'
o db 'OR = $'
x db 'X-OR = $'
.code          
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov bh,101b
    mov bl,110b
    
    and bh,bl
    add bh,48
    
    lea dx,a
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    or bl,101b
    add bl,48 
    
    lea dx,o
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov cl,111b
    
    xor cl,100b
    add cl,48 
    
    lea dx,x
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h 
    
     
    
    main endp
end main