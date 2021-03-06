[org 0x7c00] ; tell the assembler that our offset is bootsector code

; The main routine makes sure the parameters are ready and then calls the function
mov bx, HELLO
call print
call println

mov bx, GOODBYE
call print
call println

mov dx, 0x12fe
call print
call println

; that's it! we can hang now
jmp $

; remember to include subroutines below the hang
%include "print.asm"


; data
HELLO:
    db 'Hello, World', 0

GOODBYE:
    db 'Goodbye', 0

; padding and magic number
times 510-($-$$) db 0
dw 0xaa55
