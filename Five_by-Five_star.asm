.model small
.stack 100h
.data
.code
main proc
    
    mov bh,5
    mov bl,0
outer:
    inc bl
    
    cmp bl,bh
    jg endd
        
    mov ch,0
inner:    
    mov ah,2
    mov dl, '*'
    int 21h
    
    inc ch
    
    cmp ch,bh
    jle inner
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp outer
    NN
endd:
    
    main endp
end main