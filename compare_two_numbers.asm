.model small
.stack 100h
.data 
msg1 db 'Enter 1st value : $'
msg2 db 'Enter 2nd value : $'
msg3 db ' is greater than  $'
msg4 db ' is less than  $'
msg5 db ' is equals to  $'
newline db 10,13,'$'
.code
 main proc
      mov ax,@data ; it should be always ax register
      mov ds,ax
      
      lea dx,msg1  ; it could be bx,cx also
      mov ah,9
      int 21h   
      
      mov ah,1
      int 21h
      mov bh,al
      
      lea dx,newline
      mov ah,9   
      int 21h  
      
      lea dx,msg2
      mov ah,9   
      int 21h    
                 
      mov ah,1   
      int 21h    
      mov bl,al
      
      lea dx,newline
      mov ah,9   
      int 21h
      
      cmp bh,bl
      jg greater  ; if bh>bl then jump to greater level
      jl smaller  ; if bh<bl then jump to smaller level
      je equal    ; if bh=bl then jump to equal level
      
      
smaller:mov ah,2
        mov dl,bh
        int 21h
      
        lea dx,msg4
        mov ah,9   
        int 21h
      
        mov ah,2
        mov dl,bl
        int 21h
      
        hlt    ; compiler will be hallted here, it means end
      
      
equal:mov ah,2
      mov dl,bh
      int 21h
      
      lea dx,msg5
      mov ah,9
      int 21h
      
      mov ah,2
      mov dl,bl
      int 21h 
      
      hlt
           
      
greater:mov ah,2
        mov dl,bh
        int 21h  
      
        lea dx,msg3
        mov ah,9   
        int 21h    
                 
        mov ah,2
        mov dl,bl
        int 21h 
      
      
      
    
    main endp
 end main