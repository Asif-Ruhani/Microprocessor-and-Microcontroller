.model small
.stack 100h
.data
x db 3 ; 3 stored in x variable
y equ 6 ; 6 stored in y variable but it is constant, not applicable for any operation
.code
main proc 
    
   mov ax,@data
   mov ds,ax
   
   mov bh,x ; value of x is stored in bh
   
   add bh,y ; we can not add two variable,like (add x,y). one of them must be a register.
   add bh,48
   
   mov ah,2
   mov dl,bh
   int 21h
   
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
   add x,3 
   add x,48
   
   mov ah,2
   mov dl,x
   int 21h
   
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
   add y,3  ;y is not a variable, it is constant. that's why this operation can not be done 
   add y,48
   
   mov ah,2
   mov dl,y
   int 21h
    
    
    main endp
end main