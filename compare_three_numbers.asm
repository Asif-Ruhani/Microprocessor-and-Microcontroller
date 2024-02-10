.model small
.stack 100h
.data 
msg1 db 'Enter 1st value : $'
msg2 db 'Enter 2nd value : $'
msg3 db 'Enter 3rd value : $'
msg4 db 'largest value is = $' 
msg5 db 'Smallest value is = $' 
msg6 db 'Medium vale is = $'
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
      
      
      lea dx,msg3
      mov ah,9   
      int 21h    
                 
      mov ah,1   
      int 21h    
      mov ch,al 
      
      
      lea dx,newline
      mov ah,9   
      int 21h
      
      cmp bh,bl
      jg largest
      jl smallest
      
largest:cmp ch,bh
        jg print_largest
        
        
        lea dx,msg4
        mov ah,9   
        int 21h
              
        mov ah,2
        mov dl,bh
        int 21h
        
        lea dx,newline
        mov ah,9   
        int 21h 
        
        lea dx,msg6
        mov ah,9   
        int 21h
              
        mov ah,2
        mov dl,ch
        int 21h
        
        
        lea dx,newline
        mov ah,9   
        int 21h
        
        lea dx,msg5
        mov ah,9   
        int 21h
              
        mov ah,2
        mov dl,bl
        int 21h 
        
        hlt
        
        

smallest:cmp ch,bh
         jl print_smallest
            
            lea dx,msg5
            mov ah,9
            int 21h
               
            mov ah,2
            mov dl,bh
            int 21h
            
            
            lea dx,newline
            mov ah,9   
            int 21h   
            
            lea dx,msg6
            mov ah,9   
            int 21h
              
            mov ah,2
            mov dl,ch
            int 21h
            
            lea dx,newline
            mov ah,9   
            int 21h 
            
            lea dx,msg4
            mov ah,9   
            int 21h
              
            mov ah,2
            mov dl,bl
            int 21h  
            
            hlt 
         
         
print_largest:lea dx,msg4
              mov ah,9   
              int 21h
              
              mov ah,2
              mov dl,ch
              int 21h 
              
              lea dx,newline
              mov ah,9   
              int 21h 
              
              lea dx,msg6
              mov ah,9   
              int 21h
              
              mov ah,2
              mov dl,bh
              int 21h
              
              lea dx,newline
              mov ah,9   
              int 21h  
              
              lea dx,msg5
              mov ah,9   
              int 21h
              
              mov ah,2
              mov dl,bl
              int 21h
              
              hlt
              

print_smallest:lea dx,msg5
               mov ah,9
               int 21h
               
               mov ah,2
               mov dl,ch
               int 21h
               
               lea dx,newline
               mov ah,9   
               int 21h 
               
               lea dx,msg6
               mov ah,9   
               int 21h
              
               mov ah,2
               mov dl,bh
               int 21h
               
               lea dx,newline
               mov ah,9   
               int 21h 
               
               lea dx,msg4
               mov ah,9   
               int 21h
              
               mov ah,2
               mov dl,bl
               int 21h  
         
      
      main endp
 end main