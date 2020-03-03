.code16

start:
   //Now cs=0x0, ds=0x0, ip=0x7c00
   xor %ax,%ax
   hlt

.org 510
   .byte 0x55
   .byte 0xaa
