.model small
.stack 100h
.data
.code
main proc  
    
     
      mov ch,6
      mov bl,0 
      
outer:sub ch,1
      mov bh,5 
           
inner:sub bh,1
      mov ah,2
      mov dl,'*'
      int 21h 
    
      cmp bh,bl
      jg inner
      
      mov ah,2
      mov dl,10
      int 21h
      mov dl,13
      int 21h
      
      cmp ch,bl
      jg outer
    
    main endp
end main