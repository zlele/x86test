.code16

start:
   //Now cs=0x0, ds=0x0, ip=0x7c00
   xor %ax,%ax
   mov $hello, %bx
   mov $0x0e, %ah
   mov 0x7c00(%bx), %al
   int $0x10
   hlt

hello: .asciz "Hello world!"
.org 510
   .byte 0x55
   .byte 0xaa
