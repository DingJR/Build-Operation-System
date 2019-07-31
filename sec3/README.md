# print

## print

In computer architecture, cpu register is really an important part which can
temporarily store the data. Let's play with it.
Here, `0x10` is a general interrupt for video services.

Here's the code:
```
  mov ah, 0x0e ; tty mode \\b40e
  mov al, 'H'             \\b048
  int 0x10                \\cd10
  mov al, 'e'
  int 0x10
  mov al, 'l'
  int 0x10
  int 0x10 ; 'l' is still on al, remember?
  mov al, 'o'
  int 0x10
  
  jmp $ ; jump to current address = infinite loop
  
  ; padding and magic number
  times 510 - ($-$$) db 0
  dw 0xaa55 
```

## Compile print sector
Compile command: `nasm -f bin hello.asm -o hello.bin`

Run command : `qemu heelo.bin` or `qemu-system-x86_64 boot_sect_simple.bin`

You will see:

![Effect](effect.png)

## Want to see binary form of file

command line `xxd file` will help you.

![Binary file](binary.png)

