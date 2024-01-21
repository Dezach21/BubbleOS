; Bootloader that prints "Welcome to BubbleOS."

mov ah, 0x0e ; Scrolling teletype BIOS routine

mov al, 'W'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'c'
int 0x10
mov al, 'o'
int 0x10
mov al, 'm'
int 0x10
mov al, 'e'
int 0x10
mov al, ' '
int 0x10
mov al, 't'
int 0x10
mov al, 'o'
int 0x10
mov al, ' '
int 0x10
mov al, 'B'
int 0x10
mov al, 'u'
int 0x10
mov al, 'b'
int 0x10
mov al, 'b'
int 0x10
mov al, 'l'
int 0x10
mov al, 'e'
int 0x10
mov al, 'O'
int 0x10
mov al, 'S'
int 0x10
mov al, '!'
int 0x10

jmp $

times 510-($-$$) db 0 ; Pad binary file with zeroes to reach 510 bytes

dw 0xAA55 ; The last 2 bytes are the magic number for the BIOS to interpret this sector as a boot sector