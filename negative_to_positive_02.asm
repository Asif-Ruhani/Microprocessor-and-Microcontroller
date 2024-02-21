.model small
.stack 100h
.data
.code

main proc 
    
    mov ax,5h
    sub ax,8h ; ax-8=-3
    neg ax    ; if we comment eng ax. ans will be - only, not -3 . neg instruction makes a negative value to positive
    ; it makes -3 to 3
    
    add ax,48
    
    mov ah,2
    mov dx,ax
    int 21h
    
    
    main endp
end main                                                
