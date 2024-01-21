; Bootloader that prints "Welcome to BubbleOS."
org 0x7c00 ; Offset to absolute address calculations. This is required since the BIOS saves this code at memory location 0x7c00
BITS 16


section .data
welcome_string: db 'Welcome to BubbleOS!', 0 ; Declare a null-terminating string


section .text
mov si, welcome_string
call print_string ; call == jump + push address to stack

do_nothing_forever:
	jmp $ ; Jump to current address (infinite jump)

print_string:
    mov al, [si] ; al = character to print
	mov ah, 0x0e ; Scrolling teletype BIOS routine (when int (interrupt) = 0x10)
	print_string_loop:
		int 0x10 ; interrupt 0x10 for printing
		inc si ; increment to next character
		mov al, [si]
		cmp al, 0 ; Compare character with null value
		jne print_string_loop ; Jump if character is not equal to null
		ret ; ret == remove address from stack + jump to it
    ret

times 510-($-$$) db 0 ; Pad binary file with zeroes to reach 510 bytes
dw 0xAA55 ; The last 2 bytes are the magic number for the BIOS to interpret this sector as a boot sector