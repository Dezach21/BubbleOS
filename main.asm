;org 0x7C00
;bits 16

infiniteLoop: ; Infinite loop
    jmp infiniteLoop

times 510-($-$$) db 0 ; Pad binary file with zeroes to reach 510 bytes

dw 0xAA55 ; The last 2 bytes are the magic number for the BIOS to interpret this sector as a boot sector
;times 1024-($-$$) db 0