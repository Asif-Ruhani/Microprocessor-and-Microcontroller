.model small
.stack 100h
.data
msg1 db 'Enter 1st value : $'
msg2 db 'Enter 2nd value : $'
msg3 db ' is largest number $'
new db 10,13,'$'
.code
main proc  
     
    mov AX,@data
    mov DS,AX
    
    lea dx,msg1  ; dx is best register for this
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    lea dx,msg2 ; dx is the best register for this
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    cmp bh,bl
    jg greater 
       
        mov ah,2
        mov dl,bl
        int 21h
        
        lea dx,msg3
        mov ah,9
        int 21h
    
        hlt
    
    
greater:  
        mov ah,2
        mov dl,bh
        int 21h
        
        
        lea dx,msg3
        mov ah,9
        int 21h
    
    
    
    
    
    
    
    main endp
end main