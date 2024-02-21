.model small
.stack 100h
.data
.code
main proc
    
    mov ax,-3
    neg ax
    
    add ax,48
    
    mov ah,2
    mov dx,ax
    int 21h
    
    main endp
end main