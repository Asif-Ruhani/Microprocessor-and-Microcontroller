
.model small
.stack 50h
.data
.code
 main proc
     mov ah,1   ; ah,1 function is for getting input
     int 21h
	 
     mov dl,al  ; by default every value is in al register, we have moved that value into dl register. Because we need dl register to display a value
     mov ah,2   ; ah,2 function is for display data
     int 21h
     main endp
 end main
     