.model small
.stack 100h
.data 
.code

main proc
        
       mov ch,0
        
 level:mov ah,1      
       int 21h
       mov bh,al
       
       
       cmp bh,0Dh       
       je print
       inc ch
       jmp level
       
 print: 
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        add ch,48
        
        mov ah,2 
        mov dl,ch
        int 21h
       
       
    
    main endp
end main