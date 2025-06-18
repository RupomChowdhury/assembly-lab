.model small
.stack 100h
.code

main proc
    mov ax, 5        ; Load the number to check (you can change this value)
    and ax, 1        ; Perform bitwise AND with 1 to check LSB

    cmp ax, 0
    je even          ; If result is 0, number is even
    jmp odd          ; Otherwise, it's odd

even:
    mov ah, 2
    mov dl, 'E'      ; Display 'E' for Even
    int 21h
    jmp exit

odd:
    mov ah, 2
    mov dl, 'O'      ; Display 'O' for Odd
    int 21h

exit:
    mov ah, 4ch
    int 21h
main endp
end main
