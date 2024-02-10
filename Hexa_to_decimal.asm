.model small
.stack 100h
.data
mgs1 db 'input a hexadecimal number between A to F : $' 
mgs2 db 'The equivalent decimal number is: 1$' 

.code
 main proc
      mov ax,@data
      mov ds,ax
      
      lea bx,mgs1
      mov ah,9
      int 21h 
      
      mov ah,1
      int 21h
      mov bh,al
      sub  bh,11h
     
      
      mov ah,2
      mov dl,10
      int 21h
      mov dl,13
      int 21h
      
      lea dx,mgs2
      mov ah,9
      int 21h 

      mov ah,2
      mov dl,bh
      int 21h 

    
    main endp
 end main