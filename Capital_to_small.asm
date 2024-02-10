.model small
.stack 100h
.data
    msg1 db 'Enter a capital letter: $'
    msg2 db 'The converted small letter is: $'

.code

main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, msg1
    mov ah, 9
    int 21h
    
    
    mov ah,1
    int 21h
    mov bh,al
        
    mov ah,2
    mov dl,0Ah
    int 21h
    
    mov dl,0Dh     
    int 21h
    
    add bh,20h
    
    lea dx, msg2
    mov ah, 9
    int 21h
    
    
    mov ah,2
    mov dl,bh           
    int 21h 
     
    
    main endp
end main