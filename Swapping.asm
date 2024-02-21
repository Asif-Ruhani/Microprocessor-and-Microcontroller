.model small
.stack 100h
.data
msg1 db 'x = $'
msg2 db 'y = $'
x db 4
y db 7
new db 10,13,'$s'
.code            
 main proc
    
    mov ax,@data
    mov ds,ax
    
    mov bh,x
    mov bl,y
    mov x,bl
    mov y,bh
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    
    lea dx,new
    mov ah,9
    int 21h
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    add bh,48
    
    mov ah,2
    mov dl,bh
    int 21h
    
    
    main endp
 end main