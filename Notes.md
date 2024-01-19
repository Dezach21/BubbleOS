# Notes

### Initialization sequence
1) Computer turns on.
2) Loads the <ins>BIOS</ins>, found at a specific memory address.
3) BIOS initializes routines, and locates a bootable device.
4) The control is passed to the <ins>bootloader</ins> of the bootable device.
5) The bootloader finds the <ins>kernel image</ins>, and loads it into memory.