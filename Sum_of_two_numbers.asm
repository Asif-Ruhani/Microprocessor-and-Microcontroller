.model small
.stack 100h
.data 
 a db 'Enter 1st value : $'
 b db 'Enter 2nd value : $' 
 sum db 'Sum is = $'
.code
 main proc
    mov ax,@data  
    mov ds,ax   ; it has to be always ds register
    
    lea bx,a    ; it has to be always x series register(ax,bx,cx,dx)
    mov ah,9
    int 21h  
            
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl, 0Dh
    int 21h
    
    lea dx,b
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov ch,al
 
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl, 0Dh
    int 21h
    
    
    
    add bh,ch
    sub bh,48 
    
    lea ax,sum
    mov ah,9
    int 21h 
    
    mov ah,2
    mov dl,bh
    int 21h
    
    
    
    
    main endp
 end main
 