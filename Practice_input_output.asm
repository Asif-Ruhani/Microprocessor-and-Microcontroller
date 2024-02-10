
.model small
.stack 100h
.data
.code
 main proc  
    
     mov ah,1 ; ah,1 function for user input
     int 21h
     mov bh,al  ; by default given valu stores in al register, we have move this value into bh register
       
     
     mov ah,2
     mov dl,10  ; These 5 lines for a new line between input & output
     int 21h
     mov dl,13
     int 21h
     
     mov dl,bh  ; we have move bh value into dl, because this register will display the data
     mov ah,2  ; ah,2 function for display the data
     int 21h
     
     main endp
 end main
     