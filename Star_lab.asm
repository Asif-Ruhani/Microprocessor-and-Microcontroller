.model small
.stack 100h
.data   
.code
 main proc
    mov bl,5  
    mov ch,0    
    
 outer:  
         mov bh,5
         mov cl,0  
 inner: mov ah,2
         mov dl,'*'
         int 21h
        
         add cl,1
         cmp bh,cl
      
         JNZ inner   
         
         mov ah, 2
         mov dl, 10
         int 21h
         mov dl, 13
         int 21h
         
         
         add ch,1
         cmp bl,ch
         JNZ outer
    
    main endp
end main