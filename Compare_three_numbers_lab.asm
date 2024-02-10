.model small
.stack 100h
.data
in1 db 'Enter 1st value: $' 
in2 db 'Enter 2nd value: $'  
in3 db 'Enter 3rd value: $'
msg3 db 'Largest Value: $'


.code

main proc 
    mov ax,@data
    mov ds,ax
    
    lea dx,in1
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
    
    lea dx,in2
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
  
    lea dx,in3
    mov ah,9
    int 21h       
     
     
    mov ah,1
    int 21h
    mov cl,al   
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
      
     
    
    cmp bh,bl
    JG greater
    
    mov ch, bl 
    
    jmp newcmp
      
    greater: mov ch, bh 
     
   newcmp:  
    cmp ch, cl
    JG printch 
     
    lea dx, msg3
    mov ah, 9
    int 21h 
     
    mov ah, 2
    mov dl, cl 
    int 21h 
     
    hlt
     

    printch:    
        lea dx,msg3
        mov ah,9
        int 21h 
     
        mov ah,2
        mov dl,ch 
        int 21h
    
    main endp
end main