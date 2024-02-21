.model small
.stack 100h
.data
.code

main proc
    
    mov bh,5  ; store 5 in bh register
    add bh,48 ; convert 5 into digit from character. when we input a value, the al register gets that input as an ASCII value
;if we input 5, the al register gets ASCII value 5 in hex or decimal,if we input k, the al register gets 107 in decimal or 6B in hex 
    
     
    mov ah,2
    mov dl,bh
    int 21h
           
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
           
    mov bl,5  ; store 5 in bl register
    add bl,30h; convert 5 into digit from character
    
    shl bl,2  ; shift left 2 bits(00110101 to 11010100)
    ;shr bl,2  ; shift right 2 bits(11010100 to 00110101)
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    
    main endp
end main