.model small
.stack 100h
.data
.code

main proc
    
    mov bh,5 ; n=5
    mov bl,0 ; i=0
outer:
    inc bl   ; i++
    cmp bl,bh; if i>n then jump endd
    jg endd    
    mov ch,0 ; j=0 
    
inner:
    mov ah,2
    mov dl, '*'
    int 21h
    
    inc ch   ;j++
    
    cmp ch,bl; if j<i then jump inner
    jl inner
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp outer
    
  endd:  
    main endp
end main