.model small
.stack 100h
.code

main proc
    mov ax,6
    rol ax,1
    
    mov ah,2
    mov dx,ax
    int 21h 
    
exit:
    mov ah, 4ch  
    int 21h
main endp
end main
