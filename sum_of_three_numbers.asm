.model small
.stack 100h
.data
in1 db 'Enter 1st value: $'
in2 db 'Enter 2nd value: $'
in3 db 'Enter 3rd value: $'
msg3 db 'sum Value: $'


.code

main proc
mov ax,@data
mov ds,ax
add ch, 0

lea dx,in1           ;input first val
mov ah,9
int 21h

mov ah,1
int 21h
mov bh,al

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

lea dx,in2         ;input second val
mov ah,9
int 21h

mov ah,1
int 21h
mov bl,al

add bh,bl
sub bh,48

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

lea dx,in3        ;input third val
mov ah,9
int 21h


mov ah,1
int 21h
mov cl,al


add bh,cl
sub bh,48

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h



lea dx,msg3
mov ah,9
int 21h

mov ah,2
mov dl,bh
int 21h

main endp
end main