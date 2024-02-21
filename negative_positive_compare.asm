.model small
.stack 100h
.data
.code
main proc
    
    mov ax,-3
    cmp ax,-2
    jl negative
    jg positive
    je equal
    
    negative:
    neg ax
    
    add ax,48
    
    mov ah,2
    mov dx,ax
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,'*'
    int 21h
    
    hlt    
    
    positive:
    
    add ax,48
    mov ah,2
    mov dx,ax
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,'#'
    int 21h
    
    hlt
    equal:
    add ax,48
     
    mov ah,2
    mov dx,ax
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,'@'
    int 21h
    
    
    
    
    main endp
end main