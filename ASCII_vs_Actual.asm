.model small
.stack 100h
.data
.code
main proc
    
    mov bh,4 ; ASCII value 4 stored in bh register. not actual 4 
    
    
    mov bl,5  ; ASCII value 5 stored in bl register. not actual 5
   
    
    add bh,bl ; ASCII value 4 + ASCII value 5 = ASCII value 9 not actual 9. but we need ASCII value 57 to see the sum 9.
    add bh,48 ;that is why we add 48
    
    mov ah,2
    mov dl,bh
    int 21h 
    
    
    
    
    ; We can do the above job in the following way  
    
    
    
    
    mov ch,3 
    add ch,48 ; convert ASCII 3 to ASCII 51 which is actual value of 3
    
    mov cl,5
    add cl,48 ; convert ASCII 5 to ASCII 53 which is actual value of 5
    
    add ch,cl ; ASCII 51 + ASCII 53 = ASCII 104
    sub ch,48 ; convert ASCII 104 into ASCII 56 which is actual value of 8
    
    mov ah,2
    mov dl,ch
    int 21h
    
     
    
    
    main endp
end main