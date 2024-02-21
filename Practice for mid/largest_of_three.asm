.model small
.stack 100h
.data
msg1 db 'Enter 1st value $'
msg2 db 'Enter 2nd value $'
msg3 db 'Enter 3rd value $'
msg4 db 'largest value is $'
new db 10,13,'$'
.code

main proc
      
     mov ax,@data
     mov ds,ax
     
     lea dx,msg1
     mov ah,9
     int 21h
     
     mov ah,1
     int 21h
     mov bh,al
     
     lea dx,new
     mov ah,9
     int 21h 
     
     lea dx,msg2
     mov ah,9
     int 21h
     
     mov ah,1
     int 21h
     mov bl,al
     
     lea dx,new
     mov ah,9
     int 21h
     
     
     lea dx,msg3
     mov ah,9
     int 21h
     
     mov ah,1
     int 21h
     mov ch,al
     
     
     lea dx,new
     mov ah,9
     int 21h
     
     
     cmp bh,bl
     jg greater1 ; if bh>bl then jump greater1 level
     jl greater2 ; if bl>bh then jump greater2 level
     
     
greater1: cmp bh,ch  ; if bh>ch then jump greatest1 level
         jg greatest1
          
          lea dx,msg4
          mov ah,9
          int 21h
          
          mov ah,2
          mov dl,ch
          int 21h
          
          hlt 

greater2: cmp bl,ch  ; if bl>ch then jump greatest2 level
          jg greatest2
          
          
          lea dx,msg4
          mov ah,9
          int 21h
          
          mov ah,2
          mov dl,ch
          int 21h
          
          hlt
         
         
greatest1: lea dx,msg4
          mov ah,9
          int 21h
          
          mov ah,2
          mov dl,bh
          int 21h
          
          hlt
          
greatest2: lea dx,msg4
          mov ah,9
          int 21h
          
          mov ah,2
          mov dl,bl
          int 21h
     
     
     
    
    main endp
end main