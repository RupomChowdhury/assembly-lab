.model small               
.stack 100h
  
.data
a db 'Dept. of CSE $';Variable declaration  

.code 

main proc  
    
    mov ax,@data ;Initialize the data segment to code segment  
    mov ds,ax
    
    mov ah,9
    lea dx,a ;Load Effective Address  
    int 21h
    
    exit:
    mov ah,4ch
    int 21h  
    main endp
end main 