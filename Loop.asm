.model small
.stack 100h
.data
.code

main proc
    
    mov cx,26 ; cx register maintain the loop. this loop will be executed 26 times
    mov ah,2
    mov dl,'A'
    
    level:
    int 21h ; when in 21h is called, above three lines ( 8,9,10) will be executed, and automatically cx decrement by 1
    inc dl  ; value of dl is incremented(ASCII value). A, B, C, D and so on
    loop level 
    
     
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h 
    
     
    mov cx,10
    mov ah,2   ; similarly these 3 lines will be executed 10 times and print 0 to 9
    mov dl,'0'
               
    level1:
    int 21h
    inc dl
    loop level1 
    
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h
    
    
 ; Loop use kora mane CX er moddhe joto value rakhbo loop totobar cholbe and CX hobe loop er bahire
 
 ; i want ot watch 255 characters but 10 characters per line
 
 
   
   mov bh,0 ; character starts from 0 ASCII value, i will increment only ASCII value
 
  
   level3: 
   mov cx,10  ; ten characters per line  
    
   level2: 
   mov ah,2
   mov dl,bh
   int 21h
   
   inc bh
   cmp bh,255
   je exit
   loop level2
   
   mov ah,2
   mov dl,0Ah  ; after every 10 times new line will be started
   int 21h
   mov dl,0Dh
   int 21h
    
    
    
   jmp level3 
    
   exit:
           
    
    
    main endp
end main